package com.sun.xml.internal.stream.events;

import java.io.Writer;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.EndDocument;

/* loaded from: classes10.dex */
public class EndDocumentEvent extends DummyEvent implements EndDocument {
    public EndDocumentEvent() {
        init();
    }

    public void init() {
        setEventType(8);
    }

    public String toString() {
        return "ENDDOCUMENT";
    }

    @Override // com.sun.xml.internal.stream.events.DummyEvent, javax.xml.stream.events.XMLEvent
    public void writeAsEncodedUnicode(Writer writer) throws XMLStreamException {
    }
}
