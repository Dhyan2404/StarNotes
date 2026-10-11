package com.sunia.HTREnginev2;

import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.xml.namespace.NamespaceContext;
import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;
import javax.xml.stream.events.Characters;
import javax.xml.stream.events.Comment;
import javax.xml.stream.events.DTD;
import javax.xml.stream.events.EndDocument;
import javax.xml.stream.events.EntityReference;
import javax.xml.stream.events.ProcessingInstruction;
import javax.xml.stream.events.StartDocument;
import javax.xml.stream.events.XMLEvent;
import javax.xml.transform.stax.StAXResult;
import org.apache.xerces.util.JAXPNamespaceContextWrapper;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.XMLLocator;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLDocumentSource;

/* loaded from: classes13.dex */
public final class fxm implements dxm {

    /* renamed from: l */
    public static final Iterator f70482l = new exm();

    /* renamed from: e */
    public XMLEventWriter f70483e;

    /* renamed from: g */
    public final ixm f70485g;

    /* renamed from: h */
    public final JAXPNamespaceContextWrapper f70486h;

    /* renamed from: i */
    public boolean f70487i;

    /* renamed from: j */
    public boolean f70488j;

    /* renamed from: k */
    public final QName f70489k = new QName();

    /* renamed from: f */
    public final XMLEventFactory f70484f = XMLEventFactory.newInstance();

    /* renamed from: com.sunia.HTREnginev2.fxm$a */
    /* loaded from: classes13.dex */
    public final class C13746a implements Iterator {

        /* renamed from: e */
        public XMLAttributes f70490e;

        /* renamed from: f */
        public int f70491f = 0;

        /* renamed from: g */
        public int f70492g;

        public C13746a(XMLAttributes xMLAttributes, int i) {
            this.f70490e = xMLAttributes;
            this.f70492g = i;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f70491f < this.f70492g) {
                return true;
            }
            this.f70490e = null;
            return false;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.f70490e.getName(this.f70491f, fxm.this.f70489k);
            XMLEventFactory xMLEventFactory = fxm.this.f70484f;
            String str = fxm.this.f70489k.prefix;
            String str2 = fxm.this.f70489k.uri != null ? fxm.this.f70489k.uri : "";
            String str3 = fxm.this.f70489k.localpart;
            XMLAttributes xMLAttributes = this.f70490e;
            int i = this.f70491f;
            this.f70491f = i + 1;
            return xMLEventFactory.createAttribute(str, str2, str3, xMLAttributes.getValue(i));
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.fxm$b */
    /* loaded from: classes13.dex */
    public final class C13747b implements Iterator {

        /* renamed from: e */
        public NamespaceContext f70494e;

        /* renamed from: f */
        public int f70495f = 0;

        /* renamed from: g */
        public int f70496g;

