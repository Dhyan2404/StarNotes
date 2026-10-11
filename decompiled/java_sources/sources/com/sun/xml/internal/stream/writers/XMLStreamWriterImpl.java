package com.sun.xml.internal.stream.writers;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xerces.internal.impl.Constants;
import com.sun.org.apache.xerces.internal.impl.PropertyManager;
import com.sun.org.apache.xerces.internal.util.NamespaceSupport;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.xni.QName;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import com.sun.xml.internal.stream.util.ReadOnlyIterator;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Random;
import java.util.Set;
import java.util.Vector;
import javax.xml.namespace.NamespaceContext;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamWriter;
import javax.xml.transform.stream.StreamResult;

/* loaded from: classes10.dex */
public final class XMLStreamWriterImpl extends AbstractMap implements XMLStreamWriter {
    public static final String CLOSE_EMPTY_ELEMENT = "/>";
    public static final char CLOSE_END_TAG = '>';
    public static final char CLOSE_START_TAG = '>';
    public static final String DEFAULT_ENCODING = " encoding=\"utf-8\"";
    public static final String DEFAULT_XMLDECL = "<?xml version=\"1.0\" ?>";
    public static final String DEFAULT_XML_VERSION = "1.0";
    public static final String END_CDATA = "]]>";
    public static final String END_COMMENT = "-->";
    public static final String OPEN_END_TAG = "</";
    public static final char OPEN_START_TAG = '<';
    public static String OUTPUTSTREAM_PROPERTY = "sjsxp-outputstream";
    public static final String SPACE = " ";
    public static final String START_CDATA = "<![CDATA[";
    public static final String START_COMMENT = "<!--";
    public static final String UTF_8 = "UTF-8";
    private final String DEFAULT_PREFIX;
    private ArrayList fAttributeCache;
    private ElementStack fElementStack;
    private CharsetEncoder fEncoder;
    boolean fEscapeCharacters;
    private NamespaceSupport fInternalNamespaceContext;
    private boolean fIsRepairingNamespace;
    private NamespaceContextImpl fNamespaceContext;
    private ArrayList fNamespaceDecls;
    private OutputStream fOutputStream;
    private Random fPrefixGen;
    private PropertyManager fPropertyManager;
    private final ReadOnlyIterator fReadOnlyIterator;
    private boolean fReuse;
    private boolean fStartTagOpened;
    private SymbolTable fSymbolTable;
    private QName fTempQname;
    private Writer fWriter;

    /* loaded from: classes10.dex */
    public class Attribute extends QName {
        String value;

        public Attribute(String str) {
            this.value = str;
        }
    }

    /* loaded from: classes10.dex */
    public class NamespaceContextImpl implements NamespaceContext {
        NamespaceContext userContext = null;
        NamespaceSupport internalContext = null;

        public NamespaceContextImpl() {
        }

        @Override // javax.xml.namespace.NamespaceContext
        public String getNamespaceURI(String str) {
            String uri;
            if (str != null) {
                str = XMLStreamWriterImpl.this.fSymbolTable.addSymbol(str);
            }
            NamespaceSupport namespaceSupport = this.internalContext;
            if (namespaceSupport != null && (uri = namespaceSupport.getURI(str)) != null) {
                return uri;
            }
            NamespaceContext namespaceContext = this.userContext;
            if (namespaceContext != null) {
                return namespaceContext.getNamespaceURI(str);
            }
            return null;
        }

        @Override // javax.xml.namespace.NamespaceContext
        public String getPrefix(String str) {
            String prefix;
            if (str != null) {
                str = XMLStreamWriterImpl.this.fSymbolTable.addSymbol(str);
            }
            NamespaceSupport namespaceSupport = this.internalContext;
            if (namespaceSupport != null && (prefix = namespaceSupport.getPrefix(str)) != null) {
                return prefix;
            }
            NamespaceContext namespaceContext = this.userContext;
            if (namespaceContext != null) {
                return namespaceContext.getPrefix(str);
            }
            return null;
        }

        @Override // javax.xml.namespace.NamespaceContext
        public Iterator getPrefixes(String str) {
            if (str != null) {
                str = XMLStreamWriterImpl.this.fSymbolTable.addSymbol(str);
            }
            NamespaceContext namespaceContext = this.userContext;
            Iterator prefixes = namespaceContext != null ? namespaceContext.getPrefixes(str) : null;
            NamespaceSupport namespaceSupport = this.internalContext;
            Vector prefixes2 = namespaceSupport != null ? namespaceSupport.getPrefixes(str) : null;
            if (prefixes2 == null && prefixes != null) {
                return prefixes;
            }
            if (prefixes2 != null && prefixes == null) {
                return new ReadOnlyIterator(prefixes2.iterator());
            }
            if (prefixes2 == null || prefixes == null) {
                return XMLStreamWriterImpl.this.fReadOnlyIterator;
            }
            while (prefixes.hasNext()) {
                String str2 = (String) prefixes.next();
                if (str2 != null) {
                    str2 = XMLStreamWriterImpl.this.fSymbolTable.addSymbol(str2);
                }
                if (!prefixes2.contains(str2)) {
                    prefixes2.add(str2);
                }
            }
            return new ReadOnlyIterator(prefixes2.iterator());
        }
    }

    public XMLStreamWriterImpl(OutputStream outputStream, PropertyManager propertyManager) throws IOException {
        this(new OutputStreamWriter(outputStream), propertyManager);
    }

    private boolean checkUserNamespaceContext(String str, String str2) {
        String namespaceURI;
        NamespaceContext namespaceContext = this.fNamespaceContext.userContext;
        return (namespaceContext == null || (namespaceURI = namespaceContext.getNamespaceURI(str)) == null || !namespaceURI.equals(str2)) ? false : true;
    }

