# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `maxmind-db` gem.
# Please instead update this file by running `bin/tapioca gem maxmind-db`.


# source://maxmind-db//lib/maxmind/db/errors.rb#3
module MaxMind; end

# DB provides a way to read {MaxMind DB
# files}[https://maxmind.github.io/MaxMind-DB/].
#
# {MaxMind DB}[https://maxmind.github.io/MaxMind-DB/] is a binary file format
# that stores data indexed by IP address subnets (IPv4 or IPv6).
#
# This class is a pure Ruby implementation of a reader for the format.
#
# == Example
#
#   require 'maxmind/db'
#
#   reader = MaxMind::DB.new('GeoIP2-City.mmdb', mode: MaxMind::DB::MODE_MEMORY)
#
#   record = reader.get('1.1.1.1')
#   if record.nil?
#     puts '1.1.1.1 was not found in the database'
#   else
#     puts record['country']['iso_code']
#     puts record['country']['names']['en']
#   end
#
#   reader.close
#
# source://maxmind-db//lib/maxmind/db/errors.rb#4
class MaxMind::DB
  # Create a DB. A DB provides a way to read {MaxMind DB
  # files}[https://maxmind.github.io/MaxMind-DB/]. If you're performing
  # multiple lookups, it's most efficient to create one DB and reuse it.
  #
  # Once created, the DB is safe to use for lookups from multiple threads. It
  # is safe to use after forking only if you use MODE_MEMORY or if your
  # version of Ruby supports IO#pread.
  #
  # @option options
  # @param database [String] a path to a {MaxMind
  #   DB}[https://maxmind.github.io/MaxMind-DB/].
  # @param options [Hash<Symbol, Symbol>] options controlling the behavior of
  #   the DB.
  # @raise [InvalidDatabaseError] if the database is corrupt or invalid.
  # @raise [ArgumentError] if the mode is invalid.
  # @return [DB] a new instance of DB
  #
  # source://maxmind-db//lib/maxmind/db.rb#86
  def initialize(database, options = T.unsafe(nil)); end

  # Close the DB and return resources to the system.
  #
  # @return [void]
  #
  # source://maxmind-db//lib/maxmind/db.rb#298
  def close; end

  # Return the record for the IP address in the {MaxMind
  # DB}[https://maxmind.github.io/MaxMind-DB/]. The record can be one of
  # several types and depends on the contents of the database.
  #
  # If no record is found for the IP address, +get+ returns +nil+.
  #
  # @param ip_address [String, IPAddr] IPv4 or IPv6 address.
  # @raise [ArgumentError] if you attempt to look up an IPv6 address in an
  #   IPv4-only database.
  # @raise [InvalidDatabaseError] if the database is corrupt or invalid.
  # @return [Object, nil]
  #
  # source://maxmind-db//lib/maxmind/db.rb#141
  def get(ip_address); end

  # Return an array containing the record for the IP address in the
  # {MaxMind DB}[https://maxmind.github.io/MaxMind-DB/] and its associated
  # network prefix length. The record can be one of several types and
  # depends on the contents of the database.
  #
  # If no record is found for the IP address, the record will be +nil+ and
  # the prefix length will be the value for the missing network.
  #
  # @param ip_address [String, IPAddr] IPv4 or IPv6 address.
  # @raise [ArgumentError] if you attempt to look up an IPv6 address in an
  #   IPv4-only database.
  # @raise [InvalidDatabaseError] if the database is corrupt or invalid.
  # @return [Array<(Object, Integer)>]
  #
  # source://maxmind-db//lib/maxmind/db.rb#163
  def get_with_prefix_length(ip_address); end

  # Return the metadata associated with the {MaxMind
  # DB}[https://maxmind.github.io/MaxMind-DB/]
  #
  # @return [MaxMind::DB::Metadata]
  #
  # source://maxmind-db//lib/maxmind/db.rb#62
  def metadata; end

  private

  # @return [Boolean]
  #
  # source://maxmind-db//lib/maxmind/db.rb#289
  def at_metadata?(index); end

  # @raise [InvalidDatabaseError]
  #
  # source://maxmind-db//lib/maxmind/db.rb#189
  def find_address_in_tree(ip_address, ip_version); end

  # @raise [InvalidDatabaseError]
  #
  # source://maxmind-db//lib/maxmind/db.rb#274
  def find_metadata_start; end

  # Read a record from the indicated node. Index indicates whether it's the
  # left (0) or right (1) record.
  #
  # @raise [InvalidDatabaseError]
  #
  # source://maxmind-db//lib/maxmind/db.rb#231
  def read_node(node_number, index); end

  # source://maxmind-db//lib/maxmind/db.rb#262
  def resolve_data_pointer(pointer); end

  # source://maxmind-db//lib/maxmind/db.rb#214
  def start_node(length); end
end

# source://maxmind-db//lib/maxmind/db.rb#49
MaxMind::DB::DATA_SECTION_SEPARATOR_SIZE = T.let(T.unsafe(nil), Integer)

