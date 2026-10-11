package com.sun.org.apache.bcel.internal.verifier;

import com.google.common.reflect.ClassPath;
import com.sun.org.apache.bcel.internal.Repository;
import com.sun.org.apache.bcel.internal.classfile.JavaClass;

/* loaded from: classes10.dex */
public class TransitiveHull implements VerifierFactoryObserver {
    private int indent = 0;

    private TransitiveHull() {
    }

    public static void _main(String[] strArr) {
        if (strArr.length != 1) {
            System.out.println("Need exactly one argument: The root class to verify.");
            System.exit(1);
        }
        int lastIndexOf = strArr[0].lastIndexOf(ClassPath.f35080d);
        if (lastIndexOf != -1) {
            strArr[0] = strArr[0].substring(0, lastIndexOf);
        }
        strArr[0] = strArr[0].replace('/', '.');
        TransitiveHull transitiveHull = new TransitiveHull();
        VerifierFactory.attach(transitiveHull);
        VerifierFactory.getVerifier(strArr[0]);
        VerifierFactory.detach(transitiveHull);
    }

    @Override // com.sun.org.apache.bcel.internal.verifier.VerifierFactoryObserver
    public void update(String str) {
        System.gc();
        for (int i = 0; i < this.indent; i++) {
            System.out.print(" ");
        }
        System.out.println(str);
        this.indent++;
        Verifier verifier = VerifierFactory.getVerifier(str);
        VerificationResult doPass1 = verifier.doPass1();
        VerificationResult verificationResult = VerificationResult.VR_OK;
        if (doPass1 != verificationResult) {
            System.out.println("Pass 1:\n" + doPass1);
        }
        VerificationResult doPass2 = verifier.doPass2();
        if (doPass2 != verificationResult) {
            System.out.println("Pass 2:\n" + doPass2);
        }
        if (doPass2 == verificationResult) {
            JavaClass lookupClass = Repository.lookupClass(verifier.getClassName());
            for (int i2 = 0; i2 < lookupClass.getMethods().length; i2++) {
                VerificationResult doPass3a = verifier.doPass3a(i2);
                VerificationResult verificationResult2 = VerificationResult.VR_OK;
                if (doPass3a != verificationResult2) {
                    System.out.println(verifier.getClassName() + ", Pass 3a, method " + i2 + " ['" + lookupClass.getMethods()[i2] + "']:\n" + doPass3a);
                }
                VerificationResult doPass3b = verifier.doPass3b(i2);
                if (doPass3b != verificationResult2) {
                    System.out.println(verifier.getClassName() + ", Pass 3b, method " + i2 + " ['" + lookupClass.getMethods()[i2] + "']:\n" + doPass3b);
                }
            }
        }
        this.indent--;
    }
}
