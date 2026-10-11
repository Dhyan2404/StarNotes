package com.sun.xml.internal.stream;

import com.sun.xml.internal.stream.events.XMLEventAllocatorImpl;
import java.util.NoSuchElementException;
import javax.xml.stream.XMLEventReader;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;
import javax.xml.stream.events.EntityReference;
import javax.xml.stream.events.XMLEvent;
import javax.xml.stream.util.XMLEventAllocator;

/* loaded from: classes10.dex */
public class XMLEventReaderImpl implements XMLEventReader {
    private XMLEvent fLastEvent;
    private XMLEvent fPeekedEvent;
    protected XMLEventAllocator fXMLEventAllocator;
    protected XMLStreamReader fXMLReader;

    public XMLEventReaderImpl(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        this.fXMLReader = xMLStreamReader;
        XMLEventAllocator xMLEventAllocator = (XMLEventAllocator) xMLStreamReader.getProperty(XMLInputFactory.ALLOCATOR);
        this.fXMLEventAllocator = xMLEventAllocator;
        if (xMLEventAllocator == null) {
            this.fXMLEventAllocator = new XMLEventAllocatorImpl();
        }
    }

    @Override // javax.xml.stream.XMLEventReader
    public void close() throws XMLStreamException {
        this.fXMLReader.close();
    }

    @Override // javax.xml.stream.XMLEventReader
    public String getElementText() throws XMLStreamException {
        if (this.fLastEvent.getEventType() != 1) {
            throw new XMLStreamException("parser must be on START_ELEMENT to read next text", this.fLastEvent.getLocation());
        }
        XMLEvent xMLEvent = this.fPeekedEvent;
        if (xMLEvent == null) {
            return this.fXMLReader.getElementText();
        }
        String str = null;
        this.fPeekedEvent = null;
        int eventType = xMLEvent.getEventType();
        if (eventType == 4 || eventType == 6 || eventType == 12) {
            str = xMLEvent.asCharacters().getData();
        } else if (eventType == 9) {
            str = ((EntityReference) xMLEvent).getDeclaration().getReplacementText();
        } else if (eventType != 5 && eventType != 3) {
            if (eventType == 1) {
                throw new XMLStreamException("elementGetText() function expects text only elment but START_ELEMENT was encountered.", xMLEvent.getLocation());
            }
            if (eventType == 2) {
                return "";
            }
        }
        StringBuffer stringBuffer = new StringBuffer();
        if (str != null && str.length() > 0) {
            stringBuffer.append(str);
        }
        XMLEvent nextEvent = nextEvent();
        while (nextEvent.getEventType() != 2) {
            if (eventType == 4 || eventType == 6 || eventType == 12) {
                str = nextEvent.asCharacters().getData();
            } else if (eventType == 9) {
                str = ((EntityReference) nextEvent).getDeclaration().getReplacementText();
            } else if (eventType != 5 && eventType != 3) {
                if (eventType == 8) {
                    throw new XMLStreamException("unexpected end of document when reading element text content");
                }
                if (eventType == 1) {
                    throw new XMLStreamException("elementGetText() function expects text only elment but START_ELEMENT was encountered.", nextEvent.getLocation());
                }
                throw new XMLStreamException("Unexpected event type " + eventType, nextEvent.getLocation());
            }
            if (str != null && str.length() > 0) {
                stringBuffer.append(str);
            }
        }
        return stringBuffer.toString();
    }

    @Override // javax.xml.stream.XMLEventReader
    public Object getProperty(String str) throws IllegalArgumentException {
        return this.fXMLReader.getProperty(str);
    }

    @Override // javax.xml.stream.XMLEventReader, java.util.Iterator
    public boolean hasNext() {
        if (this.fPeekedEvent != null) {
            return true;
        }
        try {
            return this.fXMLReader.hasNext();
        } catch (XMLStreamException unused) {
            return false;
        }
    }

    @Override // java.util.Iterator
    public Object next() {
        try {
            return nextEvent();
        } catch (XMLStreamException unused) {
            this.fLastEvent = null;
            throw new NoSuchElementException();
        }
    }

    @Override // javax.xml.stream.XMLEventReader
    public XMLEvent nextEvent() throws XMLStreamException {
        XMLEvent xMLEvent = this.fPeekedEvent;
        if (xMLEvent != null) {
            this.fLastEvent = xMLEvent;
            this.fPeekedEvent = null;
            return xMLEvent;
        }
        if (!this.fXMLReader.hasNext()) {
            this.fLastEvent = null;
            throw new NoSuchElementException();
        }
        this.fXMLReader.next();
        XMLEvent allocate = this.fXMLEventAllocator.allocate(this.fXMLReader);
        this.fLastEvent = allocate;
        return allocate;
    }

    @Override // javax.xml.stream.XMLEventReader
    public XMLEvent nextTag() throws XMLStreamException {
        XMLEvent xMLEvent = this.fPeekedEvent;
        if (xMLEvent == null) {
            this.fXMLReader.nextTag();
            return this.fXMLEventAllocator.allocate(this.fXMLReader);
        }
        this.fPeekedEvent = null;
        int eventType = xMLEvent.getEventType();
        if ((xMLEvent.isCharacters() && xMLEvent.asCharacters().isWhiteSpace()) || eventType == 3 || eventType == 5) {
            xMLEvent = nextEvent();
            eventType = xMLEvent.getEventType();
        }
        while (true) {
            if ((!xMLEvent.isCharacters() || !xMLEvent.asCharacters().isWhiteSpace()) && eventType != 3 && eventType != 5) {
                break;
            }
            xMLEvent = nextEvent();
            eventType = xMLEvent.getEventType();
        }
        if (eventType == 1 || eventType == 2) {
            return xMLEvent;
        }
        throw new XMLStreamException("expected start or end tag", xMLEvent.getLocation());
    }

    @Override // javax.xml.stream.XMLEventReader
    public XMLEvent peek() throws XMLStreamException {
        XMLEvent xMLEvent = this.fPeekedEvent;
        if (xMLEvent != null) {
            return xMLEvent;
        }
        if (!hasNext()) {
            return null;
        }
        this.fXMLReader.next();
        XMLEvent allocate = this.fXMLEventAllocator.allocate(this.fXMLReader);
        this.fPeekedEvent = allocate;
        return allocate;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
