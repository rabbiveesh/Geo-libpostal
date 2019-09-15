use Test2::V0;
use Geo::libpostal ':all';

my $labels = [ qw/ house_number road city state postcode /];

is [ near_dupe_hashes( $labels,
  [ 555, 'your face ln', 'cleveland hts', 'oh', 44118]) ],
  [ 'act|your face lane|555|cleveland heights',
    'act|your face line|555|cleveland heights',
    'act|yourface|555|cleveland heights' ],
  'gets that hash! w/ multiple values';

is [ near_dupe_hashes( $labels,
    [ 'nine ninety nine', 'ave rd', 'aurora', 'california', '55223']) ],
   [ 'act|avenue road|999|aurora',
     'act|avenue|999|aurora'],
   'gets another one';


done_testing;
  
