package ONVIF::Media::Types::IPv4Configuration;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Manual_of :ATTR(:get<Manual>);
my %LinkLocal_of :ATTR(:get<LinkLocal>);
my %FromDHCP_of :ATTR(:get<FromDHCP>);
my %DHCP_of :ATTR(:get<DHCP>);

__PACKAGE__->_factory(
    [ qw(        Manual
        LinkLocal
        FromDHCP
        DHCP

    ) ],
    {
        'Manual' => \%Manual_of,
        'LinkLocal' => \%LinkLocal_of,
        'FromDHCP' => \%FromDHCP_of,
        'DHCP' => \%DHCP_of,
    },
    {
        'Manual' => 'ONVIF::Media::Types::PrefixedIPv4Address',
        'LinkLocal' => 'ONVIF::Media::Types::PrefixedIPv4Address',
        'FromDHCP' => 'ONVIF::Media::Types::PrefixedIPv4Address',
        'DHCP' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
    },
    {

        'Manual' => 'Manual',
        'LinkLocal' => 'LinkLocal',
        'FromDHCP' => 'FromDHCP',
        'DHCP' => 'DHCP',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::IPv4Configuration

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
IPv4Configuration from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Manual


=item * LinkLocal


=item * FromDHCP


=item * DHCP




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::IPv4Configuration
   Manual =>  { # ONVIF::Media::Types::PrefixedIPv4Address
     Address => $some_value, # IPv4Address
     PrefixLength =>  $some_value, # int
   },
   LinkLocal =>  { # ONVIF::Media::Types::PrefixedIPv4Address
     Address => $some_value, # IPv4Address
     PrefixLength =>  $some_value, # int
   },
   FromDHCP =>  { # ONVIF::Media::Types::PrefixedIPv4Address
     Address => $some_value, # IPv4Address
     PrefixLength =>  $some_value, # int
   },
   DHCP =>  $some_value, # boolean
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
