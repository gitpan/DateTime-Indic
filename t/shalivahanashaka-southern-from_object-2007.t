#!perl
#
# $Id: shalivahanashaka-southern-from_object-2007.t 12 2009-07-20 05:05:26Z jaldhar.vyas $
#
use strict;
use warnings;

use Test::More tests => 365;
use DateTime;
use DateTime::Calendar::ShalivahanaShaka::Southern;

# Source Date Panchanga http://www.datepanchang.com/panchang.asp
my $dates = {
    '01' => [
        '1928 pauSha shukla 13',
        '1928 pauSha shukla 14',
        '1928 pauSha shukla 15',
        '1928 pauSha kR^iShNa 1',
        '1928 pauSha kR^iShNa 2',
        '1928 pauSha kR^iShNa 3',
        '1928 pauSha kR^iShNa 4',
        '1928 pauSha kR^iShNa 5',
        '1928 pauSha kR^iShNa 6',
        '1928 pauSha kR^iShNa 7',
        '1928 pauSha kR^iShNa 8',
        '1928 pauSha kR^iShNa adhika 8',
        '1928 pauSha kR^iShNa 9',
        '1928 pauSha kR^iShNa 10',
        '1928 pauSha kR^iShNa 11',
        '1928 pauSha kR^iShNa 12',
        '1928 pauSha kR^iShNa 13',
        '1928 pauSha kR^iShNa 14',
        '1928 pauSha kR^iShNa 30',            
        '1928 mAgha shukla 1',
        '1928 mAgha shukla 3',
        '1928 mAgha shukla 4',
        '1928 mAgha shukla 5',
        '1928 mAgha shukla 6',
        '1928 mAgha shukla 7',
        '1928 mAgha shukla 8',
        '1928 mAgha shukla 9',
        '1928 mAgha shukla 10',
        '1928 mAgha shukla 11',
        '1928 mAgha shukla 12',
        '1928 mAgha shukla 13',
    ],
    '02' => [
        '1928 mAgha shukla 14',
        '1928 mAgha shukla 15',
        '1928 mAgha kR^iShNa 1',
        '1928 mAgha kR^iShNa 2',
        '1928 mAgha kR^iShNa 3',
        '1928 mAgha kR^iShNa 4',
        '1928 mAgha kR^iShNa 5',
        '1928 mAgha kR^iShNa 6',
        '1928 mAgha kR^iShNa 7',
        '1928 mAgha kR^iShNa 8',
        '1928 mAgha kR^iShNa 9',
        '1928 mAgha kR^iShNa 10',
        '1928 mAgha kR^iShNa 11',
        '1928 mAgha kR^iShNa 12',
        '1928 mAgha kR^iShNa 13',
        '1928 mAgha kR^iShNa 14',
        '1928 mAgha kR^iShNa 30',
        '1928 phAlguna shukla 1',
        '1928 phAlguna shukla 2',            
        '1928 phAlguna shukla 3',
        '1928 phAlguna shukla 4',
        '1928 phAlguna shukla 6',
        '1928 phAlguna shukla 7',
        '1928 phAlguna shukla 8',
        '1928 phAlguna shukla 9',
        '1928 phAlguna shukla 10',
        '1928 phAlguna shukla 11',
        '1928 phAlguna shukla 12',
    ],
    '03' => [
        '1928 phAlguna shukla 13',
        '1928 phAlguna shukla 14',
        '1928 phAlguna shukla 15',
        '1928 phAlguna kR^iShNa 1',
        '1928 phAlguna kR^iShNa adhika 1',
        '1928 phAlguna kR^iShNa 2',
        '1928 phAlguna kR^iShNa 3',
        '1928 phAlguna kR^iShNa 4',
        '1928 phAlguna kR^iShNa 5',
        '1928 phAlguna kR^iShNa 6',
        '1928 phAlguna kR^iShNa 7',
        '1928 phAlguna kR^iShNa 8',
        '1928 phAlguna kR^iShNa 9',
        '1928 phAlguna kR^iShNa 10',
        '1928 phAlguna kR^iShNa 11',
        '1928 phAlguna kR^iShNa 12',
        '1928 phAlguna kR^iShNa 13',
        '1928 phAlguna kR^iShNa 14',
        '1928 phAlguna kR^iShNa 30',            
        '1929 chaitra shukla 2',
        '1929 chaitra shukla 3',
        '1929 chaitra shukla 4',
        '1929 chaitra shukla 5',
        '1929 chaitra shukla 6',
        '1929 chaitra shukla 7',
        '1929 chaitra shukla 8',
        '1929 chaitra shukla 9',
        '1929 chaitra shukla 10',
        '1929 chaitra shukla 11',
        '1929 chaitra shukla 12',
        '1929 chaitra shukla 13',
    ],
    '04' => [
        '1929 chaitra shukla 14',
        '1929 chaitra shukla 15',
        '1929 chaitra kR^iShNa 1',
        '1929 chaitra kR^iShNa 2',
        '1929 chaitra kR^iShNa 3',
        '1929 chaitra kR^iShNa 4',
        '1929 chaitra kR^iShNa adhika 4',
        '1929 chaitra kR^iShNa 5',
        '1929 chaitra kR^iShNa 6',
        '1929 chaitra kR^iShNa 7',
        '1929 chaitra kR^iShNa 8',
        '1929 chaitra kR^iShNa 9',
        '1929 chaitra kR^iShNa 10',
        '1929 chaitra kR^iShNa 11',
        '1929 chaitra kR^iShNa 13',
        '1929 chaitra kR^iShNa 14',
        '1929 chaitra kR^iShNa 30',
        '1929 vaishAkha shukla 1',
        '1929 vaishAkha shukla 2',
        '1929 vaishAkha shukla 3',
        '1929 vaishAkha shukla 5',
        '1929 vaishAkha shukla 6',
        '1929 vaishAkha shukla 7',
        '1929 vaishAkha shukla 8',
        '1929 vaishAkha shukla 9',
        '1929 vaishAkha shukla 10',
        '1929 vaishAkha shukla 11',
        '1929 vaishAkha shukla 12',
        '1929 vaishAkha shukla adhika 12',
        '1929 vaishAkha shukla 13',
    ],
    '05' => [
        '1929 vaishAkha shukla 14',
        '1929 vaishAkha shukla 15',
        '1929 vaishAkha kR^iShNa 1',
        '1929 vaishAkha kR^iShNa 2',
        '1929 vaishAkha kR^iShNa 3',
        '1929 vaishAkha kR^iShNa 4',
        '1929 vaishAkha kR^iShNa 5',
        '1929 vaishAkha kR^iShNa 6',
        '1929 vaishAkha kR^iShNa 7',
        '1929 vaishAkha kR^iShNa 8',
        '1929 vaishAkha kR^iShNa 9',
        '1929 vaishAkha kR^iShNa 10',
        '1929 vaishAkha kR^iShNa 11',
        '1929 vaishAkha kR^iShNa 12',
        '1929 vaishAkha kR^iShNa 13',
        '1929 vaishAkha kR^iShNa 30',
        '1929 adhika jyeShTa shukla 1',
        '1929 adhika jyeShTa shukla 2',
        '1929 adhika jyeShTa shukla 3',
        '1929 adhika jyeShTa shukla 4',
        '1929 adhika jyeShTa shukla 5',
        '1929 adhika jyeShTa shukla 6',
        '1929 adhika jyeShTa shukla 7',
        '1929 adhika jyeShTa shukla 8',
        '1929 adhika jyeShTa shukla 9',
        '1929 adhika jyeShTa shukla 10',
        '1929 adhika jyeShTa shukla 11',
        '1929 adhika jyeShTa shukla 12',
        '1929 adhika jyeShTa shukla 13',
        '1929 adhika jyeShTa shukla 14',
        '1929 adhika jyeShTa shukla 15',
    ],
    '06' => [
        '1929 adhika jyeShTa shukla adhika 15',
        '1929 adhika jyeShTa kR^iShNa 1',
        '1929 adhika jyeShTa kR^iShNa 2',
        '1929 adhika jyeShTa kR^iShNa 3',
        '1929 adhika jyeShTa kR^iShNa 4',
        '1929 adhika jyeShTa kR^iShNa 5',
        '1929 adhika jyeShTa kR^iShNa 6',
        '1929 adhika jyeShTa kR^iShNa 8',
        '1929 adhika jyeShTa kR^iShNa 9',
        '1929 adhika jyeShTa kR^iShNa 10',
        '1929 adhika jyeShTa kR^iShNa 11',
        '1929 adhika jyeShTa kR^iShNa 12',
        '1929 adhika jyeShTa kR^iShNa 13',
        '1929 adhika jyeShTa kR^iShNa 14',
        '1929 adhika jyeShTa kR^iShNa 30',
        '1929 jyeShTa shukla 1',
        '1929 jyeShTa shukla 3',
        '1929 jyeShTa shukla 4',
        '1929 jyeShTa shukla 5',
        '1929 jyeShTa shukla 6',
        '1929 jyeShTa shukla 7',
        '1929 jyeShTa shukla 8',
        '1929 jyeShTa shukla adhika 8',
        '1929 jyeShTa shukla 9',
        '1929 jyeShTa shukla 10',
        '1929 jyeShTa shukla 11',
        '1929 jyeShTa shukla 12',
        '1929 jyeShTa shukla 13',
        '1929 jyeShTa shukla 14',
        '1929 jyeShTa shukla 15',
    ],
    '07' => [
        '1929 jyeShTa kR^iShNa 1',
        '1929 jyeShTa kR^iShNa 2',
        '1929 jyeShTa kR^iShNa 3',
        '1929 jyeShTa kR^iShNa 4',
        '1929 jyeShTa kR^iShNa 5',
        '1929 jyeShTa kR^iShNa 6',
        '1929 jyeShTa kR^iShNa 7',
        '1929 jyeShTa kR^iShNa 8',
        '1929 jyeShTa kR^iShNa 9',
        '1929 jyeShTa kR^iShNa 11',
        '1929 jyeShTa kR^iShNa 12',
        '1929 jyeShTa kR^iShNa 13',
        '1929 jyeShTa kR^iShNa 14',
        '1929 jyeShTa kR^iShNa 30',
        '1929 AShADha shukla 1',
        '1929 AShADha shukla 2',
        '1929 AShADha shukla 3',
        '1929 AShADha shukla 4',
        '1929 AShADha shukla 5',
        '1929 AShADha shukla 6',
        '1929 AShADha shukla 7',
        '1929 AShADha shukla 8',
        '1929 AShADha shukla 9',
        '1929 AShADha shukla 10',
        '1929 AShADha shukla 11',
        '1929 AShADha shukla adhika 11',
        '1929 AShADha shukla 12',
        '1929 AShADha shukla 13',
        '1929 AShADha shukla 14',
        '1929 AShADha shukla 15',
        '1929 AShADha kR^iShNa 2',
    ],
    '08' => [
        '1929 AShADha kR^iShNa 3',
        '1929 AShADha kR^iShNa 4',
        '1929 AShADha kR^iShNa 5',
        '1929 AShADha kR^iShNa 6',
        '1929 AShADha kR^iShNa 7',
        '1929 AShADha kR^iShNa 8',
        '1929 AShADha kR^iShNa 9',
        '1929 AShADha kR^iShNa 10',
        '1929 AShADha kR^iShNa 11',
        '1929 AShADha kR^iShNa 12',
        '1929 AShADha kR^iShNa 14',
        '1929 AShADha kR^iShNa 30',
        '1929 shrAvaNa shukla 1',
        '1929 shrAvaNa shukla 2',
        '1929 shrAvaNa shukla 3',
        '1929 shrAvaNa shukla adhika 3',
        '1929 shrAvaNa shukla 4',
        '1929 shrAvaNa shukla 5',
        '1929 shrAvaNa shukla 6',
        '1929 shrAvaNa shukla 7',
        '1929 shrAvaNa shukla 8',
        '1929 shrAvaNa shukla 9',
        '1929 shrAvaNa shukla 10',
        '1929 shrAvaNa shukla 11',
        '1929 shrAvaNa shukla 12',
        '1929 shrAvaNa shukla 13',
        '1929 shrAvaNa shukla 14',
        '1929 shrAvaNa shukla 15',
        '1929 shrAvaNa kR^iShNa 1',
        '1929 shrAvaNa kR^iShNa 2',
        '1929 shrAvaNa kR^iShNa 3',
    ],
    '09' => [
        '1929 shrAvaNa kR^iShNa 5',
        '1929 shrAvaNa kR^iShNa 6',
        '1929 shrAvaNa kR^iShNa 7',
        '1929 shrAvaNa kR^iShNa 8',
        '1929 shrAvaNa kR^iShNa 9',
        '1929 shrAvaNa kR^iShNa 10',
        '1929 shrAvaNa kR^iShNa 11',
        '1929 shrAvaNa kR^iShNa 12',
        '1929 shrAvaNa kR^iShNa 13',
        '1929 shrAvaNa kR^iShNa 14',
        '1929 shrAvaNa kR^iShNa 30',
        '1929 bhAdrapada shukla 1',
        '1929 bhAdrapada shukla 2',
        '1929 bhAdrapada shukla 3',
        '1929 bhAdrapada shukla 4',
        '1929 bhAdrapada shukla 5',
        '1929 bhAdrapada shukla 6',
        '1929 bhAdrapada shukla adhika 6',
        '1929 bhAdrapada shukla 7',
        '1929 bhAdrapada shukla 8',
        '1929 bhAdrapada shukla 9',
        '1929 bhAdrapada shukla 10',
        '1929 bhAdrapada shukla 11',
        '1929 bhAdrapada shukla 12',
        '1929 bhAdrapada shukla 13',
        '1929 bhAdrapada shukla 15',
        '1929 bhAdrapada kR^iShNa 1',
        '1929 bhAdrapada kR^iShNa 2',
        '1929 bhAdrapada kR^iShNa 3',
        '1929 bhAdrapada kR^iShNa 4',
    ],
    '10' => [
        '1929 bhAdrapada kR^iShNa 5',
        '1929 bhAdrapada kR^iShNa 7',
        '1929 bhAdrapada kR^iShNa 8',
        '1929 bhAdrapada kR^iShNa 9',
        '1929 bhAdrapada kR^iShNa 10',
        '1929 bhAdrapada kR^iShNa 11',
        '1929 bhAdrapada kR^iShNa 12',
        '1929 bhAdrapada kR^iShNa 13',
        '1929 bhAdrapada kR^iShNa 14',
        '1929 bhAdrapada kR^iShNa adhika 14',
        '1929 bhAdrapada kR^iShNa 30',
        '1929 ashvina shukla 1',
        '1929 ashvina shukla 2',
        '1929 ashvina shukla 3',
        '1929 ashvina shukla 4',
        '1929 ashvina shukla 5',
        '1929 ashvina shukla 6',
        '1929 ashvina shukla 7',
        '1929 ashvina shukla 8',
        '1929 ashvina shukla 9',
        '1929 ashvina shukla 10',
        '1929 ashvina shukla 11',
        '1929 ashvina shukla 12',
        '1929 ashvina shukla 13',
        '1929 ashvina shukla 14',
        '1929 ashvina shukla 15',
        '1929 ashvina kR^iShNa 2',
        '1929 ashvina kR^iShNa 3',
        '1929 ashvina kR^iShNa 4',
        '1929 ashvina kR^iShNa 5',
        '1929 ashvina kR^iShNa 6',
    ],
    '11' => [
        '1929 ashvina kR^iShNa 7',
        '1929 ashvina kR^iShNa 8',
        '1929 ashvina kR^iShNa 9',
        '1929 ashvina kR^iShNa 10',
        '1929 ashvina kR^iShNa 11',
        '1929 ashvina kR^iShNa 12',
        '1929 ashvina kR^iShNa 13',
        '1929 ashvina kR^iShNa 14',
        '1929 ashvina kR^iShNa 30',
        '1929 kArtika shukla 1',
        '1929 kArtika shukla adhika 1',
        '1929 kArtika shukla 2',
        '1929 kArtika shukla 3',
        '1929 kArtika shukla 4',
        '1929 kArtika shukla 5',
        '1929 kArtika shukla 6',
        '1929 kArtika shukla 7',
        '1929 kArtika shukla 8',
        '1929 kArtika shukla 9',
        '1929 kArtika shukla 10',
        '1929 kArtika shukla 11',
        '1929 kArtika shukla 12',
        '1929 kArtika shukla 14',
        '1929 kArtika shukla 15',
        '1929 kArtika kR^iShNa 1',
        '1929 kArtika kR^iShNa 2',
        '1929 kArtika kR^iShNa 3',
        '1929 kArtika kR^iShNa 4',
        '1929 kArtika kR^iShNa 6',
        '1929 kArtika kR^iShNa 7',
    ],
    '12' => [
        '1929 kArtika kR^iShNa 8',
        '1929 kArtika kR^iShNa 9',
        '1929 kArtika kR^iShNa adhika 9',
        '1929 kArtika kR^iShNa 10',
        '1929 kArtika kR^iShNa 11',
        '1929 kArtika kR^iShNa 12',
        '1929 kArtika kR^iShNa 13',
        '1929 kArtika kR^iShNa 14',
        '1929 kArtika kR^iShNa 30',
        '1929 mArgashIrasa shukla 1',
        '1929 mArgashIrasa shukla 2',
        '1929 mArgashIrasa shukla 3',
        '1929 mArgashIrasa shukla 4',
        '1929 mArgashIrasa shukla 5',
        '1929 mArgashIrasa shukla 6',
        '1929 mArgashIrasa shukla 7',
        '1929 mArgashIrasa shukla 8',
        '1929 mArgashIrasa shukla 9',
        '1929 mArgashIrasa shukla 10',
        '1929 mArgashIrasa shukla 11',
        '1929 mArgashIrasa shukla 12',
        '1929 mArgashIrasa shukla 13',
        '1929 mArgashIrasa shukla 14',
        '1929 mArgashIrasa kR^iShNa 1',
        '1929 mArgashIrasa kR^iShNa 2',
        '1929 mArgashIrasa kR^iShNa 3',
        '1929 mArgashIrasa kR^iShNa 4',
        '1929 mArgashIrasa kR^iShNa 5',
        '1929 mArgashIrasa kR^iShNa 6',
        '1929 mArgashIrasa kR^iShNa 7',
        '1929 mArgashIrasa kR^iShNa 8',
    ],
};

foreach my $month (sort keys %{$dates}) {
    my $day = 0;    
    foreach my $expected (@{$dates->{$month}}) {
        ++$day;
        my $dt = DateTime->new(day => $day, month => $month, year => '2007', 
            time_zone => 'Asia/Calcutta'); 
        # sunrise at Mumbai
        my $date =
        DateTime::Calendar::ShalivahanaShaka::Southern->from_object(
            object    => $dt,

            latitude  => '18.96',
            longitude => '72.82',
        );
        is($date->strftime("%x"), $expected, "$month $day, 2007");
    }
}

