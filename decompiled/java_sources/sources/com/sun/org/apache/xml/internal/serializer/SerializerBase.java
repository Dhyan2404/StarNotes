package com.sun.org.apache.xml.internal.serializer;

import com.caverock.androidsvg.SVGParser;
import java.io.IOException;
import java.io.Writer;
import java.util.Vector;
import javax.xml.transform.SourceLocator;
import javax.xml.transform.Transformer;
import org.w3c.dom.Node;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.ext.Locator2;

/* loaded from: classes10.dex */
public abstract class SerializerBase implements SerializationHandler, SerializerConstants {
    private String m_doctypePublic;
    private String m_doctypeSystem;
    private String m_mediatype;
    protected NamespaceMappings m_prefixMap;
    protected SourceLocator m_sourceLocator;
    private String m_standalone;
    protected SerializerTrace m_tracer;
    private Transformer m_transformer;
    protected boolean m_needToCallStartDocument = true;
    protected boolean m_cdataTagOpen = false;
    protected AttributesImplSerializer m_attributes = new AttributesImplSerializer();
    protected boolean m_inEntityRef = false;
    protected boolean m_inExternalDTD = false;
    boolean m_needToOutputDocTypeDecl = true;
    private String m_encoding = null;
    private boolean m_shouldNotWriteXMLHeader = false;
    protected boolean m_standaloneWasSpecified = false;
    protected boolean m_doIndent = false;
    protected int m_indentAmount = 0;
    private String m_version = null;
    protected Vector m_cdataSectionElements = null;
    protected Writer m_writer = null;
    protected ElemContext m_elemContext = new ElemContext();
    protected char[] m_charsBuff = new char[60];
    protected char[] m_attrBuff = new char[30];
    private Locator m_locator = null;
    protected boolean m_needToCallSetDocumentInfo = true;

    private void flushMyWriter() {
        Writer writer = this.m_writer;
        if (writer != null) {
            try {
                writer.flush();
            } catch (IOException unused) {
            }
        }
    }

    public static String getLocalName(String str) {
        int lastIndexOf = str.lastIndexOf(58);
        return lastIndexOf > 0 ? str.substring(lastIndexOf + 1) : str;
    }

    public static final String getPrefixPart(String str) {
        int indexOf = str.indexOf(58);
        if (indexOf > 0) {
            return str.substring(0, indexOf);
        }
        return null;
    }

    private void resetSerializerBase() {
        this.m_attributes.clear();
        this.m_cdataSectionElements = null;
        this.m_elemContext = new ElemContext();
        this.m_doctypePublic = null;
        this.m_doctypeSystem = null;
        this.m_doIndent = false;
        this.m_encoding = null;
        this.m_indentAmount = 0;
        this.m_inEntityRef = false;
        this.m_inExternalDTD = false;
        this.m_mediatype = null;
        this.m_needToCallStartDocument = true;
        this.m_needToOutputDocTypeDecl = false;
        NamespaceMappings namespaceMappings = this.m_prefixMap;
        if (namespaceMappings != null) {
            namespaceMappings.reset();
        }
        this.m_shouldNotWriteXMLHeader = false;
        this.m_sourceLocator = null;
        this.m_standalone = null;
        this.m_standaloneWasSpecified = false;
        this.m_tracer = null;
        this.m_transformer = null;
        this.m_version = null;
    }

