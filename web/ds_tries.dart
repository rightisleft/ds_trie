import 'package:ds_tries/tries.dart';

Trie _aTrie = new Trie();

void main() {

  for(int i = 0; i < Data.list_items.length -1; i++) {
    String word = Data.list_items[i];
    _aTrie.addWord(_aTrie, word); 
  }
  
  outputInfomation('sand');
  outputInfomation('s');
  outputInfomation('andy');
  
}

void outputInfomation(String needle) {
  var count = _aTrie.countWords(_aTrie, needle);
  var pref = _aTrie.countPrefixes(_aTrie, needle);
  
  print('count: ' + needle + ': ' + count.toString() );
  print('prefix: ' + needle + ': ' + pref.toString() );
}

class Data
{
  static List list_items = [ 'sanatoria', 'aligator', 'alibastor', 'andy', 'andyson',
                      'sanatorium',
                      'sanatoriums',
                      'sanbenito',
                      'sanbenitos',
                      'sancta',
                      'sanctification',
                      'sanctifications',
                      'sanctified',
                      'sanctifier',
                      'sanctifiers',
                      'sanctifies',
                      'sanctify',
                      'sanctifying',
                      'sanctimonies',
                      'sanctimonious',
                      'sanctimoniously',
                      'sanctimoniousness',
                      'sanctimoniousnesses',
                      'sanctimony',
                      'sanction',
                      'sanctionable',
                      'sanctioned',
                      'sanctioning',
                      'sanctions',
                      'sanctities',
                      'sanctity',
                      'sanctuaries',
                      'sanctuary',
                      'sanctum',
                      'sanctums',
                      'sand',
                      'sandal',
                      'sandaled',
                      'sandaling',
                      'sandalled',
                      'sandalling',
                      'sandals',
                      'sandalwood',
                      'sandalwoods',
                      'sandarac',
                      'sandaracs',
                      'sandbag',
                      'sandbagged',
                      'sandbagger',
                      'sandbaggers',
                      'sandbagging',
                      'sandbags',
                      'sandbank',
                      'sandbanks',
                      'sandbar',
                      'sandbars',
                      'sandblast',
                      'sandblasted',
                      'sandblaster',
                      'sandblasters',
                      'sandblasting',
                      'sandblasts',
                      'sandbox',
                      'sandboxes',
                      'sandbur',
                      'sandburr',
                      'sandburrs',
                      'sandburs',
                      'sanddab',
                      'sanddabs',
                      'sanded',
                      'sander',
                      'sanderling',
                      'sanderlings',
                      'sanders',
                      'sandfish',
                      'sandfishes',
                      'sandflies',
                      'sandfly',
                      'sandglass',
                      'sandglasses',
                      'sandgrouse',
                      'sandgrouses',
                      'sandhi',
                      'sandhis',
                      'sandhog',
                      'sandhogs',
                      'sandier',
                      'sandiest',
                      'sandiness',
                      'sandinesses',
                      'sanding',
                      'sandlike',
                      'sandling',
                      'sandlings',
                      'sandlot',
                      'sandlots',
                      'sandlotter',
                      'sandlotters',
                      'sandman',
                      'sandmen',
                      'sandpainting',
                      'sandpaintings',
                      'sandpaper',
                      'sandpapered',
                      'sandpapering',
                      'sandpapers',
                      'sandpapery',
                      'sandpeep',
                      'sandpeeps',
                      'sandpile',
                      'sandpiles',
                      'sandpiper',
                      'sandpipers',
                      'sandpit',
                      'sandpits',
                      'sands',
                      'sandshoe',
                      'sandshoes',
                      'sandsoap',
                      'sandsoaps',
                      'sandspur',
                      'sandspurs',
                      'sandstone',
                      'sandstones',
                      'sandstorm',
                      'sandstorms',
                      'sandwich',
                      'sandwiched',
                      'sandwiches',
                      'sandwiching',
                      'sandworm',
                      'sandworms',
                      'sandwort',
                      'sandworts',
                      'sandy',
                      'sane',
                      'saned',
                      'sanely',
                      'saneness',
                      'sanenesses',
                      'saner',
                      'sanes',
                      'sanest',
                      'sang',
                      'sanga',
                      'sangar',
                      'sangaree',
                      'sangarees',
                      'sangars',
                      'sangas',
                      'sanger',
                      'sangers',
                      'sangfroid',
                      'sangfroids',
                      'sangh',
                      'sanghs',
                      'sangria',
                      'sangrias',
                      'sanguinaria',
                      'sanguinarias',
                      'sanguinarily',
                      'sanguinary',
                      'sanguine',
                      'sanguinely',
                      'sanguineness',
                      'sanguinenesses',
                      'sanguineous',
                      'sanguines',
                      'sanguinities',
                      'sanguinity',
                      'sanicle',
                      'sanicles',
                      'sanies',
                      'saning',
                      'sanious',
                      'sanitaria',
                      'sanitarian',
                      'sanitarians',
                      'sanitaries',
                      'sanitarily',
                      'sanitarium',
                      'sanitariums',
                      'sanitary',
                      'sanitate',
                      'sanitated',
                      'sanitates',
                      'sanitating',
                      'sanitation',
                      'sanitations',
                      'sanities',
                      'sanitise',
                      'sanitised',
                      'sanitises',
                      'sanitising',
                      'sanitization',
                      'sanitizations',
                      'sanitize',
                      'sanitized',
                      'sanitizes',
                      'sanitizing',
                      'sanitoria',
                      'sanitorium',
                      'sanitoriums',
                      'sanity',
                      'sanjak',
                      'sanjaks',
                      'sank',
                      'sannop',
                      'sannops',
                      'sannup',
                      'sannups',
                      'sannyasi',
                      'sannyasin',
                      'sannyasins',
                      'sannyasis',
                      'sans',
                      'sansar',
                      'sansars',
                      'sansculotte',
                      'sansculottes',
                      'sansculottic',
                      'sansculottish',
                      'sansculottism',
                      'sansculottisms',
                      'sansei',
                      'sanseis',
                      'sanserif',
                      'sanserifs',
                      'sansevieria',
                      'sansevierias',
                      'santalic',
                      'santalol',
                      'santalols',
                      'santimi',
                      'santims',
                      'santir',
                      'santirs',
                      'santo',
                      'santol',
                      'santolina',
                      'santolinas',
                      'santols',
                      'santonin',
                      'santonins',
                      'santos',
                      'santour',
                      'santours',
                      'santur',
                      'santurs'];

}
