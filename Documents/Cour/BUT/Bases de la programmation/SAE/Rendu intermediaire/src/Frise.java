import libtest.ThreadExecutionTest;

public class Frise{

    private Carte[] cartes;

    public Frise(Carte[] c){
        this.cartes = c;
        for(int i=0; i<this.cartes.length;i++){
            if(!this.cartes[i].getRecto())
            this.cartes[i].retournerCarte();
        }
    }

    public void ajoutCarteFin(Carte c){
        int i = 0;
        Carte[] ca = new Carte[this.cartes.length+1];
        while(i<=this.cartes.length && c.getDate()>this.cartes[i].getDate()){
            ca[i]=this.cartes[i];
            i++;
        }
        ca[i]=c;
        i++;
        while(i<this.cartes.length){
            ca[i]=this.cartes[i-1];
            i++;
        }
        this.cartes=ca;
    }

    public boolean verifierCarteApres(Carte c, int p){
        boolean res = false;
        if(this.cartes[p].getDate()<=c.getDate() && this.cartes[p+1].getDate()>=c.getDate()){
            res = true;
        }
        return res;
    }

    public boolean insererCarteApres(Carte c, int place){
        boolean res = false;
        if(place<this.cartes.length && verifierCarteApres(c, place)){
            Carte[] ca = new Carte[this.cartes.length+1];
            int i =0;
            while(i<=place){
                ca[i]=this.cartes[i];
                i++;
            }
            ca[i]=c;
            i++;
            while(i<this.cartes.length){
            ca[i]=this.cartes[i-1];
            i++;
            }
            this.cartes=ca;
    }
        return res;
    }

    public String toString(){
        String res ="";
        for(int i =0;i<this.cartes.length;i++){
            res += "-----------------------------\n"+this.cartes[i].toString()+"\n-----------------------------\n";
        }
        return res; 
    }

    public Carte getCartes(int i){
        return this.cartes[i];
    }

    public int getNbCartes(){
        return this.cartes.length;
    }

}