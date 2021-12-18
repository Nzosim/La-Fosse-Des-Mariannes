/**
 * represente une carte trés simple juste avec une valeur
 */
class Carte{

  /** 
   * la valeur de la carte
   */
  private String evenement;
  private int date;
  private boolean recto = false;

  /**
   * constructeur de carte
   * 
   * @param val valeur de la carte
   */
  public Carte (String nom){        
    int i=0;
    String n="";
    while(nom.charAt(i) != ':'){
      n+=nom.charAt(i);
      i++;
    }
    this.evenement=n;
    i++;
    String date="";
    while(i< nom.length()){
      date+=nom.charAt(i);
      i++;
    }
    this.date=Integer.parseInt(date);
  }

  public String toString(){
    String res = "";
    if(recto){
      res += this.evenement;
    }else{
      res+= "???";
    }
    return res+" -> "+this.evenement;
  }

  public void retournerCarte(){
    if(this.recto == false){
      this.recto = true;
    }else{
      this.recto = false;
    }
  }

  public String getEvenement(){
    return this.evenement;
  }

  public int getDate(){
    return this.date;
  }

  public boolean getRecto(){
    return this.recto;
  }
} 