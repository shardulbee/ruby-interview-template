# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/rexml/all/rexml.rbi
#
# rexml-3.2.4

module REXML
end
class REXML::ParseException < RuntimeError
  def context; end
  def continued_exception; end
  def continued_exception=(arg0); end
  def initialize(message, source = nil, parser = nil, exception = nil); end
  def line; end
  def parser; end
  def parser=(arg0); end
  def position; end
  def source; end
  def source=(arg0); end
  def to_s; end
end
class REXML::UndefinedNamespaceException < REXML::ParseException
  def initialize(prefix, source, parser); end
end
module REXML::Encoding
  def decode(string); end
  def encode(string); end
  def encoding; end
  def encoding=(encoding); end
  def find_encoding(name); end
end
class REXML::SourceFactory
  def self.create_from(arg); end
end
class REXML::Source
  def buffer; end
  def consume(pattern); end
  def current_line; end
  def detect_encoding; end
  def empty?; end
  def encoding; end
  def encoding=(enc); end
  def encoding_updated; end
  def initialize(arg, encoding = nil); end
  def line; end
  def match(pattern, cons = nil); end
  def match_to(char, pattern); end
  def match_to_consume(char, pattern); end
  def position; end
  def read; end
  def scan(pattern, cons = nil); end
  include REXML::Encoding
end
class REXML::IOSource < REXML::Source
  def consume(pattern); end
  def current_line; end
  def empty?; end
  def encoding_updated; end
  def initialize(arg, block_size = nil, encoding = nil); end
  def match(pattern, cons = nil); end
  def position; end
  def read; end
  def readline; end
  def scan(pattern, cons = nil); end
end
module REXML::Parsers
end
class REXML::Parsers::BaseParser
  def add_listener(listener); end
  def empty?; end
  def entity(reference, entities); end
  def has_next?; end
  def initialize(source); end
  def need_source_encoding_update?(xml_declaration_encoding); end
  def normalize(input, entities = nil, entity_filter = nil); end
  def parse_attributes(prefixes, curr_ns); end
  def peek(depth = nil); end
  def position; end
  def process_instruction; end
  def pull; end
  def pull_event; end
  def source; end
  def stream=(source); end
  def unnormalize(string, entities = nil, filter = nil); end
  def unshift(token); end
end
module REXML::XMLTokens
end
module REXML::Security
  def self.entity_expansion_limit; end
  def self.entity_expansion_limit=(val); end
  def self.entity_expansion_text_limit; end
  def self.entity_expansion_text_limit=(val); end
end
module REXML::Formatters
end
class REXML::Formatters::Default
  def initialize(ie_hack = nil); end
  def write(node, output); end
  def write_cdata(node, output); end
  def write_comment(node, output); end
  def write_document(node, output); end
  def write_element(node, output); end
  def write_instruction(node, output); end
  def write_text(node, output); end
end
class REXML::Formatters::Pretty < REXML::Formatters::Default
  def compact; end
  def compact=(arg0); end
  def indent_text(string, level = nil, style = nil, indentfirstline = nil); end
  def initialize(indentation = nil, ie_hack = nil); end
  def width; end
  def width=(arg0); end
  def wrap(string, width); end
  def write_cdata(node, output); end
  def write_comment(node, output); end
  def write_document(node, output); end
  def write_element(node, output); end
  def write_text(node, output); end
end
module REXML::Node
  def each_recursive(&block); end
  def find_first_recursive(&block); end
  def indent(to, ind); end
  def index_in_parent; end
  def next_sibling_node; end
  def parent?; end
  def previous_sibling_node; end
  def to_s(indent = nil); end
end
class REXML::Child
  def bytes; end
  def document; end
  def initialize(parent = nil); end
  def next_sibling; end
  def next_sibling=(other); end
  def parent; end
  def parent=(other); end
  def previous_sibling; end
  def previous_sibling=(other); end
  def remove; end
  def replace_with(child); end
  include REXML::Node
end
class REXML::Parent < REXML::Child
  def <<(object); end
  def [](index); end
  def []=(*args); end
  def add(object); end
  def children; end
  def deep_clone; end
  def delete(object); end
  def delete_at(index); end
  def delete_if(&block); end
  def each(&block); end
  def each_child(&block); end
  def each_index(&block); end
  def index(child); end
  def initialize(parent = nil); end
  def insert_after(child1, child2); end
  def insert_before(child1, child2); end
  def length; end
  def parent?; end
  def push(object); end
  def replace_child(to_replace, replacement); end
  def size; end
  def to_a; end
  def unshift(object); end
  include Enumerable
