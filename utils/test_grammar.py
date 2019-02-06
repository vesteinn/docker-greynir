#!/usr/bin/env python
# -*- coding: utf-8 -*

import urllib, urllib2

SHOULD_PASS = (
    'Það kólnaði um kvöldið.',
    'Sólin skein.',
    'Maðurinn kastaði hrjúfum steininum.',
    'Laus hundur beit bréfberann við dyrnar.',
    'Vel myndaða setningin hentaði í dæmið.',
    'Jólasveinninn gaf börnunum kol í skóinn.'
)

SHOULD_NOT_PASS = (
    'Þess kólnaði um kvöldið.',
    'Það kólnaði um kvöldinu.',
    'Sólina skein.',
    'Vel maðurinn köstuðum steininum.',
    'Maðurinn kastaði steinsins.',
    'Lausum hundum beit bréfberann við dyrnar.',
    'Laus hundur beit bréfberans við dyrnar.',
    'Laus hundur beit bréfberann við dyranna.',
    'Vel myndaða setningarnar hentuðu í dæmið.',
    'Jólasveinanna gaf börnunum kol í skóinn.',
    'Jólasveinninn gaf börnunum kol í skórnir.'
)

BASE_URL = "http://localhost:5050/treegrid?txt="
ERROR = 'Engin greining fannst.'

BRIGHT_GREEN = u"\u001b[32;1m"
BRIGHT_RED = u"\u001b[31;1m"


def test_sentence(s, should_pass=True):
    quoted_query = urllib.quote(s)
    content = urllib2.urlopen(BASE_URL + quoted_query).read()
    if should_pass:
        ok = ERROR not in content
    else:
        ok = ERROR in content
    if ok:
        col = BRIGHT_GREEN
    else:
        col = BRIGHT_RED
    result = "{}{}:\t{}".format(col, s, ok)
    print(result)

print(u"\u001b[37;1m----- SHOULD PASS -----")
for s in SHOULD_PASS:
     test_sentence(s, True)

print(u"\u001b[37;1m----- SHOULD NOT PASS -----")
for s in SHOULD_NOT_PASS:
    test_sentence(s, False)
