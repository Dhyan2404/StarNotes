package com.sun.org.apache.xalan.internal.xsltc.util;

import com.sun.java_cup.internal.Main;
import java.io.FileInputStream;
import java.io.FileNotFoundException;

/* loaded from: classes10.dex */
public class JavaCupRedirect {
    private static final String ERRMSG = "You must supply a filename with the -stdin option.";

    public static void _main(String[] strArr) {
        int length = strArr.length;
        int i = length - 2;
        String[] strArr2 = new String[i];
        FileInputStream fileInputStream = null;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            if (strArr[i2].equals("-stdin")) {
                i2++;
                if (i2 >= length || strArr[i2].startsWith("-")) {
                    System.err.println(ERRMSG);
                    throw new RuntimeException(ERRMSG);
                }
                try {
                    fileInputStream = new FileInputStream(strArr[i2]);
                } catch (FileNotFoundException e) {
                    System.err.println("Could not open file " + strArr[i2]);
                    throw new RuntimeException(e.getMessage());
                } catch (SecurityException e2) {
                    System.err.println("No permission to file " + strArr[i2]);
                    throw new RuntimeException(e2.getMessage());
                }
            } else {
                if (i3 == i) {
                    System.err.println("Missing -stdin option!");
                    throw new RuntimeException();
                }
                strArr2[i3] = strArr[i2];
                i3++;
            }
            i2++;
        }
        System.setIn(fileInputStream);
        try {
            Main.main(strArr2);
        } catch (Exception e3) {
            System.err.println("Error running JavaCUP:");
            e3.printStackTrace();
        }
    }
}
