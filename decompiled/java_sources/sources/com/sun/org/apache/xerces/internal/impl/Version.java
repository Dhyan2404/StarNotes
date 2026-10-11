package com.sun.org.apache.xerces.internal.impl;

/* loaded from: classes10.dex */
public class Version {
    private static final String fImmutableVersion = "Xerces-J 2.6.2";
    public static String fVersion = "Xerces-J 2.6.2";

    public static String getVersion() {
        return fImmutableVersion;
    }

    public static void main(String[] strArr) {
        System.out.println(fVersion);
    }
}