    private void closeStartTag() throws XMLStreamException {
        String prefix;
        try {
            ElementState peek = this.fElementStack.peek();
            if (this.fIsRepairingNamespace) {
                repair();
                correctPrefix(peek);
                String str = peek.prefix;
                if (str != null && str != "") {
                    this.fWriter.write(str);
                    this.fWriter.write(":");
                }
                this.fWriter.write(peek.localpart);
                int size = this.fNamespaceDecls.size();
                for (int i = 0; i < size; i++) {
                    QName qName = (QName) this.fNamespaceDecls.get(i);
                    if (qName != null && this.fInternalNamespaceContext.declarePrefix(qName.prefix, qName.uri)) {
                        writenamespace(qName.prefix, qName.uri);
                    }
                }
                this.fNamespaceDecls.clear();
                for (int i2 = 0; i2 < this.fAttributeCache.size(); i2++) {
                    Attribute attribute = (Attribute) this.fAttributeCache.get(i2);
                    String str2 = attribute.prefix;
                    if (str2 != null && attribute.uri != null && !str2.equals("") && !attribute.uri.equals("") && (((prefix = this.fInternalNamespaceContext.getPrefix(attribute.uri)) == null || prefix != attribute.prefix) && this.fInternalNamespaceContext.declarePrefix(attribute.prefix, attribute.uri))) {
                        writenamespace(attribute.prefix, attribute.uri);
                    }
                    writeAttributeWithPrefix(attribute.prefix, attribute.localpart, attribute.value);
                }
                this.fAttributeCache.clear();
            }
            if (peek.isEmpty) {
                this.fElementStack.pop();
                this.fWriter.write(CLOSE_EMPTY_ELEMENT);
            } else {
                this.fWriter.write(62);
            }
            this.fStartTagOpened = false;
        } catch (IOException e) {
            this.fStartTagOpened = false;
            throw new XMLStreamException(e);
        }
    }

    private void correctPrefix(QName qName) {
        String addSymbol;
        String str = qName.prefix;
        String str2 = qName.uri;
        if (str == null || str.equals("")) {
            if (str2 == null) {
                return;
            }
            if (str == "" && str2 == "") {
                return;
            }
            String addSymbol2 = this.fSymbolTable.addSymbol(str2);
            for (int i = 0; i < this.fNamespaceDecls.size(); i++) {
                QName qName2 = (QName) this.fNamespaceDecls.get(i);
                if (qName2 != null && qName2.uri == qName.uri) {
                    qName.prefix = qName2.prefix;
                    return;
                }
            }
            String prefix = this.fNamespaceContext.getPrefix(addSymbol2);
            if (prefix == "") {
                return;
            }
            if (prefix == null) {
                StringBuffer stringBuffer = new StringBuffer("zdef");
                stringBuffer.append(this.fPrefixGen.nextInt());
                addSymbol = this.fSymbolTable.addSymbol(stringBuffer.toString());
            } else {
                addSymbol = this.fSymbolTable.addSymbol(prefix);
            }
            if (prefix == null) {
                QName qName3 = new QName();
                qName3.setValues(addSymbol, "xmlns", null, addSymbol2);
                this.fNamespaceDecls.add(qName3);
                this.fInternalNamespaceContext.declarePrefix(this.fSymbolTable.addSymbol(addSymbol), addSymbol2);
            }
            str = addSymbol;
        }
        qName.prefix = str;
    }

    private void init() {
        this.fReuse = false;
        this.fNamespaceDecls = new ArrayList();
        this.fPrefixGen = new Random();
        this.fAttributeCache = new ArrayList();
        this.fInternalNamespaceContext = new NamespaceSupport();
        NamespaceContextImpl namespaceContextImpl = new NamespaceContextImpl();
        this.fNamespaceContext = namespaceContextImpl;
        namespaceContextImpl.internalContext = this.fInternalNamespaceContext;
        PropertyManager propertyManager = this.fPropertyManager;
        if (propertyManager != null) {
            this.fIsRepairingNamespace = ((Boolean) propertyManager.getProperty(XMLOutputFactory.IS_REPAIRING_NAMESPACES)).booleanValue();
            setEscapeCharacters(((Boolean) this.fPropertyManager.getProperty(Constants.ESCAPE_CHARACTERS)).booleanValue());
        }
    }

    private boolean isDefaultNamespace(String str) {
        return str == this.fInternalNamespaceContext.getURI(this.DEFAULT_PREFIX);
    }

    private void openStartTag() throws IOException {
        this.fStartTagOpened = true;
        this.fWriter.write(60);
    }

    private void setOutputUsingStream(OutputStream outputStream, String str) throws IOException {
        this.fOutputStream = outputStream;
        if (str != null) {
            if (str.equalsIgnoreCase("utf-8")) {
                this.fWriter = new UTF8OutputStreamWriter(outputStream);
                return;
            } else {
                this.fWriter = new XMLWriter(new OutputStreamWriter(outputStream, str));
                this.fEncoder = Charset.forName(str).newEncoder();
                return;
            }
        }
        String property = System.getProperty("file.encoding");
        if (property == null || !property.equalsIgnoreCase("utf-8")) {
            this.fWriter = new XMLWriter(new OutputStreamWriter(outputStream));
        } else {
            this.fWriter = new UTF8OutputStreamWriter(outputStream);
        }
    }

    private void setOutputUsingWriter(Writer writer) throws IOException {
        String encoding;
        this.fWriter = writer;
        if (!(writer instanceof OutputStreamWriter) || (encoding = ((OutputStreamWriter) writer).getEncoding()) == null || encoding.equalsIgnoreCase("utf-8")) {
            return;
        }
        this.fEncoder = Charset.forName(encoding).newEncoder();
    }

    private void writeAttributeWithPrefix(String str, String str2, String str3) throws IOException {
        this.fWriter.write(" ");
        if (str != null && str != "") {
            this.fWriter.write(str);
            this.fWriter.write(":");
        }
        this.fWriter.write(str2);
        this.fWriter.write("=\"");
        writeXMLContent(str3, true, true);
        this.fWriter.write("\"");
    }