# +Decoder+ decodes a {MaxMind DB}[https://maxmind.github.io/MaxMind-DB/]
# data section.
#
# Typically you will interact with this class through a Reader rather than
# directly.
#
# source://maxmind-db//lib/maxmind/db/decoder.rb#14
class MaxMind::DB::Decoder
  # Create a +Decoder+.
  #
  # +io+ is the DB. It must provide a +read+ method. It must be opened in
  # binary mode.
  #
  # +pointer_base+ is the base number to use when decoding a pointer. It is
  # where the data section begins rather than the beginning of the file.
  # The specification states the formula in the `Data Section Separator'
  # section.
  #
  # +pointer_test+ is used for testing pointer code.
  #
  # @return [Decoder] a new instance of Decoder
  #
  # source://maxmind-db//lib/maxmind/db/decoder.rb#28
  def initialize(io, pointer_base = T.unsafe(nil), pointer_test = T.unsafe(nil)); end

  # Decode a section of the data section starting at +offset+.
  #
  # +offset+ is the location of the data structure to decode.
  #
  # Returns an array where the first element is the decoded value and the
  # second is the offset after decoding it.
  #
  # Throws an exception if there is an error.
  #
  # source://maxmind-db//lib/maxmind/db/decoder.rb#189
  def decode(offset); end

  private

  # source://maxmind-db//lib/maxmind/db/decoder.rb#37
  def decode_array(size, offset); end

  # source://maxmind-db//lib/maxmind/db/decoder.rb#46
  def decode_boolean(size, offset); end

  # source://maxmind-db//lib/maxmind/db/decoder.rb#50
  def decode_bytes(size, offset); end

  # source://maxmind-db//lib/maxmind/db/decoder.rb#54
  def decode_double(size, offset); end

  # source://maxmind-db//lib/maxmind/db/decoder.rb#60
  def decode_float(size, offset); end

  # source://maxmind-db//lib/maxmind/db/decoder.rb#89
  def decode_int(type_code, type_size, size, offset); end

  # source://maxmind-db//lib/maxmind/db/decoder.rb#73
  def decode_int32(size, offset); end

  # source://maxmind-db//lib/maxmind/db/decoder.rb#115
  def decode_map(size, offset); end

  # source://maxmind-db//lib/maxmind/db/decoder.rb#125
  def decode_pointer(size, offset); end

  # source://maxmind-db//lib/maxmind/db/decoder.rb#97
  def decode_uint128(size, offset); end

  # source://maxmind-db//lib/maxmind/db/decoder.rb#77
  def decode_uint16(size, offset); end

  # source://maxmind-db//lib/maxmind/db/decoder.rb#81
  def decode_uint32(size, offset); end

  # source://maxmind-db//lib/maxmind/db/decoder.rb#85
  def decode_uint64(size, offset); end

  # source://maxmind-db//lib/maxmind/db/decoder.rb#153
  def decode_utf8_string(size, offset); end

  # source://maxmind-db//lib/maxmind/db/decoder.rb#204
  def read_extended(offset); end

  # source://maxmind-db//lib/maxmind/db/decoder.rb#215
  def size_from_ctrl_byte(ctrl_byte, offset, type_num); end

  # @raise [InvalidDatabaseError]
  #
  # source://maxmind-db//lib/maxmind/db/decoder.rb#66
  def verify_size(expected, actual); end
end

# source://maxmind-db//lib/maxmind/db/decoder.rb#162
MaxMind::DB::Decoder::TYPE_DECODER = T.let(T.unsafe(nil), Hash)

# source://maxmind-db//lib/maxmind/db/file_reader.rb#8
class MaxMind::DB::FileReader
  # @return [FileReader] a new instance of FileReader
  #
  # source://maxmind-db//lib/maxmind/db/file_reader.rb#36
  def initialize(filename); end

  # source://maxmind-db//lib/maxmind/db/file_reader.rb#43
  def close; end

  # @raise [InvalidDatabaseError]
  #
  # source://maxmind-db//lib/maxmind/db/file_reader.rb#47
  def read(offset, size); end

  # Returns the value of attribute size.
  #
  # source://maxmind-db//lib/maxmind/db/file_reader.rb#41
  def size; end
end

# For Windows support
#
# source://maxmind-db//lib/maxmind/db/file_reader.rb#10
MaxMind::DB::FileReader::PReadFile = File

# source://maxmind-db//lib/maxmind/db.rb#183
MaxMind::DB::IP_VERSION_TO_BIT_COUNT = T.let(T.unsafe(nil), Hash)

# An InvalidDatabaseError means the {MaxMind
# DB}[https://maxmind.github.io/MaxMind-DB/] file is corrupt or invalid.
#
# source://maxmind-db//lib/maxmind/db/errors.rb#7
class MaxMind::DB::InvalidDatabaseError < ::RuntimeError; end

