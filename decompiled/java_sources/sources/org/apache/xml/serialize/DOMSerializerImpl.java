package org.apache.xml.serialize;

import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import java.io.IOException;
import java.io.OutputStream;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.ArrayList;
import org.apache.xerces.dom.CoreDocumentImpl;
import org.apache.xerces.dom.DOMErrorImpl;
import org.apache.xerces.dom.DOMLocatorImpl;
import org.apache.xerces.dom.DOMMessageFormatter;
import org.apache.xerces.dom.DOMNormalizer;
import org.apache.xerces.dom.DOMStringListImpl;
import org.apache.xerces.impl.XMLEntityManager;
import org.apache.xerces.util.DOMUtil;
import org.apache.xerces.util.NamespaceSupport;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XML11Char;
import org.apache.xerces.util.XMLChar;
import org.w3c.dom.Attr;
import org.w3c.dom.Comment;
import org.w3c.dom.DOMConfiguration;
import org.w3c.dom.DOMErrorHandler;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMStringList;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentFragment;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.ProcessingInstruction;
import org.w3c.dom.ls.LSException;
import org.w3c.dom.ls.LSOutput;
import org.w3c.dom.ls.LSSerializer;
import org.w3c.dom.ls.LSSerializerFilter;

/* loaded from: classes13.dex */
public class DOMSerializerImpl implements LSSerializer, DOMConfiguration {
    protected static final short CDATA = 8;
    protected static final short COMMENTS = 32;
    protected static final short DISCARDDEFAULT = 64;
    protected static final short DOM_ELEMENT_CONTENT_WHITESPACE = 1024;
    protected static final short ENTITIES = 4;
    protected static final short INFOSET = 128;
    protected static final short NAMESPACES = 1;
    protected static final short NSDECL = 512;
    protected static final short PRETTY_PRINT = 2048;
    protected static final short SPLITCDATA = 16;
    protected static final short WELLFORMED = 2;
    protected static final short XMLDECL = 256;

    /* renamed from: e */
    public XMLSerializer f113626e;

    /* renamed from: f */
    public XML11Serializer f113627f;
    protected short features;

    /* renamed from: g */
    public DOMStringList f113628g;

    /* renamed from: h */
    public DOMErrorHandler f113629h = null;

    /* renamed from: i */
    public final DOMErrorImpl f113630i = new DOMErrorImpl();

    /* renamed from: j */
    public final DOMLocatorImpl f113631j = new DOMLocatorImpl();

    /* renamed from: org.apache.xml.serialize.DOMSerializerImpl$a */
    /* loaded from: classes13.dex */
    public static class C20092a {

        /* renamed from: a */
        public static java.lang.reflect.Method f113632a;

        /* renamed from: b */
        public static java.lang.reflect.Method f113633b;

        /* renamed from: c */
        public static java.lang.reflect.Method f113634c;

        /* renamed from: d */
        public static boolean f113635d;

        /* renamed from: e */
        public static /* synthetic */ Class f113636e;

        static {
            try {
                Class cls = f113636e;
                if (cls == null) {
                    cls = class$("org.w3c.dom.Document");
                    f113636e = cls;
                }
                f113632a = cls.getMethod("getXmlVersion", new Class[0]);
                Class cls2 = f113636e;
                if (cls2 == null) {
                    cls2 = class$("org.w3c.dom.Document");
                    f113636e = cls2;
                }
                f113633b = cls2.getMethod("getInputEncoding", new Class[0]);
                Class cls3 = f113636e;
                if (cls3 == null) {
                    cls3 = class$("org.w3c.dom.Document");
                    f113636e = cls3;
                }
                f113634c = cls3.getMethod("getXmlEncoding", new Class[0]);
                f113635d = true;
            } catch (Exception unused) {
                f113632a = null;
                f113633b = null;
                f113634c = null;
                f113635d = false;
            }
        }

