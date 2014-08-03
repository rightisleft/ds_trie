class Trie {
  int words;
  int prefixes;
  Map edges;
  
  
  Trie() {    
    // init empty structure
    this.words = 0;
    this.prefixes = 0;
    this.edges = new Map();  
  }
  

  void addWord(Trie vertex, String word) {
    
    if(word == null || word == "") {
      vertex.words += 1;
    } else {
      vertex.prefixes += 1;
      String k = firstCharacter(word);
      
      // ensure next edge exists in tree
      if( vertex.edges[k] == null) {
        //create a new edge
        Trie aValue = new Trie();
        vertex.edges[k] = aValue;
      }
      addWord(vertex.edges[k], cutLeftmostCharacter(word) );
    }    
  }
  
  int countPrefixes(Trie vertex, prefixes) {
   
    String k = firstCharacter(prefixes);
    int aPref = 0;
    
    if(prefixes == null || prefixes == "") {
      aPref = vertex.prefixes;
    } else if ( !vertex.edges.containsKey(k) ) {
      aPref = 0;
    } else {
      String j = cutLeftmostCharacter(prefixes);
      aPref = countPrefixes(vertex.edges[k], j);
    }
     
    return aPref;
  }
  
  int countWords(Trie vertex, String word) {
    
    String k = firstCharacter(word);
    int aNum;
   
    if(word == null || word == "") {
      aNum = vertex.words;
    } else if ( !vertex.edges.containsKey(k) ) {
      aNum = 0;
    } else {
      String j = cutLeftmostCharacter(word);
      aNum = countWords(vertex.edges[k], j);
    }
     
    return aNum;
  }
  
  String cutLeftmostCharacter(String word) {
    return word.substring(1, word.length);;
  }
  
  String firstCharacter(String word){     
    return (word == '') ? '' : word.substring(0, 1);;
  }
    
}
