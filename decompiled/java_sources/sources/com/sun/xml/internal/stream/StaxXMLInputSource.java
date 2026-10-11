package com.sun.xml.internal.stream;

import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import javax.xml.stream.XMLEventReader;
import javax.xml.stream.XMLStreamReader;

/* loaded from: classes10.dex */
public class StaxXMLInputSource {
    XMLEventReader fEventReader;
    XMLInputSource fInputSource;
    XMLStreamReader fStreamReader;

    public StaxXMLInputSource(XMLStreamReader xMLStreamReader) {
        this.fStreamReader = xMLStreamReader;
    }

    public XMLEventReader getXMLEventReader() {
        return this.fEventReader;
    }

    public XMLInputSource getXMLInputSource() {
        return this.fInputSource;
    }

    public XMLStreamReader getXMLStreamReader() {
        return this.fStreamReader;
    }

    public boolean hasXMLStreamOrXMLEventReader() {
        return (this.fStreamReader == null && this.fEventReader == null) ? false : true;
    }

    public StaxXMLInputSource(XMLEventReader xMLEventReader) {
        this.fEventReader = xMLEventReader;
    }

    public StaxXMLInputSource(XMLInputSource xMLInputSource) {
        this.fInputSource = xMLInputSource;
    }
}