        public static /* synthetic */ Class class$(String str) {
            try {
                return Class.forName(str);
            } catch (ClassNotFoundException e) {
                throw new NoClassDefFoundError(e.getMessage());
            }
        }
    }

    public DOMSerializerImpl() {
        this.features = (short) 0;
        this.features = (short) (((short) (((short) (((short) (((short) (((short) (((short) (((short) (((short) (((short) (this.features | 1)) | 4)) | 32)) | 8)) | 16)) | 2)) | 512)) | 1024)) | 64)) | 256);
        XMLSerializer xMLSerializer = new XMLSerializer();
        this.f113626e = xMLSerializer;
        m70663e(xMLSerializer);
    }

    /* renamed from: a */
    public final String m70659a(Node node) {
        Document ownerDocument = node.getNodeType() == 9 ? (Document) node : node.getOwnerDocument();
        if (ownerDocument != null && C20092a.f113635d) {
            try {
                return (String) C20092a.f113633b.invoke(ownerDocument, null);
            } catch (ThreadDeath e) {
                throw e;
            } catch (VirtualMachineError e2) {
                throw e2;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    /* renamed from: b */
    public final String m70660b(Node node) {
        Document ownerDocument = node.getNodeType() == 9 ? (Document) node : node.getOwnerDocument();
        if (ownerDocument != null && C20092a.f113635d) {
            try {
                return (String) C20092a.f113634c.invoke(ownerDocument, null);
            } catch (ThreadDeath e) {
                throw e;
            } catch (VirtualMachineError e2) {
                throw e2;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    /* renamed from: c */
    public final String m70661c(Node node) {
        Document ownerDocument = node.getNodeType() == 9 ? (Document) node : node.getOwnerDocument();
        if (ownerDocument != null && C20092a.f113635d) {
            try {
                return (String) C20092a.f113632a.invoke(ownerDocument, null);
            } catch (ThreadDeath e) {
                throw e;
            } catch (VirtualMachineError e2) {
                throw e2;
            } catch (Throwable unused) {
            }
        }
        return null;
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
        if (str.equalsIgnoreCase("namespaces") || str.equalsIgnoreCase("split-cdata-sections") || str.equalsIgnoreCase("discard-default-content") || str.equalsIgnoreCase("xml-declaration") || str.equalsIgnoreCase("well-formed") || str.equalsIgnoreCase("infoset") || str.equalsIgnoreCase("entities") || str.equalsIgnoreCase("cdata-sections") || str.equalsIgnoreCase("comments") || str.equalsIgnoreCase("format-pretty-print") || str.equalsIgnoreCase("namespace-declarations")) {
            return true;
        }
        if (str.equalsIgnoreCase("canonical-form") || str.equalsIgnoreCase("validate-if-schema") || str.equalsIgnoreCase("validate") || str.equalsIgnoreCase("check-character-normalization") || str.equalsIgnoreCase("datatype-normalization") || str.equalsIgnoreCase("normalize-characters")) {
            return true ^ booleanValue;
        }
        if (str.equalsIgnoreCase("element-content-whitespace") || str.equalsIgnoreCase("ignore-unknown-character-denormalizations")) {
            return booleanValue;
        }
        return false;
    }

    /* renamed from: d */
    public final void m70662d(XMLSerializer xMLSerializer, XMLSerializer xMLSerializer2) {
        xMLSerializer2.fDOMErrorHandler = this.f113629h;
        xMLSerializer2._format.setEncoding(xMLSerializer._format.getEncoding());
        xMLSerializer2._format.setLineSeparator(xMLSerializer._format.getLineSeparator());
        xMLSerializer2.fDOMFilter = xMLSerializer.fDOMFilter;
    }

    /* renamed from: e */
    public final void m70663e(XMLSerializer xMLSerializer) {
        xMLSerializer.fNSBinder = new NamespaceSupport();
        xMLSerializer.fLocalNSBinder = new NamespaceSupport();
        xMLSerializer.fSymbolTable = new SymbolTable();
    }

    /* renamed from: f */
    public final void m70664f(XMLSerializer xMLSerializer, Node node) {
        xMLSerializer.reset();
        short s = this.features;
        xMLSerializer.features = s;
        xMLSerializer.fDOMErrorHandler = this.f113629h;
        boolean z = true;
        xMLSerializer.fNamespaces = (s & 1) != 0;
        xMLSerializer.fNamespacePrefixes = (s & 512) != 0;
        xMLSerializer._format.setIndenting((s & 2048) != 0);
        xMLSerializer._format.setOmitComments((this.features & 32) == 0);
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
                m70665g(node, z, false);
                return;
            }
            Node node2 = node;
            while (node2 != null) {
                m70665g(node2, z, false);
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

    /* renamed from: g */
    public final void m70665g(Node node, boolean z, boolean z2) {
        short nodeType = node.getNodeType();
        DOMLocatorImpl dOMLocatorImpl = this.f113631j;
        dOMLocatorImpl.fRelatedNode = node;
        if (nodeType == 1) {
            if (z) {
                if (!((this.features & 1) != 0 ? CoreDocumentImpl.isValidQName(node.getPrefix(), node.getLocalName(), z2) : CoreDocumentImpl.isXMLName(node.getNodeName(), z2)) && this.f113629h != null) {
                    DOMNormalizer.reportDOMError(this.f113629h, this.f113630i, this.f113631j, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "wf-invalid-character-in-node-name", new Object[]{"Element", node.getNodeName()}), (short) 3, "wf-invalid-character-in-node-name");
                }
            }
            NamedNodeMap attributes = node.hasAttributes() ? node.getAttributes() : null;
            if (attributes != null) {
                for (int i = 0; i < attributes.getLength(); i++) {
                    Attr attr = (Attr) attributes.item(i);
                    DOMLocatorImpl dOMLocatorImpl2 = this.f113631j;
                    dOMLocatorImpl2.fRelatedNode = attr;
                    DOMNormalizer.isAttrValueWF(this.f113629h, this.f113630i, dOMLocatorImpl2, attributes, attr, attr.getValue(), z2);
                    if (z && !CoreDocumentImpl.isXMLName(attr.getNodeName(), z2)) {
                        DOMNormalizer.reportDOMError(this.f113629h, this.f113630i, this.f113631j, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "wf-invalid-character-in-node-name", new Object[]{"Attr", node.getNodeName()}), (short) 3, "wf-invalid-character-in-node-name");
                    }
                }
            }
        } else if (nodeType == 3 || nodeType == 4) {
            DOMNormalizer.isXMLCharWF(this.f113629h, this.f113630i, dOMLocatorImpl, node.getNodeValue(), z2);
        } else if (nodeType != 5) {
            if (nodeType == 7) {
                ProcessingInstruction processingInstruction = (ProcessingInstruction) node;
                String target = processingInstruction.getTarget();
                if (z) {
                    if (!(z2 ? XML11Char.isXML11ValidName(target) : XMLChar.isValidName(target))) {
                        DOMNormalizer.reportDOMError(this.f113629h, this.f113630i, this.f113631j, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "wf-invalid-character-in-node-name", new Object[]{"Element", node.getNodeName()}), (short) 3, "wf-invalid-character-in-node-name");
                    }
                }
                DOMNormalizer.isXMLCharWF(this.f113629h, this.f113630i, this.f113631j, processingInstruction.getData(), z2);
            } else if (nodeType == 8 && (this.features & 32) != 0) {
                DOMNormalizer.isCommentWF(this.f113629h, this.f113630i, dOMLocatorImpl, ((Comment) node).getData(), z2);
            }
        } else if (z && (this.features & 4) != 0) {
            CoreDocumentImpl.isXMLName(node.getNodeName(), z2);
        }
        this.f113631j.fRelatedNode = null;
    }

    @Override // org.w3c.dom.ls.LSSerializer
    public DOMConfiguration getDomConfig() {
        return this;
    }

    @Override // org.w3c.dom.ls.LSSerializer
    public LSSerializerFilter getFilter() {
        return this.f113626e.fDOMFilter;
    }

    @Override // org.w3c.dom.ls.LSSerializer
    public String getNewLine() {
        return this.f113626e._format.getLineSeparator();
    }

    @Override // org.w3c.dom.DOMConfiguration
    public Object getParameter(String str) throws DOMException {
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
        if (str.equalsIgnoreCase("format-pretty-print")) {
            return (this.features & 2048) != 0 ? Boolean.TRUE : Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("infoset")) {
            short s = this.features;
            return ((s & 4) != 0 || (s & 8) != 0 || (s & 1) == 0 || (s & 512) == 0 || (s & 2) == 0 || (s & 32) == 0) ? Boolean.FALSE : Boolean.TRUE;
        }
        if (str.equalsIgnoreCase("normalize-characters") || str.equalsIgnoreCase("canonical-form") || str.equalsIgnoreCase("validate-if-schema") || str.equalsIgnoreCase("check-character-normalization") || str.equalsIgnoreCase("validate") || str.equalsIgnoreCase("validate-if-schema") || str.equalsIgnoreCase("datatype-normalization")) {
            return Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("error-handler")) {
            return this.f113629h;
        }
        if (str.equalsIgnoreCase("resource-resolver") || str.equalsIgnoreCase("schema-location") || str.equalsIgnoreCase("schema-type")) {
            throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{str}));
        }
        throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_FOUND", new Object[]{str}));
    }

    @Override // org.w3c.dom.DOMConfiguration
    public DOMStringList getParameterNames() {
        if (this.f113628g == null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add("namespaces");
            arrayList.add("split-cdata-sections");
            arrayList.add("discard-default-content");
            arrayList.add("xml-declaration");
            arrayList.add("canonical-form");
            arrayList.add("validate-if-schema");
            arrayList.add("validate");
            arrayList.add("check-character-normalization");
            arrayList.add("datatype-normalization");
            arrayList.add("format-pretty-print");
            arrayList.add("normalize-characters");
            arrayList.add("well-formed");
            arrayList.add("infoset");
            arrayList.add("namespace-declarations");
            arrayList.add("element-content-whitespace");
            arrayList.add("entities");
            arrayList.add("cdata-sections");
            arrayList.add("comments");
            arrayList.add("ignore-unknown-character-denormalizations");
            arrayList.add("error-handler");
            this.f113628g = new DOMStringListImpl(arrayList);
        }
        return this.f113628g;
    }

    @Override // org.w3c.dom.ls.LSSerializer
    public void setFilter(LSSerializerFilter lSSerializerFilter) {
        this.f113626e.fDOMFilter = lSSerializerFilter;
    }

    @Override // org.w3c.dom.ls.LSSerializer
    public void setNewLine(String str) {
        this.f113626e._format.setLineSeparator(str);
    }

    @Override // org.w3c.dom.DOMConfiguration
    public void setParameter(String str, Object obj) throws DOMException {
        int i;
        if (!(obj instanceof Boolean)) {
            if (str.equalsIgnoreCase("error-handler")) {
                if (obj != null && !(obj instanceof DOMErrorHandler)) {
                    throw new DOMException((short) 17, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "TYPE_MISMATCH_ERR", new Object[]{str}));
                }
                this.f113629h = (DOMErrorHandler) obj;
                return;
            }
            if (!str.equalsIgnoreCase("resource-resolver") && !str.equalsIgnoreCase("schema-location") && (!str.equalsIgnoreCase("schema-type") || obj == null)) {
                throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_FOUND", new Object[]{str}));
            }
            throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{str}));
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        if (str.equalsIgnoreCase("infoset")) {
            if (!booleanValue) {
                return;
            } else {
                i = ((short) (((short) (((short) (((short) (((short) (this.features & (-5))) & (-9))) | 1)) | 512)) | 2)) | 32;
            }
        } else if (str.equalsIgnoreCase("xml-declaration")) {
            short s = this.features;
            i = booleanValue ? s | 256 : s & (-257);
        } else {
            if (str.equalsIgnoreCase("namespaces")) {
                short s2 = this.features;
                this.features = (short) (booleanValue ? s2 | 1 : s2 & (-2));
                this.f113626e.fNamespaces = booleanValue;
                return;
            }
            if (str.equalsIgnoreCase("split-cdata-sections")) {
                short s3 = this.features;
                i = booleanValue ? s3 | 16 : s3 & (-17);
            } else if (str.equalsIgnoreCase("discard-default-content")) {
                short s4 = this.features;
                i = booleanValue ? s4 | 64 : s4 & (-65);
            } else if (str.equalsIgnoreCase("well-formed")) {
                short s5 = this.features;
                i = booleanValue ? s5 | 2 : s5 & (-3);
            } else if (str.equalsIgnoreCase("entities")) {
                short s6 = this.features;
                i = booleanValue ? s6 | 4 : s6 & (-5);
            } else if (str.equalsIgnoreCase("cdata-sections")) {
                short s7 = this.features;
                i = booleanValue ? s7 | 8 : s7 & (-9);
            } else if (str.equalsIgnoreCase("comments")) {
                short s8 = this.features;
                i = booleanValue ? s8 | 32 : s8 & (-33);
            } else {
                if (!str.equalsIgnoreCase("format-pretty-print")) {
                    if (str.equalsIgnoreCase("canonical-form") || str.equalsIgnoreCase("validate-if-schema") || str.equalsIgnoreCase("validate") || str.equalsIgnoreCase("check-character-normalization") || str.equalsIgnoreCase("datatype-normalization") || str.equalsIgnoreCase("normalize-characters")) {
                        if (booleanValue) {
                            throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{str}));
                        }
                        return;
                    } else if (str.equalsIgnoreCase("namespace-declarations")) {
                        short s9 = this.features;
                        this.features = (short) (booleanValue ? s9 | 512 : s9 & (-513));
                        this.f113626e.fNamespacePrefixes = booleanValue;
                        return;
                    } else {
                        if (!str.equalsIgnoreCase("element-content-whitespace") && !str.equalsIgnoreCase("ignore-unknown-character-denormalizations")) {
                            throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_FOUND", new Object[]{str}));
                        }
                        if (!booleanValue) {
                            throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{str}));
                        }
                        return;
                    }
                }
                short s10 = this.features;
                i = booleanValue ? s10 | 2048 : s10 & (-2049);
            }
        }
        this.features = (short) i;
    }

    @Override // org.w3c.dom.ls.LSSerializer
    public boolean write(Node node, LSOutput lSOutput) throws LSException {
        XMLSerializer xMLSerializer;
        if (node == null) {
            return false;
        }
        String m70661c = m70661c(node);
        if (m70661c == null || !m70661c.equals(SerializerConstants.XMLVERSION11)) {
            xMLSerializer = this.f113626e;
        } else {
            if (this.f113627f == null) {
                XML11Serializer xML11Serializer = new XML11Serializer();
                this.f113627f = xML11Serializer;
                m70663e(xML11Serializer);
            }
            m70662d(this.f113626e, this.f113627f);
            xMLSerializer = this.f113627f;
        }
        String encoding = lSOutput.getEncoding();
        if (encoding == null && (encoding = m70659a(node)) == null && (encoding = m70660b(node)) == null) {
            encoding = "UTF-8";
        }
        try {
            try {
                try {
                    m70664f(xMLSerializer, node);
                    xMLSerializer._format.setEncoding(encoding);
                    OutputStream byteStream = lSOutput.getByteStream();
                    Writer characterStream = lSOutput.getCharacterStream();
                    String systemId = lSOutput.getSystemId();
                    if (characterStream == null) {
                        if (byteStream == null) {
                            if (systemId == null) {
                                String formatMessage = DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "no-output-specified", null);
                                if (xMLSerializer.fDOMErrorHandler != null) {
                                    DOMErrorImpl dOMErrorImpl = new DOMErrorImpl();
                                    dOMErrorImpl.fType = "no-output-specified";
                                    dOMErrorImpl.fMessage = formatMessage;
                                    dOMErrorImpl.fSeverity = (short) 3;
                                    xMLSerializer.fDOMErrorHandler.handleError(dOMErrorImpl);
                                }
                                throw new LSException((short) 82, formatMessage);
                            }
                            byteStream = XMLEntityManager.createOutputStream(systemId);
                        }
                        xMLSerializer.setOutputByteStream(byteStream);
                    } else {
                        xMLSerializer.setOutputCharStream(characterStream);
                    }
                    if (node.getNodeType() == 9) {
                        xMLSerializer.serialize((Document) node);
                    } else if (node.getNodeType() == 11) {
                        xMLSerializer.serialize((DocumentFragment) node);
                    } else {
                        if (node.getNodeType() != 1) {
                            xMLSerializer.m70657a();
                            return false;
                        }
                        xMLSerializer.serialize((Element) node);
                    }
                    xMLSerializer.m70657a();
                    return true;
                } catch (UnsupportedEncodingException e) {
                    if (xMLSerializer.fDOMErrorHandler != null) {
                        DOMErrorImpl dOMErrorImpl2 = new DOMErrorImpl();
                        dOMErrorImpl2.fException = e;
                        dOMErrorImpl2.fType = "unsupported-encoding";
                        dOMErrorImpl2.fMessage = e.getMessage();
                        dOMErrorImpl2.fSeverity = (short) 3;
                        xMLSerializer.fDOMErrorHandler.handleError(dOMErrorImpl2);
                    }
                    throw new LSException((short) 82, DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "unsupported-encoding", null));
                } catch (Exception e2) {
                    if (xMLSerializer.fDOMErrorHandler != null) {
                        DOMErrorImpl dOMErrorImpl3 = new DOMErrorImpl();
                        dOMErrorImpl3.fException = e2;
                        dOMErrorImpl3.fMessage = e2.getMessage();
                        dOMErrorImpl3.fSeverity = (short) 2;
                        xMLSerializer.fDOMErrorHandler.handleError(dOMErrorImpl3);
                    }
                    throw ((LSException) DOMUtil.createLSException((short) 82, e2).fillInStackTrace());
                }
            } catch (LSException e3) {
                throw e3;
            } catch (RuntimeException e4) {
                if (e4 != DOMNormalizer.abort) {
                    throw ((LSException) DOMUtil.createLSException((short) 82, e4).fillInStackTrace());
                }
                xMLSerializer.m70657a();
                return false;
            }
        } catch (Throwable th) {
            xMLSerializer.m70657a();
            throw th;
        }
    }

    @Override // org.w3c.dom.ls.LSSerializer
    public String writeToString(Node node) throws DOMException, LSException {
        XMLSerializer xMLSerializer;
        String m70661c = m70661c(node);
        if (m70661c == null || !m70661c.equals(SerializerConstants.XMLVERSION11)) {
            xMLSerializer = this.f113626e;
        } else {
            if (this.f113627f == null) {
                XML11Serializer xML11Serializer = new XML11Serializer();
                this.f113627f = xML11Serializer;
                m70663e(xML11Serializer);
            }
            m70662d(this.f113626e, this.f113627f);
            xMLSerializer = this.f113627f;
        }
        StringWriter stringWriter = new StringWriter();
        try {
            try {
                try {
                    try {
                        m70664f(xMLSerializer, node);
                        xMLSerializer._format.setEncoding("UTF-16");
                        xMLSerializer.setOutputCharStream(stringWriter);
                        if (node.getNodeType() == 9) {
                            xMLSerializer.serialize((Document) node);
                        } else if (node.getNodeType() == 11) {
                            xMLSerializer.serialize((DocumentFragment) node);
                        } else {
                            if (node.getNodeType() != 1) {
                                String formatMessage = DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "unable-to-serialize-node", null);
                                if (xMLSerializer.fDOMErrorHandler != null) {
                                    DOMErrorImpl dOMErrorImpl = new DOMErrorImpl();
                                    dOMErrorImpl.fType = "unable-to-serialize-node";
                                    dOMErrorImpl.fMessage = formatMessage;
                                    dOMErrorImpl.fSeverity = (short) 3;
                                    xMLSerializer.fDOMErrorHandler.handleError(dOMErrorImpl);
                                }
                                throw new LSException((short) 82, formatMessage);
                            }
                            xMLSerializer.serialize((Element) node);
                        }
                        xMLSerializer.m70657a();
                        return stringWriter.toString();
                    } catch (LSException e) {
                        throw e;
                    }
                } catch (IOException e2) {
                    throw new DOMException((short) 2, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "STRING_TOO_LONG", new Object[]{e2.getMessage()}));
                }
            } catch (RuntimeException e3) {
                if (e3 != DOMNormalizer.abort) {
                    throw ((LSException) DOMUtil.createLSException((short) 82, e3).fillInStackTrace());
                }
                xMLSerializer.m70657a();
                return null;
            }
        } catch (Throwable th) {
            xMLSerializer.m70657a();
            throw th;
        }
    }

    @Override // org.w3c.dom.ls.LSSerializer
    public boolean writeToURI(Node node, String str) throws LSException {
        XMLSerializer xMLSerializer;
        if (node == null) {
            return false;
        }
        String m70661c = m70661c(node);
        if (m70661c == null || !m70661c.equals(SerializerConstants.XMLVERSION11)) {
            xMLSerializer = this.f113626e;
        } else {
            if (this.f113627f == null) {
                XML11Serializer xML11Serializer = new XML11Serializer();
                this.f113627f = xML11Serializer;
                m70663e(xML11Serializer);
            }
            m70662d(this.f113626e, this.f113627f);
            xMLSerializer = this.f113627f;
        }
        String m70659a = m70659a(node);
        if (m70659a == null && (m70659a = m70660b(node)) == null) {
            m70659a = "UTF-8";
        }
        try {
            try {
                try {
                    m70664f(xMLSerializer, node);
                    xMLSerializer._format.setEncoding(m70659a);
                    xMLSerializer.setOutputByteStream(XMLEntityManager.createOutputStream(str));
                    if (node.getNodeType() == 9) {
                        xMLSerializer.serialize((Document) node);
                    } else if (node.getNodeType() == 11) {
                        xMLSerializer.serialize((DocumentFragment) node);
                    } else {
                        if (node.getNodeType() != 1) {
                            xMLSerializer.m70657a();
                            return false;
                        }
                        xMLSerializer.serialize((Element) node);
                    }
                    xMLSerializer.m70657a();
                    return true;
                } catch (LSException e) {
                    throw e;
                }
            } catch (RuntimeException e2) {
                if (e2 != DOMNormalizer.abort) {
                    throw ((LSException) DOMUtil.createLSException((short) 82, e2).fillInStackTrace());
                }
                xMLSerializer.m70657a();
                return false;
            } catch (Exception e3) {
                if (xMLSerializer.fDOMErrorHandler != null) {
                    DOMErrorImpl dOMErrorImpl = new DOMErrorImpl();
                    dOMErrorImpl.fException = e3;
                    dOMErrorImpl.fMessage = e3.getMessage();
                    dOMErrorImpl.fSeverity = (short) 2;
                    xMLSerializer.fDOMErrorHandler.handleError(dOMErrorImpl);
                }
                throw ((LSException) DOMUtil.createLSException((short) 82, e3).fillInStackTrace());
            }
        } catch (Throwable th) {
            xMLSerializer.m70657a();
            throw th;
        }
    }
}
