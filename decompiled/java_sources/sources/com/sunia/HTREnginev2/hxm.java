package com.sunia.HTREnginev2;

import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;
import javax.xml.stream.XMLStreamWriter;
import javax.xml.stream.events.Characters;
import javax.xml.stream.events.Comment;
import javax.xml.stream.events.DTD;
import javax.xml.stream.events.EndDocument;
import javax.xml.stream.events.EntityReference;
import javax.xml.stream.events.ProcessingInstruction;
import javax.xml.stream.events.StartDocument;
import javax.xml.transform.stax.StAXResult;
import org.apache.xerces.util.JAXPNamespaceContextWrapper;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.XMLLocator;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLDocumentSource;

/* loaded from: classes13.dex */
public final class hxm implements dxm {

    /* renamed from: e */
    public XMLStreamWriter f72655e;

    /* renamed from: f */
    public final JAXPNamespaceContextWrapper f72656f;

    /* renamed from: g */
    public boolean f72657g;

    /* renamed from: h */
    public boolean f72658h;

    /* renamed from: i */
    public final QName f72659i = new QName();

    public hxm(JAXPNamespaceContextWrapper jAXPNamespaceContextWrapper) {
        this.f72656f = jAXPNamespaceContextWrapper;
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: a */
    public void mo53852a(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        this.f72655e.writeEndDocument();
        this.f72655e.flush();
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: b */
    public void mo53853b(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        String pIData = xMLStreamReader.getPIData();
        if (pIData == null || pIData.length() <= 0) {
            this.f72655e.writeProcessingInstruction(xMLStreamReader.getPITarget());
        } else {
            this.f72655e.writeProcessingInstruction(xMLStreamReader.getPITarget(), pIData);
        }
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: c */
    public void mo53854c(StAXResult stAXResult) {
        this.f72657g = false;
        this.f72658h = false;
        this.f72659i.clear();
        this.f72655e = stAXResult != null ? stAXResult.getXMLStreamWriter() : null;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (this.f72657g) {
            return;
        }
        try {
            if (this.f72658h) {
                this.f72655e.writeCData(xMLString.toString());
            } else {
                this.f72655e.writeCharacters(xMLString.f113585ch, xMLString.offset, xMLString.length);
            }
        } catch (XMLStreamException e) {
            throw new XNIException(e);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: d */
    public void mo53855d(Comment comment) throws XMLStreamException {
        this.f72655e.writeComment(comment.getText());
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void doctypeDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: e */
    public void mo53856e(Characters characters) throws XMLStreamException {
        this.f72655e.writeCharacters(characters.getData());
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void emptyElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        startElement(qName, xMLAttributes, augmentations);
        endElement(qName, augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endCDATA(Augmentations augmentations) throws XNIException {
        this.f72658h = false;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endDocument(Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endElement(QName qName, Augmentations augmentations) throws XNIException {
        try {
            this.f72655e.writeEndElement();
        } catch (XMLStreamException e) {
            throw new XNIException(e);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endGeneralEntity(String str, Augmentations augmentations) throws XNIException {
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: f */
    public void mo53857f(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        String version = xMLStreamReader.getVersion();
        String characterEncodingScheme = xMLStreamReader.getCharacterEncodingScheme();
        XMLStreamWriter xMLStreamWriter = this.f72655e;
        if (characterEncodingScheme == null) {
            characterEncodingScheme = "UTF-8";
        }
        if (version == null) {
            version = "1.0";
        }
        xMLStreamWriter.writeStartDocument(characterEncodingScheme, version);
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: g */
    public void mo53858g(EntityReference entityReference) throws XMLStreamException {
        this.f72655e.writeEntityRef(entityReference.getName());
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public XMLDocumentSource getDocumentSource() {
        return null;
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: h */
    public void mo53859h(StartDocument startDocument) throws XMLStreamException {
        String version = startDocument.getVersion();
        String characterEncodingScheme = startDocument.getCharacterEncodingScheme();
        XMLStreamWriter xMLStreamWriter = this.f72655e;
        if (characterEncodingScheme == null) {
            characterEncodingScheme = "UTF-8";
        }
        if (version == null) {
            version = "1.0";
        }
        xMLStreamWriter.writeStartDocument(characterEncodingScheme, version);
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: i */
    public void mo53860i(Characters characters) throws XMLStreamException {
        this.f72655e.writeCData(characters.getData());
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
        characters(xMLString, augmentations);
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: j */
    public void mo53861j(DTD dtd) throws XMLStreamException {
        this.f72655e.writeDTD(dtd.getDocumentTypeDeclaration());
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: k */
    public void mo53862k(ProcessingInstruction processingInstruction) throws XMLStreamException {
        String data = processingInstruction.getData();
        if (data == null || data.length() <= 0) {
            this.f72655e.writeProcessingInstruction(processingInstruction.getTarget());
        } else {
            this.f72655e.writeProcessingInstruction(processingInstruction.getTarget(), data);
        }
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: l */
    public void mo53863l(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        this.f72655e.writeEntityRef(xMLStreamReader.getLocalName());
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: m */
    public void mo53864m(EndDocument endDocument) throws XMLStreamException {
        this.f72655e.writeEndDocument();
        this.f72655e.flush();
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: n */
    public void mo53865n(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        this.f72655e.writeComment(xMLStreamReader.getText());
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void setDocumentSource(XMLDocumentSource xMLDocumentSource) {
    }

    @Override // com.sunia.HTREnginev2.dxm
    public void setIgnoringCharacters(boolean z) {
        this.f72657g = z;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startCDATA(Augmentations augmentations) throws XNIException {
        this.f72658h = true;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        try {
            if (qName.prefix.length() > 0) {
                XMLStreamWriter xMLStreamWriter = this.f72655e;
                String str = qName.prefix;
                String str2 = qName.localpart;
                String str3 = qName.uri;
                if (str3 == null) {
                    str3 = "";
                }
                xMLStreamWriter.writeStartElement(str, str2, str3);
            } else {
                String str4 = qName.uri;
                if (str4 != null) {
                    this.f72655e.writeStartElement(str4, qName.localpart);
                } else {
                    this.f72655e.writeStartElement(qName.localpart);
                }
            }
            int declaredPrefixCount = this.f72656f.getDeclaredPrefixCount();
            javax.xml.namespace.NamespaceContext namespaceContext = this.f72656f.getNamespaceContext();
            for (int i = 0; i < declaredPrefixCount; i++) {
                String declaredPrefixAt = this.f72656f.getDeclaredPrefixAt(i);
                String namespaceURI = namespaceContext.getNamespaceURI(declaredPrefixAt);
                if (declaredPrefixAt.length() == 0) {
                    XMLStreamWriter xMLStreamWriter2 = this.f72655e;
                    if (namespaceURI == null) {
                        namespaceURI = "";
                    }
                    xMLStreamWriter2.writeDefaultNamespace(namespaceURI);
                } else {
                    XMLStreamWriter xMLStreamWriter3 = this.f72655e;
                    if (namespaceURI == null) {
                        namespaceURI = "";
                    }
                    xMLStreamWriter3.writeNamespace(declaredPrefixAt, namespaceURI);
                }
            }
            int length = xMLAttributes.getLength();
            for (int i2 = 0; i2 < length; i2++) {
                xMLAttributes.getName(i2, this.f72659i);
                if (this.f72659i.prefix.length() > 0) {
                    XMLStreamWriter xMLStreamWriter4 = this.f72655e;
                    QName qName2 = this.f72659i;
                    String str5 = qName2.prefix;
                    String str6 = qName2.uri;
                    if (str6 == null) {
                        str6 = "";
                    }
                    xMLStreamWriter4.writeAttribute(str5, str6, qName2.localpart, xMLAttributes.getValue(i2));
                } else {
                    QName qName3 = this.f72659i;
                    String str7 = qName3.uri;
                    if (str7 != null) {
                        this.f72655e.writeAttribute(str7, qName3.localpart, xMLAttributes.getValue(i2));
                    } else {
                        this.f72655e.writeAttribute(qName3.localpart, xMLAttributes.getValue(i2));
                    }
                }
            }
        } catch (XMLStreamException e) {
            throw new XNIException(e);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startGeneralEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void textDecl(String str, String str2, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void xmlDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
    }
}
