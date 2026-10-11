package com.sun.org.apache.bcel.internal.verifier;

import com.google.common.reflect.ClassPath;

/* loaded from: classes10.dex */
public abstract class NativeVerifier {
    private NativeVerifier() {
    }

    public static void _main(String[] strArr) {
        if (strArr.length != 1) {
            System.out.println("Verifier front-end: need exactly one argument.");
            System.exit(1);
        }
        int lastIndexOf = strArr[0].lastIndexOf(ClassPath.f35080d);
        if (lastIndexOf != -1) {
            strArr[0] = strArr[0].substring(0, lastIndexOf);
        }
        String replace = strArr[0].replace('/', '.');
        strArr[0] = replace;
        try {
            Class.forName(replace);
        } catch (ClassNotFoundException unused) {
            System.out.println("NativeVerifier: FILE NOT FOUND: '" + strArr[0] + "'.");
            System.exit(1);
        } catch (ExceptionInInitializerError e) {
            System.out.println("NativeVerifier: ExceptionInInitializerError encountered on '" + strArr[0] + "'.");
            System.out.println(e);
            System.exit(1);
        } catch (LinkageError e2) {
            System.out.println("NativeVerifier: LinkageError encountered on '" + strArr[0] + "'.");
            System.out.println(e2);
            System.exit(1);
        } catch (Throwable unused2) {
            System.out.println("NativeVerifier: Unspecified verification error on'" + strArr[0] + "'.");
            System.exit(1);
        }
        System.out.println("NativeVerifier: Class file '" + strArr[0] + "' seems to be okay.");
        System.exit(0);
    }
}
