package com.sun.xml.internal.stream;

import java.util.NoSuchElementException;
import javax.xml.stream.EventFilter;
import javax.xml.stream.XMLEventReader;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.XMLEvent;
import javax.xml.stream.util.EventReaderDelegate;

/* loaded from: classes10.dex */
public class EventFilterSupport extends EventReaderDelegate {
    EventFilter fEventFilter;

    public EventFilterSupport(XMLEventReader xMLEventReader, EventFilter eventFilter) {
        setParent(xMLEventReader);
        this.fEventFilter = eventFilter;
    }

    @Override // javax.xml.stream.util.EventReaderDelegate, javax.xml.stream.XMLEventReader, java.util.Iterator
    public boolean hasNext() {
        try {
            return peek() != null;
        } catch (XMLStreamException unused) {
            return false;
        }
    }

    @Override // javax.xml.stream.util.EventReaderDelegate, java.util.Iterator
    public Object next() {
        try {
            return nextEvent();
        } catch (XMLStreamException unused) {
            throw new NoSuchElementException();
        }
    }

    @Override // javax.xml.stream.util.EventReaderDelegate, javax.xml.stream.XMLEventReader
    public XMLEvent nextEvent() throws XMLStreamException {
        if (!super.hasNext()) {
            throw new NoSuchElementException();
        }
        XMLEvent nextEvent = super.nextEvent();
        return this.fEventFilter.accept(nextEvent) ? nextEvent : nextEvent();
    }

    @Override // javax.xml.stream.util.EventReaderDelegate, javax.xml.stream.XMLEventReader
    public XMLEvent nextTag() throws XMLStreamException {
        if (!super.hasNext()) {
            throw new NoSuchElementException();
        }
        XMLEvent nextTag = super.nextTag();
        return this.fEventFilter.accept(nextTag) ? nextTag : nextTag();
    }

    @Override // javax.xml.stream.util.EventReaderDelegate, javax.xml.stream.XMLEventReader
    public XMLEvent peek() throws XMLStreamException {
        XMLEvent peek = super.peek();
        if (peek == null) {
            return null;
        }
        if (this.fEventFilter.accept(peek)) {
            return peek;
        }
        super.next();
        return peek();
    }
}
