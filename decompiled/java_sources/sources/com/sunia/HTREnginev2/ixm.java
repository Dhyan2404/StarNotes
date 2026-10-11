package com.sunia.HTREnginev2;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import javax.xml.stream.Location;
import javax.xml.stream.XMLEventReader;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;
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
import javax.xml.stream.events.XMLEvent;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.stax.StAXResult;
import javax.xml.transform.stax.StAXSource;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.impl.p117xs.XMLSchemaValidator;
import org.apache.xerces.impl.validation.EntityState;
import org.apache.xerces.impl.validation.ValidationManager;
import org.apache.xerces.util.JAXPNamespaceContextWrapper;
import org.apache.xerces.util.StAXLocationWrapper;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XMLAttributesImpl;
import org.apache.xerces.util.XMLStringBuffer;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLParseException;
import org.xml.sax.SAXException;

/* loaded from: classes13.dex */
public final class ixm implements yzn, EntityState {

    /* renamed from: O */
    public static final String f73710O = "javax.xml.stream.isInterning";

    /* renamed from: Q */
    public static final String f73711Q = "http://apache.org/xml/properties/internal/error-reporter";

    /* renamed from: Z */
    public static final String f73712Z = "http://apache.org/xml/properties/internal/validator/schema";

    /* renamed from: k0 */
    public static final String f73713k0 = "http://apache.org/xml/properties/internal/symbol-table";

    /* renamed from: q0 */
    public static final String f73714q0 = "http://apache.org/xml/properties/internal/validation-manager";

    /* renamed from: J */
    public final XMLStringBuffer f73715J;

    /* renamed from: e */
    public final XMLErrorReporter f73716e;

    /* renamed from: f */
    public final XMLSchemaValidator f73717f;

    /* renamed from: g */
    public final SymbolTable f73718g;

    /* renamed from: h */
    public final ValidationManager f73719h;

    /* renamed from: i */
    public final tlo f73720i;

    /* renamed from: j */
    public final JAXPNamespaceContextWrapper f73721j;

    /* renamed from: o */
    public C13897b f73726o;

    /* renamed from: p */
    public C13896a f73727p;

    /* renamed from: q */
    public dxm f73728q;

    /* renamed from: r */
    public hxm f73729r;

    /* renamed from: s */
    public fxm f73730s;

    /* renamed from: y */
    public final ArrayList f73736y;

    /* renamed from: z */
    public final XMLString f73737z;

    /* renamed from: k */
    public final StAXLocationWrapper f73722k = new StAXLocationWrapper();

    /* renamed from: l */
    public final C13898c f73723l = new C13898c();

    /* renamed from: m */
    public HashMap f73724m = null;

    /* renamed from: n */
    public boolean f73725n = false;

    /* renamed from: t */
    public int f73731t = 0;

    /* renamed from: u */
    public XMLEvent f73732u = null;

    /* renamed from: v */
    public final QName f73733v = new QName();

    /* renamed from: w */
    public final QName f73734w = new QName();

    /* renamed from: x */
    public final XMLAttributesImpl f73735x = new XMLAttributesImpl();

    /* renamed from: com.sunia.HTREnginev2.ixm$a */
    /* loaded from: classes13.dex */
    public final class C13896a {

        /* renamed from: c */
        public static final int f73738c = 1024;

        /* renamed from: d */
        public static final int f73739d = 1023;

        /* renamed from: a */
        public final char[] f73740a = new char[1024];

        public C13896a() {
        }

        /* renamed from: a */
        public final void m54828a(Iterator it2) {
            ixm.this.f73736y.clear();
            while (it2.hasNext()) {
                String prefix = ((Namespace) it2.next()).getPrefix();
                ArrayList arrayList = ixm.this.f73736y;
                if (prefix == null) {
                    prefix = "";
                }
                arrayList.add(prefix);
            }
        }

        /* renamed from: b */
        public final void m54829b(EndElement endElement) {
            m54828a(endElement.getNamespaces());
        }

        /* renamed from: c */
        public final void m54830c(StartElement startElement) {
            m54828a(startElement.getNamespaces());
        }

        /* renamed from: d */
        public final void m54831d(QName qName, javax.xml.namespace.QName qName2) {
            ixm.this.m54822l(qName, qName2.getNamespaceURI(), qName2.getLocalPart(), qName2.getPrefix());
        }

