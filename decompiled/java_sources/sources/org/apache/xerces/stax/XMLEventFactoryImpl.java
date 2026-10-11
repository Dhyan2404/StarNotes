package org.apache.xerces.stax;

import java.util.Iterator;
import javax.xml.namespace.NamespaceContext;
import javax.xml.namespace.QName;
import javax.xml.stream.Location;
import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.events.Attribute;
import javax.xml.stream.events.Characters;
import javax.xml.stream.events.Comment;
import javax.xml.stream.events.DTD;
import javax.xml.stream.events.EndDocument;
import javax.xml.stream.events.EndElement;
import javax.xml.stream.events.EntityDeclaration;
import javax.xml.stream.events.EntityReference;
import javax.xml.stream.events.Namespace;
import javax.xml.stream.events.ProcessingInstruction;
import javax.xml.stream.events.StartDocument;
import javax.xml.stream.events.StartElement;
import org.apache.xerces.stax.events.AttributeImpl;
import org.apache.xerces.stax.events.CharactersImpl;
import org.apache.xerces.stax.events.CommentImpl;
import org.apache.xerces.stax.events.DTDImpl;
import org.apache.xerces.stax.events.EndDocumentImpl;
import org.apache.xerces.stax.events.EndElementImpl;
import org.apache.xerces.stax.events.EntityReferenceImpl;
import org.apache.xerces.stax.events.NamespaceImpl;
import org.apache.xerces.stax.events.ProcessingInstructionImpl;
import org.apache.xerces.stax.events.StartDocumentImpl;
import org.apache.xerces.stax.events.StartElementImpl;

/* loaded from: classes13.dex */
public final class XMLEventFactoryImpl extends XMLEventFactory {

    /* renamed from: a */
    public Location f113441a;

    /* renamed from: a */
    public final StartElement m70557a(QName qName, Iterator it2, Iterator it3, NamespaceContext namespaceContext) {
        return new StartElementImpl(qName, it2, it3, namespaceContext, this.f113441a);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public Attribute createAttribute(String str, String str2) {
        return createAttribute(new QName(str), str2);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public Characters createCData(String str) {
        return new CharactersImpl(str, 12, this.f113441a);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public Characters createCharacters(String str) {
        return new CharactersImpl(str, 4, this.f113441a);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public Comment createComment(String str) {
        return new CommentImpl(str, this.f113441a);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public DTD createDTD(String str) {
        return new DTDImpl(str, this.f113441a);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public EndDocument createEndDocument() {
        return new EndDocumentImpl(this.f113441a);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public EndElement createEndElement(String str, String str2, String str3) {
        return createEndElement(new QName(str2, str3, str), null);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public EntityReference createEntityReference(String str, EntityDeclaration entityDeclaration) {
        return new EntityReferenceImpl(str, entityDeclaration, this.f113441a);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public Characters createIgnorableSpace(String str) {
        return new CharactersImpl(str, 6, this.f113441a);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public Namespace createNamespace(String str) {
        return createNamespace("", str);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public ProcessingInstruction createProcessingInstruction(String str, String str2) {
        return new ProcessingInstructionImpl(str, str2, this.f113441a);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public Characters createSpace(String str) {
        return createCharacters(str);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public StartDocument createStartDocument() {
        return createStartDocument(null, null);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public StartElement createStartElement(String str, String str2, String str3) {
        return createStartElement(new QName(str2, str3, str), (Iterator) null, (Iterator) null);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public void setLocation(Location location) {
        this.f113441a = location;
    }

    @Override // javax.xml.stream.XMLEventFactory
    public Attribute createAttribute(String str, String str2, String str3, String str4) {
        return createAttribute(new QName(str2, str3, str), str4);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public EndElement createEndElement(String str, String str2, String str3, Iterator it2) {
        return createEndElement(new QName(str2, str3, str), it2);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public Namespace createNamespace(String str, String str2) {
        return new NamespaceImpl(str, str2, this.f113441a);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public StartDocument createStartDocument(String str) {
        return createStartDocument(str, null);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public StartElement createStartElement(String str, String str2, String str3, Iterator it2, Iterator it3) {
        return createStartElement(new QName(str2, str3, str), it2, it3);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public Attribute createAttribute(QName qName, String str) {
        return new AttributeImpl(qName, str, "CDATA", true, this.f113441a);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public EndElement createEndElement(QName qName, Iterator it2) {
        return new EndElementImpl(qName, it2, this.f113441a);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public StartDocument createStartDocument(String str, String str2) {
        return new StartDocumentImpl(str, str != null, false, false, str2, this.f113441a);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public StartElement createStartElement(String str, String str2, String str3, Iterator it2, Iterator it3, NamespaceContext namespaceContext) {
        return m70557a(new QName(str2, str3, str), it2, it3, namespaceContext);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public StartDocument createStartDocument(String str, String str2, boolean z) {
        return new StartDocumentImpl(str, str != null, z, true, str2, this.f113441a);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public StartElement createStartElement(QName qName, Iterator it2, Iterator it3) {
        return m70557a(qName, it2, it3, null);
    }
}
