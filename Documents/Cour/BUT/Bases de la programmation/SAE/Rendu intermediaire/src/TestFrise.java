import static libtest.Lanceur.lancer;
import static libtest.OutilTest.assertEquals;
import libtest.*;

/**
 * classe de test qui permet de verifier que la classe Frise
 * fonctionne correctement
 */
public class TestFrise {

	/**
	 * methode de lancement des tests
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		lancer(new TestFrise(), args);
	}

	
	// #######################################
	// ##  tests a ecrire
	// #######################################

	/**
	 * test du constructeur parametres
	 */
	@Test
	public void test1_constructeurParam() {
		LectureFichier lf = new LectureFichier("../cartes/timeline.txt");
		String[] fich = lf.lireFichier();

		Carte[] tab = new Carte[3];
		tab[0] = new Carte(fich[0]);
		tab[1] = new Carte(fich[1]);
		tab[2] = new Carte(fich[2]);
					
		Frise frise = new Frise(tab);
		assertEquals("frise devrait avoir 3 cartes", 3, frise.getNbCartes());
	}

	/**
	 * test getCarte OK
	 */
	@Test
	public void test2_getCartes_ok() {
		LectureFichier lf = new LectureFichier("../cartes/timeline.txt");
		String[] fich = lf.lireFichier();

		Carte[] tab = new Carte[3];
		tab[0] = new Carte(fich[0]);
		tab[1] = new Carte(fich[1]);
		tab[2] = new Carte(fich[2]);
					
		Frise frise = new Frise(tab);
		assertEquals("frise devrait avoir 3 cartes", 3, frise.getNbCartes());

        Carte c = frise.getCartes(1);
		assertEquals("la carte 1 a pour valeur -200", -200, c.getDate());
	}

	/**
	 * test getCarte hors tableau
	 */
	@Test
	public void test3_getCarte_horsTableau() {
		LectureFichier lf = new LectureFichier("../cartes/timeline.txt");
		String[] fich = lf.lireFichier();

		Carte[] tab = new Carte[3];
		tab[0] = new Carte(fich[0]);
		tab[1] = new Carte(fich[1]);
		tab[2] = new Carte(fich[2]);
					
		Frise frise = new Frise(tab);
		assertEquals("paquet devrait avoir 3 cartes", 3, frise.getNbCartes());

        Carte c = frise.getCartes(3);
		assertEquals("la carte 3 n'existe pas", null, c);
	}
}