        /* renamed from: e */
        public final void m54832e(StartElement startElement) {
            ixm.this.f73735x.removeAllAttributes();
            Iterator attributes = startElement.getAttributes();
            while (attributes.hasNext()) {
                Attribute attribute = (Attribute) attributes.next();
                m54831d(ixm.this.f73734w, attribute.getName());
                String dTDType = attribute.getDTDType();
                int length = ixm.this.f73735x.getLength();
                ixm ixmVar = ixm.this;
                XMLAttributesImpl xMLAttributesImpl = ixmVar.f73735x;
                QName qName = ixmVar.f73734w;
                if (dTDType == null) {
                    dTDType = XMLSymbols.fCDATASymbol;
                }
                xMLAttributesImpl.addAttributeNS(qName, dTDType, attribute.getValue());
                ixm.this.f73735x.setSpecified(length, attribute.isSpecified());
            }
        }

        /* renamed from: f */
        public final void m54833f(String str) {
            if (str != null) {
                int length = str.length();
                int i = length & 1023;
                if (i > 0) {
                    str.getChars(0, i, this.f73740a, 0);
                    ixm.this.f73737z.setValues(this.f73740a, 0, i);
                    ixm.this.f73717f.characters(ixm.this.f73737z, null);
                }
                while (i < length) {
                    int i2 = i + 1024;
                    str.getChars(i, i2, this.f73740a, 0);
                    ixm.this.f73737z.setValues(this.f73740a, 0, 1024);
                    ixm.this.f73717f.characters(ixm.this.f73737z, null);
                    i = i2;
                }
            }
        }

        /* renamed from: g */
        public final void m54834g(XMLEventReader xMLEventReader, StAXResult stAXResult) throws SAXException, XMLStreamException {
            ixm.this.f73732u = xMLEventReader.peek();
            if (ixm.this.f73732u != null) {
                int eventType = ixm.this.f73732u.getEventType();
                if (eventType != 7 && eventType != 1) {
                    throw new SAXException(oqi.m56146a(ixm.this.f73720i.getLocale(), "StAXIllegalInitialState", null));
                }
                ixm.this.m54826p(null, stAXResult, false);
                ixm.this.f73717f.startDocument(ixm.this.f73722k, null, ixm.this.f73721j, null);
                while (xMLEventReader.hasNext()) {
                    ixm.this.f73732u = xMLEventReader.nextEvent();
                    switch (ixm.this.f73732u.getEventType()) {
                        case 1:
                            ixm.m54817g(ixm.this);
                            StartElement asStartElement = ixm.this.f73732u.asStartElement();
                            m54831d(ixm.this.f73733v, asStartElement.getName());
                            m54832e(asStartElement);
                            m54830c(asStartElement);
                            ixm.this.f73721j.setNamespaceContext(asStartElement.getNamespaceContext());
                            ixm.this.f73722k.setLocation(asStartElement.getLocation());
                            XMLSchemaValidator xMLSchemaValidator = ixm.this.f73717f;
                            ixm ixmVar = ixm.this;
                            xMLSchemaValidator.startElement(ixmVar.f73733v, ixmVar.f73735x, null);
                            break;
                        case 2:
                            EndElement asEndElement = ixm.this.f73732u.asEndElement();
                            m54831d(ixm.this.f73733v, asEndElement.getName());
                            m54829b(asEndElement);
                            ixm.this.f73722k.setLocation(asEndElement.getLocation());
                            ixm.this.f73717f.endElement(ixm.this.f73733v, null);
                            if (ixm.m54818h(ixm.this) > 0) {
                                break;
                            } else {
                                break;
                            }
                        case 3:
                            if (ixm.this.f73728q == null) {
                                break;
                            } else {
                                ixm.this.f73728q.mo53862k((ProcessingInstruction) ixm.this.f73732u);
                                break;
                            }
                        case 4:
                        case 6:
                            if (ixm.this.f73728q == null) {
                                m54833f(ixm.this.f73732u.asCharacters().getData());
                                break;
                            } else {
                                Characters asCharacters = ixm.this.f73732u.asCharacters();
                                ixm.this.f73728q.setIgnoringCharacters(true);
                                m54833f(asCharacters.getData());
                                ixm.this.f73728q.setIgnoringCharacters(false);
                                ixm.this.f73728q.mo53856e(asCharacters);
                                break;
                            }
                        case 5:
                            if (ixm.this.f73728q == null) {
                                break;
                            } else {
                                ixm.this.f73728q.mo53855d((Comment) ixm.this.f73732u);
                                break;
                            }
                        case 7:
                            ixm.m54817g(ixm.this);
                            if (ixm.this.f73728q == null) {
                                break;
                            } else {
                                ixm.this.f73728q.mo53859h((StartDocument) ixm.this.f73732u);
                                break;
                            }
                        case 8:
                            if (ixm.this.f73728q == null) {
                                break;
                            } else {
                                ixm.this.f73728q.mo53864m((EndDocument) ixm.this.f73732u);
                                break;
                            }
                        case 9:
                            if (ixm.this.f73728q == null) {
                                break;
                            } else {
                                ixm.this.f73728q.mo53858g((EntityReference) ixm.this.f73732u);
                                break;
                            }
                        case 11:
                            DTD dtd = (DTD) ixm.this.f73732u;
                            ixm.this.m54825o(dtd.getEntities());
                            if (ixm.this.f73728q == null) {
                                break;
                            } else {
                                ixm.this.f73728q.mo53861j(dtd);
                                break;
                            }
                        case 12:
                            if (ixm.this.f73728q == null) {
                                ixm.this.f73717f.startCDATA(null);
                                m54833f(ixm.this.f73732u.asCharacters().getData());
                                ixm.this.f73717f.endCDATA(null);
                                break;
                            } else {
                                Characters asCharacters2 = ixm.this.f73732u.asCharacters();
                                ixm.this.f73728q.setIgnoringCharacters(true);
                                ixm.this.f73717f.startCDATA(null);
                                m54833f(ixm.this.f73732u.asCharacters().getData());
                                ixm.this.f73717f.endCDATA(null);
                                ixm.this.f73728q.setIgnoringCharacters(false);
                                ixm.this.f73728q.mo53860i(asCharacters2);
                                break;
                            }
                    }
                }
                ixm.this.f73717f.endDocument(null);
            }
        }
    }

