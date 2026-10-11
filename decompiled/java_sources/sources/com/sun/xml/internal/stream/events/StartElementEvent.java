package com.sun.xml.internal.stream.events;

import com.sun.xml.internal.stream.util.ReadOnlyIterator;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.xml.namespace.NamespaceContext;
import javax.xml.namespace.QName;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.Attribute;
import javax.xml.stream.events.Namespace;
import javax.xml.stream.events.StartElement;

/* loaded from: classes10.dex */
public class StartElementEvent extends DummyEvent implements StartElement {
    private Map fAttributes;
    private NamespaceContext fNamespaceContext;
    private List fNamespaces;
    private QName fQName;

    public StartElementEvent(String str, String str2, String str3) {
        this(new QName(str2, str3, str));
    }

    public void addAttribute(Attribute attribute) {
        if (attribute.isNamespace()) {
            this.fNamespaces.add(attribute);
        } else {
            this.fAttributes.put(attribute.getName(), attribute);
        }
    }

    public void addAttributes(Iterator it2) {
        if (it2 == null) {
            return;
        }
        while (it2.hasNext()) {
            Attribute attribute = (Attribute) it2.next();
            this.fAttributes.put(attribute.getName(), attribute);
        }
    }

    public void addNamespaceAttribute(Namespace namespace) {
        if (namespace == null) {
            return;
        }
        this.fNamespaces.add(namespace);
    }

    public void addNamespaceAttributes(Iterator it2) {
        if (it2 == null) {
            return;
        }
        while (it2.hasNext()) {
            this.fNamespaces.add((Namespace) it2.next());
        }
    }

    @Override // javax.xml.stream.events.StartElement
    public Attribute getAttributeByName(QName qName) {
        if (qName == null) {
            return null;
        }
        return (Attribute) this.fAttributes.get(qName);
    }

    @Override // javax.xml.stream.events.StartElement
    public Iterator getAttributes() {
        Map map = this.fAttributes;
        return map != null ? new ReadOnlyIterator(map.values().iterator()) : new ReadOnlyIterator();
    }

    @Override // javax.xml.stream.events.StartElement
    public QName getName() {
        return this.fQName;
    }

    public String getNamespace() {
        return this.fQName.getNamespaceURI();
    }

    @Override // javax.xml.stream.events.StartElement
    public NamespaceContext getNamespaceContext() {
        return this.fNamespaceContext;
    }

    @Override // javax.xml.stream.events.StartElement
    public String getNamespaceURI(String str) {
        if (getNamespace() != null && this.fQName.getPrefix().equals(str)) {
            return getNamespace();
        }
        NamespaceContext namespaceContext = this.fNamespaceContext;
        if (namespaceContext != null) {
            return namespaceContext.getNamespaceURI(str);
        }
        return null;
    }

    @Override // javax.xml.stream.events.StartElement
    public Iterator getNamespaces() {
        List list = this.fNamespaces;
        return list != null ? new ReadOnlyIterator(list.iterator()) : new ReadOnlyIterator();
    }

    public void init() {
        setEventType(1);
        this.fAttributes = new HashMap();
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

    public void setNamespaceContext(NamespaceContext namespaceContext) {
        this.fNamespaceContext = namespaceContext;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("<");
        stringBuffer.append(nameAsString());
        if (this.fAttributes != null) {
            Iterator attributes = getAttributes();
            while (attributes.hasNext()) {
                Attribute attribute = (Attribute) attributes.next();
                stringBuffer.append(" ");
                stringBuffer.append(attribute.toString());
            }
        }
        List<Namespace> list = this.fNamespaces;
        if (list != null) {
            for (Namespace namespace : list) {
                stringBuffer.append(" ");
                stringBuffer.append(namespace.toString());
            }
        }
        stringBuffer.append(">");
        return stringBuffer.toString();
    }

    @Override // com.sun.xml.internal.stream.events.DummyEvent, javax.xml.stream.events.XMLEvent
    public void writeAsEncodedUnicode(Writer writer) throws XMLStreamException {
    }

    public StartElementEvent(QName qName) {
        this.fNamespaceContext = null;
        this.fQName = qName;
        init();
    }

    public StartElementEvent(StartElement startElement) {
        this(startElement.getName());
        addAttributes(startElement.getAttributes());
        addNamespaceAttributes(startElement.getNamespaces());
    }
}
