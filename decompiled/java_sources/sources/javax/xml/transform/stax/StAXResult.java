package javax.xml.transform.stax;

import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.XMLStreamWriter;
import javax.xml.transform.Result;

/* loaded from: classes5.dex */
public class StAXResult implements Result {
    public static final String FEATURE = "http://javax.xml.transform.stax.StAXResult/feature";

    /* renamed from: e */
    public final XMLStreamWriter f98049e;

    /* renamed from: f */
    public final XMLEventWriter f98050f;

    public StAXResult(XMLEventWriter xMLEventWriter) {
        if (xMLEventWriter == null) {
            throw new IllegalArgumentException("XMLEventWriter cannot be null.");
        }
        this.f98049e = null;
        this.f98050f = xMLEventWriter;
    }

    @Override // javax.xml.transform.Result
    public String getSystemId() {
        return null;
    }

    public XMLEventWriter getXMLEventWriter() {
        return this.f98050f;
    }

    public XMLStreamWriter getXMLStreamWriter() {
        return this.f98049e;
    }

    @Override // javax.xml.transform.Result
    public void setSystemId(String str) {
        throw new UnsupportedOperationException("Setting systemId is not supported.");
    }

    public StAXResult(XMLStreamWriter xMLStreamWriter) {
        if (xMLStreamWriter == null) {
            throw new IllegalArgumentException("XMLStreamWriter cannot be null.");
        }
        this.f98049e = xMLStreamWriter;
        this.f98050f = null;
    }
}