    /* renamed from: com.sunia.HTREnginev2.ixm$b */
    /* loaded from: classes13.dex */
    public final class C13897b {
        public C13897b() {
        }

        /* renamed from: a */
        public final void m54835a(XMLStreamReader xMLStreamReader) {
            ixm.this.f73736y.clear();
            int namespaceCount = xMLStreamReader.getNamespaceCount();
            for (int i = 0; i < namespaceCount; i++) {
                String namespacePrefix = xMLStreamReader.getNamespacePrefix(i);
                ArrayList arrayList = ixm.this.f73736y;
                if (namespacePrefix == null) {
                    namespacePrefix = "";
                }
                arrayList.add(namespacePrefix);
            }
        }

        /* renamed from: b */
        public final void m54836b(XMLStreamReader xMLStreamReader) {
            ixm.this.f73735x.removeAllAttributes();
            int attributeCount = xMLStreamReader.getAttributeCount();
            for (int i = 0; i < attributeCount; i++) {
                ixm ixmVar = ixm.this;
                ixmVar.m54822l(ixmVar.f73734w, xMLStreamReader.getAttributeNamespace(i), xMLStreamReader.getAttributeLocalName(i), xMLStreamReader.getAttributePrefix(i));
                String attributeType = xMLStreamReader.getAttributeType(i);
                ixm ixmVar2 = ixm.this;
                XMLAttributesImpl xMLAttributesImpl = ixmVar2.f73735x;
                QName qName = ixmVar2.f73734w;
                if (attributeType == null) {
                    attributeType = XMLSymbols.fCDATASymbol;
                }
                xMLAttributesImpl.addAttributeNS(qName, attributeType, xMLStreamReader.getAttributeValue(i));
                ixm.this.f73735x.setSpecified(i, xMLStreamReader.isAttributeSpecified(i));
            }
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:14:0x005d. Please report as an issue. */
        /* renamed from: c */
        public final void m54837c(XMLStreamReader xMLStreamReader, StAXResult stAXResult) throws SAXException, XMLStreamException {
            if (xMLStreamReader.hasNext()) {
                int eventType = xMLStreamReader.getEventType();
                if (eventType != 7 && eventType != 1) {
                    throw new SAXException(oqi.m56146a(ixm.this.f73720i.getLocale(), "StAXIllegalInitialState", null));
                }
                ixm.this.f73723l.m54839b(xMLStreamReader);
                Object obj = Boolean.FALSE;
                try {
                    obj = xMLStreamReader.getProperty(ixm.f73710O);
                } catch (Exception unused) {
                }
                ixm ixmVar = ixm.this;
                ixmVar.m54826p(ixmVar.f73723l, stAXResult, Boolean.TRUE.equals(obj));
                ixm.this.f73717f.startDocument(ixm.this.f73722k, null, ixm.this.f73721j, null);
                do {
                    switch (eventType) {
                        case 1:
                            ixm.m54817g(ixm.this);
                            ixm ixmVar2 = ixm.this;
                            ixmVar2.m54822l(ixmVar2.f73733v, xMLStreamReader.getNamespaceURI(), xMLStreamReader.getLocalName(), xMLStreamReader.getPrefix());
                            m54836b(xMLStreamReader);
                            m54835a(xMLStreamReader);
                            ixm.this.f73721j.setNamespaceContext(xMLStreamReader.getNamespaceContext());
                            XMLSchemaValidator xMLSchemaValidator = ixm.this.f73717f;
                            ixm ixmVar3 = ixm.this;
                            xMLSchemaValidator.startElement(ixmVar3.f73733v, ixmVar3.f73735x, null);
                            break;
                        case 2:
                            ixm ixmVar4 = ixm.this;
                            ixmVar4.m54822l(ixmVar4.f73733v, xMLStreamReader.getNamespaceURI(), xMLStreamReader.getLocalName(), xMLStreamReader.getPrefix());
                            m54835a(xMLStreamReader);
                            ixm.this.f73721j.setNamespaceContext(xMLStreamReader.getNamespaceContext());
                            ixm.this.f73717f.endElement(ixm.this.f73733v, null);
                            ixm.m54818h(ixm.this);
                            break;
                        case 3:
                            if (ixm.this.f73728q != null) {
                                ixm.this.f73728q.mo53853b(xMLStreamReader);
                                break;
                            }
                            break;
                        case 4:
                        case 6:
                            ixm.this.f73737z.setValues(xMLStreamReader.getTextCharacters(), xMLStreamReader.getTextStart(), xMLStreamReader.getTextLength());
                            ixm.this.f73717f.characters(ixm.this.f73737z, null);
                            break;
                        case 5:
                            if (ixm.this.f73728q != null) {
                                ixm.this.f73728q.mo53865n(xMLStreamReader);
                                break;
                            }
                            break;
                        case 7:
                            ixm.m54817g(ixm.this);
                            if (ixm.this.f73728q != null) {
                                ixm.this.f73728q.mo53857f(xMLStreamReader);
                                break;
                            }
                            break;
                        case 9:
                            if (ixm.this.f73728q != null) {
                                ixm.this.f73728q.mo53863l(xMLStreamReader);
                                break;
                            }
                            break;
                        case 11:
                            ixm.this.m54825o((List) xMLStreamReader.getProperty("javax.xml.stream.entities"));
                            break;
                        case 12:
                            ixm.this.f73717f.startCDATA(null);
                            ixm.this.f73737z.setValues(xMLStreamReader.getTextCharacters(), xMLStreamReader.getTextStart(), xMLStreamReader.getTextLength());
                            ixm.this.f73717f.characters(ixm.this.f73737z, null);
                            ixm.this.f73717f.endCDATA(null);
                            break;
                    }
                    eventType = xMLStreamReader.next();
                    if (xMLStreamReader.hasNext()) {
                    }
                    ixm.this.f73717f.endDocument(null);
                    if (eventType == 8 || ixm.this.f73728q == null) {
                    }
                    ixm.this.f73728q.mo53852a(xMLStreamReader);
                    return;
                } while (ixm.this.f73731t > 0);
                ixm.this.f73717f.endDocument(null);
                if (eventType == 8) {
                }
            }
        }
    }

