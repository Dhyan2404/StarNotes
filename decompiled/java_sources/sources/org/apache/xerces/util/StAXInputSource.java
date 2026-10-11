package org.apache.xerces.util;

import javax.xml.stream.XMLEventReader;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;
import org.apache.xerces.xni.parser.XMLInputSource;

/* loaded from: classes13.dex */
public final class StAXInputSource extends XMLInputSource {

    /* renamed from: a */
    public final XMLStreamReader f113514a;

    /* renamed from: b */
    public final XMLEventReader f113515b;

    /* renamed from: c */
    public final boolean f113516c;

    public StAXInputSource(XMLEventReader xMLEventReader) {
        this(xMLEventReader, false);
    }

    /* renamed from: a */
    public static String m70581a(XMLEventReader xMLEventReader) {
        if (xMLEventReader == null) {
            return null;
        }
        try {
            return xMLEventReader.peek().getLocation().getSystemId();
        } catch (XMLStreamException unused) {
            return null;
        }
    }

    /* renamed from: b */
    public static String m70582b(XMLStreamReader xMLStreamReader) {
        if (xMLStreamReader != null) {
            return xMLStreamReader.getLocation().getSystemId();
        }
        return null;
    }

    public XMLEventReader getXMLEventReader() {
        return this.f113515b;
    }

    public XMLStreamReader getXMLStreamReader() {
        return this.f113514a;
    }

    @Override // org.apache.xerces.xni.parser.XMLInputSource
    public void setSystemId(String str) {
        throw new UnsupportedOperationException("Cannot set the system ID on a StAXInputSource");
    }

    public boolean shouldConsumeRemainingContent() {
        return this.f113516c;
    }

    public StAXInputSource(XMLEventReader xMLEventReader, boolean z) {
        super(null, m70581a(xMLEventReader), null);
        if (xMLEventReader == null) {
            throw new IllegalArgumentException("XMLEventReader parameter cannot be null.");
        }
        this.f113514a = null;
        this.f113515b = xMLEventReader;
        this.f113516c = z;
    }

    public StAXInputSource(XMLStreamReader xMLStreamReader) {
        this(xMLStreamReader, false);
    }

    public StAXInputSource(XMLStreamReader xMLStreamReader, boolean z) {
        super(null, m70582b(xMLStreamReader), null);
        if (xMLStreamReader == null) {
            throw new IllegalArgumentException("XMLStreamReader parameter cannot be null.");
        }
        this.f113514a = xMLStreamReader;
        this.f113515b = null;
        this.f113516c = z;
    }
}
