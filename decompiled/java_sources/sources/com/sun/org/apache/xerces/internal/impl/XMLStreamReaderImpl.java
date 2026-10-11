package com.sun.org.apache.xerces.internal.impl;

import com.sun.org.apache.xerces.internal.util.NamespaceContextWrapper;
import com.sun.org.apache.xerces.internal.util.NamespaceSupport;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLDTDScanner;
import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import com.sun.xml.internal.stream.Entity;
import com.sun.xml.internal.stream.StaxErrorReporter;
import com.sun.xml.internal.stream.dtd.nonvalidating.DTDGrammar;
import com.sun.xml.internal.stream.dtd.nonvalidating.XMLNotationDecl;
import com.sun.xml.internal.stream.events.EntityDeclarationImpl;
import com.sun.xml.internal.stream.events.NotationDeclarationImpl;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.List;
import javax.xml.namespace.QName;
import javax.xml.stream.Location;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;

/* loaded from: classes10.dex */
public class XMLStreamReaderImpl implements XMLStreamReader {
    static final boolean DEBUG = false;
    protected static final String ENTITY_MANAGER = "http://apache.org/xml/properties/internal/entity-manager";
    protected static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    protected static final String READER_IN_DEFINED_STATE = "http://java.sun.com/xml/stream/properties/reader-in-defined-state";
    protected static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    private boolean fBindNamespaces;
    private String fDTDDecl;
    protected XMLEntityManager fEntityManager;
    protected XMLEntityScanner fEntityScanner;
    protected StaxErrorReporter fErrorReporter;
    private int fEventType;
    protected XMLInputSource fInputSource;
    protected NamespaceContextWrapper fNamespaceContextWrapper;
    protected PropertyManager fPropertyManager;
    private boolean fReaderInDefinedState;
    private boolean fReuse;
    protected XMLDocumentScannerImpl fScanner;
    private SymbolTable fSymbolTable = new SymbolTable();
    private String versionStr;

    public XMLStreamReaderImpl(InputStream inputStream, PropertyManager propertyManager) throws XMLStreamException {
        XMLNSDocumentScannerImpl xMLNSDocumentScannerImpl = new XMLNSDocumentScannerImpl();
        this.fScanner = xMLNSDocumentScannerImpl;
        this.fNamespaceContextWrapper = new NamespaceContextWrapper((NamespaceSupport) xMLNSDocumentScannerImpl.getNamespaceContext());
        this.fEntityManager = new XMLEntityManager();
        this.fErrorReporter = new StaxErrorReporter();
        this.fEntityScanner = null;
        this.fInputSource = null;
        this.fPropertyManager = null;
        this.fReuse = true;
        this.fReaderInDefinedState = true;
        this.fBindNamespaces = true;
        this.fDTDDecl = null;
        this.versionStr = null;
        init(propertyManager);
        setInputSource(new XMLInputSource((String) null, (String) null, (String) null, inputStream, (String) null));
    }

    public static final String getEventTypeString(int i) {
        switch (i) {
            case 1:
                return "START_ELEMENT";
            case 2:
                return "END_ELEMENT";
            case 3:
                return "PROCESSING_INSTRUCTION";
            case 4:
                return "CHARACTERS";
            case 5:
                return "COMMENT";
            case 6:
                return "SPACE";
            case 7:
                return "START_DOCUMENT";
            case 8:
                return "END_DOCUMENT";
            case 9:
                return "ENTITY_REFERENCE";
            case 10:
                return "ATTRIBUTE";
            case 11:
                return "DTD";
            case 12:
                return "CDATA";
            default:
                return "UNKNOWN_EVENT_TYPE, " + String.valueOf(i);
        }
    }

    /* renamed from: pr */
    public static void m52899pr(String str) {
        System.out.println(str);
    }