    /* renamed from: com.sunia.HTREnginev2.ixm$c */
    /* loaded from: classes13.dex */
    public static final class C13898c implements Location {

        /* renamed from: e */
        public XMLStreamReader f73743e;

        /* renamed from: a */
        public final Location m54838a() {
            XMLStreamReader xMLStreamReader = this.f73743e;
            if (xMLStreamReader != null) {
                return xMLStreamReader.getLocation();
            }
            return null;
        }

        /* renamed from: b */
        public void m54839b(XMLStreamReader xMLStreamReader) {
            this.f73743e = xMLStreamReader;
        }

        @Override // javax.xml.stream.Location
        public int getCharacterOffset() {
            Location m54838a = m54838a();
            if (m54838a != null) {
                return m54838a.getCharacterOffset();
            }
            return -1;
        }

        @Override // javax.xml.stream.Location
        public int getColumnNumber() {
            Location m54838a = m54838a();
            if (m54838a != null) {
                return m54838a.getColumnNumber();
            }
            return -1;
        }

        @Override // javax.xml.stream.Location
        public int getLineNumber() {
            Location m54838a = m54838a();
            if (m54838a != null) {
                return m54838a.getLineNumber();
            }
            return -1;
        }

        @Override // javax.xml.stream.Location
        public String getPublicId() {
            Location m54838a = m54838a();
            if (m54838a != null) {
                return m54838a.getPublicId();
            }
            return null;
        }