end
module REXML::Namespace
  def expanded_name; end
  def fully_expanded_name; end
  def has_name?(other, ns = nil); end
  def local_name; end
  def name; end
  def name=(name); end
  def prefix; end
  def prefix=(arg0); end
  include REXML::XMLTokens
end
class REXML::Entity < REXML::Child
  def external; end
  def initialize(stream, value = nil, parent = nil, reference = nil); end
  def name; end
  def ndata; end
  def normalized; end
  def pubid; end
  def ref; end
  def self.matches?(string); end
  def to_s; end
  def unnormalized; end
  def value; end
  def write(out, indent = nil); end
  include REXML::XMLTokens
end
module REXML::EntityConst
end
class REXML::AttlistDecl < REXML::Child
  def [](key); end
  def each(&block); end
  def element_name; end
  def include?(key); end
  def initialize(source); end
  def node_type; end
  def write(out, indent = nil); end
  include Enumerable
end
class REXML::DocType < REXML::Parent
  def add(child); end
  def attribute_of(element, attribute); end
  def attributes_of(element); end
  def clone; end
  def context; end
  def entities; end
  def entity(name); end
  def external_id; end
  def initialize(first, parent = nil); end
  def name; end
  def namespaces; end
  def node_type; end
  def notation(name); end
  def notations; end
  def public; end
  def strip_quotes(quoted_string); end
  def system; end
  def write(output, indent = nil, transitive = nil, ie_hack = nil); end
  include REXML::XMLTokens
end
class REXML::Declaration < REXML::Child
  def initialize(src); end
  def to_s; end
  def write(output, indent); end
end
class REXML::ElementDecl < REXML::Declaration
  def initialize(src); end
end
class REXML::ExternalEntity < REXML::Child
  def initialize(src); end
  def to_s; end
  def write(output, indent); end
end
class REXML::NotationDecl < REXML::Child
  def initialize(name, middle, pub, sys); end
  def name; end
  def public; end
  def public=(arg0); end
  def system; end
  def system=(arg0); end
  def to_s; end
  def write(output, indent = nil); end
end
class REXML::Text < REXML::Child
  def <<(to_append); end
  def <=>(other); end
  def clear_cache; end
  def clone; end
  def doctype; end
  def empty?; end
  def indent_text(string, level = nil, style = nil, indentfirstline = nil); end
  def initialize(arg, respect_whitespace = nil, parent = nil, raw = nil, entity_filter = nil, illegal = nil); end
  def inspect; end
  def node_type; end
  def parent=(parent); end
  def raw; end
  def raw=(arg0); end
  def self.check(string, pattern, doctype); end
  def self.expand(ref, doctype, filter); end
  def self.normalize(input, doctype = nil, entity_filter = nil); end
  def self.read_with_substitution(input, illegal = nil); end
  def self.unnormalize(string, doctype = nil, filter = nil, illegal = nil); end
  def to_s; end
  def value; end
  def value=(val); end
  def wrap(string, width, addnewline = nil); end
  def write(writer, indent = nil, transitive = nil, ie_hack = nil); end
  def write_with_substitution(out, input); end
  def xpath; end
  include Comparable
end
class REXML::Attribute
  def ==(other); end
  def clone; end
  def doctype; end
  def element; end
  def element=(element); end
  def hash; end
  def initialize(first, second = nil, parent = nil); end
  def inspect; end
  def namespace(arg = nil); end
  def node_type; end
  def normalized=(arg0); end
  def prefix; end
  def remove; end
  def to_s; end
  def to_string; end
  def value; end
  def write(output, indent = nil); end
  def xpath; end
  include REXML::Namespace
  include REXML::Node
end
class REXML::CData < REXML::Text
  def clone; end
  def initialize(first, whitespace = nil, parent = nil); end
  def to_s; end
  def value; end
  def write(output = nil, indent = nil, transitive = nil, ie_hack = nil); end
