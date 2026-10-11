package com.sun.org.apache.xalan.internal.xsltc.runtime;

import com.sun.org.apache.xml.internal.serializer.EmptySerializer;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public final class StringValueHandler extends EmptySerializer {
    private static final String EMPTY_STR = "";
    private StringBuffer _buffer = new StringBuffer();
    private String _str = null;
    private boolean m_escaping = false;
    private int _nestedLevel = 0;

    @Override // com.sun.org.apache.xml.internal.serializer.EmptySerializer, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        if (this._nestedLevel > 0) {
            return;
        }
        String str = this._str;
        if (str != null) {
            this._buffer.append(str);
            this._str = null;
        }
        this._buffer.append(cArr, i, i2);
    }

    @Override // com.sun.org.apache.xml.internal.serializer.EmptySerializer, com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    public void endElement(String str) throws SAXException {
        this._nestedLevel--;
    }

    public String getValue() {
        if (this._buffer.length() != 0) {
            String stringBuffer = this._buffer.toString();
            this._buffer.setLength(0);
            return stringBuffer;
        }
        String str = this._str;
        this._str = null;
        return str != null ? str : "";
    }

    public String getValueOfPI() {
        String value = getValue();
        if (value.indexOf("?>") <= 0) {
            return value;
        }
        int length = value.length();
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            char charAt = value.charAt(i);
            if (charAt == '?' && value.charAt(i2) == '>') {
                stringBuffer.append("? >");
                i2++;
            } else {
                stringBuffer.append(charAt);
            }
            i = i2;
        }
        return stringBuffer.toString();
    }

    @Override // com.sun.org.apache.xml.internal.serializer.EmptySerializer, com.sun.org.apache.xml.internal.serializer.SerializationHandler
    public boolean setEscaping(boolean z) {
        this.m_escaping = z;
        return z;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.EmptySerializer, com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    public void startElement(String str) throws SAXException {
        this._nestedLevel++;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.EmptySerializer, com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    public void characters(String str) throws SAXException {
        if (this._nestedLevel > 0) {
            return;
        }
        if (this._str == null && this._buffer.length() == 0) {
            this._str = str;
            return;
        }
        String str2 = this._str;
        if (str2 != null) {
            this._buffer.append(str2);
            this._str = null;
        }
        this._buffer.append(str);
    }
}