        @Override // javax.xml.stream.Location
        public String getSystemId() {
            Location m54838a = m54838a();
            if (m54838a != null) {
                return m54838a.getSystemId();
            }
            return null;
        }
    }

    public ixm(tlo tloVar) {
        ArrayList arrayList = new ArrayList();
        this.f73736y = arrayList;
        this.f73737z = new XMLString();
        this.f73715J = new XMLStringBuffer();
        this.f73720i = tloVar;
        this.f73716e = (XMLErrorReporter) tloVar.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        this.f73717f = (XMLSchemaValidator) tloVar.getProperty("http://apache.org/xml/properties/internal/validator/schema");
        SymbolTable symbolTable = (SymbolTable) tloVar.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        this.f73718g = symbolTable;
        this.f73719h = (ValidationManager) tloVar.getProperty("http://apache.org/xml/properties/internal/validation-manager");
        JAXPNamespaceContextWrapper jAXPNamespaceContextWrapper = new JAXPNamespaceContextWrapper(symbolTable);
        this.f73721j = jAXPNamespaceContextWrapper;
        jAXPNamespaceContextWrapper.setDeclaredPrefixes(arrayList);
    }

    /* renamed from: g */
    public static /* synthetic */ int m54817g(ixm ixmVar) {
        int i = ixmVar.f73731t + 1;
        ixmVar.f73731t = i;
        return i;
    }

    /* renamed from: h */
    public static /* synthetic */ int m54818h(ixm ixmVar) {
        int i = ixmVar.f73731t - 1;
        ixmVar.f73731t = i;
        return i;
    }

    @Override // org.apache.xerces.impl.validation.EntityState
    public boolean isEntityDeclared(String str) {
        HashMap hashMap = this.f73724m;
        if (hashMap != null) {
            return hashMap.containsKey(str);
        }
        return false;
    }

    @Override // org.apache.xerces.impl.validation.EntityState
    public boolean isEntityUnparsed(String str) {
        EntityDeclaration entityDeclaration;
        HashMap hashMap = this.f73724m;
        return (hashMap == null || (entityDeclaration = (EntityDeclaration) hashMap.get(str)) == null || entityDeclaration.getNotationName() == null) ? false : true;
    }

    /* renamed from: l */
    public final void m54822l(QName qName, String str, String str2, String str3) {
        String str4;
        String str5;
        String str6 = null;
        if (this.f73725n) {
            if (str != null && str.length() == 0) {
                str = null;
            }
            if (str2 == null) {
                str2 = XMLSymbols.EMPTY_STRING;
            }
            if (str3 == null) {
                str3 = XMLSymbols.EMPTY_STRING;
            }
            str6 = str;
            str4 = str2;
        } else {
            if (str != null && str.length() > 0) {
                str6 = this.f73718g.addSymbol(str);
            }
            str4 = str2 != null ? this.f73718g.addSymbol(str2) : XMLSymbols.EMPTY_STRING;
            str3 = (str3 == null || str3.length() <= 0) ? XMLSymbols.EMPTY_STRING : this.f73718g.addSymbol(str3);
        }
        if (str3 != XMLSymbols.EMPTY_STRING) {
            this.f73715J.clear();
            this.f73715J.append(str3);
            this.f73715J.append(':');
            this.f73715J.append(str4);
            SymbolTable symbolTable = this.f73718g;
            XMLStringBuffer xMLStringBuffer = this.f73715J;
            str5 = symbolTable.addSymbol(xMLStringBuffer.f113585ch, xMLStringBuffer.offset, xMLStringBuffer.length);
        } else {
            str5 = str4;
        }
        qName.setValues(str3, str4, str5, str6);
    }

