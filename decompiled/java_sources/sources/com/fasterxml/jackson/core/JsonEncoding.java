package com.fasterxml.jackson.core;

import onyx.org.apache.commons.io.input.XmlStreamReader;

/* loaded from: classes4.dex */
public enum JsonEncoding {
    UTF8("UTF-8", false, 8),
    UTF16_BE("UTF-16BE", true, 16),
    UTF16_LE("UTF-16LE", false, 16),
    UTF32_BE(XmlStreamReader.f104448l, true, 32),
    UTF32_LE(XmlStreamReader.f104449m, false, 32);

    protected final boolean _bigEndian;
    protected final int _bits;
    protected final String _javaName;

    JsonEncoding(String str, boolean z, int i) {
        this._javaName = str;
        this._bigEndian = z;
        this._bits = i;
    }

    public int bits() {
        return this._bits;
    }

    public String getJavaName() {
        return this._javaName;
    }

    public boolean isBigEndian() {
        return this._bigEndian;
    }
}