# source://maxmind-db//lib/maxmind/db.rb#55
MaxMind::DB::METADATA_MAX_SIZE = T.let(T.unsafe(nil), Integer)

# source://maxmind-db//lib/maxmind/db.rb#51
MaxMind::DB::METADATA_START_MARKER = T.let(T.unsafe(nil), String)

# source://maxmind-db//lib/maxmind/db.rb#53
MaxMind::DB::METADATA_START_MARKER_LENGTH = T.let(T.unsafe(nil), Integer)

# Choose the default method to open the database. Currently the default is
# MODE_FILE.
#
# source://maxmind-db//lib/maxmind/db.rb#37
MaxMind::DB::MODE_AUTO = T.let(T.unsafe(nil), Symbol)

# Open the database as a regular file and read on demand.
#
# source://maxmind-db//lib/maxmind/db.rb#39
MaxMind::DB::MODE_FILE = T.let(T.unsafe(nil), Symbol)

# Read the database into memory. This is faster than MODE_FILE but causes
# increased memory use.
#
# source://maxmind-db//lib/maxmind/db.rb#42
MaxMind::DB::MODE_MEMORY = T.let(T.unsafe(nil), Symbol)

# Treat the database parameter as containing a database already read into
# memory. It must be a binary string. This primarily exists for testing.
#
# source://maxmind-db//lib/maxmind/db.rb#47
MaxMind::DB::MODE_PARAM_IS_BUFFER = T.let(T.unsafe(nil), Symbol)

# source://maxmind-db//lib/maxmind/db/memory_reader.rb#6
class MaxMind::DB::MemoryReader
  # @return [MemoryReader] a new instance of MemoryReader
  #
  # source://maxmind-db//lib/maxmind/db/memory_reader.rb#7
  def initialize(filename, options = T.unsafe(nil)); end

  # source://maxmind-db//lib/maxmind/db/memory_reader.rb#25
  def close; end

  # Override to not show @buf in inspect to avoid showing it in irb.
  #
  # source://maxmind-db//lib/maxmind/db/memory_reader.rb#21
  def inspect; end

  # source://maxmind-db//lib/maxmind/db/memory_reader.rb#27
  def read(offset, size); end

  # Returns the value of attribute size.
  #
  # source://maxmind-db//lib/maxmind/db/memory_reader.rb#18
  def size; end
end

# Metadata holds metadata about a {MaxMind
# DB}[https://maxmind.github.io/MaxMind-DB/] file. See
# https://maxmind.github.io/MaxMind-DB/#database-metadata for the
# specification.
#
# source://maxmind-db//lib/maxmind/db/metadata.rb#9
class MaxMind::DB::Metadata
  # +m+ is a hash representing the metadata map.
  #
  # @return [Metadata] a new instance of Metadata
  #
  # source://maxmind-db//lib/maxmind/db/metadata.rb#62
  def initialize(map); end

  # The major version number of the binary format used when creating the
  # database.
  #
  # @return [Integer]
  #
  # source://maxmind-db//lib/maxmind/db/metadata.rb#41
  def binary_format_major_version; end

  # The minor version number of the binary format used when creating the
  # database.
  #
  # @return [Integer]
  #
  # source://maxmind-db//lib/maxmind/db/metadata.rb#47
  def binary_format_minor_version; end

  # The Unix epoch for the build time of the database.
  #
  # @return [Integer]
  #
  # source://maxmind-db//lib/maxmind/db/metadata.rb#52
  def build_epoch; end

  # A string identifying the database type. e.g., "GeoIP2-City".
  #
  # @return [String]
  #
  # source://maxmind-db//lib/maxmind/db/metadata.rb#30
  def database_type; end

  # A hash from locales to text descriptions of the database.
  #
  # @return [Hash<String, String>]
  #
  # source://maxmind-db//lib/maxmind/db/metadata.rb#57
  def description; end

  # The IP version of the data in the database. A value of 4 means the
  # database only supports IPv4. A database with a value of 6 may support
  # both IPv4 and IPv6 lookups.
  #
  # @return [Integer]
  #
  # source://maxmind-db//lib/maxmind/db/metadata.rb#25
  def ip_version; end

  # An array of locale codes supported by the database.
  #
  # @return [Array<String>]
  #
  # source://maxmind-db//lib/maxmind/db/metadata.rb#35
  def languages; end

  # The size of a node in bytes.
  #
  # @return [Integer]
  #
  # source://maxmind-db//lib/maxmind/db/metadata.rb#77
  def node_byte_size; end

  # The number of nodes in the database.
  #
  # @return [Integer]
  #
  # source://maxmind-db//lib/maxmind/db/metadata.rb#13
  def node_count; end

  # The bit size of a record in the search tree.
  #
  # @return [Integer]
  #
  # source://maxmind-db//lib/maxmind/db/metadata.rb#18
  def record_size; end

  # The size of the search tree in bytes.
  #
  # @return [Integer]
  #
  # source://maxmind-db//lib/maxmind/db/metadata.rb#84
  def search_tree_size; end
end