    /* renamed from: m */
    public final XMLEvent m54823m() {
        return this.f73732u;
    }

    /* renamed from: n */
    public final EntityDeclaration m54824n(String str) {
        HashMap hashMap = this.f73724m;
        if (hashMap != null) {
            return (EntityDeclaration) hashMap.get(str);
        }
        return null;
    }

    /* renamed from: o */
    public final void m54825o(List list) {
        int size = list != null ? list.size() : 0;
        if (size > 0) {
            if (this.f73724m == null) {
                this.f73724m = new HashMap();
            }
            for (int i = 0; i < size; i++) {
                EntityDeclaration entityDeclaration = (EntityDeclaration) list.get(i);
                this.f73724m.put(entityDeclaration.getName(), entityDeclaration);
            }
        }
    }

    /* renamed from: p */
    public final void m54826p(Location location, StAXResult stAXResult, boolean z) {
        this.f73731t = 0;
        this.f73720i.reset();
        m54827q(stAXResult);
        this.f73719h.setEntityState(this);
        HashMap hashMap = this.f73724m;
        if (hashMap != null && !hashMap.isEmpty()) {
            this.f73724m.clear();
        }
        this.f73722k.setLocation(location);
        this.f73716e.setDocumentLocator(this.f73722k);
        this.f73725n = z;
    }

    /* renamed from: q */
    public final void m54827q(StAXResult stAXResult) {
        if (stAXResult == null) {
            this.f73728q = null;
            this.f73717f.setDocumentHandler(null);
            return;
        }
        if (stAXResult.getXMLStreamWriter() != null) {
            if (this.f73729r == null) {
                this.f73729r = new hxm(this.f73721j);
            }
            hxm hxmVar = this.f73729r;
            this.f73728q = hxmVar;
            hxmVar.mo53854c(stAXResult);
        } else {
            if (this.f73730s == null) {
                this.f73730s = new fxm(this, this.f73721j);
            }
            fxm fxmVar = this.f73730s;
            this.f73728q = fxmVar;
            fxmVar.mo53854c(stAXResult);
        }
        this.f73717f.setDocumentHandler(this.f73728q);
    }

    @Override // com.sunia.HTREnginev2.yzn
    public void validate(Source source, Result result) throws SAXException, IOException {
        if (!(result instanceof StAXResult) && result != null) {
            throw new IllegalArgumentException(oqi.m56146a(this.f73720i.getLocale(), "SourceResultMismatch", new Object[]{source.getClass().getName(), result.getClass().getName()}));
        }
        StAXSource stAXSource = (StAXSource) source;
        StAXResult stAXResult = (StAXResult) result;
        try {
            try {
                try {
                    XMLStreamReader xMLStreamReader = stAXSource.getXMLStreamReader();
                    if (xMLStreamReader != null) {
                        if (this.f73726o == null) {
                            this.f73726o = new C13897b();
                        }
                        this.f73726o.m54837c(xMLStreamReader, stAXResult);
                    } else {
                        if (this.f73727p == null) {
                            this.f73727p = new C13896a();
                        }
                        this.f73727p.m54834g(stAXSource.getXMLEventReader(), stAXResult);
                    }
                } catch (XMLStreamException e) {
                    throw new SAXException(e);
                }
            } catch (XMLParseException e2) {
                throw fzn.m54212b(e2);
            } catch (XNIException e3) {
                throw fzn.m54211a(e3);
            }
        } finally {
            this.f73732u = null;
            this.f73722k.setLocation(null);
            this.f73723l.m54839b(null);
            dxm dxmVar = this.f73728q;
            if (dxmVar != null) {
                dxmVar.mo53854c(null);
            }
        }
    }
}
