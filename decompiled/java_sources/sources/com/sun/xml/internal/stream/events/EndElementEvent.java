package com.sun.xml.internal.stream.events;

import com.sun.xml.internal.stream.util.ReadOnlyIterator;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.xml.namespace.QName;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.EndElement;
import javax.xml.stream.events.Namespace;

/* loaded from: classes10.dex */
public class EndElementEvent extends DummyEvent implements EndElement {
    List fNamespaces;
    QName fQName;

    public EndElementEvent() {
        this.fNamespaces = null;
        init();
    }

    public void addNamespace(Namespace namespace) {
        if (namespace != null) {
            this.fNamespaces.add(namespace);
        }
    }

    @Override // javax.xml.stream.events.EndElement
    public QName getName() {
        return this.fQName;
    }

    @Override // javax.xml.stream.events.EndElement
    public Iterator getNamespaces() {
        List list = this.fNamespaces;
        if (list != null) {
            list.iterator();
        }
        return new ReadOnlyIterator();
    }

    public void init() {
        setEventType(2);
        this.fNamespaces = new ArrayList();
    }

    public String nameAsString() {
        if ("".equals(this.fQName.getNamespaceURI())) {
            return this.fQName.getLocalPart();
        }
        if (this.fQName.getPrefix() == null) {
            return "['" + this.fQName.getNamespaceURI() + "']:" + this.fQName.getLocalPart();
        }
        return "['" + this.fQName.getNamespaceURI() + "']:" + this.fQName.getPrefix() + ":" + this.fQName.getLocalPart();
    }

    public void setName(QName qName) {
        this.fQName = qName;
    }

    public String toString() {
        return (XMLStreamWriterImpl.OPEN_END_TAG + nameAsString()) + ">";
    }

    @Override // com.sun.xml.internal.stream.events.DummyEvent, javax.xml.stream.events.XMLEvent
    public void writeAsEncodedUnicode(Writer writer) throws XMLStreamException {
    }

    public EndElementEvent(String str, String str2, String str3) {
        this(new QName(str2, str3, str));
    }

    public EndElementEvent(QName qName) {
        this.fNamespaces = null;
        this.fQName = qName;
        init();
    }
}
