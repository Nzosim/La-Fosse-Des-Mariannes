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
		assertEquals("premiere date devrait etre -9000", -9000, frise.getCartes(0).getDate());
		assertEquals("deuxieme date devrait etre -548", -548, frise.getCartes(1).getDate());
		assertEquals("troisieme date devrait etre -200", -200, frise.getCartes(2).getDate());
		
	}

	/**
	 * test du constructeur sans carte
	 */
	@Test
	public void test2_constructeurSansCarte() {
		Carte[] tab = new Carte[0];
		
		Frise frise = new Frise(tab);
		assertEquals("frise devrait avoir 0 cartes", 0, frise.getNbCartes());
		
	}

	/**
	 * test verifierCarteApres OK
	 */
	@Test
	public void test3_verifierCarteApresOK() {
		LectureFichier lf = new LectureFichier("../cartes/timeline.txt");
		String[] fich = lf.lireFichier();

		Carte[] tab = new Carte[2];
		tab[0] = new Carte(fich[0]);
		tab[1] = new Carte(fich[1]);
					
		Carte test = new Carte(fich[2]);
		Frise frise = new Frise(tab);
		assertEquals("verifier carte devrait retourner true", true, frise.verifierCarteApres(test, 0));
		assertEquals("verifier carte devrait retourner false", false, frise.verifierCarteApres(test, 1));
	}

	/**
	 * test verifierCarteApres indice hors tableau
	 */
	@Test
	public void test4_verifierCarteApresIndiceTropEleve() {
		LectureFichier lf = new LectureFichier("../cartes/timeline.txt");
		String[] fich = lf.lireFichier();

		Carte[] tab = new Carte[2];
		tab[0] = new Carte(fich[0]);
		tab[1] = new Carte(fich[1]);
					
		Carte test = new Carte(fich[2]);
		Frise frise = new Frise(tab);
		assertEquals("verifier carte devrait retourner false", false, frise.verifierCarteApres(test, 17));
	}

	/**
	 * test insererCarteApres OK
	 */
	@Test
	public void test5_insererCarteApresOK() {
		LectureFichier lf = new LectureFichier("../cartes/timeline.txt");
		String[] fich = lf.lireFichier();

		Carte[] tab = new Carte[2];
		tab[0] = new Carte(fich[0]);
		tab[1] = new Carte(fich[1]);
					
		Carte test = new Carte(fich[2]);
		Frise frise = new Frise(tab);
		assertEquals("verifier carte devrait retourner true", true, frise.insererCarteApres(test, 0));
		assertEquals("verifier carte devrait retourner false", false, frise.insererCarteApres(test, 1));
	}

	/**
	 * test insererCarteApres indice hors tableau
	 */
	@Test
	public void test6_insererCarteApresIndiceTropEleve() {
		LectureFichier lf = new LectureFichier("../cartes/timeline.txt");
		String[] fich = lf.lireFichier();

		Carte[] tab = new Carte[2];
		tab[0] = new Carte(fich[0]);
		tab[1] = new Carte(fich[1]);
					
		Carte test = new Carte(fich[2]);
		Frise frise = new Frise(tab);
		assertEquals("verifier carte devrait retourner false", false, frise.insererCarteApres(test, 17));
	}

	/**
	 * test ajouterCarteTrie OK
	 */
	@Test
	public void test7_ajouterCarteTrieOK() {
		LectureFichier lf = new LectureFichier("../cartes/timeline.txt");
		String[] fich = lf.lireFichier();

		Carte[] tab = new Carte[2];
		tab[0] = new Carte(fich[0]);
		tab[1] = new Carte(fich[1]);
					
		Carte test = new Carte(fich[2]);
		Frise frise = new Frise(tab);
		frise.ajouterCarteTrie(test);

		assertEquals("premiere date devrait etre -9000", -9000, frise.getCartes(0).getDate());
		assertEquals("deuxieme date devrait etre -548", -548, frise.getCartes(1).getDate());
		assertEquals("troisieme date devrait etre -200", -200, frise.getCartes(2).getDate());
	}
}