    private static final boolean subPartMatch(String str, String str2) {
        return str == str2 || (str != null && str.equals(str2));
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    public void addAttribute(String str, String str2, String str3, String str4, String str5, boolean z) throws SAXException {
        if (this.m_elemContext.m_startTagOpen) {
            addAttributeAlways(str, str2, str3, str4, str5, z);
        }
    }

    public boolean addAttributeAlways(String str, String str2, String str3, String str4, String str5, boolean z) {
        int index = (str2 == null || str == null || str.length() == 0) ? this.m_attributes.getIndex(str3) : this.m_attributes.getIndex(str, str2);
        if (index >= 0) {
            this.m_attributes.setValue(index, str5);
            return false;
        }
        this.m_attributes.addAttribute(str, str2, str3, str4, str5);
        return true;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    public void addAttributes(Attributes attributes) throws SAXException {
        int length = attributes.getLength();
        for (int i = 0; i < length; i++) {
            String uri = attributes.getURI(i);
            if (uri == null) {
                uri = "";
            }
            addAttributeAlways(uri, attributes.getLocalName(i), attributes.getQName(i), attributes.getType(i), attributes.getValue(i), false);
        }
    }

    @Override // com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    public void addXSLAttribute(String str, String str2, String str3) {
        if (this.m_elemContext.m_startTagOpen) {
            String patchName = patchName(str);
            addAttributeAlways(str3, getLocalName(patchName), patchName, "CDATA", str2, true);
        }
    }

    @Override // com.sun.org.apache.xml.internal.serializer.Serializer
    public ContentHandler asContentHandler() throws IOException {
        return this;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.Serializer
    public DOMSerializer asDOMSerializer() throws IOException {
        return this;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    public void characters(Node node) throws SAXException {
        flushPending();
        String nodeValue = node.getNodeValue();
        if (nodeValue != null) {
            int length = nodeValue.length();
            if (length > this.m_charsBuff.length) {
                this.m_charsBuff = new char[(length * 2) + 1];
            }
            nodeValue.getChars(0, length, this.m_charsBuff, 0);
            characters(this.m_charsBuff, 0, length);
        }
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler
    public void close() {
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.ExtendedLexicalHandler
    public void comment(String str) throws SAXException {
        int length = str.length();
        if (length > this.m_charsBuff.length) {
            this.m_charsBuff = new char[(length * 2) + 1];
        }
        str.getChars(0, length, this.m_charsBuff, 0);
        comment(this.m_charsBuff, 0, length);
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endEntity(String str) throws SAXException {
        if (str.equals("[dtd]")) {
            this.m_inExternalDTD = false;
        }
        this.m_inEntityRef = false;
        if (this.m_tracer != null) {
            fireEndEntity(str);
        }
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    public void entityReference(String str) throws SAXException {
        flushPending();
        startEntity(str);
        endEntity(str);
        if (this.m_tracer != null) {
            fireEntityReference(str);
        }
    }

    @Override // org.xml.sax.ErrorHandler
    public void error(SAXParseException sAXParseException) throws SAXException {
    }

    @Override // org.xml.sax.ErrorHandler
    public void fatalError(SAXParseException sAXParseException) throws SAXException {
        this.m_elemContext.m_startTagOpen = false;
    }

    public void fireCDATAEvent(char[] cArr, int i, int i2) throws SAXException {
        if (this.m_tracer != null) {
            flushMyWriter();
            this.m_tracer.fireGenerateEvent(10, cArr, i, i2);
        }
    }

    public void fireCharEvent(char[] cArr, int i, int i2) throws SAXException {
        if (this.m_tracer != null) {
            flushMyWriter();
            this.m_tracer.fireGenerateEvent(5, cArr, i, i2);
        }
    }

    public void fireCommentEvent(char[] cArr, int i, int i2) throws SAXException {
        if (this.m_tracer != null) {
            flushMyWriter();
            this.m_tracer.fireGenerateEvent(8, new String(cArr, i, i2));
        }
    }

    public void fireEndDoc() throws SAXException {
        if (this.m_tracer != null) {
            flushMyWriter();
            this.m_tracer.fireGenerateEvent(2);
        }
    }

    public void fireEndElem(String str) throws SAXException {
        if (this.m_tracer != null) {
            flushMyWriter();
            this.m_tracer.fireGenerateEvent(4, str, (Attributes) null);
        }
    }

    public void fireEndEntity(String str) throws SAXException {
        if (this.m_tracer != null) {
            flushMyWriter();
        }
    }

    public void fireEntityReference(String str) throws SAXException {
        if (this.m_tracer != null) {
            flushMyWriter();
            this.m_tracer.fireGenerateEvent(9, str, (Attributes) null);
        }
    }

    public void fireEscapingEvent(String str, String str2) throws SAXException {
        if (this.m_tracer != null) {
            flushMyWriter();
            this.m_tracer.fireGenerateEvent(7, str, str2);
        }
    }

    public void fireStartDoc() throws SAXException {
        if (this.m_tracer != null) {
            flushMyWriter();
            this.m_tracer.fireGenerateEvent(1);
        }
    }

    public void fireStartElem(String str) throws SAXException {
        if (this.m_tracer != null) {
            flushMyWriter();
            this.m_tracer.fireGenerateEvent(3, str, this.m_attributes);
        }
    }

    public void fireStartEntity(String str) throws SAXException {
        if (this.m_tracer != null) {
            flushMyWriter();
            this.m_tracer.fireGenerateEvent(9, str);
        }
    }

    @Override // com.sun.org.apache.xml.internal.serializer.XSLOutputAttributes
    public String getDoctypePublic() {
        return this.m_doctypePublic;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.XSLOutputAttributes
    public String getDoctypeSystem() {
        return this.m_doctypeSystem;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.XSLOutputAttributes
    public String getEncoding() {
        return this.m_encoding;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.XSLOutputAttributes
    public boolean getIndent() {
        return this.m_doIndent;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.XSLOutputAttributes
    public int getIndentAmount() {
        return this.m_indentAmount;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.XSLOutputAttributes
    public String getMediaType() {
        return this.m_mediatype;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    public NamespaceMappings getNamespaceMappings() {
        return this.m_prefixMap;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    public String getNamespaceURI(String str, boolean z) {
        NamespaceMappings namespaceMappings;
        int lastIndexOf = str.lastIndexOf(58);
        String str2 = "";
        String substring = lastIndexOf > 0 ? str.substring(0, lastIndexOf) : "";
        if ((!"".equals(substring) || z) && (namespaceMappings = this.m_prefixMap) != null && (str2 = namespaceMappings.lookupNamespace(substring)) == null && !substring.equals("xmlns")) {
            throw new RuntimeException(com.sun.org.apache.xml.internal.serializer.utils.Utils.messages.createMessage("ER_NAMESPACE_PREFIX", new Object[]{str.substring(0, lastIndexOf)}));
        }
        return str2;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    public String getNamespaceURIFromPrefix(String str) {
        NamespaceMappings namespaceMappings = this.m_prefixMap;
        if (namespaceMappings != null) {
            return namespaceMappings.lookupNamespace(str);
        }
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.XSLOutputAttributes
    public boolean getOmitXMLDeclaration() {
        return this.m_shouldNotWriteXMLHeader;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    public String getPrefix(String str) {
        return this.m_prefixMap.lookupPrefix(str);
    }

    @Override // com.sun.org.apache.xml.internal.serializer.XSLOutputAttributes
    public String getStandalone() {
        return this.m_standalone;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler
    public Transformer getTransformer() {
        return this.m_transformer;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.XSLOutputAttributes
    public String getVersion() {
        return this.m_version;
    }

    public final boolean inTemporaryOutputState() {
        return getEncoding() == null;
    }

    public void initCDATA() {
    }

    public boolean isCdataSection() {
        String prefixPart;
        if (this.m_cdataSectionElements == null) {
            return false;
        }
        ElemContext elemContext = this.m_elemContext;
        if (elemContext.m_elementLocalName == null) {
            elemContext.m_elementLocalName = getLocalName(elemContext.m_elementName);
        }
        ElemContext elemContext2 = this.m_elemContext;
        if (elemContext2.m_elementURI == null && (prefixPart = getPrefixPart(elemContext2.m_elementName)) != null) {
            this.m_elemContext.m_elementURI = this.m_prefixMap.lookupNamespace(prefixPart);
        }
        String str = this.m_elemContext.m_elementURI;
        if (str != null && str.length() == 0) {
            this.m_elemContext.m_elementURI = null;
        }
        int size = this.m_cdataSectionElements.size();
        for (int i = 0; i < size; i += 2) {
            String str2 = (String) this.m_cdataSectionElements.elementAt(i);
            if (((String) this.m_cdataSectionElements.elementAt(i + 1)).equals(this.m_elemContext.m_elementLocalName) && subPartMatch(this.m_elemContext.m_elementURI, str2)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    public void namespaceAfterStartElement(String str, String str2) throws SAXException {
    }

    @Override // org.xml.sax.DTDHandler
    public void notationDecl(String str, String str2, String str3) throws SAXException {
    }

    public String patchName(String str) {
        int lastIndexOf = str.lastIndexOf(58);
        if (lastIndexOf > 0) {
            int indexOf = str.indexOf(58);
            String substring = str.substring(0, indexOf);
            String substring2 = str.substring(lastIndexOf + 1);
            String lookupNamespace = this.m_prefixMap.lookupNamespace(substring);
            if (lookupNamespace != null && lookupNamespace.length() == 0) {
                return substring2;
            }
            if (indexOf != lastIndexOf) {
                return substring + ':' + substring2;
            }
        }
        return str;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.Serializer
    public boolean reset() {
        resetSerializerBase();
        return true;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler
    public void setDTDEntityExpansion(boolean z) {
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.XSLOutputAttributes
    public void setDoctype(String str, String str2) {
        this.m_doctypeSystem = str;
        this.m_doctypePublic = str2;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.XSLOutputAttributes
    public void setDoctypePublic(String str) {
        this.m_doctypePublic = str;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.XSLOutputAttributes
    public void setDoctypeSystem(String str) {
        this.m_doctypeSystem = str;
    }

    public void setDocumentInfo() {
        Locator locator = this.m_locator;
        if (locator == null) {
            return;
        }
        try {
            String xMLVersion = ((Locator2) locator).getXMLVersion();
            if (xMLVersion != null) {
                setVersion(xMLVersion);
            }
        } catch (ClassCastException unused) {
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
        this.m_locator = locator;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.XSLOutputAttributes
    public void setEncoding(String str) {
        this.m_encoding = str;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.XSLOutputAttributes
    public void setIndent(boolean z) {
        this.m_doIndent = z;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler
    public void setIndentAmount(int i) {
        this.m_indentAmount = i;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.XSLOutputAttributes
    public void setMediaType(String str) {
        this.m_mediatype = str;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler
    public void setNamespaceMappings(NamespaceMappings namespaceMappings) {
        this.m_prefixMap = namespaceMappings;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.XSLOutputAttributes
    public void setOmitXMLDeclaration(boolean z) {
        this.m_shouldNotWriteXMLHeader = z;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    public void setSourceLocator(SourceLocator sourceLocator) {
        this.m_sourceLocator = sourceLocator;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.XSLOutputAttributes
    public void setStandalone(String str) {
        if (str != null) {
            this.m_standaloneWasSpecified = true;
            setStandaloneInternal(str);
        }
    }

    public void setStandaloneInternal(String str) {
        if ("yes".equals(str)) {
            this.m_standalone = "yes";
        } else {
            this.m_standalone = SVGParser.f16048t;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler
    public void setTransformer(Transformer transformer) {
        this.m_transformer = transformer;
        if ((transformer instanceof SerializerTrace) && ((SerializerTrace) transformer).hasTraceListeners()) {
            this.m_tracer = (SerializerTrace) this.m_transformer;
        } else {
            this.m_tracer = null;
        }
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.XSLOutputAttributes
    public void setVersion(String str) {
        this.m_version = str;
    }

    @Override // org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
        startDocumentInternal();
        this.m_needToCallStartDocument = false;
    }

    public void startDocumentInternal() throws SAXException {
        if (this.m_tracer != null) {
            fireStartDoc();
        }
    }

    @Override // org.xml.sax.DTDHandler
    public void unparsedEntityDecl(String str, String str2, String str3, String str4) throws SAXException {
    }

    @Override // org.xml.sax.ErrorHandler
    public void warning(SAXParseException sAXParseException) throws SAXException {
    }

    @Override // com.sun.org.apache.xml.internal.serializer.SerializationHandler, com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    public void addAttribute(String str, String str2) {
        if (this.m_elemContext.m_startTagOpen) {
            String patchName = patchName(str);
            addAttributeAlways(getNamespaceURI(patchName, false), getLocalName(patchName), patchName, "CDATA", str2, false);
        }
    }

    @Override // com.sun.org.apache.xml.internal.serializer.ExtendedContentHandler
    public void addAttribute(String str, String str2, String str3, String str4, String str5) throws SAXException {
        if (this.m_elemContext.m_startTagOpen) {
            addAttributeAlways(str, str2, str3, str4, str5, false);
        }
    }
}
