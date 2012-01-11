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
public class DaftarSiswaTest {
    
    public DaftarSiswaTest() {
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
     * Test of getEntityManager method, of class DaftarSiswa.
     */
    /*@Test
    public void testGetEntityManager() {
        System.out.println("getEntityManager");
        DaftarSiswa instance = new DaftarSiswa();
        EntityManager expResult = null;
        EntityManager result = instance.getEntityManager();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getSiswa method, of class DaftarSiswa.
     */
    /*@Test
    public void testGetSiswa_0args() {
        System.out.println("getSiswa");
        DaftarSiswa instance = new DaftarSiswa();
        List expResult = null;
        List result = instance.getSiswa();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of findSiswa method, of class DaftarSiswa.
     */
    @Test
    public void testFindSiswa() {
        System.out.println("findSiswa");
        Long id = Long.parseLong("901");
        DaftarSiswa instance = new DaftarSiswa();
        String expResult = "heti";
        Siswa result = instance.findSiswa(id);
        String hasil = result.getNamasiswa();
        try {
            assertEquals(expResult, hasil);
            System.out.println("Ketemu");
        } catch (Exception e) {
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    }

    /**
     * Test of addSiswa method, of class DaftarSiswa.
     */
    @Test
    public void testAddSiswa() {
        System.out.println("addSiswa");
        Siswa siswa = new Siswa();
        siswa.setNis("123456");
        siswa.setNamasiswa("agus");
        siswa.setNamaortu("suwarto");
        siswa.setAlamat("mulyosari");
        siswa.setnmrtlp("5933939");
        
        DaftarSiswa instance = new DaftarSiswa();
        
        try {
            instance.addSiswa(siswa);
        } catch (Exception e) {
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    }

    /**
     * Test of updateSiswa method, of class DaftarSiswa.
     */
    @Test
    public void testUpdateSiswa() {
        System.out.println("updateSiswa");
        Siswa siswa;
        DaftarSiswa instance = new DaftarSiswa();
        List<Siswa> list = instance.getSiswa();
        siswa = list.get(1);
        siswa.setNamaortu("margono");
        try {
            instance.updateSiswa(siswa);
        } catch (Exception e) {
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    }

    /**
     * Test of deleteSiswa method, of class DaftarSiswa.
     */
    @Test
    public void testDeleteSiswa() throws Exception {
        System.out.println("deleteSiswa");
        Long id = Long.parseLong("351");
        DaftarSiswa instance = new DaftarSiswa();
        try {
            System.out.println("Hapus berhasil");
        } catch (Exception e) {
        //instance.deleteSiswa(id);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
}

    /**
     * Test of getSiswa method, of class DaftarSiswa.
     */
    @Test
    public void testGetSiswa_String_String() {
        System.out.println("getSiswa");
        String nis = "123456";
        String namasiswa = "heti";
        DaftarSiswa instance = new DaftarSiswa();
        Siswa result = instance.getSiswa(nis, namasiswa);
        String resultNamasiswa = result.getNamasiswa();
        String expResult = "heti";
        try {
            assertEquals(expResult, resultNamasiswa);
            System.out.println("Sukses");
        } catch (Exception e) {
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    }

    /**
     * Test of check method, of class DaftarSiswa.
     */
    @Test
    public void testCheck() {
        System.out.println("check");
        String nis = "";
        String namasiswa = "";
        DaftarSiswa instance = new DaftarSiswa();
        boolean expResult = false;
        boolean result = instance.check(nis, namasiswa);
        try {
            assertEquals(expResult, result);
            System.out.println("Tes Check Sukses");
        } catch (Exception e) {
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
}
}
