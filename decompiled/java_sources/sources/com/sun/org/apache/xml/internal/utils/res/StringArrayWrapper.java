package com.sun.org.apache.xml.internal.utils.res;

/* loaded from: classes10.dex */
public class StringArrayWrapper {
    private String[] m_string;

    public StringArrayWrapper(String[] strArr) {
        this.m_string = strArr;
    }

    public int getLength() {
        return this.m_string.length;
    }

    public String getString(int i) {
        return this.m_string[i];
    }
}
