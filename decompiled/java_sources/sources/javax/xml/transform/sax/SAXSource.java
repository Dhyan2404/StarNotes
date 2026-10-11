package javax.xml.transform.sax;

import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;

/* loaded from: classes5.dex */
public class SAXSource implements Source {
    public static final String FEATURE = "http://javax.xml.transform.sax.SAXSource/feature";

    /* renamed from: e */
    public XMLReader f98047e;

    /* renamed from: f */
    public InputSource f98048f;

    public SAXSource() {
    }

    public static InputSource sourceToInputSource(Source source) {
        if (source instanceof SAXSource) {
            return ((SAXSource) source).getInputSource();
        }
        if (!(source instanceof StreamSource)) {
            return null;
        }
        StreamSource streamSource = (StreamSource) source;
        InputSource inputSource = new InputSource(streamSource.getSystemId());
        inputSource.setByteStream(streamSource.getInputStream());
        inputSource.setCharacterStream(streamSource.getReader());
        inputSource.setPublicId(streamSource.getPublicId());
        return inputSource;
    }

    public InputSource getInputSource() {
        return this.f98048f;
    }

    @Override // javax.xml.transform.Source
    public String getSystemId() {
        InputSource inputSource = this.f98048f;
        if (inputSource == null) {
            return null;
        }
        return inputSource.getSystemId();
    }

    public XMLReader getXMLReader() {
        return this.f98047e;
    }

    public void setInputSource(InputSource inputSource) {
        this.f98048f = inputSource;
    }

    @Override // javax.xml.transform.Source
    public void setSystemId(String str) {
        InputSource inputSource = this.f98048f;
        if (inputSource == null) {
            this.f98048f = new InputSource(str);
        } else {
            inputSource.setSystemId(str);
        }
    }

    public void setXMLReader(XMLReader xMLReader) {
        this.f98047e = xMLReader;
    }

    public SAXSource(InputSource inputSource) {
        this.f98048f = inputSource;
    }

    public SAXSource(XMLReader xMLReader, InputSource inputSource) {
        this.f98047e = xMLReader;
        this.f98048f = inputSource;
    }
}
