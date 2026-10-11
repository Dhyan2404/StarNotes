package org.apache.xerces.util;

import java.io.InputStream;
import java.io.Reader;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;

/* loaded from: classes13.dex */
public final class SAXInputSource extends XMLInputSource {

    /* renamed from: a */
    public XMLReader f113505a;

    /* renamed from: b */
    public InputSource f113506b;

    public SAXInputSource() {
        this(null);
    }

    public InputSource getInputSource() {
        return this.f113506b;
    }

    public XMLReader getXMLReader() {
        return this.f113505a;
    }

    @Override // org.apache.xerces.xni.parser.XMLInputSource
    public void setByteStream(InputStream inputStream) {
        super.setByteStream(inputStream);
        if (this.f113506b == null) {
            this.f113506b = new InputSource();
        }
        this.f113506b.setByteStream(inputStream);
    }

    @Override // org.apache.xerces.xni.parser.XMLInputSource
    public void setCharacterStream(Reader reader) {
        super.setCharacterStream(reader);
        if (this.f113506b == null) {
            this.f113506b = new InputSource();
        }
        this.f113506b.setCharacterStream(reader);
    }

    @Override // org.apache.xerces.xni.parser.XMLInputSource
    public void setEncoding(String str) {
        super.setEncoding(str);
        if (this.f113506b == null) {
            this.f113506b = new InputSource();
        }
        this.f113506b.setEncoding(str);
    }

    public void setInputSource(InputSource inputSource) {
        String str;
        if (inputSource != null) {
            setPublicId(inputSource.getPublicId());
            setSystemId(inputSource.getSystemId());
            setByteStream(inputSource.getByteStream());
            setCharacterStream(inputSource.getCharacterStream());
            str = inputSource.getEncoding();
        } else {
            str = null;
            setPublicId(null);
            setSystemId(null);
            setByteStream(null);
            setCharacterStream(null);
        }
        setEncoding(str);
        this.f113506b = inputSource;
    }

    @Override // org.apache.xerces.xni.parser.XMLInputSource
    public void setPublicId(String str) {
        super.setPublicId(str);
        if (this.f113506b == null) {
            this.f113506b = new InputSource();
        }
        this.f113506b.setPublicId(str);
    }

    @Override // org.apache.xerces.xni.parser.XMLInputSource
    public void setSystemId(String str) {
        super.setSystemId(str);
        if (this.f113506b == null) {
            this.f113506b = new InputSource();
        }
        this.f113506b.setSystemId(str);
    }

    public void setXMLReader(XMLReader xMLReader) {
        this.f113505a = xMLReader;
    }

    public SAXInputSource(InputSource inputSource) {
        this(null, inputSource);
    }

    public SAXInputSource(XMLReader xMLReader, InputSource inputSource) {
        super(inputSource != null ? inputSource.getPublicId() : null, inputSource != null ? inputSource.getSystemId() : null, null);
        if (inputSource != null) {
            setByteStream(inputSource.getByteStream());
            setCharacterStream(inputSource.getCharacterStream());
            setEncoding(inputSource.getEncoding());
        }
        this.f113506b = inputSource;
        this.f113505a = xMLReader;
    }
}
