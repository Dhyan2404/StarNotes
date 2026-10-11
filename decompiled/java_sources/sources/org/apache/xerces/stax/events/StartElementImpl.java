package org.apache.xerces.stax.events;

import com.sunia.HTREnginev2.jnf;
import java.io.IOException;
import java.io.Writer;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import javax.xml.namespace.NamespaceContext;
import javax.xml.namespace.QName;
import javax.xml.stream.Location;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.Attribute;
import javax.xml.stream.events.Namespace;
import javax.xml.stream.events.StartElement;
import org.apache.xerces.stax.DefaultNamespaceContext;

/* loaded from: classes13.dex */
public final class StartElementImpl extends jnf implements StartElement {

    /* renamed from: k */
    public static final Comparator f113471k = new C20081a();

    /* renamed from: i */
    public final Map f113472i;

    /* renamed from: j */
    public final NamespaceContext f113473j;

    public StartElementImpl(QName qName, Iterator it2, Iterator it3, NamespaceContext namespaceContext, Location location) {
        super(qName, true, it3, location);
        if (it2 == null || !it2.hasNext()) {
            this.f113472i = Collections.EMPTY_MAP;
        } else {
            this.f113472i = new TreeMap(f113471k);
            do {
                Attribute attribute = (Attribute) it2.next();
                this.f113472i.put(attribute.getName(), attribute);
            } while (it2.hasNext());
        }
        this.f113473j = namespaceContext == null ? DefaultNamespaceContext.getInstance() : namespaceContext;
    }

    @Override // javax.xml.stream.events.StartElement
    public Attribute getAttributeByName(QName qName) {
        return (Attribute) this.f113472i.get(qName);
    }

    @Override // javax.xml.stream.events.StartElement
    public Iterator getAttributes() {
        return jnf.m54983a(this.f113472i.values().iterator());
    }

    @Override // javax.xml.stream.events.StartElement
    public NamespaceContext getNamespaceContext() {
        return this.f113473j;
    }

    @Override // javax.xml.stream.events.StartElement
    public String getNamespaceURI(String str) {
        return this.f113473j.getNamespaceURI(str);
    }

    @Override // com.sunia.HTREnginev2.plo, javax.xml.stream.events.XMLEvent
    public void writeAsEncodedUnicode(Writer writer) throws XMLStreamException {
        try {
            writer.write(60);
            QName name = getName();
            String prefix = name.getPrefix();
            if (prefix != null && prefix.length() > 0) {
                writer.write(prefix);
                writer.write(58);
            }
            writer.write(name.getLocalPart());
            Iterator namespaces = getNamespaces();
            while (namespaces.hasNext()) {
                Namespace namespace = (Namespace) namespaces.next();
                writer.write(32);
                namespace.writeAsEncodedUnicode(writer);
            }
            Iterator attributes = getAttributes();
            while (attributes.hasNext()) {
                Attribute attribute = (Attribute) attributes.next();
                writer.write(32);
                attribute.writeAsEncodedUnicode(writer);
            }
            writer.write(62);
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }
}