end
module REXML::Functions
end
class REXML::Parsers::XPathParser
  def AdditiveExpr(path, parsed); end
  def AndExpr(path, parsed); end
  def EqualityExpr(path, parsed); end
  def FilterExpr(path, parsed); end
  def FunctionCall(rest, parsed); end
  def LocationPath(path, parsed); end
  def MultiplicativeExpr(path, parsed); end
  def NodeTest(path, parsed); end
  def OrExpr(path, parsed); end
  def PathExpr(path, parsed); end
  def Predicate(path, parsed); end
  def PrimaryExpr(path, parsed); end
  def RelationalExpr(path, parsed); end
  def RelativeLocationPath(path, parsed); end
  def UnaryExpr(path, parsed); end
  def UnionExpr(path, parsed); end
  def abbreviate(path); end
  def expand(path); end
  def get_group(string); end
  def namespaces=(namespaces); end
  def parse(path); end
  def parse_args(string); end
  def predicate(path); end
  def predicate_to_string(path, &block); end
  include REXML::XMLTokens
end
class Object < BasicObject
  def dclone; end
end
class Symbol
  def dclone; end
end
class Integer < Numeric
  def dclone; end
end
class Float < Numeric
  def dclone; end
end
class Array
  def dclone; end
end
class REXML::XPathParser
  def []=(variable_name, value); end
  def child(nodeset); end
  def compare(a, operator, b); end
  def descendant(nodeset, include_self); end
  def descendant_recursive(raw_node, new_nodeset, new_nodes, include_self); end
  def each_unnode(nodeset); end
  def enter(tag, *args); end
  def equality_relational_compare(set1, op, set2); end
  def evaluate_predicate(expression, nodesets); end
  def expr(path_stack, nodeset, context = nil); end
  def filter_nodeset(nodeset); end
  def first(path_stack, node); end
  def following(node); end
  def following_node_of(node); end
  def get_first(path, nodeset); end
  def get_namespace(node, prefix); end
  def initialize(strict: nil); end
  def leave(tag, *args); end
  def match(path_stack, nodeset); end
  def namespaces=(namespaces = nil); end
  def next_sibling_node(node); end
  def node_test(path_stack, nodesets, any_type: nil); end
  def norm(b); end
  def normalize_compare_values(a, operator, b); end
  def parse(path, nodeset); end
  def preceding(node); end
  def preceding_node_of(node); end
  def predicate(path, nodeset); end
  def sort(array_of_nodes, order); end
  def step(path_stack, any_type: nil, order: nil); end
  def strict?; end
  def trace(*args); end
  def unnode(nodeset); end
  def value_type(value); end
  def variables=(vars = nil); end
  include REXML::XMLTokens
end
class REXML::XPathNode
  def context; end
  def initialize(node, context = nil); end
  def position; end
  def raw_node; end
end
class REXML::XPath
  def self.each(element, path = nil, namespaces = nil, variables = nil, options = nil, &block); end
  def self.first(element, path = nil, namespaces = nil, variables = nil, options = nil); end
  def self.match(element, path = nil, namespaces = nil, variables = nil, options = nil); end
  include REXML::Functions
end
class REXML::Element < REXML::Parent
  def [](name_or_index); end
  def __to_xpath_helper(node); end
  def add_attribute(key, value = nil); end
  def add_attributes(hash); end
  def add_element(element, attrs = nil); end
  def add_namespace(prefix, uri = nil); end
  def add_text(text); end
  def attribute(name, namespace = nil); end
  def attributes; end
  def cdatas; end
  def clone; end
  def comments; end
  def context; end
  def context=(arg0); end
  def delete_attribute(key); end
  def delete_element(element); end
  def delete_namespace(namespace = nil); end
  def document; end
  def each_element(xpath = nil, &block); end
  def each_element_with_attribute(key, value = nil, max = nil, name = nil, &block); end
  def each_element_with_text(text = nil, max = nil, name = nil, &block); end
  def each_with_something(test, max = nil, name = nil); end
  def elements; end
  def get_elements(xpath); end
  def get_text(path = nil); end
  def has_attributes?; end
  def has_elements?; end
  def has_text?; end
  def ignore_whitespace_nodes; end
  def initialize(arg = nil, parent = nil, context = nil); end
  def inspect; end
  def instructions; end
  def namespace(prefix = nil); end
  def namespaces; end
  def next_element; end
  def node_type; end
  def prefixes; end
  def previous_element; end
  def raw; end
  def root; end
  def root_node; end
  def text(path = nil); end
  def text=(text); end
  def texts; end
  def whitespace; end
  def write(output = nil, indent = nil, transitive = nil, ie_hack = nil); end
  def xpath; end
  include REXML::Namespace
