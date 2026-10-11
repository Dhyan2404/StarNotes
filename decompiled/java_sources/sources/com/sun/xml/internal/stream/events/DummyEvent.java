package com.sun.xml.internal.stream.events;

import java.io.Writer;
import javax.xml.namespace.QName;
import javax.xml.stream.Location;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.Characters;
import javax.xml.stream.events.EndElement;
import javax.xml.stream.events.StartElement;
import javax.xml.stream.events.XMLEvent;

/* loaded from: classes10.dex */
public abstract class DummyEvent implements XMLEvent {
    private int fEventType;
    protected Location fLocation = null;

    public DummyEvent() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // javax.xml.stream.events.XMLEvent
    public Characters asCharacters() {
        return (Characters) this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // javax.xml.stream.events.XMLEvent
    public EndElement asEndElement() {
        return (EndElement) this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // javax.xml.stream.events.XMLEvent
    public StartElement asStartElement() {
        return (StartElement) this;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public int getEventType() {
        return this.fEventType;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public Location getLocation() {
        return this.fLocation;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public QName getSchemaType() {
        return null;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public boolean isAttribute() {
        return this.fEventType == 10;
    }

    public boolean isCharacterData() {
        return this.fEventType == 4;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public boolean isCharacters() {
        return this.fEventType == 4;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public boolean isEndDocument() {
        return this.fEventType == 8;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public boolean isEndElement() {
        return this.fEventType == 2;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public boolean isEntityReference() {
        return this.fEventType == 9;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public boolean isNamespace() {
        return this.fEventType == 13;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public boolean isProcessingInstruction() {
        return this.fEventType == 3;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public boolean isStartDocument() {
        return this.fEventType == 7;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public boolean isStartElement() {
        return this.fEventType == 1;
    }

    public void setEventType(int i) {
        this.fEventType = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLocation(Location location) {
        this.fLocation = location;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public void writeAsEncodedUnicode(Writer writer) throws XMLStreamException {
    }

    public DummyEvent(int i) {
        this.fEventType = i;
    }
}
