import java.util.Random;

public class Paquet {
    
    private Carte[] carte;

    public Paquet(){
        carte = new Carte[0];
    }

    public Paquet(Carte[] c){
        this.carte=c;
    }

    public int getNbCartes(){
        return this.carte.length;
    }

    public Carte getCarte(int place){
        Carte res=null;
        if(place < carte.length){
            res=this.carte[place];
        }
        return res;
    }

    public void ajouterCarteFin(Carte c){
        Carte[] a = new Carte[this.carte.length+1];
        int i=0;
        for(i=0;i<carte.length;i++){
            a[i]=this.carte[i];
        }
        a[i]=c;
        this.carte = a;
    }

    public Carte retirerCarte(int place){
        Carte res = null;
        if(place <= this.carte.length){
            Carte[] a = new Carte[this.carte.length-1];
            int i =0;
            while(i<place && i<this.carte.length){
                a[i]=this.carte[i];
                i++;
            }
            while(i<this.carte.length-1){
                a[i]=this.carte[i+1];
                i++;
            }
            res = this.carte[place];
            this.carte = a;
        }
        return res;
    }

    public void ajouterCarteDebut(Carte c){
        Carte[] a = new Carte[this.carte.length+1];
        a[0]=c;
        for(int i=1;i<=carte.length;i++){
            a[i]=this.carte[i-1];
        }
        this.carte = a;
    }

    public void ajouterCarte(Carte c, int place){
        if(place<this.carte.length){
            Carte[] ca = new Carte[this.carte.length+1];
            int i =0;
            while(i<=place){
                ca[i]=this.carte[i];
                i++;
            }
            ca[i]=c;
            i++;
            while(i<this.carte.length){
                ca[i]=this.carte[i-1];
                i++;
            }
            this.carte=ca;
        }
    }

    public Paquet(String nomFicher){
        LectureFichier lf = new LectureFichier(nomFicher);
        String[] fich = lf.lireFichier();

        this.carte = new Carte[fich.length];
        for(int i=0; i<fich.length; i++){
            Carte c = new Carte(fich[i]);
            this.carte[i]=c;
        }
    }

    public Carte piocherHasard(){
        Random r = new Random();
        int rdm = r.nextInt(this.carte.length-1);
        this.retirerCarte(rdm);
        return this.carte[rdm];
    }

    public String toString(){
        String res ="";
        for(int i =0;i<this.carte.length;i++){
            res += "-----------------------------\n"+this.carte[i].toString()+"\n-----------------------------\n";
        }
        return res;
    }
}