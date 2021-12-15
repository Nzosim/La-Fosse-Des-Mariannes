import java.util.Scanner;

/**
 * classe jeu
 */
public class Jeu {
    
    /**
     * attribut de la classe jeu
     * un Paquet de carte mainJ qui represente la main du joueur
     * un Paquet de carte Pioche qui represente la pioche du jeu
     * une Frise frise qui represente la frise des cartes deja place
     */
    private Paquet mainJ = new Paquet();
    private Paquet pioche = new Paquet();
    private Frise frise = new Frise();

    /**
     * constructeur de la classe jeu qui ajoute les cartes du fichier en parametre dans la pioche
     * et ajoute le bon nombre de carte a la main du joueur en fonction de tailleMain
     * @param tailleMain taille de la main du joueur
     * @param nomFicher nom du fichier qui contient les cartes
     */
    public Jeu(int tailleMain, String nomFicher){
        LectureFichier lf = new LectureFichier(nomFicher);
        String[] fich = lf.lireFichier();

        Carte[] ct = new Carte[fich.length];
        for(int i = 0; i < ct.length; i++){
            ct[i]=new Carte(fich[i]);
        }
        this.pioche = new Paquet(ct);

        Carte[] cm = new Carte[tailleMain];
        for(int i = 0; i < tailleMain; i++){
            cm[i]=pioche.piocherHasard();
        }
        this.mainJ= new Paquet(cm);
    }

    /**
     * methode fonctionnement permet de jouer, elle demande une carte a poser et une place 
     * et essaie de la placer si possible tout en verifiant si le jeu est fini ou non
     */
    public void fonctionnement(){
        Scanner sc = new Scanner(System.in);
        System.out.println("-----------------------------\nmain du joueur");
        System.out.println(this.mainJ);
        int cart = -1;
        while (cart < 0 || cart > this.mainJ.getNbCartes()){
            System.out.println("Quel carte de votre main ?");
            cart = sc.nextInt();
        }
        System.out.println("- carte jouee : "+this.mainJ.getCarte(cart)+"!!! Une carte de placee !!!\n");
        this.frise.insererCarteApres(this.mainJ.getCarte(cart), -1);
        this.mainJ.retirerCarte(cart);

        while(!this.fin()){
            String res="-----------------------------\nfrise\n";
            res+=this.frise;
            res+="main du joueur\n";
            res+=mainJ;
            System.out.println(res);

            cart = -1;
            while (cart < 0 || cart >= this.mainJ.getNbCartes()){
                System.out.println("Quel carte de votre main ?");
                cart = sc.nextInt();
            }
            System.out.println(this.mainJ.getCarte(cart));

            int pos = -2;
            while(pos < -1 || pos > this.frise.getNbCartes()-1){
                System.out.println("Derriere quelle carte de la frise ?");
                pos = sc.nextInt();
            }
            if(pos == -1){
                System.out.println("avant ...\n   - "+this.frise.getCartes(0)+"\n");
            }else if(pos == this.frise.getNbCartes()){
                System.out.println("entre ...\n   - "+this.frise.getCartes(pos)+"\n   - "+this.frise.getCartes(pos+1)+"\n");
            }else{
                System.out.println("apres ...\n   - "+this.frise.getCartes(pos)+"\n");
            }

            if(this.frise.verifierCarteApres(this.mainJ.getCarte(cart), pos)){
                this.frise.insererCarteApres(this.mainJ.getCarte(cart), pos);
                Carte c = this.pioche.piocherHasard();
                c.retournerCarte();
                this.mainJ.ajouterCarteFin(c);
                System.out.println("!!! Une carte de placee !!!");
            }else{
                System.out.println("NNNNNOOOOOONNNNNNNN");
                this.mainJ.ajouterCarteFin(this.pioche.piocherHasard());
            }
        }
        sc.close();
    }

    /**
     * methode fin permet de savoir si le jeu est terminer ou non le jeu se termine lorsque la pioche est vide 
     * ou lorsque la main du joueur est vide
     * @return si le jeu est fini ou non 
     */
    public boolean fin(){
        return (this.mainJ.getNbCartes() == 0 || this.pioche.getNbCartes() == 0);
    }
}