    private void switchToXML11Scanner() throws IOException {
        XMLDocumentScannerImpl xMLDocumentScannerImpl = this.fScanner;
        int i = xMLDocumentScannerImpl.fEntityDepth;
        NamespaceContext namespaceContext = xMLDocumentScannerImpl.fNamespaceContext;
        XML11NSDocumentScannerImpl xML11NSDocumentScannerImpl = new XML11NSDocumentScannerImpl();
        this.fScanner = xML11NSDocumentScannerImpl;
        xML11NSDocumentScannerImpl.reset(this.fPropertyManager);
        this.fScanner.setPropertyManager(this.fPropertyManager);
        this.fEntityScanner = this.fEntityManager.getEntityScanner();
        this.fEntityManager.fCurrentEntity.mayReadChunks = true;
        this.fScanner.setScannerState(7);
        XMLDocumentScannerImpl xMLDocumentScannerImpl2 = this.fScanner;
        xMLDocumentScannerImpl2.fEntityDepth = i;
        xMLDocumentScannerImpl2.fNamespaceContext = namespaceContext;
        this.fEventType = xMLDocumentScannerImpl2.next();
    }

    public boolean canReuse() {
        return this.fReuse;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public void close() throws XMLStreamException {
        this.fReuse = true;
    }

    public QName convertXNIQNametoJavaxQName(com.sun.org.apache.xerces.internal.xni.QName qName) {
        return qName.prefix == null ? new QName(qName.uri, qName.localpart) : new QName(qName.uri, qName.localpart, qName.prefix);
    }

    @Override // javax.xml.stream.XMLStreamReader
    public int getAttributeCount() {
        int i = this.fEventType;
        if (i == 1 || i == 10) {
            return this.fScanner.getAttributeIterator().getLength();
        }
        throw new IllegalStateException("Current state is not among the states " + getEventTypeString(1) + " , " + getEventTypeString(10) + "valid for getAttributeCount()");
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getAttributeLocalName(int i) {
        int i2 = this.fEventType;
        if (i2 == 1 || i2 == 10) {
            return this.fScanner.getAttributeIterator().getLocalName(i);
        }
        throw new IllegalStateException();
    }

    @Override // javax.xml.stream.XMLStreamReader
    public QName getAttributeName(int i) {
        int i2 = this.fEventType;
        if (i2 == 1 || i2 == 10) {
            return convertXNIQNametoJavaxQName(this.fScanner.getAttributeIterator().getQualifiedName(i));
        }
        throw new IllegalStateException("Current state is not among the states " + getEventTypeString(1) + " , " + getEventTypeString(10) + "valid for getAttributeName()");
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getAttributeNamespace(int i) {
        int i2 = this.fEventType;
        if (i2 == 1 || i2 == 10) {
            return this.fScanner.getAttributeIterator().getURI(i);
        }
        throw new IllegalStateException("Current state is not among the states " + getEventTypeString(1) + " , " + getEventTypeString(10) + "valid for getAttributeNamespace()");
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getAttributePrefix(int i) {
        int i2 = this.fEventType;
        if (i2 == 1 || i2 == 10) {
            return this.fScanner.getAttributeIterator().getPrefix(i);
        }
        throw new IllegalStateException("Current state is not among the states " + getEventTypeString(1) + " , " + getEventTypeString(10) + "valid for getAttributePrefix()");
    }

    public QName getAttributeQName(int i) {
        int i2 = this.fEventType;
        if (i2 == 1 || i2 == 10) {
            return new QName(this.fScanner.getAttributeIterator().getURI(i), this.fScanner.getAttributeIterator().getLocalName(i));
        }
        throw new IllegalStateException("Current state is not among the states " + getEventTypeString(1) + " , " + getEventTypeString(10) + "valid for getAttributeQName()");
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getAttributeType(int i) {
        int i2 = this.fEventType;
        if (i2 == 1 || i2 == 10) {
            return this.fScanner.getAttributeIterator().getType(i);
        }
        throw new IllegalStateException("Current state is not among the states " + getEventTypeString(1) + " , " + getEventTypeString(10) + "valid for getAttributeType()");
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getAttributeValue(int i) {
        int i2 = this.fEventType;
        if (i2 != 1 && i2 != 10) {
            throw new IllegalStateException("Current state is not among the states " + getEventTypeString(1) + " , " + getEventTypeString(10) + "valid for getAttributeValue()");
        }
        return this.fScanner.getAttributeIterator().getValue(i);
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getCharacterEncodingScheme() {
        return this.fScanner.getCharacterEncodingScheme();
    }

    public int getColumnNumber() {
        return this.fEntityScanner.getColumnNumber();
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getElementText() throws XMLStreamException {
        if (getEventType() != 1) {
            throw new XMLStreamException("parser must be on START_ELEMENT to read next text", getLocation());
        }
        int next = next();
        StringBuffer stringBuffer = new StringBuffer();
        while (next != 2) {
            if (next == 4 || next == 12 || next == 6 || next == 9) {
                stringBuffer.append(getText());
            } else if (next != 3 && next != 5) {
                if (next == 8) {
                    throw new XMLStreamException("unexpected end of document when reading element text content");
                }
                if (next == 1) {
                    throw new XMLStreamException("elementGetText() function expects text only elment but START_ELEMENT was encountered.", getLocation());
                }
                throw new XMLStreamException("Unexpected event type " + next, getLocation());
            }
            next = next();
        }
        return stringBuffer.toString();
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getEncoding() {
        return this.fEntityScanner.getEncoding();
    }

    public List getEntityDecls() {
        Hashtable declaredEntities;
        ArrayList arrayList = null;
        if (this.fEventType == 11 && (declaredEntities = this.fEntityManager.getEntityStore().getDeclaredEntities()) != null) {
            arrayList = new ArrayList(declaredEntities.size());
            Enumeration keys = declaredEntities.keys();
            while (keys.hasMoreElements()) {
                String str = (String) keys.nextElement();
                Entity entity = (Entity) declaredEntities.get(str);
                EntityDeclarationImpl entityDeclarationImpl = new EntityDeclarationImpl();
                entityDeclarationImpl.setEntityName(str);
                if (entity.isExternal()) {
                    Entity.ExternalEntity externalEntity = (Entity.ExternalEntity) entity;
                    entityDeclarationImpl.setXMLResourceIdentifier(externalEntity.entityLocation);
                    entityDeclarationImpl.setNotationName(externalEntity.notation);
                } else {
                    entityDeclarationImpl.setEntityReplacementText(((Entity.InternalEntity) entity).text);
                }
                arrayList.add(entityDeclarationImpl);
            }
        }
        return arrayList;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public int getEventType() {
        return this.fEventType;
    }

    public int getLineNumber() {
        return this.fEntityScanner.getLineNumber();
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getLocalName() {
        int i = this.fEventType;
        if (i == 1 || i == 2) {
            return this.fScanner.getElementQName().localpart;
        }
        if (i == 3) {
            return this.fScanner.getPITarget();
        }
        if (i == 9) {
            return this.fScanner.getEntityName();
        }
        return null;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public Location getLocation() {
        return new Location() { // from class: com.sun.org.apache.xerces.internal.impl.XMLStreamReaderImpl.1
            @Override // javax.xml.stream.Location
            public int getCharacterOffset() {
                return XMLStreamReaderImpl.this.fEntityScanner.getCharacterOffset();
            }

            @Override // javax.xml.stream.Location
            public int getColumnNumber() {
                return XMLStreamReaderImpl.this.fEntityScanner.getColumnNumber();
            }

            @Override // javax.xml.stream.Location
            public int getLineNumber() {
                return XMLStreamReaderImpl.this.fEntityScanner.getLineNumber();
            }

            public String getLocationURI() {
                return XMLStreamReaderImpl.this.fEntityScanner.getExpandedSystemId();
            }

            @Override // javax.xml.stream.Location
            public String getPublicId() {
                return XMLStreamReaderImpl.this.fEntityScanner.getPublicId();
            }

            @Override // javax.xml.stream.Location
            public String getSystemId() {
                return XMLStreamReaderImpl.this.fEntityScanner.getExpandedSystemId();
            }

            public String toString() {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Line number = " + getLineNumber());
                stringBuffer.append("\n");
                stringBuffer.append("Column number = " + getColumnNumber());
                stringBuffer.append("\n");
                stringBuffer.append("System Id = " + getSystemId());
                stringBuffer.append("\n");
                stringBuffer.append("Public Id = " + getPublicId());
                stringBuffer.append("\n");
                stringBuffer.append("Location Uri= " + getLocationURI());
                stringBuffer.append("\n");
                stringBuffer.append("CharacterOffset = " + getCharacterOffset());
                stringBuffer.append("\n");
                return stringBuffer.toString();
            }
        };
    }

    @Override // javax.xml.stream.XMLStreamReader
    public QName getName() {
        int i = this.fEventType;
        if (i == 1 || i == 2) {
            return convertXNIQNametoJavaxQName(this.fScanner.getElementQName());
        }
        throw new IllegalArgumentException("Illegal to call getName() when event type is " + getEventTypeString(this.fEventType) + ". Valid states are " + getEventTypeString(1) + ", " + getEventTypeString(2));
    }

    @Override // javax.xml.stream.XMLStreamReader
    public javax.xml.namespace.NamespaceContext getNamespaceContext() {
        return this.fNamespaceContextWrapper;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public int getNamespaceCount() {
        int i = this.fEventType;
        if (i == 1 || i == 2 || i == 13) {
            return this.fScanner.getNamespaceContext().getDeclaredPrefixCount();
        }
        throw new IllegalStateException("Current event state is " + getEventTypeString(this.fEventType) + " is not among the states " + getEventTypeString(1) + ", " + getEventTypeString(2) + ", " + getEventTypeString(13) + " valid for getNamespaceCount().");
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getNamespacePrefix(int i) {
        int i2 = this.fEventType;
        if (i2 == 1 || i2 == 2 || i2 == 13) {
            String declaredPrefixAt = this.fScanner.getNamespaceContext().getDeclaredPrefixAt(i);
            if (declaredPrefixAt.equals("")) {
                return null;
            }
            return declaredPrefixAt;
        }
        throw new IllegalStateException("Current state " + getEventTypeString(this.fEventType) + " is not among the states " + getEventTypeString(1) + ", " + getEventTypeString(2) + ", " + getEventTypeString(13) + " valid for getNamespacePrefix().");
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getNamespaceURI() {
        int i = this.fEventType;
        if (i == 1 || i == 2) {
            return this.fScanner.getElementQName().uri;
        }
        return null;
    }

    public List getNotationDecls() {
        XMLDTDScanner xMLDTDScanner;
        DTDGrammar grammar;
        if (this.fEventType != 11 || (xMLDTDScanner = this.fScanner.fDTDScanner) == null || (grammar = ((XMLDTDScannerImpl) xMLDTDScanner).getGrammar()) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (XMLNotationDecl xMLNotationDecl : grammar.getNotationDecls()) {
            if (xMLNotationDecl != null) {
                arrayList.add(new NotationDeclarationImpl(xMLNotationDecl));
            }
        }
        return arrayList;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getPIData() {
        if (this.fEventType == 3) {
            return this.fScanner.getPIData().toString();
        }
        throw new IllegalStateException("Current state of the parser is " + getEventTypeString(this.fEventType) + " But Expected state is 3");
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getPITarget() {
        if (this.fEventType == 3) {
            return this.fScanner.getPITarget();
        }
        throw new IllegalStateException("Current state of the parser is " + getEventTypeString(this.fEventType) + " But Expected state is 3");
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getPrefix() {
        int i = this.fEventType;
        if (i == 1 || i == 2) {
            return this.fScanner.getElementQName().prefix;
        }
        return null;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public Object getProperty(String str) throws IllegalArgumentException {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        if (this.fPropertyManager != null) {
            return str.equals("javax.xml.stream.notations") ? getNotationDecls() : str.equals("javax.xml.stream.entities") ? getEntityDecls() : this.fPropertyManager.getProperty(str);
        }
        return null;
    }

    public PropertyManager getPropertyManager() {
        return this.fPropertyManager;
    }

    public XMLDocumentScannerImpl getScanner() {
        System.out.println("returning scanner");
        return this.fScanner;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getText() {
        int i = this.fEventType;
        if (i == 4 || i == 5 || i == 12 || i == 6) {
            return this.fScanner.getCharacterData().toString();
        }
        if (i == 9) {
            String entityName = this.fScanner.getEntityName();
            if (entityName == null) {
                return null;
            }
            XMLDocumentScannerImpl xMLDocumentScannerImpl = this.fScanner;
            if (xMLDocumentScannerImpl.foundBuiltInRefs) {
                return xMLDocumentScannerImpl.getCharacterData().toString();
            }
            Entity entity = (Entity) this.fEntityManager.getEntityStore().getDeclaredEntities().get(entityName);
            if (entity == null) {
                return null;
            }
            return entity.isExternal() ? ((Entity.ExternalEntity) entity).entityLocation.getExpandedSystemId() : ((Entity.InternalEntity) entity).text;
        }
        if (i == 11) {
            String str = this.fDTDDecl;
            if (str != null) {
                return str;
            }
            String xMLString = this.fScanner.getDTDDecl().toString();
            this.fDTDDecl = xMLString;
            return xMLString;
        }
        throw new IllegalStateException("Current state " + getEventTypeString(this.fEventType) + " is not among the states" + getEventTypeString(4) + ", " + getEventTypeString(5) + ", " + getEventTypeString(12) + ", " + getEventTypeString(6) + ", " + getEventTypeString(9) + ", " + getEventTypeString(11) + " valid for getText() ");
    }

    @Override // javax.xml.stream.XMLStreamReader
    public char[] getTextCharacters() {
        int i = this.fEventType;
        if (i != 4 && i != 5 && i != 12 && i != 6) {
            throw new IllegalStateException("Current state = " + getEventTypeString(this.fEventType) + " is not among the states " + getEventTypeString(4) + " , " + getEventTypeString(5) + " , " + getEventTypeString(12) + " , " + getEventTypeString(6) + " valid for getTextCharacters() ");
        }
        return this.fScanner.getCharacterData().f64120ch;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public int getTextLength() {
        int i = this.fEventType;
        if (i == 4 || i == 5 || i == 12 || i == 6) {
            return this.fScanner.getCharacterData().length;
        }
        throw new IllegalStateException("Current state = " + getEventTypeString(this.fEventType) + " is not among the states " + getEventTypeString(4) + " , " + getEventTypeString(5) + " , " + getEventTypeString(12) + " , " + getEventTypeString(6) + " valid for getTextLength() ");
    }

    @Override // javax.xml.stream.XMLStreamReader
    public int getTextStart() {
        int i = this.fEventType;
        if (i == 4 || i == 5 || i == 12 || i == 6) {
            return this.fScanner.getCharacterData().offset;
        }
        throw new IllegalStateException("Current state = " + getEventTypeString(this.fEventType) + " is not among the states " + getEventTypeString(4) + " , " + getEventTypeString(5) + " , " + getEventTypeString(12) + " , " + getEventTypeString(6) + " valid for getTextStart() ");
    }

    public String getValue() {
        int i = this.fEventType;
        if (i == 3) {
            return this.fScanner.getPIData().toString();
        }
        if (i == 5) {
            return this.fScanner.getComment();
        }
        if (i == 1 || i == 2) {
            return this.fScanner.getElementQName().localpart;
        }
        if (i == 4) {
            return this.fScanner.getCharacterData().toString();
        }
        return null;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getVersion() {
        return this.fEntityScanner.getXMLVersion();
    }

    public boolean hasAttributes() {
        return this.fScanner.getAttributeIterator().getLength() > 0;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public boolean hasName() {
        int i = this.fEventType;
        return i == 1 || i == 2 || i == 9 || i == 3;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public boolean hasNext() throws XMLStreamException {
        return this.fEventType != 8;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public boolean hasText() {
        int i = this.fEventType;
        if (i == 4 || i == 5 || i == 12) {
            return this.fScanner.getCharacterData().length > 0;
        }
        if (i != 9) {
            if (i == 11) {
                return this.fScanner.fSeenDoctypeDecl;
            }
            return false;
        }
        String entityName = this.fScanner.getEntityName();
        if (entityName == null) {
            return false;
        }
        if (this.fScanner.foundBuiltInRefs) {
            return true;
        }
        Entity entity = (Entity) this.fEntityManager.getEntityStore().getDeclaredEntities().get(entityName);
        if (entity == null) {
            return false;
        }
        return entity.isExternal() ? ((Entity.ExternalEntity) entity).entityLocation.getExpandedSystemId() != null : ((Entity.InternalEntity) entity).text != null;
    }

    public boolean hasValue() {
        int i = this.fEventType;
        return i == 1 || i == 2 || i == 9 || i == 3 || i == 5 || i == 4;
    }

    public void init(PropertyManager propertyManager) throws XMLStreamException {
        this.fPropertyManager = propertyManager;
        propertyManager.setProperty("http://apache.org/xml/properties/internal/symbol-table", this.fSymbolTable);
        propertyManager.setProperty("http://apache.org/xml/properties/internal/error-reporter", this.fErrorReporter);
        propertyManager.setProperty("http://apache.org/xml/properties/internal/entity-manager", this.fEntityManager);
        reset();
    }

    @Override // javax.xml.stream.XMLStreamReader
    public boolean isAttributeSpecified(int i) {
        int i2 = this.fEventType;
        if (i2 == 1 || i2 == 10) {
            return this.fScanner.getAttributeIterator().isSpecified(i);
        }
        throw new IllegalStateException("Current state is not among the states " + getEventTypeString(1) + " , " + getEventTypeString(10) + "valid for isAttributeSpecified()");
    }

    @Override // javax.xml.stream.XMLStreamReader
    public boolean isCharacters() {
        return this.fEventType == 4;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public boolean isEndElement() {
        return this.fEventType == 2;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public boolean isStandalone() {
        return this.fScanner.isStandAlone();
    }

    @Override // javax.xml.stream.XMLStreamReader
    public boolean isStartElement() {
        return this.fEventType == 1;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public boolean isWhiteSpace() {
        if (!isCharacters() && this.fEventType != 12) {
            return false;
        }
        char[] textCharacters = getTextCharacters();
        int textStart = getTextStart();
        int textLength = getTextLength() + textStart;
        while (textStart < textLength) {
            if (!XMLChar.isSpace(textCharacters[textStart])) {
                return false;
            }
            textStart++;
        }
        return true;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public int next() throws XMLStreamException {
        String str;
        try {
            this.fEventType = this.fScanner.next();
            if (this.versionStr == null) {
                this.versionStr = getVersion();
            }
            if (this.fEventType == 7 && (str = this.versionStr) != null && str.equals(SerializerConstants.XMLVERSION11)) {
                switchToXML11Scanner();
            }
            return this.fEventType;
        } catch (XNIException e) {
            throw new XMLStreamException(e.getMessage(), this.getLocation(), e.getException());
        } catch (IOException e2) {
            throw new XMLStreamException(e2.getMessage(), this.getLocation(), e2);
        }
    }

    @Override // javax.xml.stream.XMLStreamReader
    public int nextTag() throws XMLStreamException {
        int next = next();
        while (true) {
            if ((next != 4 || !isWhiteSpace()) && ((next != 12 || !isWhiteSpace()) && next != 6 && next != 3 && next != 5)) {
                break;
            }
            next = next();
        }
        if (next == 1 || next == 2) {
            return next;
        }
        throw new XMLStreamException("found: " + getEventTypeString(next) + ", expected " + getEventTypeString(1) + " or " + getEventTypeString(2), getLocation());
    }

    @Override // javax.xml.stream.XMLStreamReader
    public void require(int i, String str, String str2) throws XMLStreamException {
        if (i != this.fEventType) {
            throw new XMLStreamException("Event type " + getEventTypeString(i) + " specified did not match with current parser event " + getEventTypeString(this.fEventType));
        }
        if (str != null && !str.equals(getNamespaceURI())) {
            throw new XMLStreamException("Namespace URI " + str + " specified did not match with current namespace URI");
        }
        if (str2 == null || str2.equals(getLocalName())) {
            return;
        }
        throw new XMLStreamException("LocalName " + str2 + " specified did not match with current local name");
    }

    public void reset() {
        this.fReuse = true;
        this.fEventType = 0;
        this.fEntityManager.reset(this.fPropertyManager);
        this.fScanner.reset(this.fPropertyManager);
        this.fDTDDecl = null;
        this.fEntityScanner = this.fEntityManager.getEntityScanner();
        this.fReaderInDefinedState = ((Boolean) this.fPropertyManager.getProperty("http://java.sun.com/xml/stream/properties/reader-in-defined-state")).booleanValue();
        this.fBindNamespaces = ((Boolean) this.fPropertyManager.getProperty(XMLInputFactory.IS_NAMESPACE_AWARE)).booleanValue();
        this.versionStr = null;
    }

    public void setInputSource(XMLInputSource xMLInputSource) throws XMLStreamException {
        String str;
        this.fReuse = false;
        try {
            this.fScanner.setInputSource(xMLInputSource);
            if (this.fReaderInDefinedState) {
                this.fEventType = this.fScanner.next();
                if (this.versionStr == null) {
                    this.versionStr = getVersion();
                }
                if (this.fEventType == 7 && (str = this.versionStr) != null && str.equals(SerializerConstants.XMLVERSION11)) {
                    switchToXML11Scanner();
                }
            }
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }

    public void setPropertyManager(PropertyManager propertyManager) {
        this.fPropertyManager = propertyManager;
        this.fScanner.setProperty(Constants.STAX_PROPERTIES, propertyManager);
        this.fScanner.setPropertyManager(propertyManager);
    }

    @Override // javax.xml.stream.XMLStreamReader
    public boolean standaloneSet() {
        return this.fScanner.isStandAlone();
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getNamespaceURI(int i) {
        int i2 = this.fEventType;
        if (i2 != 1 && i2 != 2 && i2 != 13) {
            throw new IllegalStateException("Current state " + getEventTypeString(this.fEventType) + " is not among the states " + getEventTypeString(1) + ", " + getEventTypeString(2) + ", " + getEventTypeString(13) + " valid for getNamespaceURI().");
        }
        return this.fScanner.getNamespaceContext().getURI(this.fScanner.getNamespaceContext().getDeclaredPrefixAt(i));
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getAttributeValue(String str, String str2) {
        int i = this.fEventType;
        if (i != 1 && i != 10) {
            throw new IllegalStateException("Current state is not among the states " + getEventTypeString(1) + " , " + getEventTypeString(10) + "valid for getAttributeValue()");
        }
        return this.fScanner.getAttributeIterator().getValue(str, str2);
    }

    @Override // javax.xml.stream.XMLStreamReader
    public int getTextCharacters(int i, char[] cArr, int i2, int i3) throws XMLStreamException {
        if (cArr != null) {
            if (i2 >= 0 && i3 >= 0 && i >= 0 && i2 < cArr.length && i2 + i3 <= cArr.length) {
                int textLength = getTextLength() - i;
                if (textLength >= 0) {
                    if (textLength < i3) {
                        i3 = textLength;
                    }
                    System.arraycopy(getTextCharacters(), getTextStart() + i, cArr, i2, i3);
                    return i3;
                }
                throw new IndexOutOfBoundsException("sourceStart is greater thannumber of characters associated with this event");
            }
            throw new IndexOutOfBoundsException();
        }
        throw new NullPointerException("target char array can't be null");
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getNamespaceURI(String str) {
        return this.fScanner.getNamespaceContext().getURI(this.fSymbolTable.addSymbol(str));
    }

    public XMLStreamReaderImpl(String str, PropertyManager propertyManager) throws XMLStreamException {
        XMLNSDocumentScannerImpl xMLNSDocumentScannerImpl = new XMLNSDocumentScannerImpl();
        this.fScanner = xMLNSDocumentScannerImpl;
        this.fNamespaceContextWrapper = new NamespaceContextWrapper((NamespaceSupport) xMLNSDocumentScannerImpl.getNamespaceContext());
        this.fEntityManager = new XMLEntityManager();
        this.fErrorReporter = new StaxErrorReporter();
        this.fEntityScanner = null;
        this.fInputSource = null;
        this.fPropertyManager = null;
        this.fReuse = true;
        this.fReaderInDefinedState = true;
        this.fBindNamespaces = true;
        this.fDTDDecl = null;
        this.versionStr = null;
        init(propertyManager);
        setInputSource(new XMLInputSource(null, str, null));
    }

    public XMLStreamReaderImpl(InputStream inputStream, String str, PropertyManager propertyManager) throws XMLStreamException {
        XMLNSDocumentScannerImpl xMLNSDocumentScannerImpl = new XMLNSDocumentScannerImpl();
        this.fScanner = xMLNSDocumentScannerImpl;
        this.fNamespaceContextWrapper = new NamespaceContextWrapper((NamespaceSupport) xMLNSDocumentScannerImpl.getNamespaceContext());
        this.fEntityManager = new XMLEntityManager();
        this.fErrorReporter = new StaxErrorReporter();
        this.fEntityScanner = null;
        this.fInputSource = null;
        this.fPropertyManager = null;
        this.fReuse = true;
        this.fReaderInDefinedState = true;
        this.fBindNamespaces = true;
        this.fDTDDecl = null;
        this.versionStr = null;
        init(propertyManager);
        setInputSource(new XMLInputSource((String) null, (String) null, (String) null, new BufferedInputStream(inputStream), str));
    }

    public XMLStreamReaderImpl(Reader reader, PropertyManager propertyManager) throws XMLStreamException {
        XMLNSDocumentScannerImpl xMLNSDocumentScannerImpl = new XMLNSDocumentScannerImpl();
        this.fScanner = xMLNSDocumentScannerImpl;
        this.fNamespaceContextWrapper = new NamespaceContextWrapper((NamespaceSupport) xMLNSDocumentScannerImpl.getNamespaceContext());
        this.fEntityManager = new XMLEntityManager();
        this.fErrorReporter = new StaxErrorReporter();
        this.fEntityScanner = null;
        this.fInputSource = null;
        this.fPropertyManager = null;
        this.fReuse = true;
        this.fReaderInDefinedState = true;
        this.fBindNamespaces = true;
        this.fDTDDecl = null;
        this.versionStr = null;
        init(propertyManager);
        setInputSource(new XMLInputSource((String) null, (String) null, (String) null, new BufferedReader(reader), (String) null));
    }

    public XMLStreamReaderImpl(XMLInputSource xMLInputSource, PropertyManager propertyManager) throws XMLStreamException {
        XMLNSDocumentScannerImpl xMLNSDocumentScannerImpl = new XMLNSDocumentScannerImpl();
        this.fScanner = xMLNSDocumentScannerImpl;
        this.fNamespaceContextWrapper = new NamespaceContextWrapper((NamespaceSupport) xMLNSDocumentScannerImpl.getNamespaceContext());
        this.fEntityManager = new XMLEntityManager();
        this.fErrorReporter = new StaxErrorReporter();
        this.fEntityScanner = null;
        this.fInputSource = null;
        this.fPropertyManager = null;
        this.fReuse = true;
        this.fReaderInDefinedState = true;
        this.fBindNamespaces = true;
        this.fDTDDecl = null;
        this.versionStr = null;
        init(propertyManager);
        setInputSource(xMLInputSource);
    }
}
