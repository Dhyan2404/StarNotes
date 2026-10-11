package com.sun.org.apache.xml.internal.serialize;

import com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl;
import com.sun.org.apache.xerces.internal.dom.DOMErrorImpl;
import com.sun.org.apache.xerces.internal.dom.DOMLocatorImpl;
import com.sun.org.apache.xerces.internal.dom.DOMMessageFormatter;
import com.sun.org.apache.xerces.internal.dom.DOMNormalizer;
import com.sun.org.apache.xerces.internal.dom.DOMStringListImpl;
import com.sun.org.apache.xerces.internal.util.NamespaceSupport;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.util.XML11Char;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import java.util.StringTokenizer;
import java.util.Vector;
import org.w3c.dom.Attr;
import org.w3c.dom.Comment;
import org.w3c.dom.DOMConfiguration;
import org.w3c.dom.DOMErrorHandler;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMStringList;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.ProcessingInstruction;
import org.w3c.dom.ls.LSSerializer;
import org.w3c.dom.ls.LSSerializerFilter;

/* loaded from: classes10.dex */
public class DOMSerializerImpl implements LSSerializer, DOMConfiguration {
    protected static final short CDATA = 8;
    protected static final short COMMENTS = 32;
    protected static final short DISCARDDEFAULT = 64;
    protected static final short DOM_ELEMENT_CONTENT_WHITESPACE = 1024;
    protected static final short ENTITIES = 4;
    protected static final short INFOSET = 128;
    protected static final short NAMESPACES = 1;
    protected static final short NSDECL = 512;
    protected static final short SPLITCDATA = 16;
    protected static final short WELLFORMED = 2;
    protected static final short XMLDECL = 256;
    private static final RuntimeException abort = new RuntimeException();
    private DOMStringList fRecognizedParameters;
    protected short features;
    private XMLSerializer serializer;
    private XML11Serializer xml11Serializer;
    private DOMErrorHandler fErrorHandler = null;
    private final DOMErrorImpl fError = new DOMErrorImpl();
    private final DOMLocatorImpl fLocator = new DOMLocatorImpl();

    public DOMSerializerImpl() {
        this.features = (short) 0;
        this.features = (short) (((short) (((short) (((short) (((short) (((short) (((short) (((short) (((short) (((short) (this.features | 1)) | 4)) | 32)) | 8)) | 16)) | 2)) | 512)) | 1024)) | 64)) | 256);
        XMLSerializer xMLSerializer = new XMLSerializer();
        this.serializer = xMLSerializer;
        initSerializer(xMLSerializer);
    }

    private void copySettings(XMLSerializer xMLSerializer, XMLSerializer xMLSerializer2) {
        xMLSerializer2.fDOMErrorHandler = this.fErrorHandler;
        xMLSerializer2._format.setEncoding(xMLSerializer._format.getEncoding());
        xMLSerializer2._format.setLineSeparator(xMLSerializer._format.getLineSeparator());
        xMLSerializer2.fDOMFilter = xMLSerializer.fDOMFilter;
    }

    private String getPathWithoutEscapes(String str) {
        if (str == null || str.length() == 0 || str.indexOf(37) == -1) {
            return str;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, "%");
        StringBuffer stringBuffer = new StringBuffer(str.length());
        int countTokens = stringTokenizer.countTokens();
        stringBuffer.append(stringTokenizer.nextToken());
        for (int i = 1; i < countTokens; i++) {
            String nextToken = stringTokenizer.nextToken();
            stringBuffer.append((char) Integer.valueOf(nextToken.substring(0, 2), 16).intValue());
            stringBuffer.append(nextToken.substring(2));
        }
        return stringBuffer.toString();
    }

    private void initSerializer(XMLSerializer xMLSerializer) {
        xMLSerializer.fNSBinder = new NamespaceSupport();
        xMLSerializer.fLocalNSBinder = new NamespaceSupport();
        xMLSerializer.fSymbolTable = new SymbolTable();
    }

