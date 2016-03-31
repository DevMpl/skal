# encoding: utf-8

class Skal::ImageUploader < CarrierWave::Uploader::Base
	include CarrierWave::RMagick

  def filename
   "#{secure_token(10)}.#{file.extension}" if original_filename.present?
  end

  # Choose what kind of storage to use for this uploader:
  storage :file

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Process files as they are uploaded:
  # process :resize_to_limit => [200, 200]

  # Create different versions of your uploaded files:

  version :large do
    process :resize_to_limit => [800, 500]
		process :quality => 75
  end

  version :thumb do
    process :resize_to_limit => [300, 300]
		process :quality => 75
  end

  # version :thumb do
  #   process :resize_to_fill => [200, 200]
  # 		# process :crop => [0.5, 0.5, 200, 200]
  # end

  version :thumb_mini do
    process :resize_to_fill => [200, 200]
    process :quality => 75
  end

  version :thumb_micro do
    process :resize_to_fill => [80, 80]
		process :quality => 75
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    %w(jpg jpeg gif png ico)
  end

  def secure_token(length = 16)
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.hex(length / 2))
  end


end