end
class REXML::Elements
  def <<(element = nil); end
  def [](index, name = nil); end
  def []=(index, element); end
  def add(element = nil); end
  def collect(xpath = nil); end
  def delete(element); end
  def delete_all(xpath); end
  def each(xpath = nil); end
  def empty?; end
  def index(element); end
  def initialize(parent); end
  def inject(xpath = nil, initial = nil); end
  def literalize(name); end
  def size; end
  def to_a(xpath = nil); end
  include Enumerable
end
class REXML::Attributes < Hash
  def <<(attribute); end
  def [](name); end
  def []=(name, value); end
  def add(attribute); end
  def delete(attribute); end
  def delete_all(name); end
  def each; end
  def each_attribute; end
  def get_attribute(name); end
  def get_attribute_ns(namespace, name); end
  def initialize(element); end
  def length; end
  def namespaces; end
  def prefixes; end
  def size; end
  def to_a; end
end
class REXML::XMLDecl < REXML::Child
  def ==(other); end
  def clone; end
  def content(enc); end
  def dowrite; end
  def encoding=(enc); end
  def initialize(version = nil, encoding = nil, standalone = nil); end
  def inspect; end
  def node_type; end
  def nowrite; end
  def old_enc=(encoding); end
  def self.default; end
  def stand_alone?; end
  def standalone; end
  def standalone=(arg0); end
  def version; end
  def version=(arg0); end
  def write(writer, indent = nil, transitive = nil, ie_hack = nil); end
  def writeencoding; end
  def writethis; end
  def xmldecl(version, encoding, standalone); end
  include REXML::Encoding
end
class REXML::Comment < REXML::Child
  def <=>(other); end
  def ==(other); end
  def clone; end
  def initialize(first, second = nil); end
  def node_type; end
  def string; end
  def string=(arg0); end
  def to_s; end
  def write(output, indent = nil, transitive = nil, ie_hack = nil); end
  include Comparable
end
class REXML::Instruction < REXML::Child
  def ==(other); end
  def clone; end
  def content; end
  def content=(arg0); end
  def initialize(target, content = nil); end
  def inspect; end
  def node_type; end
  def target; end
  def target=(arg0); end
  def write(writer, indent = nil, transitive = nil, ie_hack = nil); end
end
class REXML::Output
  def <<(content); end
  def encoding; end
  def initialize(real_IO, encd = nil); end
  def to_s; end
  include REXML::Encoding
end
class REXML::Parsers::StreamParser
  def add_listener(listener); end
  def initialize(source, listener); end
  def parse; end
end
module REXML::Validation
end
class REXML::Validation::ValidationException < RuntimeError
  def initialize(msg); end
end
class REXML::Parsers::TreeParser
  def add_listener(listener); end
  def initialize(source, build_context = nil); end
  def parse; end
end
class REXML::Document < REXML::Element
  def <<(child); end
  def add(child); end
  def add_element(arg = nil, arg2 = nil); end
  def build(source); end
  def clone; end
  def doctype; end
  def document; end
  def encoding; end
  def entity_expansion_count; end
  def expanded_name; end
  def initialize(source = nil, context = nil); end
  def name; end
  def node_type; end
  def record_entity_expansion; end
  def root; end
  def self.entity_expansion_limit; end
  def self.entity_expansion_limit=(val); end
  def self.entity_expansion_text_limit; end
  def self.entity_expansion_text_limit=(val); end
  def self.parse_stream(source, listener); end
  def stand_alone?; end
  def version; end
  def write(*arguments); end
  def xml_decl; end
end
module REXML::StreamListener
  def attlistdecl(element_name, attributes, raw_content); end
  def cdata(content); end
  def comment(comment); end
  def doctype(name, pub_sys, long_name, uri); end
  def doctype_end; end
  def elementdecl(content); end
  def entity(content); end
  def entitydecl(content); end
  def instruction(name, instruction); end
  def notationdecl(content); end
  def tag_end(name); end
  def tag_start(name, attrs); end
  def text(text); end
  def xmldecl(version, encoding, standalone); end
end