    private void prepareForSerialization(XMLSerializer xMLSerializer, Node node) {
        xMLSerializer.reset();
        short s = this.features;
        xMLSerializer.features = s;
        xMLSerializer.fDOMErrorHandler = this.fErrorHandler;
        boolean z = true;
        xMLSerializer.fNamespaces = (s & 1) != 0;
        xMLSerializer.fNamespacePrefixes = (s & 512) != 0;
        xMLSerializer._format.setOmitComments((s & 32) == 0);
        xMLSerializer._format.setOmitXMLDeclaration((this.features & 256) == 0);
        if ((this.features & 2) != 0) {
            Document ownerDocument = node.getNodeType() == 9 ? (Document) node : node.getOwnerDocument();
            try {
                java.lang.reflect.Method method = ownerDocument.getClass().getMethod("isXMLVersionChanged()", new Class[0]);
                if (method != null) {
                    z = ((Boolean) method.invoke(ownerDocument, null)).booleanValue();
                }
            } catch (Exception unused) {
            }
            if (node.getFirstChild() == null) {
                verify(node, z, false);
                return;
            }
            Node node2 = node;
            while (node2 != null) {
                verify(node2, z, false);
                Node firstChild = node2.getFirstChild();
                while (true) {
                    if (firstChild != null) {
                        node2 = firstChild;
                        break;
                    }
                    firstChild = node2.getNextSibling();
                    if (firstChild == null) {
                        node2 = node2.getParentNode();
                        if (node == node2) {
                            node2 = null;
                            break;
                        }
                        firstChild = node2.getNextSibling();
                    }
                }
            }
        }
    }

