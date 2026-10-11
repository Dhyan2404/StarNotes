package com.sun.org.apache.xml.internal.utils;

/* loaded from: classes10.dex */
public class CharKey {
    private char m_char;

    public CharKey(char c) {
        this.m_char = c;
    }

    public final boolean equals(Object obj) {
        return ((CharKey) obj).m_char == this.m_char;
    }

    public final int hashCode() {
        return this.m_char;
    }

    public final void setChar(char c) {
        this.m_char = c;
    }

    public CharKey() {
    }
}
