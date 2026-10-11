package com.sunia.HTREnginev2;

import java.io.StringWriter;
import java.io.Writer;
import javax.xml.namespace.QName;
import javax.xml.stream.Location;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.Characters;
import javax.xml.stream.events.EndElement;
import javax.xml.stream.events.StartElement;
import javax.xml.stream.events.XMLEvent;
import org.apache.xerces.stax.EmptyLocation;
import org.apache.xerces.stax.ImmutableLocation;

/* loaded from: classes13.dex */
public abstract class plo implements XMLEvent {

    /* renamed from: e */
    public int f80922e;

    /* renamed from: f */
    public Location f80923f;

    public plo(int i, Location location) {
        this.f80922e = i;
        this.f80923f = location != null ? new ImmutableLocation(location) : EmptyLocation.getInstance();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // javax.xml.stream.events.XMLEvent
    public final Characters asCharacters() {
        return (Characters) this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // javax.xml.stream.events.XMLEvent
    public final EndElement asEndElement() {
        return (EndElement) this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // javax.xml.stream.events.XMLEvent
    public final StartElement asStartElement() {
        return (StartElement) this;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public final int getEventType() {
        return this.f80922e;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public final Location getLocation() {
        return this.f80923f;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public final QName getSchemaType() {
        return null;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public final boolean isAttribute() {
        return 10 == this.f80922e;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public final boolean isCharacters() {
        int i = this.f80922e;
        return 4 == i || 12 == i || 6 == i;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public final boolean isEndDocument() {
        return 8 == this.f80922e;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public final boolean isEndElement() {
        return 2 == this.f80922e;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public final boolean isEntityReference() {
        return 9 == this.f80922e;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public final boolean isNamespace() {
        return 13 == this.f80922e;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public final boolean isProcessingInstruction() {
        return 3 == this.f80922e;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public final boolean isStartDocument() {
        return 7 == this.f80922e;
    }

    @Override // javax.xml.stream.events.XMLEvent
    public final boolean isStartElement() {
        return 1 == this.f80922e;
    }

    public final String toString() {
        StringWriter stringWriter = new StringWriter();
        try {
            writeAsEncodedUnicode(stringWriter);
        } catch (XMLStreamException unused) {
        }
        return stringWriter.toString();
    }

    @Override // javax.xml.stream.events.XMLEvent
    public abstract void writeAsEncodedUnicode(Writer writer) throws XMLStreamException;
}
