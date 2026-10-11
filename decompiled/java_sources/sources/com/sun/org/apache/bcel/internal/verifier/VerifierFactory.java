package com.sun.org.apache.bcel.internal.verifier;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Vector;

/* loaded from: classes10.dex */
public class VerifierFactory {
    private static HashMap hashMap = new HashMap();
    private static Vector observers = new Vector();

    private VerifierFactory() {
    }

    public static void attach(VerifierFactoryObserver verifierFactoryObserver) {
        observers.addElement(verifierFactoryObserver);
    }

    public static void detach(VerifierFactoryObserver verifierFactoryObserver) {
        observers.removeElement(verifierFactoryObserver);
    }

    public static Verifier getVerifier(String str) {
        Verifier verifier = (Verifier) hashMap.get(str);
        if (verifier != null) {
            return verifier;
        }
        Verifier verifier2 = new Verifier(str);
        hashMap.put(str, verifier2);
        notify(str);
        return verifier2;
    }

    public static Verifier[] getVerifiers() {
        return (Verifier[]) hashMap.values().toArray(new Verifier[hashMap.values().size()]);
    }

    private static void notify(String str) {
        Iterator it2 = observers.iterator();
        while (it2.hasNext()) {
            ((VerifierFactoryObserver) it2.next()).update(str);
        }
    }
}
