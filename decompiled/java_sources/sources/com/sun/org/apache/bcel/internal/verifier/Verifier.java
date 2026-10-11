package com.sun.org.apache.bcel.internal.verifier;

import com.google.common.reflect.ClassPath;
import com.sun.org.apache.bcel.internal.Repository;
import com.sun.org.apache.bcel.internal.classfile.JavaClass;
import com.sun.org.apache.bcel.internal.verifier.statics.Pass1Verifier;
import com.sun.org.apache.bcel.internal.verifier.statics.Pass2Verifier;
import com.sun.org.apache.bcel.internal.verifier.statics.Pass3aVerifier;
import com.sun.org.apache.bcel.internal.verifier.structurals.Pass3bVerifier;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes10.dex */
public class Verifier {
    private final String classname;
    private Pass1Verifier p1v;
    private Pass2Verifier p2v;
    private HashMap p3avs = new HashMap();
    private HashMap p3bvs = new HashMap();

    public Verifier(String str) {
        this.classname = str;
        flush();
    }

    public static void _main(String[] strArr) {
        int lastIndexOf;
        System.out.println("JustIce by Enver Haase, (C) 2001-2002.\n<http://bcel.sourceforge.net>\n<http://jakarta.apache.org/bcel>\n");
        for (int i = 0; i < strArr.length; i++) {
            if (strArr[i].endsWith(ClassPath.f35080d) && (lastIndexOf = strArr[i].lastIndexOf(ClassPath.f35080d)) != -1) {
                strArr[i] = strArr[i].substring(0, lastIndexOf);
            }
            strArr[i] = strArr[i].replace('/', '.');
            System.out.println("Now verifying: " + strArr[i] + "\n");
            Verifier verifier = VerifierFactory.getVerifier(strArr[i]);
            System.out.println("Pass 1:\n" + verifier.doPass1());
            VerificationResult doPass2 = verifier.doPass2();
            System.out.println("Pass 2:\n" + doPass2);
            if (doPass2 == VerificationResult.VR_OK) {
                JavaClass lookupClass = Repository.lookupClass(strArr[i]);
                for (int i2 = 0; i2 < lookupClass.getMethods().length; i2++) {
                    System.out.println("Pass 3a, method number " + i2 + " ['" + lookupClass.getMethods()[i2] + "']:\n" + verifier.doPass3a(i2));
                    System.out.println("Pass 3b, method number " + i2 + " ['" + lookupClass.getMethods()[i2] + "']:\n" + verifier.doPass3b(i2));
                }
            }
            System.out.println("Warnings:");
            String[] messages = verifier.getMessages();
            if (messages.length == 0) {
                System.out.println("<none>");
            }
            for (String str : messages) {
                System.out.println(str);
            }
            System.out.println("\n");
            verifier.flush();
            Repository.clearCache();
            System.gc();
        }
    }

    public VerificationResult doPass1() {
        if (this.p1v == null) {
            this.p1v = new Pass1Verifier(this);
        }
        return this.p1v.verify();
    }

    public VerificationResult doPass2() {
        if (this.p2v == null) {
            this.p2v = new Pass2Verifier(this);
        }
        return this.p2v.verify();
    }

    public VerificationResult doPass3a(int i) {
        String num = Integer.toString(i);
        Pass3aVerifier pass3aVerifier = (Pass3aVerifier) this.p3avs.get(num);
        if (this.p3avs.get(num) == null) {
            pass3aVerifier = new Pass3aVerifier(this, i);
            this.p3avs.put(num, pass3aVerifier);
        }
        return pass3aVerifier.verify();
    }

    public VerificationResult doPass3b(int i) {
        String num = Integer.toString(i);
        Pass3bVerifier pass3bVerifier = (Pass3bVerifier) this.p3bvs.get(num);
        if (this.p3bvs.get(num) == null) {
            pass3bVerifier = new Pass3bVerifier(this, i);
            this.p3bvs.put(num, pass3bVerifier);
        }
        return pass3bVerifier.verify();
    }

    public void flush() {
        this.p1v = null;
        this.p2v = null;
        this.p3avs.clear();
        this.p3bvs.clear();
    }

    public final String getClassName() {
        return this.classname;
    }

    public String[] getMessages() {
        ArrayList arrayList = new ArrayList();
        Pass1Verifier pass1Verifier = this.p1v;
        if (pass1Verifier != null) {
            for (String str : pass1Verifier.getMessages()) {
                arrayList.add("Pass 1: " + str);
            }
        }
        Pass2Verifier pass2Verifier = this.p2v;
        if (pass2Verifier != null) {
            for (String str2 : pass2Verifier.getMessages()) {
                arrayList.add("Pass 2: " + str2);
            }
        }
        for (Pass3aVerifier pass3aVerifier : this.p3avs.values()) {
            String[] messages = pass3aVerifier.getMessages();
            int methodNo = pass3aVerifier.getMethodNo();
            for (String str3 : messages) {
                arrayList.add("Pass 3a, method " + methodNo + " ('" + Repository.lookupClass(this.classname).getMethods()[methodNo] + "'): " + str3);
            }
        }
        for (Pass3bVerifier pass3bVerifier : this.p3bvs.values()) {
            String[] messages2 = pass3bVerifier.getMessages();
            int methodNo2 = pass3bVerifier.getMethodNo();
            for (String str4 : messages2) {
                arrayList.add("Pass 3b, method " + methodNo2 + " ('" + Repository.lookupClass(this.classname).getMethods()[methodNo2] + "'): " + str4);
            }
        }
        String[] strArr = new String[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            strArr[i] = (String) arrayList.get(i);
        }
        return strArr;
    }
}