        public C13747b(int i) {
            this.f70494e = fxm.this.f70486h.getNamespaceContext();
            this.f70496g = i;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f70495f < this.f70496g) {
                return true;
            }
            this.f70494e = null;
            return false;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            JAXPNamespaceContextWrapper jAXPNamespaceContextWrapper = fxm.this.f70486h;
            int i = this.f70495f;
            this.f70495f = i + 1;
            String declaredPrefixAt = jAXPNamespaceContextWrapper.getDeclaredPrefixAt(i);
            String namespaceURI = this.f70494e.getNamespaceURI(declaredPrefixAt);
            int length = declaredPrefixAt.length();
            XMLEventFactory xMLEventFactory = fxm.this.f70484f;
            if (length == 0) {
                if (namespaceURI == null) {
                    namespaceURI = "";
                }
                return xMLEventFactory.createNamespace(namespaceURI);
            }
            if (namespaceURI == null) {
                namespaceURI = "";
            }
            return xMLEventFactory.createNamespace(declaredPrefixAt, namespaceURI);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public fxm(ixm ixmVar, JAXPNamespaceContextWrapper jAXPNamespaceContextWrapper) {
        this.f70485g = ixmVar;
        this.f70486h = jAXPNamespaceContextWrapper;
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: a */
    public void mo53852a(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        this.f70483e.add(this.f70484f.createEndDocument());
        this.f70483e.flush();
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: b */
    public void mo53853b(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        String pIData = xMLStreamReader.getPIData();
        XMLEventWriter xMLEventWriter = this.f70483e;
        XMLEventFactory xMLEventFactory = this.f70484f;
        String pITarget = xMLStreamReader.getPITarget();
        if (pIData == null) {
            pIData = "";
        }
        xMLEventWriter.add(xMLEventFactory.createProcessingInstruction(pITarget, pIData));
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: c */
    public void mo53854c(StAXResult stAXResult) {
        this.f70487i = false;
        this.f70488j = false;
        this.f70483e = stAXResult != null ? stAXResult.getXMLEventWriter() : null;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        XMLEventWriter xMLEventWriter;
        Characters createCData;
        if (this.f70487i) {
            return;
        }
        try {
            if (this.f70488j) {
                xMLEventWriter = this.f70483e;
                createCData = this.f70484f.createCData(xMLString.toString());
            } else {
                xMLEventWriter = this.f70483e;
                createCData = this.f70484f.createCharacters(xMLString.toString());
            }
            xMLEventWriter.add(createCData);
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
        this.f70483e.add(comment);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void doctypeDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: e */
    public void mo53856e(Characters characters) throws XMLStreamException {
        this.f70483e.add(characters);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void emptyElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        startElement(qName, xMLAttributes, augmentations);
        endElement(qName, augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endCDATA(Augmentations augmentations) throws XNIException {
        this.f70488j = false;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endDocument(Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endElement(QName qName, Augmentations augmentations) throws XNIException {
        try {
            XMLEvent m54823m = this.f70485g.m54823m();
            if (m54823m != null) {
                this.f70483e.add(m54823m);
            } else {
                this.f70483e.add(this.f70484f.createEndElement(qName.prefix, qName.uri, qName.localpart, m54210s()));
            }
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
        boolean standaloneSet = xMLStreamReader.standaloneSet();
        XMLEventWriter xMLEventWriter = this.f70483e;
        XMLEventFactory xMLEventFactory = this.f70484f;
        if (characterEncodingScheme == null) {
            characterEncodingScheme = "UTF-8";
        }
        if (version == null) {
            version = "1.0";
        }
        xMLEventWriter.add(xMLEventFactory.createStartDocument(characterEncodingScheme, version, standaloneSet));
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: g */
    public void mo53858g(EntityReference entityReference) throws XMLStreamException {
        this.f70483e.add(entityReference);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public XMLDocumentSource getDocumentSource() {
        return null;
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: h */
    public void mo53859h(StartDocument startDocument) throws XMLStreamException {
        this.f70483e.add(startDocument);
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: i */
    public void mo53860i(Characters characters) throws XMLStreamException {
        this.f70483e.add(characters);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
        characters(xMLString, augmentations);
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: j */
    public void mo53861j(DTD dtd) throws XMLStreamException {
        this.f70483e.add(dtd);
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: k */
    public void mo53862k(ProcessingInstruction processingInstruction) throws XMLStreamException {
        this.f70483e.add(processingInstruction);
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: l */
    public void mo53863l(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        String localName = xMLStreamReader.getLocalName();
        this.f70483e.add(this.f70484f.createEntityReference(localName, this.f70485g.m54824n(localName)));
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: m */
    public void mo53864m(EndDocument endDocument) throws XMLStreamException {
        this.f70483e.add(endDocument);
        this.f70483e.flush();
    }

    @Override // com.sunia.HTREnginev2.dxm
    /* renamed from: n */
    public void mo53865n(XMLStreamReader xMLStreamReader) throws XMLStreamException {
        this.f70483e.add(this.f70484f.createComment(xMLStreamReader.getText()));
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
    }

    /* renamed from: r */
    public final Iterator m54209r(XMLAttributes xMLAttributes, int i) {
        return i > 0 ? new C13746a(xMLAttributes, i) : f70482l;
    }

    /* renamed from: s */
    public final Iterator m54210s() {
        int declaredPrefixCount = this.f70486h.getDeclaredPrefixCount();
        return declaredPrefixCount > 0 ? new C13747b(declaredPrefixCount) : f70482l;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void setDocumentSource(XMLDocumentSource xMLDocumentSource) {
    }

    @Override // com.sunia.HTREnginev2.dxm
    public void setIgnoringCharacters(boolean z) {
        this.f70487i = z;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startCDATA(Augmentations augmentations) throws XNIException {
        this.f70488j = true;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startDocument(XMLLocator xMLLocator, String str, org.apache.xerces.xni.NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        XMLEvent m54823m;
        try {
            int length = xMLAttributes.getLength();
            if (length == 0 && (m54823m = this.f70485g.m54823m()) != null) {
                this.f70483e.add(m54823m);
                return;
            }
            XMLEventWriter xMLEventWriter = this.f70483e;
            XMLEventFactory xMLEventFactory = this.f70484f;
            String str = qName.prefix;
            String str2 = qName.uri;
            if (str2 == null) {
                str2 = "";
            }
            xMLEventWriter.add(xMLEventFactory.createStartElement(str, str2, qName.localpart, m54209r(xMLAttributes, length), m54210s(), this.f70486h.getNamespaceContext()));
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