    private void verify(Node node, boolean z, boolean z2) {
        short nodeType = node.getNodeType();
        DOMLocatorImpl dOMLocatorImpl = this.fLocator;
        dOMLocatorImpl.fRelatedNode = node;
        if (nodeType == 1) {
            if (z) {
                boolean isValidQName = (this.features & 1) != 0 ? CoreDocumentImpl.isValidQName(node.getPrefix(), node.getLocalName(), z2) : CoreDocumentImpl.isXMLName(node.getNodeName(), z2);
                if (!isValidQName && !isValidQName && this.fErrorHandler != null) {
                    DOMNormalizer.reportDOMError(this.fErrorHandler, this.fError, this.fLocator, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "wf-invalid-character-in-node-name", new Object[]{"Element", node.getNodeName()}), (short) 3, "wf-invalid-character-in-node-name");
                }
            }
            NamedNodeMap attributes = node.hasAttributes() ? node.getAttributes() : null;
            if (attributes != null) {
                for (int i = 0; i < attributes.getLength(); i++) {
                    Attr attr = (Attr) attributes.item(i);
                    DOMLocatorImpl dOMLocatorImpl2 = this.fLocator;
                    dOMLocatorImpl2.fRelatedNode = attr;
                    DOMNormalizer.isAttrValueWF(this.fErrorHandler, this.fError, dOMLocatorImpl2, attributes, attr, attr.getValue(), z2);
                    if (z && !CoreDocumentImpl.isXMLName(attr.getNodeName(), z2)) {
                        DOMNormalizer.reportDOMError(this.fErrorHandler, this.fError, this.fLocator, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "wf-invalid-character-in-node-name", new Object[]{"Attr", node.getNodeName()}), (short) 3, "wf-invalid-character-in-node-name");
                    }
                }
                return;
            }
            return;
        }
        if (nodeType == 3) {
            DOMNormalizer.isXMLCharWF(this.fErrorHandler, this.fError, dOMLocatorImpl, node.getNodeValue(), z2);
            return;
        }
        if (nodeType == 4) {
            DOMNormalizer.isXMLCharWF(this.fErrorHandler, this.fError, dOMLocatorImpl, node.getNodeValue(), z2);
            return;
        }
        if (nodeType == 5) {
            if (!z || (this.features & 4) == 0) {
                return;
            }
            CoreDocumentImpl.isXMLName(node.getNodeName(), z2);
            return;
        }
        if (nodeType != 7) {
            if (nodeType == 8 && (this.features & 32) != 0) {
                DOMNormalizer.isCommentWF(this.fErrorHandler, this.fError, dOMLocatorImpl, ((Comment) node).getData(), z2);
                return;
            }
            return;
        }
        ProcessingInstruction processingInstruction = (ProcessingInstruction) node;
        String target = processingInstruction.getTarget();
        if (z) {
            if (!(z2 ? XML11Char.isXML11ValidName(target) : XMLChar.isValidName(target))) {
                DOMNormalizer.reportDOMError(this.fErrorHandler, this.fError, this.fLocator, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "wf-invalid-character-in-node-name", new Object[]{"Element", node.getNodeName()}), (short) 3, "wf-invalid-character-in-node-name");
            }
        }
        DOMNormalizer.isXMLCharWF(this.fErrorHandler, this.fError, this.fLocator, processingInstruction.getData(), z2);
    }

    @Override // org.w3c.dom.DOMConfiguration
    public boolean canSetParameter(String str, Object obj) {
        if (obj == null) {
            return true;
        }
        if (!(obj instanceof Boolean)) {
            str.equalsIgnoreCase("error-handler");
            return obj instanceof DOMErrorHandler;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        if (str.equalsIgnoreCase("namespaces") || str.equalsIgnoreCase("split-cdata-sections") || str.equalsIgnoreCase("discard-default-content") || str.equalsIgnoreCase("xml-declaration") || str.equalsIgnoreCase("well-formed") || str.equalsIgnoreCase("infoset") || str.equalsIgnoreCase("entities") || str.equalsIgnoreCase("cdata-sections") || str.equalsIgnoreCase("comments") || str.equalsIgnoreCase("namespace-declarations")) {
            return true;
        }
        if (str.equalsIgnoreCase("canonical-form") || str.equalsIgnoreCase("validate-if-schema") || str.equalsIgnoreCase("validate") || str.equalsIgnoreCase("check-character-normalization") || str.equalsIgnoreCase("datatype-normalization") || str.equalsIgnoreCase("format-pretty-print")) {
            return true ^ booleanValue;
        }
        if (str.equalsIgnoreCase("element-content-whitespace") || str.equalsIgnoreCase("ignore-unknown-character-denormalizations")) {
            return booleanValue;
        }
        return false;
    }

    @Override // org.w3c.dom.ls.LSSerializer
    public DOMConfiguration getDomConfig() {
        return this;
    }

    @Override // org.w3c.dom.ls.LSSerializer
    public LSSerializerFilter getFilter() {
        return this.serializer.fDOMFilter;
    }

    @Override // org.w3c.dom.ls.LSSerializer
    public String getNewLine() {
        return this.serializer._format.getLineSeparator();
    }

    @Override // org.w3c.dom.DOMConfiguration
    public Object getParameter(String str) throws DOMException {
        if (str.equalsIgnoreCase("normalize-characters")) {
            return null;
        }
        if (str.equalsIgnoreCase("comments")) {
            return (this.features & 32) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("namespaces")) {
            return (this.features & 1) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("xml-declaration")) {
            return (this.features & 256) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("cdata-sections")) {
            return (this.features & 8) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("entities")) {
            return (this.features & 4) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("split-cdata-sections")) {
            return (this.features & 16) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("well-formed")) {
            return (this.features & 2) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("namespace-declarations")) {
            return (this.features & 512) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("element-content-whitespace") || str.equalsIgnoreCase("ignore-unknown-character-denormalizations")) {
            return Boolean.TRUE;
        }
        if (str.equalsIgnoreCase("discard-default-content")) {
            return (this.features & 64) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("infoset")) {
            short s = this.features;
            return ((s & 4) != 0 || (s & 8) != 0 || (s & 1) == 0 || (s & 512) == 0 || (s & 2) == 0 || (s & 32) == 0) ? Boolean.FALSE : Boolean.TRUE;
        }
        if (str.equalsIgnoreCase("format-pretty-print") || str.equalsIgnoreCase("canonical-form") || str.equalsIgnoreCase("validate-if-schema") || str.equalsIgnoreCase("check-character-normalization") || str.equalsIgnoreCase("validate") || str.equalsIgnoreCase("validate-if-schema") || str.equalsIgnoreCase("datatype-normalization")) {
            return Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("error-handler")) {
            return this.fErrorHandler;
        }
        if (str.equalsIgnoreCase("resource-resolver") || str.equalsIgnoreCase("schema-location") || str.equalsIgnoreCase("schema-type")) {
            throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{str}));
        }
        throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_FOUND", new Object[]{str}));
    }

    @Override // org.w3c.dom.DOMConfiguration
    public DOMStringList getParameterNames() {
        if (this.fRecognizedParameters == null) {
            Vector vector = new Vector();
            vector.add("namespaces");
            vector.add("split-cdata-sections");
            vector.add("discard-default-content");
            vector.add("xml-declaration");
            vector.add("canonical-form");
            vector.add("validate-if-schema");
            vector.add("validate");
            vector.add("check-character-normalization");
            vector.add("datatype-normalization");
            vector.add("format-pretty-print");
            vector.add("well-formed");
            vector.add("infoset");
            vector.add("namespace-declarations");
            vector.add("element-content-whitespace");
            vector.add("entities");
            vector.add("cdata-sections");
            vector.add("comments");
            vector.add("ignore-unknown-character-denormalizations");
            vector.add("error-handler");
            this.fRecognizedParameters = new DOMStringListImpl(vector);
        }
        return this.fRecognizedParameters;
    }

    @Override // org.w3c.dom.ls.LSSerializer
    public void setFilter(LSSerializerFilter lSSerializerFilter) {
        this.serializer.fDOMFilter = lSSerializerFilter;
    }

    @Override // org.w3c.dom.ls.LSSerializer
    public void setNewLine(String str) {
        this.serializer._format.setLineSeparator(str);
    }

    @Override // org.w3c.dom.DOMConfiguration
    public void setParameter(String str, Object obj) throws DOMException {
        if (!(obj instanceof Boolean)) {
            if (str.equalsIgnoreCase("error-handler")) {
                if (obj != null && !(obj instanceof DOMErrorHandler)) {
                    throw new DOMException((short) 17, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "TYPE_MISMATCH_ERR", new Object[]{str}));
                }
                this.fErrorHandler = (DOMErrorHandler) obj;
                return;
            }
            if (!str.equalsIgnoreCase("resource-resolver") && !str.equalsIgnoreCase("schema-location") && !str.equalsIgnoreCase("schema-type") && (!str.equalsIgnoreCase("normalize-characters") || obj == null)) {
                throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_FOUND", new Object[]{str}));
            }
            throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{str}));
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        if (str.equalsIgnoreCase("infoset")) {
            if (booleanValue) {
                this.features = (short) (((short) (((short) (((short) (((short) (((short) (this.features & (-5))) & (-9))) | 1)) | 512)) | 2)) | 32);
                return;
            }
            return;
        }
        if (str.equalsIgnoreCase("xml-declaration")) {
            short s = this.features;
            this.features = (short) (booleanValue ? s | 256 : s & (-257));
            return;
        }
        if (str.equalsIgnoreCase("namespaces")) {
            short s2 = this.features;
            this.features = (short) (booleanValue ? s2 | 1 : s2 & (-2));
            this.serializer.fNamespaces = booleanValue;
            return;
        }
        if (str.equalsIgnoreCase("split-cdata-sections")) {
            short s3 = this.features;
            this.features = (short) (booleanValue ? s3 | 16 : s3 & (-17));
            return;
        }
        if (str.equalsIgnoreCase("discard-default-content")) {
            short s4 = this.features;
            this.features = (short) (booleanValue ? s4 | 64 : s4 & (-65));
            return;
        }
        if (str.equalsIgnoreCase("well-formed")) {
            short s5 = this.features;
            this.features = (short) (booleanValue ? s5 | 2 : s5 & (-3));
            return;
        }
        if (str.equalsIgnoreCase("entities")) {
            short s6 = this.features;
            this.features = (short) (booleanValue ? s6 | 4 : s6 & (-5));
            return;
        }
        if (str.equalsIgnoreCase("cdata-sections")) {
            short s7 = this.features;
            this.features = (short) (booleanValue ? s7 | 8 : s7 & (-9));
            return;
        }
        if (str.equalsIgnoreCase("comments")) {
            short s8 = this.features;
            this.features = (short) (booleanValue ? s8 | 32 : s8 & (-33));
            return;
        }
        if (str.equalsIgnoreCase("canonical-form") || str.equalsIgnoreCase("validate-if-schema") || str.equalsIgnoreCase("validate") || str.equalsIgnoreCase("check-character-normalization") || str.equalsIgnoreCase("datatype-normalization") || str.equalsIgnoreCase("format-pretty-print")) {
            if (booleanValue) {
                throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{str}));
            }
        } else if (str.equalsIgnoreCase("namespace-declarations")) {
            short s9 = this.features;
            this.features = (short) (booleanValue ? s9 | 512 : s9 & (-513));
            this.serializer.fNamespacePrefixes = booleanValue;
        } else {
            if (!str.equalsIgnoreCase("element-content-whitespace") && !str.equalsIgnoreCase("ignore-unknown-character-denormalizations")) {
                throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_FOUND", new Object[]{str}));
            }
            if (!booleanValue) {
                throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{str}));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x012d A[Catch: Exception -> 0x0176, RuntimeException -> 0x019d, LSException -> 0x01ad, UnsupportedEncodingException -> 0x01af, TryCatch #5 {UnsupportedEncodingException -> 0x01af, LSException -> 0x01ad, RuntimeException -> 0x019d, Exception -> 0x0176, blocks: (B:24:0x008c, B:28:0x00a7, B:30:0x00af, B:31:0x00bf, B:32:0x00c4, B:33:0x00c5, B:36:0x00ce, B:39:0x00e3, B:41:0x00e9, B:43:0x00f1, B:44:0x011c, B:45:0x0127, B:47:0x012d, B:49:0x0133, B:51:0x013b, B:52:0x0141, B:54:0x0147, B:55:0x014d, B:57:0x0153, B:59:0x015b, B:61:0x0162, B:63:0x0169, B:67:0x0172, B:68:0x00ff, B:70:0x0110, B:71:0x0118, B:72:0x0120, B:73:0x0124), top: B:23:0x008c }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0133 A[Catch: Exception -> 0x0176, RuntimeException -> 0x019d, LSException -> 0x01ad, UnsupportedEncodingException -> 0x01af, TryCatch #5 {UnsupportedEncodingException -> 0x01af, LSException -> 0x01ad, RuntimeException -> 0x019d, Exception -> 0x0176, blocks: (B:24:0x008c, B:28:0x00a7, B:30:0x00af, B:31:0x00bf, B:32:0x00c4, B:33:0x00c5, B:36:0x00ce, B:39:0x00e3, B:41:0x00e9, B:43:0x00f1, B:44:0x011c, B:45:0x0127, B:47:0x012d, B:49:0x0133, B:51:0x013b, B:52:0x0141, B:54:0x0147, B:55:0x014d, B:57:0x0153, B:59:0x015b, B:61:0x0162, B:63:0x0169, B:67:0x0172, B:68:0x00ff, B:70:0x0110, B:71:0x0118, B:72:0x0120, B:73:0x0124), top: B:23:0x008c }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0124 A[Catch: Exception -> 0x0176, RuntimeException -> 0x019d, LSException -> 0x01ad, UnsupportedEncodingException -> 0x01af, TryCatch #5 {UnsupportedEncodingException -> 0x01af, LSException -> 0x01ad, RuntimeException -> 0x019d, Exception -> 0x0176, blocks: (B:24:0x008c, B:28:0x00a7, B:30:0x00af, B:31:0x00bf, B:32:0x00c4, B:33:0x00c5, B:36:0x00ce, B:39:0x00e3, B:41:0x00e9, B:43:0x00f1, B:44:0x011c, B:45:0x0127, B:47:0x012d, B:49:0x0133, B:51:0x013b, B:52:0x0141, B:54:0x0147, B:55:0x014d, B:57:0x0153, B:59:0x015b, B:61:0x0162, B:63:0x0169, B:67:0x0172, B:68:0x00ff, B:70:0x0110, B:71:0x0118, B:72:0x0120, B:73:0x0124), top: B:23:0x008c }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0059 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // org.w3c.dom.ls.LSSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean write(org.w3c.dom.Node r12, org.w3c.dom.ls.LSOutput r13) throws org.w3c.dom.ls.LSException {
        /*
            Method dump skipped, instructions count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.serialize.DOMSerializerImpl.write(org.w3c.dom.Node, org.w3c.dom.ls.LSOutput):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0068 A[Catch: IOException -> 0x00d6, RuntimeException -> 0x00ee, LSException -> 0x00fe, TryCatch #3 {IOException -> 0x00d6, LSException -> 0x00fe, RuntimeException -> 0x00ee, blocks: (B:18:0x0055, B:20:0x0068, B:24:0x006e, B:26:0x0076, B:27:0x007c, B:29:0x0083, B:30:0x0089, B:32:0x0090, B:34:0x0098, B:36:0x009f, B:38:0x00a6, B:41:0x00ae, B:43:0x00b8, B:44:0x00c8, B:45:0x00cd, B:46:0x00ce), top: B:17:0x0055 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006e A[Catch: IOException -> 0x00d6, RuntimeException -> 0x00ee, LSException -> 0x00fe, TryCatch #3 {IOException -> 0x00d6, LSException -> 0x00fe, RuntimeException -> 0x00ee, blocks: (B:18:0x0055, B:20:0x0068, B:24:0x006e, B:26:0x0076, B:27:0x007c, B:29:0x0083, B:30:0x0089, B:32:0x0090, B:34:0x0098, B:36:0x009f, B:38:0x00a6, B:41:0x00ae, B:43:0x00b8, B:44:0x00c8, B:45:0x00cd, B:46:0x00ce), top: B:17:0x0055 }] */
    @Override // org.w3c.dom.ls.LSSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String writeToString(org.w3c.dom.Node r8) throws org.w3c.dom.DOMException, org.w3c.dom.ls.LSException {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.serialize.DOMSerializerImpl.writeToString(org.w3c.dom.Node):java.lang.String");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:5|(1:7)(1:95)|8|9|10|(12:(19:12|(1:91)(3:16|(1:18)|19)|20|21|(11:23|(4:79|80|(2:82|83)|(1:86))|25|26|27|(1:29)|30|(3:61|(1:63)|64)(1:37)|38|(1:40)(2:42|(1:44)(2:45|(1:47)(3:48|(1:59)|60)))|41)|89|(0)|25|26|27|(0)|30|(2:33|35)|61|(0)|64|38|(0)(0)|41)|26|27|(0)|30|(0)|61|(0)|64|38|(0)(0)|41)|93|(1:14)|91|20|21|(0)|89|(0)|25) */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005d A[Catch: Exception -> 0x0064, TRY_LEAVE, TryCatch #4 {Exception -> 0x0064, blocks: (B:21:0x004f, B:23:0x005d), top: B:20:0x004f }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00eb A[Catch: Exception -> 0x0135, RuntimeException -> 0x0159, LSException -> 0x0169, TryCatch #5 {LSException -> 0x0169, RuntimeException -> 0x0159, Exception -> 0x0135, blocks: (B:27:0x0082, B:30:0x0094, B:33:0x00a9, B:35:0x00af, B:37:0x00b7, B:38:0x00e2, B:40:0x00eb, B:42:0x00f1, B:44:0x00f9, B:45:0x00ff, B:47:0x0105, B:48:0x010b, B:50:0x0112, B:52:0x011a, B:54:0x0121, B:56:0x0128, B:60:0x0131, B:61:0x00c5, B:63:0x00d6, B:64:0x00de), top: B:26:0x0082 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f1 A[Catch: Exception -> 0x0135, RuntimeException -> 0x0159, LSException -> 0x0169, TryCatch #5 {LSException -> 0x0169, RuntimeException -> 0x0159, Exception -> 0x0135, blocks: (B:27:0x0082, B:30:0x0094, B:33:0x00a9, B:35:0x00af, B:37:0x00b7, B:38:0x00e2, B:40:0x00eb, B:42:0x00f1, B:44:0x00f9, B:45:0x00ff, B:47:0x0105, B:48:0x010b, B:50:0x0112, B:52:0x011a, B:54:0x0121, B:56:0x0128, B:60:0x0131, B:61:0x00c5, B:63:0x00d6, B:64:0x00de), top: B:26:0x0082 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00d6 A[Catch: Exception -> 0x0135, RuntimeException -> 0x0159, LSException -> 0x0169, TryCatch #5 {LSException -> 0x0169, RuntimeException -> 0x0159, Exception -> 0x0135, blocks: (B:27:0x0082, B:30:0x0094, B:33:0x00a9, B:35:0x00af, B:37:0x00b7, B:38:0x00e2, B:40:0x00eb, B:42:0x00f1, B:44:0x00f9, B:45:0x00ff, B:47:0x0105, B:48:0x010b, B:50:0x0112, B:52:0x011a, B:54:0x0121, B:56:0x0128, B:60:0x0131, B:61:0x00c5, B:63:0x00d6, B:64:0x00de), top: B:26:0x0082 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0067 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // org.w3c.dom.ls.LSSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean writeToURI(org.w3c.dom.Node r10, java.lang.String r11) throws org.w3c.dom.ls.LSException {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.serialize.DOMSerializerImpl.writeToURI(org.w3c.dom.Node, java.lang.String):boolean");
    }
}