    private void writeXMLContent(char[] cArr, int i, int i2, boolean z) throws IOException {
        if (!z) {
            this.fWriter.write(cArr, i, i2);
            return;
        }
        int i3 = i2 + i;
        int i4 = i;
        while (i < i3) {
            char c = cArr[i];
            CharsetEncoder charsetEncoder = this.fEncoder;
            if (charsetEncoder != null && !charsetEncoder.canEncode(c)) {
                this.fWriter.write(cArr, i4, i - i4);
                this.fWriter.write("&#x");
                this.fWriter.write(Integer.toHexString(c));
                this.fWriter.write(59);
            } else if (c == '&') {
                this.fWriter.write(cArr, i4, i - i4);
                this.fWriter.write("&amp;");
            } else if (c == '<') {
                this.fWriter.write(cArr, i4, i - i4);
                this.fWriter.write("&lt;");
            } else if (c != '>') {
                i++;
            } else {
                this.fWriter.write(cArr, i4, i - i4);
                this.fWriter.write("&gt;");
            }
            i4 = i + 1;
            i++;
        }
        this.fWriter.write(cArr, i4, i3 - i4);
    }

    private void writenamespace(String str, String str2) throws IOException {
        this.fWriter.write(" xmlns");
        if (str != null && str != "") {
            this.fWriter.write(":");
            this.fWriter.write(str);
        }
        this.fWriter.write("=\"");
        writeXMLContent(str2, true, true);
        this.fWriter.write("\"");
    }

    public boolean canReuse() {
        return this.fReuse;
    }

