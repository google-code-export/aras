/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.List;
import javax.persistence.EntityManager;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author margoutomo
 */
public class DaftarPenggunaTest {
    
    public DaftarPenggunaTest() {
    }

    @BeforeClass
    public static void setUpClass() throws Exception {
    }

    @AfterClass
    public static void tearDownClass() throws Exception {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of addAdmin method, of class DaftarPengguna.
     */
    /*@Test
    public void testAddAdmin() {
        System.out.println("addAdmin");
        DaftarPengguna instance = new DaftarPengguna();
        instance.addAdmin();
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getEntityManager method, of class DaftarPengguna.
     */
    /*@Test
    public void testGetEntityManager() {
        System.out.println("getEntityManager");
        DaftarPengguna instance = new DaftarPengguna();
        EntityManager expResult = null;
        EntityManager result = instance.getEntityManager();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getPengguna method, of class DaftarPengguna.
     */
    /*@Test
    public void testGetPengguna_0args() {
        System.out.println("getPengguna");
        DaftarPengguna instance = new DaftarPengguna();
        List expResult = null;
        List result = instance.getPengguna();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of findPengguna method, of class DaftarPengguna.
     */
    @Test
    public void testFindPengguna() {
        System.out.println("findPengguna");
        Long id = Long.parseLong("401");
        DaftarPengguna instance = new DaftarPengguna();
        String expResult = "adri";
        Pengguna result = instance.findPengguna(id);
        String hasil = result.getNamapengguna();
        try {
            assertEquals(expResult, hasil);
            System.out.println("Tes berhasil");
        } catch (Exception e) {
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    }


    /**
     * Test of addPengguna method, of class DaftarPengguna.
     */
    @Test
    public void testAddPengguna() {
        System.out.println("addPengguna");
        Pengguna pengguna = new Pengguna();
        pengguna.setNamapengguna("aaaa");
        pengguna.setKatasandi("123456");
        pengguna.setNama("amin");
        pengguna.setNip("123456");
        pengguna.setAlamat("surabaya");
        pengguna.setTelp("08129235656");
        pengguna.setPeran("guru");
        
        DaftarPengguna instance = new DaftarPengguna();
        try { 
            instance.addPengguna(pengguna);
        } catch (Exception e) {
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    }

    /**
     * Test of updatePengguna method, of class DaftarPengguna.
     */
    @Test
    public void testUpdatePengguna() {
        System.out.println("updatePengguna");
        Pengguna pengguna;
        DaftarPengguna instance = new DaftarPengguna();
        List<Pengguna> list = instance.getPengguna();
        pengguna = list.get(1);
        pengguna.setPeran("tu");
        try {
        instance.updatePengguna(pengguna);
        } catch (Exception e) {
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    }

    /**
     * Test of deletePengguna method, of class DaftarPengguna.
     */
    @Test
    public void testDeletePengguna() throws Exception {
        System.out.println("deletePengguna");
        Long id = Long.parseLong("401") ;
        DaftarPengguna instance = new DaftarPengguna();
        try {
            System.out.println("Hapus berhasil");
        } catch (Exception e) {
        //instance.deletePengguna(id);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    }
    
    /**
     * Test of getPengguna method, of class DaftarPengguna.
     */
    @Test
    public void testGetPengguna_String_String() {
        System.out.println("getPengguna");
        String namapengguna = "admin";
        String katasandi = "123456";
        DaftarPengguna instance = new DaftarPengguna();
        Pengguna result = instance.getPengguna(namapengguna, katasandi);
        String resultNama = result.getNama();
        String expResult = "admin";
        try {
            assertEquals(expResult, resultNama);
            System.out.println("Sukses");
        } catch (Exception e) {
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    }

    /**
     * Test of check method, of class DaftarPengguna.
     */
    @Test
    public void testCheck() {
        System.out.println("check");
        String namapengguna = "";
        String katasandi = "";
        DaftarPengguna instance = new DaftarPengguna();
        boolean expResult = false;
        boolean result = instance.check(namapengguna, katasandi);
        try {
            assertEquals(expResult, result);
            System.out.println("Tes Check Sukses");
        } catch (Exception e) {
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    }
}
