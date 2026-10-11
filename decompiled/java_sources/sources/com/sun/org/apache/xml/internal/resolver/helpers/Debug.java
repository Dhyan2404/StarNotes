package com.sun.org.apache.xml.internal.resolver.helpers;

/* loaded from: classes10.dex */
public class Debug {
    protected int debug = 0;

    public int getDebug() {
        return this.debug;
    }

    public void message(int i, String str) {
        if (this.debug >= i) {
            System.out.println(str);
        }
    }

    public void setDebug(int i) {
        this.debug = i;
    }

    public void message(int i, String str, String str2) {
        if (this.debug >= i) {
            System.out.println(str + ": " + str2);
        }
    }

    public void message(int i, String str, String str2, String str3) {
        if (this.debug >= i) {
            System.out.println(str + ": " + str2);
            System.out.println("\t" + str3);
        }
    }
}