    public void checkForNull(QName qName) {
        if (qName.prefix == null) {
            qName.prefix = "";
        }
        if (qName.uri == null) {
            qName.uri = "";
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void close() throws XMLStreamException {
        try {
            this.fWriter.flush();
            this.fNamespaceDecls.clear();
            this.fAttributeCache.clear();
            this.fElementStack.clear();
            this.fInternalNamespaceContext.reset();
            this.fReuse = true;
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return obj.equals(OUTPUTSTREAM_PROPERTY);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set entrySet() {
        throw new UnsupportedOperationException();
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void flush() throws XMLStreamException {
        try {
            this.fWriter.flush();
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        try {
            if (!obj.equals(OUTPUTSTREAM_PROPERTY)) {
                return null;
            }
            flush();
            return this.fOutputStream;
        } catch (XMLStreamException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean getEscapeCharacters() {
        return this.fEscapeCharacters;
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public NamespaceContext getNamespaceContext() {
        return this.fNamespaceContext;
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public String getPrefix(String str) throws XMLStreamException {
        return this.fNamespaceContext.getPrefix(str);
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public Object getProperty(String str) throws IllegalArgumentException {
        str.getClass();
        if (this.fPropertyManager.containsProperty(str)) {
            return this.fPropertyManager.getProperty(str);
        }
        throw new IllegalArgumentException("Property '" + str + "' is not supported");
    }

    public boolean isDeclared(QName qName) {
        for (int i = 0; i < this.fNamespaceDecls.size(); i++) {
            QName qName2 = (QName) this.fNamespaceDecls.get(i);
            String str = qName.prefix;
            if (str != null && str == qName2.prefix && qName2.uri == qName.uri) {
                return true;
            }
        }
        String str2 = qName.uri;
        return (str2 == null || this.fNamespaceContext.getPrefix(str2) == null) ? false : true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return false;
    }

    public void removeDuplicateDecls() {
        for (int i = 0; i < this.fNamespaceDecls.size(); i++) {
            QName qName = (QName) this.fNamespaceDecls.get(i);
            if (qName != null) {
                for (int i2 = i + 1; i2 < this.fNamespaceDecls.size(); i2++) {
                    QName qName2 = (QName) this.fNamespaceDecls.get(i2);
                    if (qName2 != null && qName.prefix.equals(qName2.prefix) && qName.uri.equals(qName2.uri)) {
                        this.fNamespaceDecls.set(i2, null);
                    }
                }
            }
        }
    }

    public void repair() {
        String str;
        String str2;
        String str3;
        ElementState peek = this.fElementStack.peek();
        removeDuplicateDecls();
        for (int i = 0; i < this.fAttributeCache.size(); i++) {
            Attribute attribute = (Attribute) this.fAttributeCache.get(i);
            String str4 = attribute.prefix;
            if ((str4 != null && !str4.equals("")) || ((str3 = attribute.uri) != null && !str3.equals(""))) {
                correctPrefix(peek, attribute);
            }
        }
        if (!isDeclared(peek) && (str2 = peek.prefix) != null && peek.uri != null && !str2.equals("") && !peek.uri.equals("")) {
            this.fNamespaceDecls.add(peek);
        }
        int i2 = 0;
        while (i2 < this.fAttributeCache.size()) {
            Attribute attribute2 = (Attribute) this.fAttributeCache.get(i2);
            i2++;
            for (int i3 = i2; i3 < this.fAttributeCache.size(); i3++) {
                Attribute attribute3 = (Attribute) this.fAttributeCache.get(i3);
                if (!"".equals(attribute2.prefix) && !"".equals(attribute3.prefix)) {
                    correctPrefix(attribute2, attribute3);
                }
            }
        }
        repairNamespaceDecl(peek);
        for (int i4 = 0; i4 < this.fAttributeCache.size(); i4++) {
            Attribute attribute4 = (Attribute) this.fAttributeCache.get(i4);
            String str5 = attribute4.prefix;
            if (str5 != null && str5.equals("") && (str = attribute4.uri) != null && str.equals("")) {
                repairNamespaceDecl(attribute4);
            }
        }
        for (int i5 = 0; i5 < this.fNamespaceDecls.size(); i5++) {
            QName qName = (QName) this.fNamespaceDecls.get(i5);
            if (qName != null) {
                this.fInternalNamespaceContext.declarePrefix(qName.prefix, qName.uri);
            }
        }
        for (int i6 = 0; i6 < this.fAttributeCache.size(); i6++) {
            correctPrefix((Attribute) this.fAttributeCache.get(i6));
        }
    }

    public void repairNamespaceDecl(QName qName) {
        String str;
        String namespaceURI;
        for (int i = 0; i < this.fNamespaceDecls.size(); i++) {
            QName qName2 = (QName) this.fNamespaceDecls.get(i);
            if (qName2 != null && (str = qName.prefix) != null && str.equals(qName2.prefix) && !qName.uri.equals(qName2.uri) && (namespaceURI = this.fNamespaceContext.getNamespaceURI(qName.prefix)) != null) {
                if (namespaceURI.equals(qName.uri)) {
                    this.fNamespaceDecls.set(i, null);
                } else {
                    qName2.uri = qName.uri;
                }
            }
        }
    }

    public void reset() {
        reset(false);
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void setDefaultNamespace(String str) throws XMLStreamException {
        if (str != null) {
            str = this.fSymbolTable.addSymbol(str);
        }
        if (!this.fIsRepairingNamespace) {
            this.fInternalNamespaceContext.declarePrefix(this.DEFAULT_PREFIX, str);
        } else {
            if (isDefaultNamespace(str)) {
                return;
            }
            QName qName = new QName();
            qName.setValues(this.DEFAULT_PREFIX, "xmlns", null, str);
            this.fNamespaceDecls.add(qName);
        }
    }

    public void setEscapeCharacters(boolean z) {
        this.fEscapeCharacters = z;
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void setNamespaceContext(NamespaceContext namespaceContext) throws XMLStreamException {
        this.fNamespaceContext.userContext = namespaceContext;
    }

    public void setOutput(StreamResult streamResult, String str) throws IOException {
        if (streamResult.getOutputStream() != null) {
            setOutputUsingStream(streamResult.getOutputStream(), str);
        } else if (streamResult.getWriter() != null) {
            setOutputUsingWriter(streamResult.getWriter());
        } else if (streamResult.getSystemId() != null) {
            setOutputUsingStream(new FileOutputStream(streamResult.getSystemId()), str);
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void setPrefix(String str, String str2) throws XMLStreamException {
        if (str == null) {
            throw new XMLStreamException("Prefix cannot be null");
        }
        if (str2 == null) {
            throw new XMLStreamException("URI cannot be null");
        }
        String addSymbol = this.fSymbolTable.addSymbol(str);
        String addSymbol2 = this.fSymbolTable.addSymbol(str2);
        if (!this.fIsRepairingNamespace) {
            this.fInternalNamespaceContext.declarePrefix(addSymbol, addSymbol2);
            return;
        }
        String uri = this.fInternalNamespaceContext.getURI(addSymbol);
        if ((uri == null || uri != addSymbol2) && !checkUserNamespaceContext(addSymbol, addSymbol2)) {
            QName qName = new QName();
            qName.setValues(addSymbol, "xmlns", null, addSymbol2);
            this.fNamespaceDecls.add(qName);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return 1;
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeAttribute(String str, String str2) throws XMLStreamException {
        try {
            if (this.fStartTagOpened) {
                if (this.fIsRepairingNamespace) {
                    Attribute attribute = new Attribute(str2);
                    attribute.setValues(null, str, null, null);
                    this.fAttributeCache.add(attribute);
                    return;
                } else {
                    this.fWriter.write(" ");
                    this.fWriter.write(str);
                    this.fWriter.write("=\"");
                    writeXMLContent(str2, true, true);
                    this.fWriter.write("\"");
                    return;
                }
            }
            throw new XMLStreamException("Attribute not associated with any element");
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeCData(String str) throws XMLStreamException {
        try {
            if (str == null) {
                throw new XMLStreamException("cdata cannot be null");
            }
            if (this.fStartTagOpened) {
                closeStartTag();
            }
            this.fWriter.write("<![CDATA[");
            this.fWriter.write(str);
            this.fWriter.write("]]>");
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeCharacters(String str) throws XMLStreamException {
        try {
            if (this.fStartTagOpened) {
                closeStartTag();
            }
            writeXMLContent(str);
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeComment(String str) throws XMLStreamException {
        try {
            if (this.fStartTagOpened) {
                closeStartTag();
            }
            this.fWriter.write(START_COMMENT);
            if (str != null) {
                this.fWriter.write(str);
            }
            this.fWriter.write(END_COMMENT);
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeDTD(String str) throws XMLStreamException {
        try {
            if (this.fStartTagOpened) {
                closeStartTag();
            }
            this.fWriter.write(str);
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeDefaultNamespace(String str) throws XMLStreamException {
        String uri;
        if (str == null) {
            str = "";
        }
        try {
            if (!this.fStartTagOpened) {
                throw new IllegalStateException("Namespace Attribute not associated with any element");
            }
            if (this.fIsRepairingNamespace) {
                QName qName = new QName();
                qName.setValues("", "xmlns", null, str);
                this.fNamespaceDecls.add(qName);
                return;
            }
            String addSymbol = this.fSymbolTable.addSymbol(str);
            if (this.fInternalNamespaceContext.containsPrefixInCurrentContext("") && (uri = this.fInternalNamespaceContext.getURI("")) != null && uri != addSymbol) {
                throw new XMLStreamException("xmlns has been already bound to " + uri + ". Rebinding it to " + addSymbol + " is an error");
            }
            this.fInternalNamespaceContext.declarePrefix("", addSymbol);
            writenamespace(null, addSymbol);
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeEmptyElement(String str) throws XMLStreamException {
        try {
            if (this.fStartTagOpened) {
                closeStartTag();
            }
            openStartTag();
            this.fElementStack.push(null, str, null, null, true);
            this.fInternalNamespaceContext.pushContext();
            if (this.fIsRepairingNamespace) {
                return;
            }
            this.fWriter.write(str);
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeEndDocument() throws XMLStreamException {
        try {
            if (this.fStartTagOpened) {
                closeStartTag();
            }
            while (!this.fElementStack.empty()) {
                ElementState pop = this.fElementStack.pop();
                this.fInternalNamespaceContext.popContext();
                if (!pop.isEmpty) {
                    this.fWriter.write(OPEN_END_TAG);
                    String str = pop.prefix;
                    if (str != null && !str.equals("")) {
                        this.fWriter.write(pop.prefix);
                        this.fWriter.write(":");
                    }
                    this.fWriter.write(pop.localpart);
                    this.fWriter.write(62);
                }
            }
        } catch (IOException e) {
            throw new XMLStreamException(e);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new XMLStreamException("No more elements to write");
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeEndElement() throws XMLStreamException {
        try {
            if (this.fStartTagOpened) {
                closeStartTag();
            }
            ElementState pop = this.fElementStack.pop();
            if (pop == null) {
                throw new XMLStreamException("No element was found to write");
            }
            if (pop.isEmpty) {
                return;
            }
            this.fWriter.write(OPEN_END_TAG);
            String str = pop.prefix;
            if (str != null && !str.equals("")) {
                this.fWriter.write(pop.prefix);
                this.fWriter.write(":");
            }
            this.fWriter.write(pop.localpart);
            this.fWriter.write(62);
            this.fInternalNamespaceContext.popContext();
        } catch (IOException e) {
            throw new XMLStreamException(e);
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw new XMLStreamException("No element was found to write: " + e2.toString(), e2);
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeEntityRef(String str) throws XMLStreamException {
        try {
            if (this.fStartTagOpened) {
                closeStartTag();
            }
            this.fWriter.write(38);
            this.fWriter.write(str);
            this.fWriter.write(59);
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeNamespace(String str, String str2) throws XMLStreamException {
        String uri;
        if (str2 == null) {
            str2 = "";
        }
        try {
            if (!this.fStartTagOpened) {
                throw new IllegalStateException("Invalid state: start tag is not opened at writeNamespace(" + str + ", " + str2 + MotionUtils.f31762d);
            }
            if (str != null && !str.equals("") && !str.equals("xmlns")) {
                if (str.equals("xml") && str2.equals("http://www.w3.org/XML/1998/namespace")) {
                    return;
                }
                String addSymbol = this.fSymbolTable.addSymbol(str);
                String addSymbol2 = this.fSymbolTable.addSymbol(str2);
                if (this.fIsRepairingNamespace) {
                    String uri2 = this.fInternalNamespaceContext.getURI(addSymbol);
                    if (uri2 == null || uri2 != addSymbol2) {
                        QName qName = new QName();
                        qName.setValues(addSymbol, "xmlns", null, addSymbol2);
                        this.fNamespaceDecls.add(qName);
                        return;
                    }
                    return;
                }
                if (this.fInternalNamespaceContext.containsPrefixInCurrentContext(addSymbol) && (uri = this.fInternalNamespaceContext.getURI(addSymbol)) != null && uri != addSymbol2) {
                    throw new XMLStreamException("prefix " + addSymbol + " has been already bound to " + uri + ". Rebinding it to " + addSymbol2 + " is an error");
                }
                this.fInternalNamespaceContext.declarePrefix(addSymbol, addSymbol2);
                writenamespace(addSymbol, addSymbol2);
                return;
            }
            writeDefaultNamespace(str2);
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeProcessingInstruction(String str) throws XMLStreamException {
        try {
            if (this.fStartTagOpened) {
                closeStartTag();
            }
            if (str != null) {
                this.fWriter.write("<?");
                this.fWriter.write(str);
                this.fWriter.write("?>");
                return;
            }
            throw new XMLStreamException("PI target cannot be null");
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeStartDocument() throws XMLStreamException {
        try {
            this.fWriter.write(DEFAULT_XMLDECL);
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeStartElement(String str) throws XMLStreamException {
        try {
            if (str != null) {
                if (this.fStartTagOpened) {
                    closeStartTag();
                }
                openStartTag();
                this.fElementStack.push(null, str, null, null, false);
                this.fInternalNamespaceContext.pushContext();
                if (this.fIsRepairingNamespace) {
                    return;
                }
                this.fWriter.write(str);
                return;
            }
            throw new XMLStreamException("Local Name cannot be null");
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }

    /* loaded from: classes10.dex */
    public class ElementState extends QName {
        public boolean isEmpty;

        public ElementState() {
            this.isEmpty = false;
        }

        public void setValues(String str, String str2, String str3, String str4, boolean z) {
            super.setValues(str, str2, str3, str4);
            this.isEmpty = z;
        }

        public ElementState(String str, String str2, String str3, String str4) {
            super(str, str2, str3, str4);
            this.isEmpty = false;
        }
    }

    public XMLStreamWriterImpl(OutputStream outputStream, String str, PropertyManager propertyManager) throws IOException {
        this(new StreamResult(outputStream), str, propertyManager);
    }

    public void reset(boolean z) {
        if (this.fReuse) {
            this.fReuse = false;
            this.fNamespaceDecls.clear();
            this.fAttributeCache.clear();
            this.fElementStack.clear();
            this.fInternalNamespaceContext.reset();
            this.fStartTagOpened = false;
            this.fNamespaceContext.userContext = null;
            if (z) {
                this.fIsRepairingNamespace = ((Boolean) this.fPropertyManager.getProperty(XMLOutputFactory.IS_REPAIRING_NAMESPACES)).booleanValue();
                setEscapeCharacters(((Boolean) this.fPropertyManager.getProperty(Constants.ESCAPE_CHARACTERS)).booleanValue());
                return;
            }
            return;
        }
        throw new IllegalStateException("close() Must be called before calling reset()");
    }

    public XMLStreamWriterImpl(Writer writer, PropertyManager propertyManager) throws IOException {
        this(new StreamResult(writer), (String) null, propertyManager);
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeStartDocument(String str) throws XMLStreamException {
        if (str != null) {
            try {
                if (!str.equals("")) {
                    this.fWriter.write("<?xml version=\"");
                    this.fWriter.write(str);
                    this.fWriter.write("\"");
                    this.fWriter.write("?>");
                    return;
                }
            } catch (IOException e) {
                throw new XMLStreamException(e);
            }
        }
        writeStartDocument();
    }

    public XMLStreamWriterImpl(StreamResult streamResult, String str, PropertyManager propertyManager) throws IOException {
        this.fEscapeCharacters = true;
        this.fIsRepairingNamespace = false;
        this.fOutputStream = null;
        this.fNamespaceContext = null;
        this.fInternalNamespaceContext = null;
        this.fPrefixGen = null;
        this.fPropertyManager = null;
        this.fStartTagOpened = false;
        this.fSymbolTable = new SymbolTable();
        this.fElementStack = new ElementStack();
        this.DEFAULT_PREFIX = this.fSymbolTable.addSymbol("");
        this.fReadOnlyIterator = new ReadOnlyIterator();
        this.fTempQname = new QName();
        this.fEncoder = null;
        setOutput(streamResult, str);
        this.fPropertyManager = propertyManager;
        init();
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeCharacters(char[] cArr, int i, int i2) throws XMLStreamException {
        try {
            if (this.fStartTagOpened) {
                closeStartTag();
            }
            writeXMLContent(cArr, i, i2, this.fEscapeCharacters);
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }

    /* loaded from: classes10.dex */
    public class ElementStack {
        protected short fDepth;
        protected ElementState[] fElements = new ElementState[10];

        public ElementStack() {
            int i = 0;
            while (true) {
                ElementState[] elementStateArr = this.fElements;
                if (i >= elementStateArr.length) {
                    return;
                }
                elementStateArr[i] = new ElementState();
                i++;
            }
        }

        public void clear() {
            this.fDepth = (short) 0;
        }

        public boolean empty() {
            return this.fDepth <= 0;
        }

        public ElementState peek() {
            return this.fElements[this.fDepth - 1];
        }

        public ElementState pop() {
            ElementState[] elementStateArr = this.fElements;
            short s = (short) (this.fDepth - 1);
            this.fDepth = s;
            return elementStateArr[s];
        }

        public ElementState push(ElementState elementState) {
            short s = this.fDepth;
            ElementState[] elementStateArr = this.fElements;
            if (s == elementStateArr.length) {
                ElementState[] elementStateArr2 = new ElementState[elementStateArr.length * 2];
                System.arraycopy(elementStateArr, 0, elementStateArr2, 0, s);
                this.fElements = elementStateArr2;
                int i = this.fDepth;
                while (true) {
                    ElementState[] elementStateArr3 = this.fElements;
                    if (i >= elementStateArr3.length) {
                        break;
                    }
                    elementStateArr3[i] = new ElementState();
                    i++;
                }
            }
            this.fElements[this.fDepth].setValues(elementState);
            ElementState[] elementStateArr4 = this.fElements;
            short s2 = this.fDepth;
            this.fDepth = (short) (s2 + 1);
            return elementStateArr4[s2];
        }

        public ElementState push(String str, String str2, String str3, String str4, boolean z) {
            short s = this.fDepth;
            ElementState[] elementStateArr = this.fElements;
            if (s == elementStateArr.length) {
                ElementState[] elementStateArr2 = new ElementState[elementStateArr.length * 2];
                System.arraycopy(elementStateArr, 0, elementStateArr2, 0, s);
                this.fElements = elementStateArr2;
                int i = this.fDepth;
                while (true) {
                    ElementState[] elementStateArr3 = this.fElements;
                    if (i >= elementStateArr3.length) {
                        break;
                    }
                    elementStateArr3[i] = new ElementState();
                    i++;
                }
            }
            this.fElements[this.fDepth].setValues(str, str2, str3, str4, z);
            ElementState[] elementStateArr4 = this.fElements;
            short s2 = this.fDepth;
            this.fDepth = (short) (s2 + 1);
            return elementStateArr4[s2];
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeProcessingInstruction(String str, String str2) throws XMLStreamException {
        try {
            if (this.fStartTagOpened) {
                closeStartTag();
            }
            if (str != null && str2 != null) {
                this.fWriter.write("<?");
                this.fWriter.write(str);
                this.fWriter.write(" ");
                this.fWriter.write(str2);
                this.fWriter.write("?>");
                return;
            }
            throw new XMLStreamException("PI target cannot be null");
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeEmptyElement(String str, String str2) throws XMLStreamException {
        if (str != null) {
            String addSymbol = this.fSymbolTable.addSymbol(str);
            writeEmptyElement(this.fNamespaceContext.getPrefix(addSymbol), str2, addSymbol);
            return;
        }
        throw new XMLStreamException("NamespaceURI cannot be null");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x008a A[Catch: IOException -> 0x009e, TryCatch #0 {IOException -> 0x009e, blocks: (B:4:0x0004, B:8:0x000a, B:10:0x000e, B:12:0x0014, B:14:0x003a, B:17:0x0041, B:18:0x0064, B:19:0x0065, B:22:0x0070, B:25:0x0077, B:26:0x0084, B:28:0x008a, B:29:0x0096, B:31:0x007d, B:32:0x001b, B:34:0x001f, B:35:0x0026, B:37:0x002a), top: B:1:0x0000 }] */
    @Override // javax.xml.stream.XMLStreamWriter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void writeStartDocument(java.lang.String r3, java.lang.String r4) throws javax.xml.stream.XMLStreamException {
        /*
            r2 = this;
            if (r3 != 0) goto L8
            if (r4 != 0) goto L8
            r2.writeStartDocument()     // Catch: java.io.IOException -> L9e
            return
        L8:
            if (r3 != 0) goto Le
            r2.writeStartDocument(r4)     // Catch: java.io.IOException -> L9e
            return
        Le:
            java.io.Writer r0 = r2.fWriter     // Catch: java.io.IOException -> L9e
            boolean r1 = r0 instanceof java.io.OutputStreamWriter     // Catch: java.io.IOException -> L9e
            if (r1 == 0) goto L1b
            java.io.OutputStreamWriter r0 = (java.io.OutputStreamWriter) r0     // Catch: java.io.IOException -> L9e
            java.lang.String r0 = r0.getEncoding()     // Catch: java.io.IOException -> L9e
            goto L38
        L1b:
            boolean r1 = r0 instanceof com.sun.xml.internal.stream.writers.UTF8OutputStreamWriter     // Catch: java.io.IOException -> L9e
            if (r1 == 0) goto L26
            com.sun.xml.internal.stream.writers.UTF8OutputStreamWriter r0 = (com.sun.xml.internal.stream.writers.UTF8OutputStreamWriter) r0     // Catch: java.io.IOException -> L9e
            java.lang.String r0 = r0.getEncoding()     // Catch: java.io.IOException -> L9e
            goto L38
        L26:
            boolean r1 = r0 instanceof com.sun.xml.internal.stream.writers.XMLWriter     // Catch: java.io.IOException -> L9e
            if (r1 == 0) goto L37
            com.sun.xml.internal.stream.writers.XMLWriter r0 = (com.sun.xml.internal.stream.writers.XMLWriter) r0     // Catch: java.io.IOException -> L9e
            java.io.Writer r0 = r0.getWriter()     // Catch: java.io.IOException -> L9e
            java.io.OutputStreamWriter r0 = (java.io.OutputStreamWriter) r0     // Catch: java.io.IOException -> L9e
            java.lang.String r0 = r0.getEncoding()     // Catch: java.io.IOException -> L9e
            goto L38
        L37:
            r0 = 0
        L38:
            if (r0 == 0) goto L65
            boolean r1 = r0.equals(r3)     // Catch: java.io.IOException -> L9e
            if (r1 == 0) goto L41
            goto L65
        L41:
            javax.xml.stream.XMLStreamException r2 = new javax.xml.stream.XMLStreamException     // Catch: java.io.IOException -> L9e
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L9e
            r4.<init>()     // Catch: java.io.IOException -> L9e
            java.lang.String r1 = "Underlying stream encoding "
            r4.append(r1)     // Catch: java.io.IOException -> L9e
            r4.append(r0)     // Catch: java.io.IOException -> L9e
            java.lang.String r0 = " and input paramter for writeStartDocument() method "
            r4.append(r0)     // Catch: java.io.IOException -> L9e
            r4.append(r3)     // Catch: java.io.IOException -> L9e
            java.lang.String r3 = " do not match."
            r4.append(r3)     // Catch: java.io.IOException -> L9e
            java.lang.String r3 = r4.toString()     // Catch: java.io.IOException -> L9e
            r2.<init>(r3)     // Catch: java.io.IOException -> L9e
            throw r2     // Catch: java.io.IOException -> L9e
        L65:
            java.io.Writer r0 = r2.fWriter     // Catch: java.io.IOException -> L9e
            java.lang.String r1 = "<?xml version=\""
            r0.write(r1)     // Catch: java.io.IOException -> L9e
            java.lang.String r0 = ""
            if (r4 == 0) goto L7d
            boolean r1 = r4.equals(r0)     // Catch: java.io.IOException -> L9e
            if (r1 == 0) goto L77
            goto L7d
        L77:
            java.io.Writer r1 = r2.fWriter     // Catch: java.io.IOException -> L9e
            r1.write(r4)     // Catch: java.io.IOException -> L9e
            goto L84
        L7d:
            java.io.Writer r4 = r2.fWriter     // Catch: java.io.IOException -> L9e
            java.lang.String r1 = "1.0"
            r4.write(r1)     // Catch: java.io.IOException -> L9e
        L84:
            boolean r4 = r3.equals(r0)     // Catch: java.io.IOException -> L9e
            if (r4 != 0) goto L96
            java.io.Writer r4 = r2.fWriter     // Catch: java.io.IOException -> L9e
            java.lang.String r0 = "\" encoding=\""
            r4.write(r0)     // Catch: java.io.IOException -> L9e
            java.io.Writer r4 = r2.fWriter     // Catch: java.io.IOException -> L9e
            r4.write(r3)     // Catch: java.io.IOException -> L9e
        L96:
            java.io.Writer r2 = r2.fWriter     // Catch: java.io.IOException -> L9e
            java.lang.String r3 = "\"?>"
            r2.write(r3)     // Catch: java.io.IOException -> L9e
            return
        L9e:
            r2 = move-exception
            javax.xml.stream.XMLStreamException r3 = new javax.xml.stream.XMLStreamException
            r3.<init>(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.xml.internal.stream.writers.XMLStreamWriterImpl.writeStartDocument(java.lang.String, java.lang.String):void");
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeStartElement(String str, String str2) throws XMLStreamException {
        String str3;
        if (str2 == null) {
            throw new XMLStreamException("Local Name cannot be null");
        }
        if (str != null) {
            String addSymbol = this.fSymbolTable.addSymbol(str);
            if (this.fIsRepairingNamespace) {
                str3 = null;
            } else {
                str3 = this.fNamespaceContext.getPrefix(addSymbol);
                if (str3 != null) {
                    str3 = this.fSymbolTable.addSymbol(str3);
                }
            }
            writeStartElement(str3, str2, addSymbol);
            return;
        }
        throw new XMLStreamException("NamespaceURI cannot be null");
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeAttribute(String str, String str2, String str3) throws XMLStreamException {
        try {
            if (!this.fStartTagOpened) {
                throw new XMLStreamException("Attribute not associated with any element");
            }
            if (str != null) {
                String addSymbol = this.fSymbolTable.addSymbol(str);
                String prefix = this.fInternalNamespaceContext.getPrefix(addSymbol);
                if (this.fIsRepairingNamespace) {
                    Attribute attribute = new Attribute(str3);
                    attribute.setValues(null, str2, null, addSymbol);
                    this.fAttributeCache.add(attribute);
                    return;
                } else {
                    if (prefix != null) {
                        writeAttributeWithPrefix(prefix, str2, str3);
                        return;
                    }
                    throw new XMLStreamException("Prefix cannot be null");
                }
            }
            throw new XMLStreamException("NamespaceURI cannot be null");
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeEmptyElement(String str, String str2, String str3) throws XMLStreamException {
        try {
            if (str2 == null) {
                throw new XMLStreamException("Local Name cannot be null");
            }
            if (str3 != null) {
                if (str != null) {
                    str = this.fSymbolTable.addSymbol(str);
                }
                String addSymbol = this.fSymbolTable.addSymbol(str3);
                if (this.fStartTagOpened) {
                    closeStartTag();
                }
                openStartTag();
                this.fElementStack.push(str, str2, null, addSymbol, true);
                this.fInternalNamespaceContext.pushContext();
                if (this.fIsRepairingNamespace) {
                    return;
                }
                if (str != null) {
                    if (str != "") {
                        this.fWriter.write(str);
                        this.fWriter.write(":");
                    }
                    this.fWriter.write(str2);
                    return;
                }
                throw new XMLStreamException("NamespaceURI " + addSymbol + " has not been bound to any prefix");
            }
            throw new XMLStreamException("NamespaceURI cannot be null");
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }

    private void writeXMLContent(String str) throws IOException {
        if (str == null || str.length() <= 0) {
            return;
        }
        writeXMLContent(str, this.fEscapeCharacters, false);
    }

    private void writeXMLContent(String str, boolean z, boolean z2) throws IOException {
        if (!z) {
            this.fWriter.write(str);
            return;
        }
        int length = str.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            CharsetEncoder charsetEncoder = this.fEncoder;
            if (charsetEncoder != null && !charsetEncoder.canEncode(charAt)) {
                this.fWriter.write(str, i, i2 - i);
                this.fWriter.write("&#x");
                this.fWriter.write(Integer.toHexString(charAt));
                this.fWriter.write(59);
            } else if (charAt == '\"') {
                this.fWriter.write(str, i, i2 - i);
                if (z2) {
                    this.fWriter.write(SerializerConstants.ENTITY_QUOT);
                } else {
                    this.fWriter.write(34);
                }
            } else if (charAt == '&') {
                this.fWriter.write(str, i, i2 - i);
                this.fWriter.write("&amp;");
            } else if (charAt == '<') {
                this.fWriter.write(str, i, i2 - i);
                this.fWriter.write("&lt;");
            } else if (charAt == '>') {
                this.fWriter.write(str, i, i2 - i);
                this.fWriter.write("&gt;");
            }
            i = i2 + 1;
        }
        this.fWriter.write(str, i, length - i);
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeStartElement(String str, String str2, String str3) throws XMLStreamException {
        try {
            if (str2 == null) {
                throw new XMLStreamException("Local Name cannot be null");
            }
            if (str3 != null) {
                if (!this.fIsRepairingNamespace && str == null) {
                    throw new XMLStreamException("Prefix cannot be null");
                }
                if (this.fStartTagOpened) {
                    closeStartTag();
                }
                openStartTag();
                String addSymbol = this.fSymbolTable.addSymbol(str3);
                if (str != null) {
                    str = this.fSymbolTable.addSymbol(str);
                }
                this.fElementStack.push(str, str2, null, addSymbol, false);
                this.fInternalNamespaceContext.pushContext();
                String prefix = this.fNamespaceContext.getPrefix(addSymbol);
                if (str != null && (prefix == null || !str.equals(prefix))) {
                    this.fInternalNamespaceContext.declarePrefix(str, addSymbol);
                }
                if (!this.fIsRepairingNamespace) {
                    if (str != null && str != "") {
                        this.fWriter.write(str);
                        this.fWriter.write(":");
                    }
                    this.fWriter.write(str2);
                    return;
                }
                if (str != null) {
                    if (prefix == null || !str.equals(prefix)) {
                        QName qName = new QName();
                        qName.setValues(str, "xmlns", null, addSymbol);
                        this.fNamespaceDecls.add(qName);
                        return;
                    }
                    return;
                }
                return;
            }
            throw new XMLStreamException("NamespaceURI cannot be null");
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }

    public void correctPrefix(QName qName, QName qName2) {
        checkForNull(qName);
        checkForNull(qName2);
        if (!qName.prefix.equals(qName2.prefix) || qName.uri.equals(qName2.uri)) {
            return;
        }
        String prefix = this.fNamespaceContext.getPrefix(qName2.uri);
        if (prefix != null) {
            qName2.prefix = this.fSymbolTable.addSymbol(prefix);
            return;
        }
        for (int i = 0; i < this.fNamespaceDecls.size(); i++) {
            QName qName3 = (QName) this.fNamespaceDecls.get(i);
            if (qName3 != null && qName3.uri == qName2.uri) {
                qName2.prefix = qName3.prefix;
                return;
            }
        }
        StringBuffer stringBuffer = new StringBuffer("zdef");
        stringBuffer.append(this.fPrefixGen.nextInt());
        String addSymbol = this.fSymbolTable.addSymbol(stringBuffer.toString());
        qName2.prefix = addSymbol;
        QName qName4 = new QName();
        qName4.setValues(addSymbol, "xmlns", null, qName2.uri);
        this.fNamespaceDecls.add(qName4);
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeAttribute(String str, String str2, String str3, String str4) throws XMLStreamException {
        String uri;
        try {
            if (!this.fStartTagOpened) {
                throw new XMLStreamException("Attribute not associated with any element");
            }
            if (str2 == null) {
                throw new XMLStreamException("NamespaceURI cannot be null");
            }
            if (str3 != null) {
                if (!this.fIsRepairingNamespace) {
                    if (str != null && !str.equals("")) {
                        if (!str.equals("xml") || !str2.equals("http://www.w3.org/XML/1998/namespace")) {
                            str = this.fSymbolTable.addSymbol(str);
                            String addSymbol = this.fSymbolTable.addSymbol(str2);
                            if (this.fInternalNamespaceContext.containsPrefixInCurrentContext(str) && (uri = this.fInternalNamespaceContext.getURI(str)) != null && uri != addSymbol) {
                                throw new XMLStreamException("Prefix " + str + " is already bound to " + uri + ". Trying to rebind it to " + addSymbol + " is an error.");
                            }
                            this.fInternalNamespaceContext.declarePrefix(str, addSymbol);
                        }
                        writeAttributeWithPrefix(str, str3, str4);
                        return;
                    }
                    if (str2.equals("")) {
                        writeAttributeWithPrefix(null, str3, str4);
                        return;
                    }
                    throw new XMLStreamException("prefix cannot be null or empty");
                }
                if (str != null) {
                    str = this.fSymbolTable.addSymbol(str);
                }
                String addSymbol2 = this.fSymbolTable.addSymbol(str2);
                Attribute attribute = new Attribute(str4);
                attribute.setValues(str, str3, null, addSymbol2);
                this.fAttributeCache.add(attribute);
                return;
            }
            throw new XMLStreamException("Local name cannot be null");
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }
}
