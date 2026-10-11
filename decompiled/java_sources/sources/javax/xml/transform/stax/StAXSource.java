package javax.xml.transform.stax;

import javax.xml.stream.XMLEventReader;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;
import javax.xml.stream.events.XMLEvent;
import javax.xml.transform.Source;

/* loaded from: classes5.dex */
public class StAXSource implements Source {
    public static final String FEATURE = "http://javax.xml.transform.stax.StAXSource/feature";

    /* renamed from: e */
    public final XMLStreamReader f98051e;

    /* renamed from: f */
    public final XMLEventReader f98052f;

    /* renamed from: g */
    public final String f98053g;

    public StAXSource(XMLEventReader xMLEventReader) throws XMLStreamException {
        if (xMLEventReader == null) {
            throw new IllegalArgumentException("XMLEventReader cannot be null.");
        }
        XMLEvent peek = xMLEventReader.peek();
        if (!peek.isStartDocument() && !peek.isStartElement()) {
            throw new IllegalStateException("The state of the XMLEventReader must be START_DOCUMENT or START_ELEMENT");
        }
        this.f98051e = null;
        this.f98052f = xMLEventReader;
        this.f98053g = peek.getLocation().getSystemId();
    }

    @Override // javax.xml.transform.Source
    public String getSystemId() {
        return this.f98053g;
    }

    public XMLEventReader getXMLEventReader() {
        return this.f98052f;
    }

    public XMLStreamReader getXMLStreamReader() {
        return this.f98051e;
    }

    @Override // javax.xml.transform.Source
    public void setSystemId(String str) {
        throw new UnsupportedOperationException("Setting systemId is not supported.");
    }

    public StAXSource(XMLStreamReader xMLStreamReader) {
        if (xMLStreamReader == null) {
            throw new IllegalArgumentException("XMLStreamReader cannot be null.");
        }
        int eventType = xMLStreamReader.getEventType();
        if (eventType != 7 && eventType != 1) {
            throw new IllegalStateException("The state of the XMLStreamReader must be START_DOCUMENT or START_ELEMENT");
        }
        this.f98051e = xMLStreamReader;
        this.f98052f = null;
        this.f98053g = xMLStreamReader.getLocation().getSystemId();
    }
}
