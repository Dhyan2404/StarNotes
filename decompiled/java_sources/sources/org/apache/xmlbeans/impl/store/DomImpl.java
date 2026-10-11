package org.apache.xmlbeans.impl.store;

import com.onyx.android.sdk.base.scheduler.SchedulerManager;
import com.sun.org.apache.xpath.internal.compiler.PsuedoNames;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import javax.xml.stream.XMLStreamReader;
import javax.xml.transform.Source;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlRuntimeException;
import org.apache.xmlbeans.impl.common.XMLChar;
import org.apache.xmlbeans.impl.soap.Detail;
import org.apache.xmlbeans.impl.soap.DetailEntry;
import org.apache.xmlbeans.impl.soap.MimeHeader;
import org.apache.xmlbeans.impl.soap.Name;
import org.apache.xmlbeans.impl.soap.SOAPBody;
import org.apache.xmlbeans.impl.soap.SOAPBodyElement;
import org.apache.xmlbeans.impl.soap.SOAPElement;
import org.apache.xmlbeans.impl.soap.SOAPEnvelope;
import org.apache.xmlbeans.impl.soap.SOAPException;
import org.apache.xmlbeans.impl.soap.SOAPFault;
import org.apache.xmlbeans.impl.soap.SOAPHeader;
import org.apache.xmlbeans.impl.soap.SOAPHeaderElement;
import org.apache.xmlbeans.impl.soap.SOAPPart;
import org.apache.xmlbeans.impl.store.DomImpl;
import org.apache.xmlbeans.impl.store.Locale;
import org.scribe.oauth.OAuth20ServiceImpl;
import org.w3c.dom.Attr;
import org.w3c.dom.CDATASection;
import org.w3c.dom.Comment;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentFragment;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.EntityReference;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.ProcessingInstruction;
import org.w3c.dom.Text;
import org.w3c.dom.UserDataHandler;

/* loaded from: classes13.dex */
public final class DomImpl {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final int ATTR = 2;
    static final int CDATA = 4;
    static final int COMMENT = 8;
    static final int DOCFRAG = 11;
    static final int DOCTYPE = 10;
    static final int DOCUMENT = 9;
    static final int ELEMENT = 1;
    static final int ENTITY = 6;
    static final int ENTITYREF = 5;
    static final int NOTATION = 12;
    static final int PROCINST = 7;
    static final int TEXT = 3;
    public static final NodeList _emptyNodeList = new EmptyNodeList();

    /* loaded from: classes13.dex */
    public interface Dom {
        void dump();

        void dump(PrintStream printStream);

        void dump(PrintStream printStream, Object obj);

        QName getQName();

        Locale locale();

        boolean nodeCanHavePrefixUri();

        int nodeType();

        Cur tempCur();
    }

    /* loaded from: classes13.dex */
    public static class DomLevel3NotImplemented extends RuntimeException {
        public DomLevel3NotImplemented() {
            super("DOM Level 3 Not implemented");
        }
    }

    /* loaded from: classes13.dex */
    public static class ElementsByTagNameNSNodeList extends ElementsNodeList {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final String _local;
        private final String _uri;

        public ElementsByTagNameNSNodeList(Dom dom, String str, String str2) {
            super(dom);
            this._uri = str == null ? "" : str;
            this._local = str2;
        }

        @Override // org.apache.xmlbeans.impl.store.DomImpl.ElementsNodeList
        public boolean match(Dom dom) {
            if (this._uri.equals("*") || this._uri.equals(DomImpl._node_getNamespaceURI(dom))) {
                return this._local.equals("*") || this._local.equals(DomImpl._node_getLocalName(dom));
            }
            return false;
        }
    }

    /* loaded from: classes13.dex */
    public static class ElementsByTagNameNodeList extends ElementsNodeList {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final String _name;

        public ElementsByTagNameNodeList(Dom dom, String str) {
            super(dom);
            this._name = str;
        }

        @Override // org.apache.xmlbeans.impl.store.DomImpl.ElementsNodeList
        public boolean match(Dom dom) {
            return this._name.equals("*") || this._name.equals(DomImpl._node_getNodeName(dom));
        }
    }

    /* loaded from: classes13.dex */
    public static abstract class ElementsNodeList implements NodeList {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private ArrayList<Dom> _elements;
        private final Locale _locale;
        private final Dom _root;
        private long _version = 0;

        public ElementsNodeList(Dom dom) {
            this._root = dom;
            this._locale = dom.locale();
        }

        private void addElements(Dom dom) {
            Node firstChild = DomImpl.firstChild(dom);
            while (firstChild != null) {
                Dom dom2 = (Dom) firstChild;
                if (dom2.nodeType() == 1) {
                    if (match(dom2)) {
                        this._elements.add(dom2);
                    }
                    addElements(dom2);
                }
                firstChild = DomImpl.nextSibling(dom2);
            }
        }

        private void ensureElements() {
            if (this._version == this._locale.version()) {
                return;
            }
            this._version = this._locale.version();
            this._elements = new ArrayList<>();
            DomImpl.syncWrapHelper(this._locale, true, new Supplier() { // from class: org.apache.xmlbeans.impl.store.y
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$ensureElements$0;
                    lambda$ensureElements$0 = DomImpl.ElementsNodeList.this.lambda$ensureElements$0();
                    return lambda$ensureElements$0;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$ensureElements$0() {
            addElements(this._root);
            return null;
        }

        @Override // org.w3c.dom.NodeList
        public int getLength() {
            ensureElements();
            return this._elements.size();
        }

        @Override // org.w3c.dom.NodeList
        public Node item(int i) {
            ensureElements();
            if (i < 0 || i >= this._elements.size()) {
                return null;
            }
            return (Node) this._elements.get(i);
        }

        public abstract boolean match(Dom dom);
    }

    /* loaded from: classes13.dex */
    public static final class EmptyNodeList implements NodeList {
        private EmptyNodeList() {
        }

        @Override // org.w3c.dom.NodeList
        public int getLength() {
            return 0;
        }

        @Override // org.w3c.dom.NodeList
        public Node item(int i) {
            return null;
        }
    }

    /* loaded from: classes13.dex */
    public static class HierarchyRequestErr extends DOMException {
        public HierarchyRequestErr(String str) {
            super((short) 3, str);
        }
    }

    /* loaded from: classes13.dex */
    public static class IndexSizeError extends DOMException {
        public IndexSizeError() {
            this("Index Size Error");
        }

        public IndexSizeError(String str) {
            super((short) 1, str);
        }
    }

    /* loaded from: classes13.dex */
    public static class InuseAttributeError extends DOMException {
        public InuseAttributeError() {
            this("Attribute currently in use error");
        }

        public InuseAttributeError(String str) {
            super((short) 10, str);
        }
    }

    /* loaded from: classes13.dex */
    public static class InvalidCharacterError extends DOMException {
        public InvalidCharacterError() {
            this("The name contains an invalid character");
        }

        public InvalidCharacterError(String str) {
            super((short) 5, str);
        }
    }

    /* loaded from: classes13.dex */
    public static class NamespaceErr extends DOMException {
        public NamespaceErr(String str) {
            super((short) 14, str);
        }
    }

    /* loaded from: classes13.dex */
    public static class NoModificationAllowedErr extends DOMException {
        public NoModificationAllowedErr(String str) {
            super((short) 7, str);
        }
    }

    /* loaded from: classes13.dex */
    public static class NotFoundErr extends DOMException {
        public NotFoundErr(String str) {
            super((short) 8, str);
        }
    }

    /* loaded from: classes13.dex */
    public static class NotSupportedError extends DOMException {
        public NotSupportedError(String str) {
            super((short) 9, str);
        }
    }

    /* loaded from: classes13.dex */
    public static class SaajData {
        Object _obj;

        private SaajData() {
        }
    }

    /* loaded from: classes13.dex */
    public interface WrapSoapEx<T> {
        T get() throws SOAPException;
    }

    /* loaded from: classes13.dex */
    public static class WrongDocumentErr extends DOMException {
        public WrongDocumentErr(String str) {
            super((short) 4, str);
        }
    }

    public static Element _attr_getOwnerElement(Dom dom) {
        return (Element) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.lef
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DomImpl.attr_getOwnerElement((DomImpl.Dom) obj);
            }
        });
    }

    public static boolean _attr_getSpecified(Dom dom) {
        return true;
    }

    public static int _attributes_getLength(Dom dom) {
        return ((Integer) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.xef
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(DomImpl.attributes_getLength((DomImpl.Dom) obj));
            }
        })).intValue();
    }

    public static Node _attributes_getNamedItem(final Dom dom, final String str) {
        return (Node) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.wcf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Node attributes_getNamedItem;
                attributes_getNamedItem = DomImpl.attributes_getNamedItem(DomImpl.Dom.this, str);
                return attributes_getNamedItem;
            }
        });
    }

    public static Node _attributes_getNamedItemNS(Dom dom, final String str, final String str2) {
        return (Node) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.rcf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Node lambda$_attributes_getNamedItemNS$23;
                lambda$_attributes_getNamedItemNS$23 = DomImpl.lambda$_attributes_getNamedItemNS$23(str, str2, (DomImpl.Dom) obj);
                return lambda$_attributes_getNamedItemNS$23;
            }
        });
    }

    public static Node _attributes_item(Dom dom, final int i) {
        return (Node) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.fff
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Node lambda$_attributes_item$27;
                lambda$_attributes_item$27 = DomImpl.lambda$_attributes_item$27(i, (DomImpl.Dom) obj);
                return lambda$_attributes_item$27;
            }
        });
    }

    public static Node _attributes_removeNamedItem(Dom dom, final String str) {
        return (Node) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.xbf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Node lambda$_attributes_removeNamedItem$24;
                lambda$_attributes_removeNamedItem$24 = DomImpl.lambda$_attributes_removeNamedItem$24(str, (DomImpl.Dom) obj);
                return lambda$_attributes_removeNamedItem$24;
            }
        });
    }

    public static Node _attributes_removeNamedItemNS(Dom dom, final String str, final String str2) {
        return (Node) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.rbf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Node lambda$_attributes_removeNamedItemNS$25;
                lambda$_attributes_removeNamedItemNS$25 = DomImpl.lambda$_attributes_removeNamedItemNS$25(str, str2, (DomImpl.Dom) obj);
                return lambda$_attributes_removeNamedItemNS$25;
            }
        });
    }

    public static Node _attributes_setNamedItem(Dom dom, Node node) {
        Locale locale = dom.locale();
        if (node == null) {
            throw new IllegalArgumentException("Attr to set is null");
        }
        if (node instanceof Dom) {
            final Dom dom2 = (Dom) node;
            if (dom2.locale() == locale) {
                return (Node) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.icf
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Node lambda$_attributes_setNamedItem$21;
                        lambda$_attributes_setNamedItem$21 = DomImpl.lambda$_attributes_setNamedItem$21(DomImpl.Dom.this, (DomImpl.Dom) obj);
                        return lambda$_attributes_setNamedItem$21;
                    }
                });
            }
        }
        throw new WrongDocumentErr("Attr to set is from another document");
    }

    public static Node _attributes_setNamedItemNS(Dom dom, Node node) {
        Locale locale = dom.locale();
        if (node == null) {
            throw new IllegalArgumentException("Attr to set is null");
        }
        if (node instanceof Dom) {
            final Dom dom2 = (Dom) node;
            if (dom2.locale() == locale) {
                return (Node) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.dcf
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Node lambda$_attributes_setNamedItemNS$26;
                        lambda$_attributes_setNamedItemNS$26 = DomImpl.lambda$_attributes_setNamedItemNS$26(DomImpl.Dom.this, (DomImpl.Dom) obj);
                        return lambda$_attributes_setNamedItemNS$26;
                    }
                });
            }
        }
        throw new WrongDocumentErr("Attr to set is from another document");
    }

    public static void _characterData_appendData(Dom dom, String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        _node_setNodeValue(dom, _node_getNodeValue(dom) + str);
    }

    public static void _characterData_deleteData(Dom dom, int i, int i2) {
        String _characterData_getData = _characterData_getData(dom);
        if (i < 0 || i > _characterData_getData.length() || i2 < 0) {
            throw new IndexSizeError();
        }
        if (i + i2 > _characterData_getData.length()) {
            i2 = _characterData_getData.length() - i;
        }
        if (i2 > 0) {
            _characterData_setData(dom, _characterData_getData.substring(0, i) + _characterData_getData.substring(i + i2));
        }
    }

    public static String _characterData_getData(Dom dom) {
        return _node_getNodeValue(dom);
    }

    public static int _characterData_getLength(Dom dom) {
        return _characterData_getData(dom).length();
    }

    public static void _characterData_insertData(Dom dom, int i, String str) {
        String _characterData_getData = _characterData_getData(dom);
        if (i < 0 || i > _characterData_getData.length()) {
            throw new IndexSizeError();
        }
        if (str == null || str.length() <= 0) {
            return;
        }
        _characterData_setData(dom, _characterData_getData.substring(0, i) + str + _characterData_getData.substring(i));
    }

    public static void _characterData_replaceData(Dom dom, int i, int i2, String str) {
        String _characterData_getData = _characterData_getData(dom);
        if (i < 0 || i > _characterData_getData.length() || i2 < 0) {
            throw new IndexSizeError();
        }
        if (i + i2 > _characterData_getData.length()) {
            i2 = _characterData_getData.length() - i;
        }
        if (i2 > 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(_characterData_getData.substring(0, i));
            if (str == null) {
                str = "";
            }
            sb.append(str);
            sb.append(_characterData_getData.substring(i + i2));
            _characterData_setData(dom, sb.toString());
        }
    }

    public static void _characterData_setData(Dom dom, String str) {
        _node_setNodeValue(dom, str);
    }

    public static String _characterData_substringData(Dom dom, int i, int i2) {
        String _characterData_getData = _characterData_getData(dom);
        if (i < 0 || i > _characterData_getData.length() || i2 < 0) {
            throw new IndexSizeError();
        }
        if (i + i2 > _characterData_getData.length()) {
            i2 = _characterData_getData.length() - i;
        }
        return _characterData_getData.substring(i, i2 + i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int _childNodes_getLength(Dom dom) {
        int domZeroOneChildren;
        Xobj xobj = (Xobj) dom;
        return (xobj.isVacant() || (domZeroOneChildren = xobj.getDomZeroOneChildren()) >= 2) ? ((Integer) syncWrapNoEnter(dom, new Function() { // from class: com.sunia.HTREnginev2.mcf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(DomImpl.childNodes_getLength((DomImpl.Dom) obj));
            }
        })).intValue() : domZeroOneChildren;
    }

    public static Node _childNodes_item(Dom dom, final int i) {
        return i == 0 ? _node_getFirstChild(dom) : (Node) syncWrapNoEnter(dom, new Function() { // from class: com.sunia.HTREnginev2.pcf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Node lambda$_childNodes_item$16;
                lambda$_childNodes_item$16 = DomImpl.lambda$_childNodes_item$16(i, (DomImpl.Dom) obj);
                return lambda$_childNodes_item$16;
            }
        });
    }

    public static Attr _document_createAttribute(Dom dom, final String str) {
        return (Attr) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.hdf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Attr lambda$_document_createAttribute$3;
                lambda$_document_createAttribute$3 = DomImpl.lambda$_document_createAttribute$3(str, (DomImpl.Dom) obj);
                return lambda$_document_createAttribute$3;
            }
        });
    }

    public static Attr _document_createAttributeNS(Dom dom, final String str, final String str2) {
        return (Attr) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.edf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Attr lambda$_document_createAttributeNS$4;
                lambda$_document_createAttributeNS$4 = DomImpl.lambda$_document_createAttributeNS$4(str, str2, (DomImpl.Dom) obj);
                return lambda$_document_createAttributeNS$4;
            }
        });
    }

    public static CDATASection _document_createCDATASection(Dom dom, String str) {
        return document_createCDATASection(dom, str);
    }

    public static Comment _document_createComment(Dom dom, final String str) {
        return (Comment) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.ycf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Comment lambda$_document_createComment$5;
                lambda$_document_createComment$5 = DomImpl.lambda$_document_createComment$5(str, (DomImpl.Dom) obj);
                return lambda$_document_createComment$5;
            }
        });
    }

    public static DocumentFragment _document_createDocumentFragment(Dom dom) {
        return (DocumentFragment) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.sdf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DomImpl.document_createDocumentFragment((DomImpl.Dom) obj);
            }
        });
    }

    public static Element _document_createElement(Dom dom, final String str) {
        return (Element) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.vcf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Element lambda$_document_createElement$1;
                lambda$_document_createElement$1 = DomImpl.lambda$_document_createElement$1(str, (DomImpl.Dom) obj);
                return lambda$_document_createElement$1;
            }
        });
    }

    public static Element _document_createElementNS(Dom dom, final String str, final String str2) {
        return (Element) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.yaf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Element lambda$_document_createElementNS$2;
                lambda$_document_createElementNS$2 = DomImpl.lambda$_document_createElementNS$2(str, str2, (DomImpl.Dom) obj);
                return lambda$_document_createElementNS$2;
            }
        });
    }

    public static EntityReference _document_createEntityReference(Dom dom, String str) {
        throw new RuntimeException("Not implemented");
    }

    public static ProcessingInstruction _document_createProcessingInstruction(Dom dom, final String str, final String str2) {
        return (ProcessingInstruction) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.def
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ProcessingInstruction lambda$_document_createProcessingInstruction$6;
                lambda$_document_createProcessingInstruction$6 = DomImpl.lambda$_document_createProcessingInstruction$6(str, str2, (DomImpl.Dom) obj);
                return lambda$_document_createProcessingInstruction$6;
            }
        });
    }

    public static Text _document_createTextNode(Dom dom, String str) {
        return document_createTextNode(dom, str);
    }

    public static DocumentType _document_getDoctype(Dom dom) {
        return (DocumentType) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.jef
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DomImpl.document_getDoctype((DomImpl.Dom) obj);
            }
        });
    }

    public static Element _document_getDocumentElement(Dom dom) {
        return (Element) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.dff
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DomImpl.document_getDocumentElement((DomImpl.Dom) obj);
            }
        });
    }

    public static Element _document_getElementById(Dom dom, String str) {
        throw new RuntimeException("Not implemented");
    }

    public static NodeList _document_getElementsByTagName(Dom dom, final String str) {
        return (NodeList) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.ncf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                NodeList lambda$_document_getElementsByTagName$7;
                lambda$_document_getElementsByTagName$7 = DomImpl.lambda$_document_getElementsByTagName$7(str, (DomImpl.Dom) obj);
                return lambda$_document_getElementsByTagName$7;
            }
        });
    }

    public static NodeList _document_getElementsByTagNameNS(Dom dom, final String str, final String str2) {
        return (NodeList) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.fef
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                NodeList lambda$_document_getElementsByTagNameNS$8;
                lambda$_document_getElementsByTagNameNS$8 = DomImpl.lambda$_document_getElementsByTagNameNS$8(str, str2, (DomImpl.Dom) obj);
                return lambda$_document_getElementsByTagNameNS$8;
            }
        });
    }

    public static DOMImplementation _document_getImplementation(Dom dom) {
        return dom.locale();
    }

    public static Node _document_importNode(Dom dom, final Node node, final boolean z) {
        return (Node) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.hbf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Node lambda$_document_importNode$9;
                lambda$_document_importNode$9 = DomImpl.lambda$_document_importNode$9(Node.this, z, (DomImpl.Dom) obj);
                return lambda$_document_importNode$9;
            }
        });
    }

    public static Document _domImplementation_createDocument(final Locale locale, final String str, final String str2, final DocumentType documentType) {
        return (Document) syncWrapHelper(locale, true, new Supplier() { // from class: com.sunia.HTREnginev2.xdf
            @Override // java.util.function.Supplier
            public final Object get() {
                Document domImplementation_createDocument;
                domImplementation_createDocument = DomImpl.domImplementation_createDocument(Locale.this, str, str2, documentType);
                return domImplementation_createDocument;
            }
        });
    }

    public static boolean _domImplementation_hasFeature(Locale locale, String str, String str2) {
        if (str == null) {
            return false;
        }
        if (str2 != null && str2.length() > 0 && !str2.equals("1.0") && !str2.equals(OAuth20ServiceImpl.f115984c)) {
            return false;
        }
        if (str.equalsIgnoreCase(SchedulerManager.CORE)) {
            return true;
        }
        return str.equalsIgnoreCase("xml");
    }

    public static String _element_getAttribute(Dom dom, String str) {
        Node _attributes_getNamedItem = _attributes_getNamedItem(dom, str);
        return _attributes_getNamedItem == null ? "" : _attributes_getNamedItem.getNodeValue();
    }

    public static String _element_getAttributeNS(Dom dom, String str, String str2) {
        Node _attributes_getNamedItemNS = _attributes_getNamedItemNS(dom, str, str2);
        return _attributes_getNamedItemNS == null ? "" : _attributes_getNamedItemNS.getNodeValue();
    }

    public static Attr _element_getAttributeNode(Dom dom, String str) {
        return (Attr) _attributes_getNamedItem(dom, str);
    }

    public static Attr _element_getAttributeNodeNS(Dom dom, String str, String str2) {
        return (Attr) _attributes_getNamedItemNS(dom, str, str2);
    }

    public static NodeList _element_getElementsByTagName(Dom dom, final String str) {
        return (NodeList) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.kcf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                NodeList lambda$_element_getElementsByTagName$19;
                lambda$_element_getElementsByTagName$19 = DomImpl.lambda$_element_getElementsByTagName$19(str, (DomImpl.Dom) obj);
                return lambda$_element_getElementsByTagName$19;
            }
        });
    }

    public static NodeList _element_getElementsByTagNameNS(Dom dom, final String str, final String str2) {
        return (NodeList) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.fbf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                NodeList lambda$_element_getElementsByTagNameNS$20;
                lambda$_element_getElementsByTagNameNS$20 = DomImpl.lambda$_element_getElementsByTagNameNS$20(str, str2, (DomImpl.Dom) obj);
                return lambda$_element_getElementsByTagNameNS$20;
            }
        });
    }

    public static String _element_getTagName(Dom dom) {
        return _node_getNodeName(dom);
    }

    public static boolean _element_hasAttribute(Dom dom, String str) {
        return _attributes_getNamedItem(dom, str) != null;
    }

    public static boolean _element_hasAttributeNS(Dom dom, String str, String str2) {
        return _attributes_getNamedItemNS(dom, str, str2) != null;
    }

    public static void _element_removeAttribute(Dom dom, String str) {
        try {
            _attributes_removeNamedItem(dom, str);
        } catch (NotFoundErr unused) {
        }
    }

    public static void _element_removeAttributeNS(Dom dom, String str, String str2) {
        try {
            _attributes_removeNamedItemNS(dom, str, str2);
        } catch (NotFoundErr unused) {
        }
    }

    public static Attr _element_removeAttributeNode(Dom dom, Attr attr) {
        if (attr == null) {
            throw new NotFoundErr("Attribute to remove is null");
        }
        if (attr.getOwnerElement() == dom) {
            return (Attr) _attributes_removeNamedItem(dom, attr.getNodeName());
        }
        throw new NotFoundErr("Attribute to remove does not belong to this element");
    }

    public static void _element_setAttribute(Dom dom, final String str, final String str2) {
        syncWrapVoid(dom, new Consumer() { // from class: com.sunia.HTREnginev2.lbf
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DomImpl.element_setAttribute((DomImpl.Dom) obj, str, str2);
            }
        });
    }

    public static void _element_setAttributeNS(Dom dom, final String str, final String str2, final String str3) {
        syncWrapVoid(dom, new Consumer() { // from class: com.sunia.HTREnginev2.kef
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DomImpl.element_setAttributeNS((DomImpl.Dom) obj, str, str2, str3);
            }
        });
    }

    public static Attr _element_setAttributeNode(Dom dom, Attr attr) {
        return (Attr) _attributes_setNamedItem(dom, attr);
    }

    public static Attr _element_setAttributeNodeNS(Dom dom, Attr attr) {
        return (Attr) _attributes_setNamedItemNS(dom, attr);
    }

    public static XmlCursor _getXmlCursor(Dom dom) {
        return (XmlCursor) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.qef
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DomImpl.getXmlCursor((DomImpl.Dom) obj);
            }
        });
    }

    public static XmlObject _getXmlObject(Dom dom) {
        return (XmlObject) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.ydf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DomImpl.getXmlObject((DomImpl.Dom) obj);
            }
        });
    }

    public static XMLStreamReader _getXmlStreamReader(Dom dom) {
        return (XMLStreamReader) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.gbf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DomImpl.getXmlStreamReader((DomImpl.Dom) obj);
            }
        });
    }

    public static Node _node_appendChild(Dom dom, Node node) {
        return _node_insertBefore(dom, node, null);
    }

    public static Node _node_cloneNode(Dom dom, final boolean z) {
        return (Node) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.wbf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Node lambda$_node_cloneNode$13;
                lambda$_node_cloneNode$13 = DomImpl.lambda$_node_cloneNode$13(z, (DomImpl.Dom) obj);
                return lambda$_node_cloneNode$13;
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0047, code lost:
    
        if (r6.hasNext() == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0049, code lost:
    
        return 10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0050, code lost:
    
        if (r7.hasNext() == false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0052, code lost:
    
        return 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:?, code lost:
    
        return 32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0055, code lost:
    
        r3 = r3.getPreviousSibling();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0059, code lost:
    
        if (r3 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005f, code lost:
    
        if (r3.equals(r4) == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0061, code lost:
    
        return 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0063, code lost:
    
        return 4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static short _node_compareDocumentPosition(org.apache.xmlbeans.impl.store.DomImpl.Dom r6, org.w3c.dom.Node r7) {
        /*
            boolean r0 = r6 instanceof org.w3c.dom.Node
            r1 = 32
            if (r0 != 0) goto L7
            return r1
        L7:
            org.w3c.dom.Node r6 = (org.w3c.dom.Node) r6
            java.util.List r6 = ancestorAndSelf(r6)
            java.util.Iterator r6 = r6.iterator()
            java.util.List r7 = ancestorAndSelf(r7)
            java.util.Iterator r7 = r7.iterator()
            r0 = 1
            r2 = r0
        L1b:
            java.lang.Object r3 = r6.next()
            org.w3c.dom.Node r3 = (org.w3c.dom.Node) r3
            java.lang.Object r4 = r7.next()
            org.w3c.dom.Node r4 = (org.w3c.dom.Node) r4
            boolean r5 = java.util.Objects.equals(r3, r4)
            if (r2 == 0) goto L30
            if (r5 != 0) goto L30
            return r0
        L30:
            if (r5 == 0) goto L41
            boolean r2 = r6.hasNext()
            if (r2 == 0) goto L41
            boolean r2 = r7.hasNext()
            if (r2 != 0) goto L3f
            goto L41
        L3f:
            r2 = 0
            goto L1b
        L41:
            if (r5 == 0) goto L55
            boolean r6 = r6.hasNext()
            if (r6 == 0) goto L4c
            r1 = 10
            goto L54
        L4c:
            boolean r6 = r7.hasNext()
            if (r6 == 0) goto L54
            r1 = 20
        L54:
            return r1
        L55:
            org.w3c.dom.Node r3 = r3.getPreviousSibling()
            if (r3 == 0) goto L63
            boolean r6 = r3.equals(r4)
            if (r6 == 0) goto L55
            r6 = 2
            return r6
        L63:
            r6 = 4
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.DomImpl._node_compareDocumentPosition(org.apache.xmlbeans.impl.store.DomImpl$Dom, org.w3c.dom.Node):short");
    }

    public static String _node_getBaseURI(Dom dom) {
        throw new DomLevel3NotImplemented();
    }

    public static Object _node_getFeature(Dom dom, String str, String str2) {
        throw new DomLevel3NotImplemented();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Node _node_getFirstChild(Dom dom) {
        Xobj xobj = (Xobj) dom;
        if (!xobj.isVacant()) {
            if (xobj.isFirstChildPtrDomUsable()) {
                return (Node) xobj._firstChild;
            }
            Xobj lastAttr = xobj.lastAttr();
            if (lastAttr != null && lastAttr.isNextSiblingPtrDomUsable()) {
                return (NodeXobj) lastAttr._nextSibling;
            }
            if (xobj.isExistingCharNodesValueUsable()) {
                return xobj._charNodesValue;
            }
        }
        return (Node) syncWrapNoEnter(dom, new Function() { // from class: com.sunia.HTREnginev2.fcf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DomImpl.node_getFirstChild((DomImpl.Dom) obj);
            }
        });
    }

    public static Node _node_getLastChild(Dom dom) {
        return (Node) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.ldf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DomImpl.node_getLastChild((DomImpl.Dom) obj);
            }
        });
    }

    public static String _node_getLocalName(Dom dom) {
        if (!dom.nodeCanHavePrefixUri()) {
            return null;
        }
        QName qName = dom.getQName();
        return qName == null ? "" : qName.getLocalPart();
    }

    public static String _node_getNamespaceURI(Dom dom) {
        if (!dom.nodeCanHavePrefixUri()) {
            return null;
        }
        QName qName = dom.getQName();
        return qName == null ? "" : qName.getNamespaceURI();
    }

    public static Node _node_getNextSibling(Dom dom) {
        return (Node) syncWrapNoEnter(dom, new Function() { // from class: com.sunia.HTREnginev2.ndf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DomImpl.node_getNextSibling((DomImpl.Dom) obj);
            }
        });
    }

    public static String _node_getNodeName(Dom dom) {
        switch (dom.nodeType()) {
            case 1:
            case 2:
                QName qName = dom.getQName();
                String prefix = qName.getPrefix();
                if (prefix.length() == 0) {
                    return qName.getLocalPart();
                }
                return prefix + ":" + qName.getLocalPart();
            case 3:
                return PsuedoNames.PSEUDONAME_TEXT;
            case 4:
                return "#cdata-section";
            case 5:
            case 6:
            case 10:
            case 12:
                throw new RuntimeException("Not impl");
            case 7:
                return dom.getQName().getLocalPart();
            case 8:
                return PsuedoNames.PSEUDONAME_COMMENT;
            case 9:
                return "#document";
            case 11:
                return "#document-fragment";
            default:
                throw new RuntimeException("Unknown node type");
        }
    }

    public static short _node_getNodeType(Dom dom) {
        return (short) dom.nodeType();
    }

    public static String _node_getNodeValue(Dom dom) {
        return (String) syncWrapNoEnter(dom, new Function() { // from class: com.sunia.HTREnginev2.cbf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DomImpl.node_getNodeValue((DomImpl.Dom) obj);
            }
        });
    }

    public static Document _node_getOwnerDocument(Dom dom) {
        return (Document) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.scf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DomImpl.node_getOwnerDocument((DomImpl.Dom) obj);
            }
        });
    }

    public static Node _node_getParentNode(Dom dom) {
        return (Node) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.waf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DomImpl.node_getParentNode((DomImpl.Dom) obj);
            }
        });
    }

    public static String _node_getPrefix(Dom dom) {
        if (!dom.nodeCanHavePrefixUri()) {
            return null;
        }
        QName qName = dom.getQName();
        return qName == null ? "" : qName.getPrefix();
    }

    public static Node _node_getPreviousSibling(Dom dom) {
        return (Node) syncWrapNoEnter(dom, new Function() { // from class: com.sunia.HTREnginev2.tcf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DomImpl.node_getPreviousSibling((DomImpl.Dom) obj);
            }
        });
    }

    public static String _node_getTextContent(Dom dom) {
        throw new DomLevel3NotImplemented();
    }

    public static Object _node_getUserData(Dom dom, String str) {
        throw new DomLevel3NotImplemented();
    }

    public static boolean _node_hasAttributes(Dom dom) {
        return ((Boolean) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.bff
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(DomImpl.node_hasAttributes((DomImpl.Dom) obj));
            }
        })).booleanValue();
    }

    public static boolean _node_hasChildNodes(Dom dom) {
        return (dom instanceof Xobj) && _node_getFirstChild(dom) != null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001e, code lost:
    
        if (r4.locale() == r0) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.w3c.dom.Node _node_insertBefore(org.apache.xmlbeans.impl.store.DomImpl.Dom r2, org.w3c.dom.Node r3, org.w3c.dom.Node r4) {
        /*
            org.apache.xmlbeans.impl.store.Locale r0 = r2.locale()
            if (r3 == 0) goto L3e
            boolean r1 = r3 instanceof org.apache.xmlbeans.impl.store.DomImpl.Dom
            if (r1 == 0) goto L36
            org.apache.xmlbeans.impl.store.DomImpl$Dom r3 = (org.apache.xmlbeans.impl.store.DomImpl.Dom) r3
            org.apache.xmlbeans.impl.store.Locale r1 = r3.locale()
            if (r1 != r0) goto L36
            if (r4 == 0) goto L29
            boolean r1 = r4 instanceof org.apache.xmlbeans.impl.store.DomImpl.Dom
            if (r1 == 0) goto L21
            org.apache.xmlbeans.impl.store.DomImpl$Dom r4 = (org.apache.xmlbeans.impl.store.DomImpl.Dom) r4
            org.apache.xmlbeans.impl.store.Locale r1 = r4.locale()
            if (r1 != r0) goto L21
            goto L2a
        L21:
            org.apache.xmlbeans.impl.store.DomImpl$WrongDocumentErr r2 = new org.apache.xmlbeans.impl.store.DomImpl$WrongDocumentErr
            java.lang.String r3 = "Reference child is from another document"
            r2.<init>(r3)
            throw r2
        L29:
            r4 = 0
        L2a:
            com.sunia.HTREnginev2.wef r0 = new com.sunia.HTREnginev2.wef
            r0.<init>()
            java.lang.Object r2 = syncWrap(r2, r0)
            org.w3c.dom.Node r2 = (org.w3c.dom.Node) r2
            return r2
        L36:
            org.apache.xmlbeans.impl.store.DomImpl$WrongDocumentErr r2 = new org.apache.xmlbeans.impl.store.DomImpl$WrongDocumentErr
            java.lang.String r3 = "Child to add is from another document"
            r2.<init>(r3)
            throw r2
        L3e:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Child to add is null"
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.DomImpl._node_insertBefore(org.apache.xmlbeans.impl.store.DomImpl$Dom, org.w3c.dom.Node, org.w3c.dom.Node):org.w3c.dom.Node");
    }

    public static boolean _node_isDefaultNamespace(Dom dom, String str) {
        throw new DomLevel3NotImplemented();
    }

    public static boolean _node_isEqualNode(Dom dom, Node node) {
        throw new DomLevel3NotImplemented();
    }

    public static boolean _node_isSameNode(Dom dom, Node node) {
        if (dom instanceof CharNode) {
            return dom.equals(node);
        }
        if (dom instanceof NodeXobj) {
            return ((NodeXobj) dom).getDom().equals(node);
        }
        throw new DomLevel3NotImplemented();
    }

    public static boolean _node_isSupported(Dom dom, String str, String str2) {
        return _domImplementation_hasFeature(dom.locale(), str, str2);
    }

    public static String _node_lookupNamespaceURI(Dom dom, String str) {
        throw new DomLevel3NotImplemented();
    }

    public static String _node_lookupPrefix(Dom dom, String str) {
        throw new DomLevel3NotImplemented();
    }

    public static void _node_normalize(Dom dom) {
        syncWrapVoid(dom, new Consumer() { // from class: com.sunia.HTREnginev2.qcf
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DomImpl.node_normalize((DomImpl.Dom) obj);
            }
        });
    }

    public static Node _node_removeChild(Dom dom, Node node) {
        Locale locale = dom.locale();
        if (node == null) {
            throw new NotFoundErr("Child to remove is null");
        }
        if (node instanceof Dom) {
            final Dom dom2 = (Dom) node;
            if (dom2.locale() == locale) {
                return (Node) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.zaf
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Node lambda$_node_removeChild$12;
                        lambda$_node_removeChild$12 = DomImpl.lambda$_node_removeChild$12(DomImpl.Dom.this, (DomImpl.Dom) obj);
                        return lambda$_node_removeChild$12;
                    }
                });
            }
        }
        throw new WrongDocumentErr("Child to remove is from another document");
    }

    public static Node _node_replaceChild(Dom dom, Node node, Node node2) {
        Locale locale = dom.locale();
        if (node == null) {
            throw new IllegalArgumentException("Child to add is null");
        }
        if (node2 == null) {
            throw new NotFoundErr("Child to replace is null");
        }
        if (node instanceof Dom) {
            final Dom dom2 = (Dom) node;
            if (dom2.locale() == locale) {
                if (node2 instanceof Dom) {
                    final Dom dom3 = (Dom) node2;
                    if (dom3.locale() == locale) {
                        return (Node) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.lcf
                            @Override // java.util.function.Function
                            public final Object apply(Object obj) {
                                Node lambda$_node_replaceChild$10;
                                lambda$_node_replaceChild$10 = DomImpl.lambda$_node_replaceChild$10(DomImpl.Dom.this, dom3, (DomImpl.Dom) obj);
                                return lambda$_node_replaceChild$10;
                            }
                        });
                    }
                }
                throw new WrongDocumentErr("Child to replace is from another document");
            }
        }
        throw new WrongDocumentErr("Child to add is from another document");
    }

    public static void _node_setNodeValue(Dom dom, final String str) {
        syncWrapVoid(dom, new Consumer() { // from class: com.sunia.HTREnginev2.pbf
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DomImpl.node_setNodeValue((DomImpl.Dom) obj, str);
            }
        });
    }

    public static void _node_setPrefix(Dom dom, final String str) {
        syncWrapVoid(dom, new Consumer() { // from class: com.sunia.HTREnginev2.hef
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DomImpl.node_setPrefix((DomImpl.Dom) obj, str);
            }
        });
    }

    public static void _node_setTextContent(Dom dom, String str) {
        throw new DomLevel3NotImplemented();
    }

    public static Object _node_setUserData(Dom dom, String str, Object obj, UserDataHandler userDataHandler) {
        throw new DomLevel3NotImplemented();
    }

    public static String _processingInstruction_getData(Dom dom) {
        return _node_getNodeValue(dom);
    }

    public static String _processingInstruction_getTarget(Dom dom) {
        return _node_getNodeName(dom);
    }

    public static void _processingInstruction_setData(Dom dom, String str) {
        _node_setNodeValue(dom, str);
    }

    public static SOAPElement _soapElement_addAttribute(final Dom dom, final Name name, final String str) throws SOAPException {
        final SOAPElement sOAPElement = (SOAPElement) dom;
        return (SOAPElement) syncWrapEx(dom, new WrapSoapEx() { // from class: org.apache.xmlbeans.impl.store.k
            @Override // org.apache.xmlbeans.impl.store.DomImpl.WrapSoapEx
            public final Object get() {
                SOAPElement lambda$_soapElement_addAttribute$42;
                lambda$_soapElement_addAttribute$42 = DomImpl.lambda$_soapElement_addAttribute$42(DomImpl.Dom.this, sOAPElement, name, str);
                return lambda$_soapElement_addAttribute$42;
            }
        });
    }

    public static SOAPElement _soapElement_addChildElement(final Dom dom, final SOAPElement sOAPElement) throws SOAPException {
        final SOAPElement sOAPElement2 = (SOAPElement) dom;
        return (SOAPElement) syncWrapEx(dom, new WrapSoapEx() { // from class: org.apache.xmlbeans.impl.store.u
            @Override // org.apache.xmlbeans.impl.store.DomImpl.WrapSoapEx
            public final Object get() {
                SOAPElement lambda$_soapElement_addChildElement$43;
                lambda$_soapElement_addChildElement$43 = DomImpl.lambda$_soapElement_addChildElement$43(DomImpl.Dom.this, sOAPElement2, sOAPElement);
                return lambda$_soapElement_addChildElement$43;
            }
        });
    }

    public static SOAPElement _soapElement_addNamespaceDeclaration(Dom dom, final String str, final String str2) {
        final SOAPElement sOAPElement = (SOAPElement) dom;
        return (SOAPElement) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.ebf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SOAPElement lambda$_soapElement_addNamespaceDeclaration$48;
                lambda$_soapElement_addNamespaceDeclaration$48 = DomImpl.lambda$_soapElement_addNamespaceDeclaration$48(SOAPElement.this, str, str2, (DomImpl.Dom) obj);
                return lambda$_soapElement_addNamespaceDeclaration$48;
            }
        });
    }

    public static SOAPElement _soapElement_addTextNode(Dom dom, final String str) {
        final SOAPElement sOAPElement = (SOAPElement) dom;
        return (SOAPElement) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.ccf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SOAPElement lambda$_soapElement_addTextNode$49;
                lambda$_soapElement_addTextNode$49 = DomImpl.lambda$_soapElement_addTextNode$49(SOAPElement.this, str, (DomImpl.Dom) obj);
                return lambda$_soapElement_addTextNode$49;
            }
        });
    }

    public static Iterator<Name> _soapElement_getAllAttributes(Dom dom) {
        final SOAPElement sOAPElement = (SOAPElement) dom;
        return (Iterator) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.zbf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Iterator lambda$_soapElement_getAllAttributes$39;
                lambda$_soapElement_getAllAttributes$39 = DomImpl.lambda$_soapElement_getAllAttributes$39(SOAPElement.this, (DomImpl.Dom) obj);
                return lambda$_soapElement_getAllAttributes$39;
            }
        });
    }

    public static String _soapElement_getAttributeValue(Dom dom, final Name name) {
        final SOAPElement sOAPElement = (SOAPElement) dom;
        return (String) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.eef
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String lambda$_soapElement_getAttributeValue$50;
                lambda$_soapElement_getAttributeValue$50 = DomImpl.lambda$_soapElement_getAttributeValue$50(SOAPElement.this, name, (DomImpl.Dom) obj);
                return lambda$_soapElement_getAttributeValue$50;
            }
        });
    }

    public static Iterator<SOAPElement> _soapElement_getChildElements(Dom dom) {
        final SOAPElement sOAPElement = (SOAPElement) dom;
        return (Iterator) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.cff
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Iterator lambda$_soapElement_getChildElements$40;
                lambda$_soapElement_getChildElements$40 = DomImpl.lambda$_soapElement_getChildElements$40(SOAPElement.this, (DomImpl.Dom) obj);
                return lambda$_soapElement_getChildElements$40;
            }
        });
    }

    public static Name _soapElement_getElementName(Dom dom) {
        final SOAPElement sOAPElement = (SOAPElement) dom;
        return (Name) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.ubf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Name lambda$_soapElement_getElementName$52;
                lambda$_soapElement_getElementName$52 = DomImpl.lambda$_soapElement_getElementName$52(SOAPElement.this, (DomImpl.Dom) obj);
                return lambda$_soapElement_getElementName$52;
            }
        });
    }

    public static String _soapElement_getEncodingStyle(Dom dom) {
        final SOAPElement sOAPElement = (SOAPElement) dom;
        return (String) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.yef
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String lambda$_soapElement_getEncodingStyle$36;
                lambda$_soapElement_getEncodingStyle$36 = DomImpl.lambda$_soapElement_getEncodingStyle$36(SOAPElement.this, (DomImpl.Dom) obj);
                return lambda$_soapElement_getEncodingStyle$36;
            }
        });
    }

    public static Iterator<String> _soapElement_getNamespacePrefixes(Dom dom) {
        final SOAPElement sOAPElement = (SOAPElement) dom;
        return (Iterator) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.eff
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Iterator lambda$_soapElement_getNamespacePrefixes$41;
                lambda$_soapElement_getNamespacePrefixes$41 = DomImpl.lambda$_soapElement_getNamespacePrefixes$41(SOAPElement.this, (DomImpl.Dom) obj);
                return lambda$_soapElement_getNamespacePrefixes$41;
            }
        });
    }

    public static String _soapElement_getNamespaceURI(Dom dom, final String str) {
        final SOAPElement sOAPElement = (SOAPElement) dom;
        return (String) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.abf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String lambda$_soapElement_getNamespaceURI$53;
                lambda$_soapElement_getNamespaceURI$53 = DomImpl.lambda$_soapElement_getNamespaceURI$53(SOAPElement.this, str, (DomImpl.Dom) obj);
                return lambda$_soapElement_getNamespaceURI$53;
            }
        });
    }

    public static Iterator<String> _soapElement_getVisibleNamespacePrefixes(Dom dom) {
        final SOAPElement sOAPElement = (SOAPElement) dom;
        return (Iterator) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.aff
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Iterator lambda$_soapElement_getVisibleNamespacePrefixes$54;
                lambda$_soapElement_getVisibleNamespacePrefixes$54 = DomImpl.lambda$_soapElement_getVisibleNamespacePrefixes$54(SOAPElement.this, (DomImpl.Dom) obj);
                return lambda$_soapElement_getVisibleNamespacePrefixes$54;
            }
        });
    }

    public static boolean _soapElement_removeAttribute(Dom dom, final Name name) {
        final SOAPElement sOAPElement = (SOAPElement) dom;
        return ((Boolean) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.obf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean lambda$_soapElement_removeAttribute$55;
                lambda$_soapElement_removeAttribute$55 = DomImpl.lambda$_soapElement_removeAttribute$55(SOAPElement.this, name, (DomImpl.Dom) obj);
                return lambda$_soapElement_removeAttribute$55;
            }
        })).booleanValue();
    }

    public static void _soapElement_removeContents(Dom dom) {
        final SOAPElement sOAPElement = (SOAPElement) dom;
        syncWrapVoid(dom, new Consumer() { // from class: com.sunia.HTREnginev2.gef
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DomImpl.lambda$_soapElement_removeContents$35(SOAPElement.this, (DomImpl.Dom) obj);
            }
        });
    }

    public static boolean _soapElement_removeNamespaceDeclaration(Dom dom, final String str) {
        final SOAPElement sOAPElement = (SOAPElement) dom;
        return ((Boolean) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.kdf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean lambda$_soapElement_removeNamespaceDeclaration$38;
                lambda$_soapElement_removeNamespaceDeclaration$38 = DomImpl.lambda$_soapElement_removeNamespaceDeclaration$38(SOAPElement.this, str, (DomImpl.Dom) obj);
                return lambda$_soapElement_removeNamespaceDeclaration$38;
            }
        })).booleanValue();
    }

    public static void _soapElement_setEncodingStyle(Dom dom, final String str) {
        final SOAPElement sOAPElement = (SOAPElement) dom;
        syncWrapVoid(dom, new Consumer() { // from class: com.sunia.HTREnginev2.tdf
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DomImpl.lambda$_soapElement_setEncodingStyle$37(SOAPElement.this, str, (DomImpl.Dom) obj);
            }
        });
    }

    public static SOAPBody _soapEnvelope_addBody(final Dom dom) throws SOAPException {
        final SOAPEnvelope sOAPEnvelope = (SOAPEnvelope) dom;
        return (SOAPBody) syncWrapEx(dom, new WrapSoapEx() { // from class: org.apache.xmlbeans.impl.store.l
            @Override // org.apache.xmlbeans.impl.store.DomImpl.WrapSoapEx
            public final Object get() {
                SOAPBody lambda$_soapEnvelope_addBody$56;
                lambda$_soapEnvelope_addBody$56 = DomImpl.lambda$_soapEnvelope_addBody$56(DomImpl.Dom.this, sOAPEnvelope);
                return lambda$_soapEnvelope_addBody$56;
            }
        });
    }

    public static SOAPHeader _soapEnvelope_addHeader(final Dom dom) throws SOAPException {
        final SOAPEnvelope sOAPEnvelope = (SOAPEnvelope) dom;
        return (SOAPHeader) syncWrapEx(dom, new WrapSoapEx() { // from class: org.apache.xmlbeans.impl.store.m
            @Override // org.apache.xmlbeans.impl.store.DomImpl.WrapSoapEx
            public final Object get() {
                SOAPHeader lambda$_soapEnvelope_addHeader$59;
                lambda$_soapEnvelope_addHeader$59 = DomImpl.lambda$_soapEnvelope_addHeader$59(DomImpl.Dom.this, sOAPEnvelope);
                return lambda$_soapEnvelope_addHeader$59;
            }
        });
    }

    public static Name _soapEnvelope_createName(Dom dom, final String str) {
        final SOAPEnvelope sOAPEnvelope = (SOAPEnvelope) dom;
        return (Name) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.jcf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Name lambda$_soapEnvelope_createName$60;
                lambda$_soapEnvelope_createName$60 = DomImpl.lambda$_soapEnvelope_createName$60(SOAPEnvelope.this, str, (DomImpl.Dom) obj);
                return lambda$_soapEnvelope_createName$60;
            }
        });
    }

    public static SOAPBody _soapEnvelope_getBody(final Dom dom) throws SOAPException {
        final SOAPEnvelope sOAPEnvelope = (SOAPEnvelope) dom;
        return (SOAPBody) syncWrapEx(dom, new WrapSoapEx() { // from class: org.apache.xmlbeans.impl.store.r
            @Override // org.apache.xmlbeans.impl.store.DomImpl.WrapSoapEx
            public final Object get() {
                SOAPBody lambda$_soapEnvelope_getBody$57;
                lambda$_soapEnvelope_getBody$57 = DomImpl.lambda$_soapEnvelope_getBody$57(DomImpl.Dom.this, sOAPEnvelope);
                return lambda$_soapEnvelope_getBody$57;
            }
        });
    }

    public static SOAPHeader _soapEnvelope_getHeader(final Dom dom) throws SOAPException {
        final SOAPEnvelope sOAPEnvelope = (SOAPEnvelope) dom;
        return (SOAPHeader) syncWrapEx(dom, new WrapSoapEx() { // from class: org.apache.xmlbeans.impl.store.j
            @Override // org.apache.xmlbeans.impl.store.DomImpl.WrapSoapEx
            public final Object get() {
                SOAPHeader lambda$_soapEnvelope_getHeader$58;
                lambda$_soapEnvelope_getHeader$58 = DomImpl.lambda$_soapEnvelope_getHeader$58(DomImpl.Dom.this, sOAPEnvelope);
                return lambda$_soapEnvelope_getHeader$58;
            }
        });
    }

    public static void _soapNode_detachNode(Dom dom) {
        final org.apache.xmlbeans.impl.soap.Node node = (org.apache.xmlbeans.impl.soap.Node) dom;
        syncWrapVoid(dom, new Consumer() { // from class: com.sunia.HTREnginev2.pdf
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DomImpl.lambda$_soapNode_detachNode$29(org.apache.xmlbeans.impl.soap.Node.this, (DomImpl.Dom) obj);
            }
        });
    }

    public static SOAPElement _soapNode_getParentElement(Dom dom) {
        final org.apache.xmlbeans.impl.soap.Node node = (org.apache.xmlbeans.impl.soap.Node) dom;
        return (SOAPElement) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.cdf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SOAPElement lambda$_soapNode_getParentElement$33;
                lambda$_soapNode_getParentElement$33 = DomImpl.lambda$_soapNode_getParentElement$33(org.apache.xmlbeans.impl.soap.Node.this, (DomImpl.Dom) obj);
                return lambda$_soapNode_getParentElement$33;
            }
        });
    }

    public static String _soapNode_getValue(Dom dom) {
        final org.apache.xmlbeans.impl.soap.Node node = (org.apache.xmlbeans.impl.soap.Node) dom;
        return (String) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.vef
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String lambda$_soapNode_getValue$31;
                lambda$_soapNode_getValue$31 = DomImpl.lambda$_soapNode_getValue$31(org.apache.xmlbeans.impl.soap.Node.this, (DomImpl.Dom) obj);
                return lambda$_soapNode_getValue$31;
            }
        });
    }

    public static void _soapNode_recycleNode(Dom dom) {
        final org.apache.xmlbeans.impl.soap.Node node = (org.apache.xmlbeans.impl.soap.Node) dom;
        syncWrapVoid(dom, new Consumer() { // from class: com.sunia.HTREnginev2.tef
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DomImpl.lambda$_soapNode_recycleNode$30(org.apache.xmlbeans.impl.soap.Node.this, (DomImpl.Dom) obj);
            }
        });
    }

    public static void _soapNode_setParentElement(Dom dom, final SOAPElement sOAPElement) {
        final org.apache.xmlbeans.impl.soap.Node node = (org.apache.xmlbeans.impl.soap.Node) dom;
        syncWrapVoid(dom, new Consumer() { // from class: com.sunia.HTREnginev2.acf
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DomImpl.lambda$_soapNode_setParentElement$34(org.apache.xmlbeans.impl.soap.Node.this, sOAPElement, (DomImpl.Dom) obj);
            }
        });
    }

    public static void _soapNode_setValue(Dom dom, final String str) {
        final org.apache.xmlbeans.impl.soap.Node node = (org.apache.xmlbeans.impl.soap.Node) dom;
        syncWrapVoid(dom, new Consumer() { // from class: com.sunia.HTREnginev2.rdf
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DomImpl.lambda$_soapNode_setValue$32(org.apache.xmlbeans.impl.soap.Node.this, str, (DomImpl.Dom) obj);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void _soapPart_addMimeHeader(Dom dom, final String str, final String str2) {
        final SOAPPart sOAPPart = (SOAPPart) dom;
        syncWrapVoid(dom, new Consumer() { // from class: com.sunia.HTREnginev2.aef
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DomImpl.lambda$_soapPart_addMimeHeader$100(SOAPPart.this, str, str2, (DomImpl.Dom) obj);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Iterator<MimeHeader> _soapPart_getAllMimeHeaders(Dom dom) {
        final SOAPPart sOAPPart = (SOAPPart) dom;
        return (Iterator) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.vbf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Iterator lambda$_soapPart_getAllMimeHeaders$95;
                lambda$_soapPart_getAllMimeHeaders$95 = DomImpl.lambda$_soapPart_getAllMimeHeaders$95(SOAPPart.this, (DomImpl.Dom) obj);
                return lambda$_soapPart_getAllMimeHeaders$95;
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Source _soapPart_getContent(Dom dom) {
        final SOAPPart sOAPPart = (SOAPPart) dom;
        return (Source) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.odf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Source lambda$_soapPart_getContent$97;
                lambda$_soapPart_getContent$97 = DomImpl.lambda$_soapPart_getContent$97(SOAPPart.this, (DomImpl.Dom) obj);
                return lambda$_soapPart_getContent$97;
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static SOAPEnvelope _soapPart_getEnvelope(Dom dom) {
        final SOAPPart sOAPPart = (SOAPPart) dom;
        return (SOAPEnvelope) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.bbf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SOAPEnvelope lambda$_soapPart_getEnvelope$96;
                lambda$_soapPart_getEnvelope$96 = DomImpl.lambda$_soapPart_getEnvelope$96(SOAPPart.this, (DomImpl.Dom) obj);
                return lambda$_soapPart_getEnvelope$96;
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Iterator<MimeHeader> _soapPart_getMatchingMimeHeaders(Dom dom, final String[] strArr) {
        final SOAPPart sOAPPart = (SOAPPart) dom;
        return (Iterator) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.gcf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Iterator lambda$_soapPart_getMatchingMimeHeaders$102;
                lambda$_soapPart_getMatchingMimeHeaders$102 = DomImpl.lambda$_soapPart_getMatchingMimeHeaders$102(SOAPPart.this, strArr, (DomImpl.Dom) obj);
                return lambda$_soapPart_getMatchingMimeHeaders$102;
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String[] _soapPart_getMimeHeader(Dom dom, final String str) {
        final SOAPPart sOAPPart = (SOAPPart) dom;
        return (String[]) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.wdf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String[] lambda$_soapPart_getMimeHeader$99;
                lambda$_soapPart_getMimeHeader$99 = DomImpl.lambda$_soapPart_getMimeHeader$99(SOAPPart.this, str, (DomImpl.Dom) obj);
                return lambda$_soapPart_getMimeHeader$99;
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Iterator<MimeHeader> _soapPart_getNonMatchingMimeHeaders(Dom dom, final String[] strArr) {
        final SOAPPart sOAPPart = (SOAPPart) dom;
        return (Iterator) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.kbf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Iterator lambda$_soapPart_getNonMatchingMimeHeaders$103;
                lambda$_soapPart_getNonMatchingMimeHeaders$103 = DomImpl.lambda$_soapPart_getNonMatchingMimeHeaders$103(SOAPPart.this, strArr, (DomImpl.Dom) obj);
                return lambda$_soapPart_getNonMatchingMimeHeaders$103;
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void _soapPart_removeAllMimeHeaders(Dom dom) {
        final SOAPPart sOAPPart = (SOAPPart) dom;
        syncWrapVoid(dom, new Consumer() { // from class: com.sunia.HTREnginev2.mbf
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DomImpl.lambda$_soapPart_removeAllMimeHeaders$93(SOAPPart.this, (DomImpl.Dom) obj);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void _soapPart_removeMimeHeader(Dom dom, final String str) {
        final SOAPPart sOAPPart = (SOAPPart) dom;
        syncWrapVoid(dom, new Consumer() { // from class: com.sunia.HTREnginev2.mdf
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DomImpl.lambda$_soapPart_removeMimeHeader$94(SOAPPart.this, str, (DomImpl.Dom) obj);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void _soapPart_setContent(Dom dom, final Source source) {
        final SOAPPart sOAPPart = (SOAPPart) dom;
        syncWrapVoid(dom, new Consumer() { // from class: com.sunia.HTREnginev2.bcf
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DomImpl.lambda$_soapPart_setContent$98(SOAPPart.this, source, (DomImpl.Dom) obj);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void _soapPart_setMimeHeader(Dom dom, final String str, final String str2) {
        final SOAPPart sOAPPart = (SOAPPart) dom;
        syncWrapVoid(dom, new Consumer() { // from class: com.sunia.HTREnginev2.pef
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DomImpl.lambda$_soapPart_setMimeHeader$101(SOAPPart.this, str, str2, (DomImpl.Dom) obj);
            }
        });
    }

    public static boolean _soapText_isComment(Dom dom) {
        final org.apache.xmlbeans.impl.soap.Text text = (org.apache.xmlbeans.impl.soap.Text) dom;
        return ((Boolean) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.idf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean lambda$_soapText_isComment$28;
                lambda$_soapText_isComment$28 = DomImpl.lambda$_soapText_isComment$28(org.apache.xmlbeans.impl.soap.Text.this, (DomImpl.Dom) obj);
                return lambda$_soapText_isComment$28;
            }
        })).booleanValue();
    }

    public static String _text_getWholeText(Dom dom) {
        throw new DomLevel3NotImplemented();
    }

    public static boolean _text_isElementContentWhitespace(Dom dom) {
        throw new DomLevel3NotImplemented();
    }

    public static Text _text_replaceWholeText(Dom dom, String str) {
        throw new DomLevel3NotImplemented();
    }

    public static Text _text_splitText(Dom dom, int i) {
        String _characterData_getData = _characterData_getData(dom);
        if (i < 0 || i > _characterData_getData.length()) {
            throw new IndexSizeError();
        }
        _characterData_deleteData(dom, i, _characterData_getData.length() - i);
        Dom dom2 = (Dom) _document_createTextNode(dom, _characterData_getData.substring(i));
        Dom dom3 = (Dom) _node_getParentNode(dom);
        if (dom3 != null) {
            _node_insertBefore(dom3, (Text) dom2, _node_getNextSibling(dom));
            dom.locale().invalidateDomCaches(dom3);
        }
        return (Text) dom2;
    }

    private static List<Node> ancestorAndSelf(Node node) {
        LinkedList linkedList = new LinkedList();
        do {
            linkedList.addFirst(node);
            node = node.getParentNode();
        } while (node != null);
        return linkedList;
    }

    public static Node append(Dom dom, Dom dom2) {
        return node_insertBefore(dom2, dom, null);
    }

    public static Element attr_getOwnerElement(Dom dom) {
        Cur tempCur = dom.tempCur();
        if (!tempCur.toParentRaw()) {
            tempCur.release();
            return null;
        }
        Dom dom2 = tempCur.getDom();
        tempCur.release();
        return (Element) dom2;
    }

    public static int attributes_getLength(Dom dom) {
        Cur tempCur = dom.tempCur();
        int i = 0;
        while (tempCur.toNextAttr()) {
            i++;
        }
        tempCur.release();
        return i;
    }

    public static Node attributes_getNamedItem(Dom dom, String str) {
        Dom dom2;
        Cur tempCur = dom.tempCur();
        while (true) {
            if (!tempCur.toNextAttr()) {
                dom2 = null;
                break;
            }
            dom2 = tempCur.getDom();
            if (_node_getNodeName(dom2).equals(str)) {
                break;
            }
        }
        tempCur.release();
        return (Node) dom2;
    }

    public static Node attributes_getNamedItemNS(Dom dom, String str, String str2) {
        Dom dom2;
        if (str == null) {
            str = "";
        }
        Cur tempCur = dom.tempCur();
        while (true) {
            if (!tempCur.toNextAttr()) {
                dom2 = null;
                break;
            }
            dom2 = tempCur.getDom();
            QName qName = dom2.getQName();
            if (qName.getNamespaceURI().equals(str) && qName.getLocalPart().equals(str2)) {
                break;
            }
        }
        tempCur.release();
        return (Node) dom2;
    }

    public static Node attributes_item(Dom dom, int i) {
        Dom dom2 = null;
        if (i < 0) {
            return null;
        }
        Cur tempCur = dom.tempCur();
        while (true) {
            if (!tempCur.toNextAttr()) {
                break;
            }
            int i2 = i - 1;
            if (i == 0) {
                dom2 = tempCur.getDom();
                break;
            }
            i = i2;
        }
        tempCur.release();
        return (Node) dom2;
    }

    public static Node attributes_removeNamedItem(Dom dom, String str) {
        Cur tempCur = dom.tempCur();
        Dom dom2 = null;
        while (tempCur.toNextAttr()) {
            Dom dom3 = tempCur.getDom();
            if (_node_getNodeName(dom3).equals(str)) {
                if (dom2 == null) {
                    dom2 = dom3;
                }
                if (((AttrXobj) dom3).isId()) {
                    Document node_getOwnerDocument = node_getOwnerDocument(dom3);
                    String node_getNodeValue = node_getNodeValue(dom3);
                    if (node_getOwnerDocument instanceof DocumentXobj) {
                        ((DocumentXobj) node_getOwnerDocument).removeIdElement(node_getNodeValue);
                    }
                }
                removeNode(dom3);
                tempCur.toPrevAttr();
            }
        }
        tempCur.release();
        if (dom2 != null) {
            return (Node) dom2;
        }
        throw new NotFoundErr("Named item not found: " + str);
    }

    public static Node attributes_removeNamedItemNS(Dom dom, String str, String str2) {
        if (str == null) {
            str = "";
        }
        Cur tempCur = dom.tempCur();
        Dom dom2 = null;
        while (tempCur.toNextAttr()) {
            Dom dom3 = tempCur.getDom();
            QName qName = dom3.getQName();
            if (qName.getNamespaceURI().equals(str) && qName.getLocalPart().equals(str2)) {
                if (dom2 == null) {
                    dom2 = dom3;
                }
                if (((AttrXobj) dom3).isId()) {
                    Document node_getOwnerDocument = node_getOwnerDocument(dom3);
                    String node_getNodeValue = node_getNodeValue(dom3);
                    if (node_getOwnerDocument instanceof DocumentXobj) {
                        ((DocumentXobj) node_getOwnerDocument).removeIdElement(node_getNodeValue);
                    }
                }
                removeNode(dom3);
                tempCur.toPrevAttr();
            }
        }
        tempCur.release();
        if (dom2 != null) {
            return (Node) dom2;
        }
        throw new NotFoundErr("Named item not found: uri=" + str + ", local=" + str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Node attributes_setNamedItem(Dom dom, Dom dom2) {
        if (attr_getOwnerElement(dom2) != null) {
            throw new InuseAttributeError();
        }
        if (dom2.nodeType() != 2) {
            throw new HierarchyRequestErr("Node is not an attribute");
        }
        String _node_getNodeName = _node_getNodeName(dom2);
        Cur tempCur = dom.tempCur();
        Dom dom3 = null;
        while (tempCur.toNextAttr()) {
            Dom dom4 = tempCur.getDom();
            if (_node_getNodeName(dom4).equals(_node_getNodeName)) {
                if (dom3 == null) {
                    dom3 = dom4;
                } else {
                    removeNode(dom4);
                    tempCur.toPrevAttr();
                }
            }
        }
        if (dom3 == null) {
            tempCur.moveToDom(dom);
            tempCur.next();
            Cur.moveNode((Xobj) dom2, tempCur);
        } else {
            tempCur.moveToDom(dom3);
            Cur.moveNode((Xobj) dom2, tempCur);
            removeNode(dom3);
        }
        tempCur.release();
        return (Node) dom3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Node attributes_setNamedItemNS(Dom dom, Dom dom2) {
        Element attr_getOwnerElement = attr_getOwnerElement(dom2);
        if (attr_getOwnerElement == dom) {
            return (Node) dom2;
        }
        if (attr_getOwnerElement != null) {
            throw new InuseAttributeError();
        }
        if (dom2.nodeType() != 2) {
            throw new HierarchyRequestErr("Node is not an attribute");
        }
        QName qName = dom2.getQName();
        Cur tempCur = dom.tempCur();
        Dom dom3 = null;
        while (tempCur.toNextAttr()) {
            Dom dom4 = tempCur.getDom();
            if (dom4.getQName().equals(qName)) {
                if (dom3 == null) {
                    dom3 = dom4;
                } else {
                    removeNode(dom4);
                    tempCur.toPrevAttr();
                }
            }
        }
        if (dom3 == null) {
            tempCur.moveToDom(dom);
            tempCur.next();
            Cur.moveNode((Xobj) dom2, tempCur);
        } else {
            tempCur.moveToDom(dom3);
            Cur.moveNode((Xobj) dom2, tempCur);
            removeNode(dom3);
        }
        tempCur.release();
        return (Node) dom3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int childNodes_getLength(Dom dom) {
        switch (dom.nodeType()) {
            case 3:
            case 4:
            case 7:
            case 8:
                return 0;
            case 5:
                throw new RuntimeException("Not impl");
            case 6:
            case 10:
            case 12:
                throw new RuntimeException("Not impl");
            case 9:
            case 11:
            default:
                Xobj xobj = (Xobj) dom;
                xobj.ensureOccupancy();
                int domZeroOneChildren = xobj.getDomZeroOneChildren();
                return domZeroOneChildren < 2 ? domZeroOneChildren : dom.locale().domLength(dom);
        }
    }

    public static Node childNodes_item(Dom dom, int i) {
        if (i < 0) {
            return null;
        }
        switch (dom.nodeType()) {
            case 3:
            case 4:
            case 7:
            case 8:
                return null;
            case 5:
                throw new RuntimeException("Not impl");
            case 6:
            case 10:
            case 12:
                throw new RuntimeException("Not impl");
            case 9:
            case 11:
            default:
                return i == 0 ? node_getFirstChild(dom) : (Node) dom.locale().findDomNthChild(dom, i);
        }
    }

    public static DetailEntry detail_addDetailEntry(Dom dom, final Name name) {
        final Detail detail = (Detail) dom;
        return (DetailEntry) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.ibf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DetailEntry lambda$detail_addDetailEntry$91;
                lambda$detail_addDetailEntry$91 = DomImpl.lambda$detail_addDetailEntry$91(Detail.this, name, (DomImpl.Dom) obj);
                return lambda$detail_addDetailEntry$91;
            }
        });
    }

    public static Iterator<DetailEntry> detail_getDetailEntries(Dom dom) {
        final Detail detail = (Detail) dom;
        return (Iterator) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.vdf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Iterator lambda$detail_getDetailEntries$92;
                lambda$detail_getDetailEntries$92 = DomImpl.lambda$detail_getDetailEntries$92(Detail.this, (DomImpl.Dom) obj);
                return lambda$detail_getDetailEntries$92;
            }
        });
    }

    public static Attr document_createAttribute(Dom dom, String str) {
        validateName(str);
        Locale locale = dom.locale();
        Cur tempCur = locale.tempCur();
        tempCur.createAttr(locale.makeQualifiedQName("", str));
        AttrXobj attrXobj = (AttrXobj) tempCur.getDom();
        tempCur.release();
        attrXobj._canHavePrefixUri = false;
        return attrXobj;
    }

    public static Attr document_createAttributeNS(Dom dom, String str, String str2) {
        validateQualifiedName(str2, str, true);
        Locale locale = dom.locale();
        Cur tempCur = locale.tempCur();
        tempCur.createAttr(locale.makeQualifiedQName(str, str2));
        Dom dom2 = tempCur.getDom();
        tempCur.release();
        return (Attr) dom2;
    }

    public static CDATASection document_createCDATASection(Dom dom, String str) {
        CdataNode createCdataNode = dom.locale().createCdataNode();
        if (str == null) {
            str = "";
        }
        createCdataNode.setChars(str, 0, str.length());
        return createCdataNode;
    }

    public static Comment document_createComment(Dom dom, String str) {
        Cur tempCur = dom.locale().tempCur();
        tempCur.createComment();
        Dom dom2 = tempCur.getDom();
        if (str != null) {
            tempCur.next();
            tempCur.insertString(str);
        }
        tempCur.release();
        return (Comment) dom2;
    }

    public static DocumentFragment document_createDocumentFragment(Dom dom) {
        Cur tempCur = dom.locale().tempCur();
        tempCur.createDomDocFragRoot();
        Dom dom2 = tempCur.getDom();
        tempCur.release();
        return (DocumentFragment) dom2;
    }

    public static Element document_createElement(Dom dom, String str) {
        validateName(str);
        Locale locale = dom.locale();
        Cur tempCur = locale.tempCur();
        tempCur.createElement(locale.makeQualifiedQName("", str));
        ElementXobj elementXobj = (ElementXobj) tempCur.getDom();
        tempCur.release();
        elementXobj._canHavePrefixUri = false;
        return elementXobj;
    }

    public static Element document_createElementNS(Dom dom, String str, String str2) {
        validateQualifiedName(str2, str, false);
        Locale locale = dom.locale();
        Cur tempCur = locale.tempCur();
        tempCur.createElement(locale.makeQualifiedQName(str, str2));
        Dom dom2 = tempCur.getDom();
        tempCur.release();
        return (Element) dom2;
    }

    public static ProcessingInstruction document_createProcessingInstruction(Dom dom, String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Target is null");
        }
        if (str.length() == 0) {
            throw new IllegalArgumentException("Target is empty");
        }
        if (!XMLChar.isValidName(str)) {
            throw new InvalidCharacterError("Target has an invalid character");
        }
        if (Locale.beginsWithXml(str) && str.length() == 3) {
            throw new InvalidCharacterError("Invalid target - is 'xml'");
        }
        Cur tempCur = dom.locale().tempCur();
        tempCur.createProcinst(str);
        Dom dom2 = tempCur.getDom();
        if (str2 != null) {
            tempCur.next();
            tempCur.insertString(str2);
        }
        tempCur.release();
        return (ProcessingInstruction) dom2;
    }

    public static Text document_createTextNode(Dom dom, String str) {
        TextNode createTextNode = dom.locale().createTextNode();
        if (str == null) {
            str = "";
        }
        createTextNode.setChars(str, 0, str.length());
        return createTextNode;
    }

    public static DocumentType document_getDoctype(Dom dom) {
        return null;
    }

    public static Element document_getDocumentElement(Dom dom) {
        Node firstChild = firstChild(dom);
        while (firstChild != null) {
            Dom dom2 = (Dom) firstChild;
            if (dom2.nodeType() == 1) {
                return (Element) firstChild;
            }
            firstChild = nextSibling(dom2);
        }
        return null;
    }

    public static NodeList document_getElementsByTagName(Dom dom, String str) {
        return new ElementsByTagNameNodeList(dom, str);
    }

    public static NodeList document_getElementsByTagNameNS(Dom dom, String str, String str2) {
        return new ElementsByTagNameNSNodeList(dom, str, str2);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x000c. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0119  */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v19, types: [org.w3c.dom.Node] */
    /* JADX WARN: Type inference failed for: r1v20, types: [org.w3c.dom.DocumentFragment] */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.w3c.dom.Node document_importNode(org.apache.xmlbeans.impl.store.DomImpl.Dom r8, org.w3c.dom.Node r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.DomImpl.document_importNode(org.apache.xmlbeans.impl.store.DomImpl$Dom, org.w3c.dom.Node, boolean):org.w3c.dom.Node");
    }

    public static Document domImplementation_createDocument(Locale locale, String str, String str2, DocumentType documentType) {
        validateQualifiedName(str2, str, false);
        Cur tempCur = locale.tempCur();
        tempCur.createDomDocumentRoot();
        Document document = (Document) tempCur.getDom();
        tempCur.next();
        tempCur.createElement(locale.makeQualifiedQName(str, str2));
        if (documentType != null) {
            throw new RuntimeException("Not impl");
        }
        tempCur.toParent();
        try {
            Locale.autoTypeDocument(tempCur, null, null);
            tempCur.release();
            return document;
        } catch (XmlException e) {
            throw new XmlRuntimeException(e);
        }
    }

    public static NodeList element_getElementsByTagName(Dom dom, String str) {
        return new ElementsByTagNameNodeList(dom, str);
    }

    public static NodeList element_getElementsByTagNameNS(Dom dom, String str, String str2) {
        return new ElementsByTagNameNSNodeList(dom, str, str2);
    }

    public static void element_setAttribute(Dom dom, String str, String str2) {
        Object attributes_getNamedItem = attributes_getNamedItem(dom, str);
        if (attributes_getNamedItem == null) {
            Dom dom2 = (Dom) node_getOwnerDocument(dom);
            if (dom2 == null) {
                throw new NotFoundErr("Document element can't be determined.");
            }
            attributes_getNamedItem = document_createAttribute(dom2, str);
            attributes_setNamedItem(dom, (Dom) attributes_getNamedItem);
        }
        node_setNodeValue((Dom) attributes_getNamedItem, str2);
    }

    public static void element_setAttributeNS(Dom dom, String str, String str2, String str3) {
        validateQualifiedName(str2, str, true);
        QName makeQualifiedQName = dom.locale().makeQualifiedQName(str, str2);
        String localPart = makeQualifiedQName.getLocalPart();
        String validatePrefix = validatePrefix(makeQualifiedQName.getPrefix(), str, localPart, true);
        Object attributes_getNamedItemNS = attributes_getNamedItemNS(dom, str, localPart);
        if (attributes_getNamedItemNS == null) {
            attributes_getNamedItemNS = document_createAttributeNS((Dom) node_getOwnerDocument(dom), str, localPart);
            attributes_setNamedItemNS(dom, (Dom) attributes_getNamedItemNS);
        }
        Dom dom2 = (Dom) attributes_getNamedItemNS;
        node_setPrefix(dom2, validatePrefix);
        node_setNodeValue(dom2, str3);
    }

    public static Node firstChild(Dom dom) {
        return node_getFirstChild(dom);
    }

    public static XmlCursor getXmlCursor(Dom dom) {
        Cur tempCur = dom.tempCur();
        Cursor cursor = new Cursor(tempCur);
        tempCur.release();
        return cursor;
    }

    public static XmlObject getXmlObject(Dom dom) {
        Cur tempCur = dom.tempCur();
        XmlObject object = tempCur.getObject();
        tempCur.release();
        return object;
    }

    public static XMLStreamReader getXmlStreamReader(Dom dom) {
        XMLStreamReader newXmlStreamReader;
        switch (dom.nodeType()) {
            case 1:
            case 2:
            case 7:
            case 8:
            case 9:
            case 11:
                Cur tempCur = dom.tempCur();
                XMLStreamReader newXmlStreamReader2 = Jsr173.newXmlStreamReader(tempCur, null);
                tempCur.release();
                return newXmlStreamReader2;
            case 3:
            case 4:
                CharNode charNode = (CharNode) dom;
                Cur tempCur2 = charNode.tempCur();
                if (tempCur2 == null) {
                    tempCur2 = dom.locale().tempCur();
                    newXmlStreamReader = Jsr173.newXmlStreamReader(tempCur2, charNode.getObject(), charNode._off, charNode._cch);
                } else {
                    newXmlStreamReader = Jsr173.newXmlStreamReader(tempCur2, tempCur2.getChars(charNode._cch), tempCur2._offSrc, tempCur2._cchSrc);
                }
                tempCur2.release();
                return newXmlStreamReader;
            case 5:
            case 6:
            case 10:
            case 12:
                throw new RuntimeException("Not impl");
            default:
                throw new RuntimeException("Unknown kind");
        }
    }

    public static Element impl_saajCallback_createSoapElement(Dom dom, QName qName, QName qName2) {
        Cur tempCur = dom.locale().tempCur();
        tempCur.createElement(qName, qName2);
        Dom dom2 = tempCur.getDom();
        tempCur.release();
        return (Element) dom2;
    }

    public static Text impl_saajCallback_ensureSoapTextNode(Dom dom) {
        return null;
    }

    public static Object impl_saajCallback_getSaajData(Dom dom) {
        Cur tempCur = dom.locale().tempCur();
        tempCur.moveToDom(dom);
        SaajData saajData = (SaajData) tempCur.getBookmark(SaajData.class);
        Object obj = saajData == null ? null : saajData._obj;
        tempCur.release();
        return obj;
    }

    public static Element impl_saajCallback_importSoapElement(Dom dom, Element element, boolean z, QName qName) {
        throw new RuntimeException("Not impl");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void impl_saajCallback_setSaajData(Dom dom, Object obj) {
        Cur tempCur = dom.locale().tempCur();
        tempCur.moveToDom(dom);
        SaajData saajData = null;
        Object[] objArr = 0;
        if (obj != null) {
            SaajData saajData2 = (SaajData) tempCur.getBookmark(SaajData.class);
            if (saajData2 == null) {
                saajData2 = new SaajData();
            }
            saajData = saajData2;
            saajData._obj = obj;
        }
        tempCur.setBookmark(SaajData.class, saajData);
        tempCur.release();
    }

    public static Node insert(Dom dom, Dom dom2) {
        return node_insertBefore((Dom) parent(dom2), dom, dom2);
    }

    private static String isValidChild(Dom dom, Dom dom2) {
        int nodeType = dom.nodeType();
        int nodeType2 = dom2.nodeType();
        switch (nodeType) {
            case 1:
            case 5:
            case 6:
            case 11:
                if (nodeType2 == 1 || nodeType2 == 3 || nodeType2 == 4 || nodeType2 == 5 || nodeType2 == 7 || nodeType2 == 8) {
                    return null;
                }
            case 2:
                if (nodeType2 == 3 || nodeType2 == 5) {
                    return null;
                }
            case 3:
            case 4:
            case 7:
            case 8:
            case 10:
            case 12:
                return nodeKindName(nodeType) + " nodes may not have any children";
            case 9:
                if (nodeType2 == 1) {
                    if (document_getDocumentElement(dom) != null) {
                        return "Documents may only have a maximum of one document element";
                    }
                    return null;
                }
                if (nodeType2 == 10) {
                    if (document_getDoctype(dom) != null) {
                        return "Documents may only have a maximum of one document type node";
                    }
                    return null;
                }
                if (nodeType2 == 7 || nodeType2 == 8) {
                    return null;
                }
        }
        return nodeKindName(nodeType) + " nodes may not have " + nodeKindName(nodeType2) + " nodes as children";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Node lambda$_attributes_getNamedItemNS$23(String str, String str2, Dom dom) {
        return attributes_getNamedItemNS(dom, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Node lambda$_attributes_item$27(int i, Dom dom) {
        return attributes_item(dom, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Node lambda$_attributes_removeNamedItem$24(String str, Dom dom) {
        return attributes_removeNamedItem(dom, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Node lambda$_attributes_removeNamedItemNS$25(String str, String str2, Dom dom) {
        return attributes_removeNamedItemNS(dom, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Node lambda$_attributes_setNamedItem$21(Dom dom, Dom dom2) {
        return attributes_setNamedItem(dom2, dom);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Node lambda$_attributes_setNamedItemNS$26(Dom dom, Dom dom2) {
        return attributes_setNamedItemNS(dom2, dom);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Node lambda$_childNodes_item$16(int i, Dom dom) {
        return childNodes_item(dom, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Attr lambda$_document_createAttribute$3(String str, Dom dom) {
        return document_createAttribute(dom, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Attr lambda$_document_createAttributeNS$4(String str, String str2, Dom dom) {
        return document_createAttributeNS(dom, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Comment lambda$_document_createComment$5(String str, Dom dom) {
        return document_createComment(dom, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Element lambda$_document_createElement$1(String str, Dom dom) {
        return document_createElement(dom, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Element lambda$_document_createElementNS$2(String str, String str2, Dom dom) {
        return document_createElementNS(dom, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ProcessingInstruction lambda$_document_createProcessingInstruction$6(String str, String str2, Dom dom) {
        return document_createProcessingInstruction(dom, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ NodeList lambda$_document_getElementsByTagName$7(String str, Dom dom) {
        return document_getElementsByTagName(dom, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ NodeList lambda$_document_getElementsByTagNameNS$8(String str, String str2, Dom dom) {
        return document_getElementsByTagNameNS(dom, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Node lambda$_document_importNode$9(Node node, boolean z, Dom dom) {
        return document_importNode(dom, node, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ NodeList lambda$_element_getElementsByTagName$19(String str, Dom dom) {
        return element_getElementsByTagName(dom, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ NodeList lambda$_element_getElementsByTagNameNS$20(String str, String str2, Dom dom) {
        return element_getElementsByTagNameNS(dom, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Node lambda$_node_cloneNode$13(boolean z, Dom dom) {
        return node_cloneNode(dom, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Node lambda$_node_insertBefore$11(Dom dom, Dom dom2, Dom dom3) {
        return node_insertBefore(dom3, dom, dom2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Node lambda$_node_removeChild$12(Dom dom, Dom dom2) {
        return node_removeChild(dom2, dom);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Node lambda$_node_replaceChild$10(Dom dom, Dom dom2, Dom dom3) {
        return node_replaceChild(dom3, dom, dom2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SOAPElement lambda$_soapElement_addAttribute$42(Dom dom, SOAPElement sOAPElement, Name name, String str) throws SOAPException {
        return dom.locale()._saaj.soapElement_addAttribute(sOAPElement, name, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SOAPElement lambda$_soapElement_addChildElement$43(Dom dom, SOAPElement sOAPElement, SOAPElement sOAPElement2) throws SOAPException {
        return dom.locale()._saaj.soapElement_addChildElement(sOAPElement, sOAPElement2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SOAPElement lambda$_soapElement_addChildElement$44(Dom dom, SOAPElement sOAPElement, Name name) throws SOAPException {
        return dom.locale()._saaj.soapElement_addChildElement(sOAPElement, name);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SOAPElement lambda$_soapElement_addChildElement$45(Dom dom, SOAPElement sOAPElement, String str) throws SOAPException {
        return dom.locale()._saaj.soapElement_addChildElement(sOAPElement, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SOAPElement lambda$_soapElement_addChildElement$46(Dom dom, SOAPElement sOAPElement, String str, String str2) throws SOAPException {
        return dom.locale()._saaj.soapElement_addChildElement(sOAPElement, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SOAPElement lambda$_soapElement_addChildElement$47(Dom dom, SOAPElement sOAPElement, String str, String str2, String str3) throws SOAPException {
        return dom.locale()._saaj.soapElement_addChildElement(sOAPElement, str, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SOAPElement lambda$_soapElement_addNamespaceDeclaration$48(SOAPElement sOAPElement, String str, String str2, Dom dom) {
        return dom.locale()._saaj.soapElement_addNamespaceDeclaration(sOAPElement, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SOAPElement lambda$_soapElement_addTextNode$49(SOAPElement sOAPElement, String str, Dom dom) {
        return dom.locale()._saaj.soapElement_addTextNode(sOAPElement, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Iterator lambda$_soapElement_getAllAttributes$39(SOAPElement sOAPElement, Dom dom) {
        return dom.locale()._saaj.soapElement_getAllAttributes(sOAPElement);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$_soapElement_getAttributeValue$50(SOAPElement sOAPElement, Name name, Dom dom) {
        return dom.locale()._saaj.soapElement_getAttributeValue(sOAPElement, name);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Iterator lambda$_soapElement_getChildElements$40(SOAPElement sOAPElement, Dom dom) {
        return dom.locale()._saaj.soapElement_getChildElements(sOAPElement);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Iterator lambda$_soapElement_getChildElements$51(SOAPElement sOAPElement, Name name, Dom dom) {
        return dom.locale()._saaj.soapElement_getChildElements(sOAPElement, name);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Name lambda$_soapElement_getElementName$52(SOAPElement sOAPElement, Dom dom) {
        return dom.locale()._saaj.soapElement_getElementName(sOAPElement);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$_soapElement_getEncodingStyle$36(SOAPElement sOAPElement, Dom dom) {
        return dom.locale()._saaj.soapElement_getEncodingStyle(sOAPElement);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Iterator lambda$_soapElement_getNamespacePrefixes$41(SOAPElement sOAPElement, Dom dom) {
        return dom.locale()._saaj.soapElement_getNamespacePrefixes(sOAPElement);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$_soapElement_getNamespaceURI$53(SOAPElement sOAPElement, String str, Dom dom) {
        return dom.locale()._saaj.soapElement_getNamespaceURI(sOAPElement, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Iterator lambda$_soapElement_getVisibleNamespacePrefixes$54(SOAPElement sOAPElement, Dom dom) {
        return dom.locale()._saaj.soapElement_getVisibleNamespacePrefixes(sOAPElement);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$_soapElement_removeAttribute$55(SOAPElement sOAPElement, Name name, Dom dom) {
        return Boolean.valueOf(dom.locale()._saaj.soapElement_removeAttribute(sOAPElement, name));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$_soapElement_removeContents$35(SOAPElement sOAPElement, Dom dom) {
        dom.locale()._saaj.soapElement_removeContents(sOAPElement);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$_soapElement_removeNamespaceDeclaration$38(SOAPElement sOAPElement, String str, Dom dom) {
        return Boolean.valueOf(dom.locale()._saaj.soapElement_removeNamespaceDeclaration(sOAPElement, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$_soapElement_setEncodingStyle$37(SOAPElement sOAPElement, String str, Dom dom) {
        dom.locale()._saaj.soapElement_setEncodingStyle(sOAPElement, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SOAPBody lambda$_soapEnvelope_addBody$56(Dom dom, SOAPEnvelope sOAPEnvelope) throws SOAPException {
        return dom.locale()._saaj.soapEnvelope_addBody(sOAPEnvelope);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SOAPHeader lambda$_soapEnvelope_addHeader$59(Dom dom, SOAPEnvelope sOAPEnvelope) throws SOAPException {
        return dom.locale()._saaj.soapEnvelope_addHeader(sOAPEnvelope);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Name lambda$_soapEnvelope_createName$60(SOAPEnvelope sOAPEnvelope, String str, Dom dom) {
        return dom.locale()._saaj.soapEnvelope_createName(sOAPEnvelope, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Name lambda$_soapEnvelope_createName$61(SOAPEnvelope sOAPEnvelope, String str, String str2, String str3, Dom dom) {
        return dom.locale()._saaj.soapEnvelope_createName(sOAPEnvelope, str, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SOAPBody lambda$_soapEnvelope_getBody$57(Dom dom, SOAPEnvelope sOAPEnvelope) throws SOAPException {
        return dom.locale()._saaj.soapEnvelope_getBody(sOAPEnvelope);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SOAPHeader lambda$_soapEnvelope_getHeader$58(Dom dom, SOAPEnvelope sOAPEnvelope) throws SOAPException {
        return dom.locale()._saaj.soapEnvelope_getHeader(sOAPEnvelope);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$_soapNode_detachNode$29(org.apache.xmlbeans.impl.soap.Node node, Dom dom) {
        dom.locale()._saaj.soapNode_detachNode(node);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SOAPElement lambda$_soapNode_getParentElement$33(org.apache.xmlbeans.impl.soap.Node node, Dom dom) {
        return dom.locale()._saaj.soapNode_getParentElement(node);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$_soapNode_getValue$31(org.apache.xmlbeans.impl.soap.Node node, Dom dom) {
        return dom.locale()._saaj.soapNode_getValue(node);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$_soapNode_recycleNode$30(org.apache.xmlbeans.impl.soap.Node node, Dom dom) {
        dom.locale()._saaj.soapNode_recycleNode(node);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$_soapNode_setParentElement$34(org.apache.xmlbeans.impl.soap.Node node, SOAPElement sOAPElement, Dom dom) {
        dom.locale()._saaj.soapNode_setParentElement(node, sOAPElement);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$_soapNode_setValue$32(org.apache.xmlbeans.impl.soap.Node node, String str, Dom dom) {
        dom.locale()._saaj.soapNode_setValue(node, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$_soapPart_addMimeHeader$100(SOAPPart sOAPPart, String str, String str2, Dom dom) {
        dom.locale()._saaj.soapPart_addMimeHeader(sOAPPart, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Iterator lambda$_soapPart_getAllMimeHeaders$95(SOAPPart sOAPPart, Dom dom) {
        return dom.locale()._saaj.soapPart_getAllMimeHeaders(sOAPPart);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Source lambda$_soapPart_getContent$97(SOAPPart sOAPPart, Dom dom) {
        return dom.locale()._saaj.soapPart_getContent(sOAPPart);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SOAPEnvelope lambda$_soapPart_getEnvelope$96(SOAPPart sOAPPart, Dom dom) {
        return dom.locale()._saaj.soapPart_getEnvelope(sOAPPart);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Iterator lambda$_soapPart_getMatchingMimeHeaders$102(SOAPPart sOAPPart, String[] strArr, Dom dom) {
        return dom.locale()._saaj.soapPart_getMatchingMimeHeaders(sOAPPart, strArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$_soapPart_getMimeHeader$99(SOAPPart sOAPPart, String str, Dom dom) {
        return dom.locale()._saaj.soapPart_getMimeHeader(sOAPPart, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Iterator lambda$_soapPart_getNonMatchingMimeHeaders$103(SOAPPart sOAPPart, String[] strArr, Dom dom) {
        return dom.locale()._saaj.soapPart_getNonMatchingMimeHeaders(sOAPPart, strArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$_soapPart_removeAllMimeHeaders$93(SOAPPart sOAPPart, Dom dom) {
        dom.locale()._saaj.soapPart_removeAllMimeHeaders(sOAPPart);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$_soapPart_removeMimeHeader$94(SOAPPart sOAPPart, String str, Dom dom) {
        dom.locale()._saaj.soapPart_removeMimeHeader(sOAPPart, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$_soapPart_setContent$98(SOAPPart sOAPPart, Source source, Dom dom) {
        dom.locale()._saaj.soapPart_setContent(sOAPPart, source);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$_soapPart_setMimeHeader$101(SOAPPart sOAPPart, String str, String str2, Dom dom) {
        dom.locale()._saaj.soapPart_setMimeHeader(sOAPPart, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$_soapText_isComment$28(org.apache.xmlbeans.impl.soap.Text text, Dom dom) {
        return Boolean.valueOf(dom.locale()._saaj.soapText_isComment(text));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ DetailEntry lambda$detail_addDetailEntry$91(Detail detail, Name name, Dom dom) {
        return dom.locale()._saaj.detail_addDetailEntry(detail, name);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Iterator lambda$detail_getDetailEntries$92(Detail detail, Dom dom) {
        return dom.locale()._saaj.detail_getDetailEntries(detail);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Element lambda$saajCallback_createSoapElement$105(QName qName, QName qName2, Dom dom) {
        return impl_saajCallback_createSoapElement(dom, qName, qName2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Element lambda$saajCallback_importSoapElement$106(Element element, boolean z, QName qName, Dom dom) {
        return impl_saajCallback_importSoapElement(dom, element, z, qName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SOAPBodyElement lambda$soapBody_addBodyElement$71(SOAPBody sOAPBody, Name name, Dom dom) {
        return dom.locale()._saaj.soapBody_addBodyElement(sOAPBody, name);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SOAPBodyElement lambda$soapBody_addDocument$72(SOAPBody sOAPBody, Document document, Dom dom) {
        return dom.locale()._saaj.soapBody_addDocument(sOAPBody, document);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SOAPFault lambda$soapBody_addFault$69(Dom dom, SOAPBody sOAPBody) throws SOAPException {
        return dom.locale()._saaj.soapBody_addFault(sOAPBody);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SOAPFault lambda$soapBody_addFault$73(Dom dom, SOAPBody sOAPBody, Name name, String str) throws SOAPException {
        return dom.locale()._saaj.soapBody_addFault(sOAPBody, name, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SOAPFault lambda$soapBody_addFault$74(Dom dom, SOAPBody sOAPBody, Name name, String str, java.util.Locale locale) throws SOAPException {
        return dom.locale()._saaj.soapBody_addFault(sOAPBody, name, str, locale);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SOAPFault lambda$soapBody_getFault$70(SOAPBody sOAPBody, Dom dom) {
        return dom.locale()._saaj.soapBody_getFault(sOAPBody);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$soapBody_hasFault$68(SOAPBody sOAPBody, Dom dom) {
        return Boolean.valueOf(dom.locale()._saaj.soapBody_hasFault(sOAPBody));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Detail lambda$soapFault_addDetail$85(Dom dom, SOAPFault sOAPFault) throws SOAPException {
        return dom.locale()._saaj.soapFault_addDetail(sOAPFault);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Detail lambda$soapFault_getDetail$86(SOAPFault sOAPFault, Dom dom) {
        return dom.locale()._saaj.soapFault_getDetail(sOAPFault);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$soapFault_getFaultActor$79(SOAPFault sOAPFault, Dom dom) {
        return dom.locale()._saaj.soapFault_getFaultActor(sOAPFault);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$soapFault_getFaultCode$80(SOAPFault sOAPFault, Dom dom) {
        return dom.locale()._saaj.soapFault_getFaultCode(sOAPFault);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Name lambda$soapFault_getFaultCodeAsName$83(SOAPFault sOAPFault, Dom dom) {
        return dom.locale()._saaj.soapFault_getFaultCodeAsName(sOAPFault);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$soapFault_getFaultString$84(SOAPFault sOAPFault, Dom dom) {
        return dom.locale()._saaj.soapFault_getFaultString(sOAPFault);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.util.Locale lambda$soapFault_getFaultStringLocale$82(SOAPFault sOAPFault, Dom dom) {
        return dom.locale()._saaj.soapFault_getFaultStringLocale(sOAPFault);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$soapFault_setFaultActor$78(SOAPFault sOAPFault, String str, Dom dom) {
        dom.locale()._saaj.soapFault_setFaultActor(sOAPFault, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$soapFault_setFaultCode$77(Dom dom, SOAPFault sOAPFault, Name name) throws SOAPException {
        dom.locale()._saaj.soapFault_setFaultCode(sOAPFault, name);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$soapFault_setFaultCode$81(Dom dom, SOAPFault sOAPFault, String str) throws SOAPException {
        dom.locale()._saaj.soapFault_setFaultCode(sOAPFault, str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$soapFault_setFaultString$75(SOAPFault sOAPFault, String str, Dom dom) {
        dom.locale()._saaj.soapFault_setFaultString(sOAPFault, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$soapFault_setFaultString$76(SOAPFault sOAPFault, String str, java.util.Locale locale, Dom dom) {
        dom.locale()._saaj.soapFault_setFaultString(sOAPFault, str, locale);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$soapHeaderElement_getActor$90(SOAPHeaderElement sOAPHeaderElement, Dom dom) {
        return dom.locale()._saaj.soapHeaderElement_getActor(sOAPHeaderElement);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$soapHeaderElement_getMustUnderstand$88(SOAPHeaderElement sOAPHeaderElement, Dom dom) {
        return Boolean.valueOf(dom.locale()._saaj.soapHeaderElement_getMustUnderstand(sOAPHeaderElement));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$soapHeaderElement_setActor$89(SOAPHeaderElement sOAPHeaderElement, String str, Dom dom) {
        dom.locale()._saaj.soapHeaderElement_setActor(sOAPHeaderElement, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$soapHeaderElement_setMustUnderstand$87(SOAPHeaderElement sOAPHeaderElement, boolean z, Dom dom) {
        dom.locale()._saaj.soapHeaderElement_setMustUnderstand(sOAPHeaderElement, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SOAPHeaderElement lambda$soapHeader_addHeaderElement$67(SOAPHeader sOAPHeader, Name name, Dom dom) {
        return dom.locale()._saaj.soapHeader_addHeaderElement(sOAPHeader, name);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Iterator lambda$soapHeader_examineAllHeaderElements$62(SOAPHeader sOAPHeader, Dom dom) {
        return dom.locale()._saaj.soapHeader_examineAllHeaderElements(sOAPHeader);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Iterator lambda$soapHeader_examineHeaderElements$64(SOAPHeader sOAPHeader, String str, Dom dom) {
        return dom.locale()._saaj.soapHeader_examineHeaderElements(sOAPHeader, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Iterator lambda$soapHeader_examineMustUnderstandHeaderElements$65(SOAPHeader sOAPHeader, String str, Dom dom) {
        return dom.locale()._saaj.soapHeader_examineMustUnderstandHeaderElements(sOAPHeader, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Iterator lambda$soapHeader_extractAllHeaderElements$63(SOAPHeader sOAPHeader, Dom dom) {
        return dom.locale()._saaj.soapHeader_extractAllHeaderElements(sOAPHeader);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Iterator lambda$soapHeader_extractHeaderElements$66(SOAPHeader sOAPHeader, String str, Dom dom) {
        return dom.locale()._saaj.soapHeader_extractHeaderElements(sOAPHeader, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$syncWrapVoid$109(Consumer consumer, Dom dom) {
        consumer.accept(dom);
        return null;
    }

    public static Node nextSibling(Dom dom) {
        return node_getNextSibling(dom);
    }

    public static String nodeKindName(int i) {
        switch (i) {
            case 1:
                return "element";
            case 2:
                return "attribute";
            case 3:
                return "text";
            case 4:
                return "cdata section";
            case 5:
                return "entity reference";
            case 6:
                return "entity";
            case 7:
                return "processing instruction";
            case 8:
                return "comment";
            case 9:
                return "document";
            case 10:
                return "document type";
            case 11:
                return "document fragment";
            case 12:
                return "notation";
            default:
                throw new RuntimeException("Unknown node type");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v4, types: [org.apache.xmlbeans.impl.store.DomImpl$Dom] */
    /* JADX WARN: Type inference failed for: r1v6, types: [org.apache.xmlbeans.impl.store.CharNode] */
    /* JADX WARN: Type inference failed for: r1v7, types: [org.apache.xmlbeans.impl.store.DomImpl$Dom] */
    /* JADX WARN: Type inference failed for: r1v8 */
    public static Node node_cloneNode(Dom dom, boolean z) {
        Cur tempCur;
        Locale locale = dom.locale();
        ?? r1 = 0;
        r1 = 0;
        if (!z) {
            int nodeType = dom.nodeType();
            if (nodeType == 1) {
                tempCur = locale.tempCur();
                tempCur.createElement(dom.getQName());
                Element element = (Element) tempCur.getDom();
                NamedNodeMap attributes = ((Element) dom).getAttributes();
                for (int i = 0; i < attributes.getLength(); i++) {
                    element.setAttributeNodeNS((Attr) attributes.item(i).cloneNode(true));
                }
            } else if (nodeType == 2) {
                tempCur = locale.tempCur();
                tempCur.createAttr(dom.getQName());
            } else if (nodeType == 9) {
                tempCur = locale.tempCur();
                tempCur.createDomDocumentRoot();
            } else if (nodeType != 11) {
                tempCur = null;
            } else {
                tempCur = locale.tempCur();
                tempCur.createDomDocFragRoot();
            }
            if (tempCur != null) {
                r1 = tempCur.getDom();
                tempCur.release();
            }
        }
        if (r1 == 0) {
            switch (dom.nodeType()) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                case 11:
                    Cur tempCur2 = locale.tempCur();
                    Cur tempCur3 = dom.tempCur();
                    tempCur3.copyNode(tempCur2);
                    r1 = tempCur2.getDom();
                    tempCur2.release();
                    tempCur3.release();
                    break;
                case 3:
                case 4:
                    Cur tempCur4 = dom.tempCur();
                    r1 = dom.nodeType() == 3 ? locale.createTextNode() : locale.createCdataNode();
                    r1.setChars(tempCur4.getChars(((CharNode) dom)._cch), tempCur4._offSrc, tempCur4._cchSrc);
                    tempCur4.release();
                    break;
                case 5:
                case 6:
                case 10:
                case 12:
                    throw new RuntimeException("Not impl");
                default:
                    throw new RuntimeException("Unknown kind");
            }
        }
        return (Node) r1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Node node_getFirstChild(Dom dom) {
        int nodeType = dom.nodeType();
        if (nodeType != 1 && nodeType != 2) {
            if (nodeType == 5) {
                throw new RuntimeException("Not impl");
            }
            if (nodeType != 6) {
                switch (nodeType) {
                    case 9:
                    case 11:
                        break;
                    case 10:
                    case 12:
                        break;
                    default:
                        return null;
                }
            }
            throw new RuntimeException("Not impl");
        }
        Xobj xobj = (Xobj) dom;
        xobj.ensureOccupancy();
        if (xobj.isFirstChildPtrDomUsable()) {
            return (NodeXobj) xobj._firstChild;
        }
        Xobj lastAttr = xobj.lastAttr();
        if (lastAttr != null) {
            if (lastAttr.isNextSiblingPtrDomUsable()) {
                return (NodeXobj) lastAttr._nextSibling;
            }
            if (lastAttr.isCharNodesAfterUsable()) {
                return lastAttr._charNodesAfter;
            }
        }
        if (xobj.isCharNodesValueUsable()) {
            return xobj._charNodesValue;
        }
        return null;
    }

    public static Node node_getLastChild(Dom dom) {
        CharNode charNodes;
        CharNode charNode = null;
        switch (dom.nodeType()) {
            case 3:
            case 4:
            case 7:
            case 8:
                return null;
            case 5:
                throw new RuntimeException("Not impl");
            case 6:
            case 10:
            case 12:
                throw new RuntimeException("Not impl");
            case 9:
            case 11:
            default:
                Cur tempCur = dom.tempCur();
                if (tempCur.toLastChild()) {
                    Dom dom2 = tempCur.getDom();
                    tempCur.skip();
                    charNodes = tempCur.getCharNodes();
                    if (charNodes == null) {
                        charNode = dom2;
                    }
                } else {
                    tempCur.next();
                    charNodes = tempCur.getCharNodes();
                }
                if (charNode == null && charNodes != null) {
                    while (true) {
                        CharNode charNode2 = charNodes._next;
                        if (charNode2 != null) {
                            charNodes = charNode2;
                        } else {
                            charNode = charNodes;
                        }
                    }
                }
                tempCur.release();
                return charNode;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Node node_getNextSibling(Dom dom) {
        Node node = null;
        switch (dom.nodeType()) {
            case 1:
            case 7:
            case 8:
                Xobj xobj = (Xobj) dom;
                xobj.ensureOccupancy();
                if (xobj.isNextSiblingPtrDomUsable()) {
                    return (NodeXobj) xobj._nextSibling;
                }
                if (xobj.isCharNodesAfterUsable()) {
                    return xobj._charNodesAfter;
                }
                break;
            case 3:
            case 4:
                CharNode charNode = (CharNode) dom;
                if (!(charNode.getObject() instanceof Xobj)) {
                    return null;
                }
                Xobj xobj2 = (Xobj) charNode.getObject();
                xobj2._charNodesAfter = Cur.updateCharNodes(xobj2._locale, xobj2, xobj2._charNodesAfter, xobj2._cchAfter);
                xobj2._charNodesValue = Cur.updateCharNodes(xobj2._locale, xobj2, xobj2._charNodesValue, xobj2._cchValue);
                node = charNode._next;
                if (node == null) {
                    if (!charNode.isNodeAftertext()) {
                        node = (NodeXobj) xobj2._firstChild;
                        break;
                    } else {
                        node = (NodeXobj) xobj2._nextSibling;
                        break;
                    }
                }
                break;
            case 5:
            case 6:
            case 10:
            case 12:
                throw new RuntimeException("Not implemented");
        }
        return node;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String node_getNodeValue(Dom dom) {
        int nodeType = dom.nodeType();
        if (nodeType != 2) {
            if (nodeType == 3 || nodeType == 4) {
                CharNode charNode = (CharNode) dom;
                if (!(charNode.getObject() instanceof Xobj)) {
                    return CharUtil.getString(charNode.getObject(), charNode._off, charNode._cch);
                }
                Xobj xobj = (Xobj) charNode.getObject();
                xobj.ensureOccupancy();
                if (charNode.isNodeAftertext()) {
                    xobj._charNodesAfter = Cur.updateCharNodes(xobj._locale, xobj, xobj._charNodesAfter, xobj._cchAfter);
                    return xobj.getCharsAfterAsString(charNode._off, charNode._cch);
                }
                xobj._charNodesValue = Cur.updateCharNodes(xobj._locale, xobj, xobj._charNodesValue, xobj._cchValue);
                return xobj.getCharsValueAsString(charNode._off, charNode._cch);
            }
            if (nodeType != 7 && nodeType != 8) {
                return null;
            }
        }
        return ((Xobj) dom).getValueAsString();
    }

    public static Document node_getOwnerDocument(Dom dom) {
        if (dom.nodeType() == 9) {
            return null;
        }
        Locale locale = dom.locale();
        if (locale._ownerDoc == null) {
            Cur tempCur = locale.tempCur();
            tempCur.createDomDocumentRoot();
            locale._ownerDoc = tempCur.getDom();
            tempCur.release();
        }
        return (Document) locale._ownerDoc;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0007. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.w3c.dom.Node node_getParentNode(org.apache.xmlbeans.impl.store.DomImpl.Dom r3) {
        /*
            int r0 = r3.nodeType()
            java.lang.String r1 = "Not impl"
            r2 = 0
            switch(r0) {
                case 1: goto L2a;
                case 2: goto L28;
                case 3: goto L1e;
                case 4: goto L1e;
                case 5: goto L18;
                case 6: goto L12;
                case 7: goto L2a;
                case 8: goto L2a;
                case 9: goto L28;
                case 10: goto L12;
                case 11: goto L28;
                case 12: goto L12;
                default: goto La;
            }
        La:
            java.lang.RuntimeException r3 = new java.lang.RuntimeException
            java.lang.String r0 = "Unknown kind"
            r3.<init>(r0)
            throw r3
        L12:
            java.lang.RuntimeException r3 = new java.lang.RuntimeException
            r3.<init>(r1)
            throw r3
        L18:
            java.lang.RuntimeException r3 = new java.lang.RuntimeException
            r3.<init>(r1)
            throw r3
        L1e:
            org.apache.xmlbeans.impl.store.Cur r3 = r3.tempCur()
            if (r3 == 0) goto L38
            r3.toParent()
            goto L38
        L28:
            r3 = r2
            goto L38
        L2a:
            org.apache.xmlbeans.impl.store.Cur r3 = r3.tempCur()
            boolean r0 = r3.toParentRaw()
            if (r0 != 0) goto L38
            r3.release()
            goto L28
        L38:
            if (r3 != 0) goto L3b
            return r2
        L3b:
            org.apache.xmlbeans.impl.store.DomImpl$Dom r0 = r3.getDom()
            r3.release()
            org.w3c.dom.Node r0 = (org.w3c.dom.Node) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.DomImpl.node_getParentNode(org.apache.xmlbeans.impl.store.DomImpl$Dom):org.w3c.dom.Node");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0019, code lost:
    
        if (r2 != false) goto L12;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0055 -> B:11:0x004a). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.w3c.dom.Node node_getPreviousSibling(org.apache.xmlbeans.impl.store.DomImpl.Dom r3) {
        /*
            int r0 = r3.nodeType()
            r1 = 3
            if (r0 == r1) goto L26
            r1 = 4
            if (r0 == r1) goto L26
            r0 = r3
            org.apache.xmlbeans.impl.store.NodeXobj r0 = (org.apache.xmlbeans.impl.store.NodeXobj) r0
            org.apache.xmlbeans.impl.store.Xobj r1 = r0._prevSibling
            org.apache.xmlbeans.impl.store.NodeXobj r1 = (org.apache.xmlbeans.impl.store.NodeXobj) r1
            if (r1 == 0) goto L1b
            boolean r2 = r0 instanceof org.apache.xmlbeans.impl.store.AttrXobj
            if (r2 != 0) goto L4a
            boolean r2 = r1 instanceof org.apache.xmlbeans.impl.store.AttrXobj
            if (r2 == 0) goto L4a
        L1b:
            org.apache.xmlbeans.impl.store.Xobj r0 = r0._parent
            if (r0 == 0) goto L4a
            org.apache.xmlbeans.impl.store.DomImpl$Dom r0 = (org.apache.xmlbeans.impl.store.DomImpl.Dom) r0
            org.w3c.dom.Node r1 = node_getFirstChild(r0)
            goto L4a
        L26:
            r0 = r3
            org.apache.xmlbeans.impl.store.CharNode r0 = (org.apache.xmlbeans.impl.store.CharNode) r0
            java.lang.Object r1 = r0.getObject()
            boolean r1 = r1 instanceof org.apache.xmlbeans.impl.store.Xobj
            if (r1 != 0) goto L33
            r3 = 0
            return r3
        L33:
            java.lang.Object r1 = r0.getObject()
            org.apache.xmlbeans.impl.store.NodeXobj r1 = (org.apache.xmlbeans.impl.store.NodeXobj) r1
            r1.ensureOccupancy()
            boolean r2 = r0.isNodeAftertext()
            org.apache.xmlbeans.impl.store.CharNode r0 = r0._prev
            if (r0 != 0) goto L55
            if (r2 == 0) goto L47
            goto L4a
        L47:
            org.apache.xmlbeans.impl.store.CharNode r0 = r1._charNodesValue
            goto L55
        L4a:
            if (r1 == 0) goto L57
            r0 = r1
            org.apache.xmlbeans.impl.store.DomImpl$Dom r0 = (org.apache.xmlbeans.impl.store.DomImpl.Dom) r0
            org.w3c.dom.Node r0 = node_getNextSibling(r0)
            if (r0 == r3) goto L57
        L55:
            r1 = r0
            goto L4a
        L57:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.DomImpl.node_getPreviousSibling(org.apache.xmlbeans.impl.store.DomImpl$Dom):org.w3c.dom.Node");
    }

    public static boolean node_hasAttributes(Dom dom) {
        if (dom.nodeType() != 1) {
            return false;
        }
        Cur tempCur = dom.tempCur();
        boolean hasAttrs = tempCur.hasAttrs();
        tempCur.release();
        return hasAttrs;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Node node_insertBefore(Dom dom, Dom dom2, Dom dom3) {
        CharNode charNode;
        if (dom2 == dom3) {
            return (Node) dom2;
        }
        if (dom3 != null && parent(dom3) != dom) {
            throw new NotFoundErr("RefChild is not a child of this node");
        }
        int nodeType = dom2.nodeType();
        if (nodeType == 11) {
            Node firstChild = firstChild(dom2);
            while (firstChild != null) {
                Dom dom4 = (Dom) firstChild;
                validateNewChild(dom, dom4);
                firstChild = nextSibling(dom4);
            }
            Node firstChild2 = firstChild(dom2);
            while (firstChild2 != null) {
                Dom dom5 = (Dom) firstChild2;
                Node nextSibling = nextSibling(dom5);
                if (dom3 == null) {
                    append(dom5, dom);
                } else {
                    insert(dom5, dom3);
                }
                firstChild2 = nextSibling;
            }
            return (Node) dom2;
        }
        validateNewChild(dom, dom2);
        remove(dom2);
        dom.nodeType();
        if (nodeType != 1) {
            if (nodeType == 10) {
                throw new RuntimeException("Not implemented");
            }
            if (nodeType == 3 || nodeType == 4) {
                CharNode charNode2 = (CharNode) dom2;
                Cur tempCur = dom.tempCur();
                if (dom3 == null) {
                    tempCur.toEnd();
                } else {
                    int nodeType2 = dom3.nodeType();
                    if (nodeType2 == 3 || nodeType2 == 4) {
                        charNode = (CharNode) dom3;
                        tempCur.moveToCharNode(charNode);
                        CharNode insertNode = CharNode.insertNode(tempCur.getCharNodes(), charNode2, charNode);
                        tempCur.insertChars(charNode2.getObject(), charNode2._off, charNode2._cch);
                        tempCur.setCharNodes(insertNode);
                        tempCur.release();
                        return (Node) dom2;
                    }
                    if (nodeType2 == 5) {
                        throw new RuntimeException("Not implemented");
                    }
                    tempCur.moveToDom(dom3);
                }
                charNode = null;
                CharNode insertNode2 = CharNode.insertNode(tempCur.getCharNodes(), charNode2, charNode);
                tempCur.insertChars(charNode2.getObject(), charNode2._off, charNode2._cch);
                tempCur.setCharNodes(insertNode2);
                tempCur.release();
                return (Node) dom2;
            }
            if (nodeType == 5) {
                throw new RuntimeException("Not implemented");
            }
            if (nodeType != 7 && nodeType != 8) {
                throw new RuntimeException("Unexpected child node type");
            }
        }
        if (dom3 == null) {
            Cur tempCur2 = dom.tempCur();
            tempCur2.toEnd();
            Cur.moveNode((Xobj) dom2, tempCur2);
            tempCur2.release();
        } else {
            int nodeType3 = dom3.nodeType();
            if (nodeType3 == 3 || nodeType3 == 4) {
                ArrayList<Dom> arrayList = new ArrayList();
                while (dom3 != null && (dom3.nodeType() == 3 || dom3.nodeType() == 4)) {
                    Node nextSibling2 = nextSibling(dom3);
                    arrayList.add((Dom) remove(dom3));
                    dom3 = (Dom) nextSibling2;
                }
                if (dom3 == null) {
                    append(dom2, dom);
                } else {
                    insert(dom2, dom3);
                }
                Dom dom6 = (Dom) nextSibling(dom2);
                for (Dom dom7 : arrayList) {
                    if (dom6 == null) {
                        append(dom7, dom);
                    } else {
                        insert(dom7, dom6);
                    }
                }
            } else {
                if (nodeType3 == 5) {
                    throw new RuntimeException("Not implemented");
                }
                Cur tempCur3 = dom3.tempCur();
                Cur.moveNode((Xobj) dom2, tempCur3);
                tempCur3.release();
            }
        }
        return (Node) dom2;
    }

    public static void node_normalize(Dom dom) {
        switch (dom.nodeType()) {
            case 3:
            case 4:
            case 7:
            case 8:
                return;
            case 5:
                throw new RuntimeException("Not impl");
            case 6:
            case 10:
            case 12:
                throw new RuntimeException("Not impl");
            case 9:
            case 11:
            default:
                Cur tempCur = dom.tempCur();
                tempCur.push();
                do {
                    tempCur.nextWithAttrs();
                    CharNode charNodes = tempCur.getCharNodes();
                    if (charNodes != null) {
                        if (!tempCur.isText()) {
                            while (charNodes != null) {
                                charNodes.setChars(null, 0, 0);
                                charNodes = CharNode.remove(charNodes, charNodes);
                            }
                        } else if (charNodes._next != null) {
                            while (charNodes._next != null) {
                                charNodes.setChars(null, 0, 0);
                                charNodes = CharNode.remove(charNodes, charNodes._next);
                            }
                            charNodes._cch = Integer.MAX_VALUE;
                        }
                        tempCur.setCharNodes(charNodes);
                    }
                } while (!tempCur.isAtEndOfLastPush());
                tempCur.release();
                dom.locale().invalidateDomCaches(dom);
                return;
        }
    }

    public static Node node_removeChild(Dom dom, Dom dom2) {
        if (parent(dom2) != dom) {
            throw new NotFoundErr("Child to remove is not a child of given parent");
        }
        switch (dom2.nodeType()) {
            case 1:
            case 7:
            case 8:
                removeNode(dom2);
                break;
            case 2:
            case 9:
            case 11:
                throw new IllegalStateException();
            case 3:
            case 4:
                Cur tempCur = dom2.tempCur();
                CharNode charNodes = tempCur.getCharNodes();
                CharNode charNode = (CharNode) dom2;
                charNode.setChars(tempCur.moveChars(null, charNode._cch), tempCur._offSrc, tempCur._cchSrc);
                tempCur.setCharNodes(CharNode.remove(charNodes, charNode));
                tempCur.release();
                break;
            case 5:
                throw new RuntimeException("Not impl");
            case 6:
            case 10:
            case 12:
                throw new RuntimeException("Not impl");
            default:
                throw new RuntimeException("Unknown kind");
        }
        return (Node) dom2;
    }

    public static Node node_replaceChild(Dom dom, Dom dom2, Dom dom3) {
        Node node_getNextSibling = node_getNextSibling(dom3);
        node_removeChild(dom, dom3);
        try {
            node_insertBefore(dom, dom2, (Dom) node_getNextSibling);
            return (Node) dom3;
        } catch (DOMException e) {
            node_insertBefore(dom, dom3, (Dom) node_getNextSibling);
            throw e;
        }
    }

    public static void node_setNodeValue(Dom dom, String str) {
        if (str == null) {
            str = "";
        }
        int nodeType = dom.nodeType();
        if (nodeType == 2) {
            NodeList childNodes = ((Node) dom).getChildNodes();
            while (childNodes.getLength() > 1) {
                node_removeChild(dom, (Dom) childNodes.item(1));
            }
            if (childNodes.getLength() == 0) {
                TextNode createTextNode = dom.locale().createTextNode();
                createTextNode.setChars(str, 0, str.length());
                node_insertBefore(dom, createTextNode, null);
            } else {
                childNodes.item(0).setNodeValue(str);
            }
            if (((AttrXobj) dom).isId()) {
                Document node_getOwnerDocument = node_getOwnerDocument(dom);
                String node_getNodeValue = node_getNodeValue(dom);
                if (node_getOwnerDocument instanceof DocumentXobj) {
                    DocumentXobj documentXobj = (DocumentXobj) node_getOwnerDocument;
                    documentXobj.removeIdElement(node_getNodeValue);
                    documentXobj.addIdElement(str, (Dom) attr_getOwnerElement(dom));
                    return;
                }
                return;
            }
            return;
        }
        if (nodeType == 3 || nodeType == 4) {
            CharNode charNode = (CharNode) dom;
            Cur tempCur = charNode.tempCur();
            if (tempCur == null) {
                charNode.setChars(str, 0, str.length());
                return;
            }
            tempCur.moveChars(null, charNode._cch);
            charNode._cch = str.length();
            tempCur.insertString(str);
            tempCur.release();
            return;
        }
        if (nodeType == 7 || nodeType == 8) {
            Cur tempCur2 = dom.tempCur();
            tempCur2.next();
            tempCur2.getChars(-1);
            tempCur2.moveChars(null, tempCur2._cchSrc);
            tempCur2.insertString(str);
            tempCur2.release();
        }
    }

    public static void node_setPrefix(Dom dom, String str) {
        if (dom.nodeType() != 1 && dom.nodeType() != 2) {
            validatePrefix(str, "", "", false);
            return;
        }
        Cur tempCur = dom.tempCur();
        QName name = tempCur.getName();
        String namespaceURI = name.getNamespaceURI();
        String localPart = name.getLocalPart();
        tempCur.setName(dom.locale().makeQName(namespaceURI, localPart, validatePrefix(str, namespaceURI, localPart, dom.nodeType() == 2)));
        tempCur.release();
    }

    public static Node parent(Dom dom) {
        return node_getParentNode(dom);
    }

    public static Node prevSibling(Dom dom) {
        return node_getPreviousSibling(dom);
    }

    public static Node remove(Dom dom) {
        Node parent = parent(dom);
        if (parent != null) {
            node_removeChild((Dom) parent, dom);
        }
        return (Node) dom;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void removeNode(Dom dom) {
        CharNode charNodes;
        Cur tempCur = dom.tempCur();
        tempCur.toEnd();
        if (tempCur.next() && (charNodes = tempCur.getCharNodes()) != null) {
            tempCur.setCharNodes(null);
            Cur tempCur2 = dom.tempCur();
            tempCur2.setCharNodes(CharNode.appendNodes(tempCur2.getCharNodes(), charNodes));
            tempCur2.release();
        }
        tempCur.release();
        Cur.moveNode((Xobj) dom, null);
    }

    public static Element saajCallback_createSoapElement(Dom dom, final QName qName, final QName qName2) {
        return (Element) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.xcf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Element lambda$saajCallback_createSoapElement$105;
                lambda$saajCallback_createSoapElement$105 = DomImpl.lambda$saajCallback_createSoapElement$105(QName.this, qName2, (DomImpl.Dom) obj);
                return lambda$saajCallback_createSoapElement$105;
            }
        });
    }

    public static Text saajCallback_ensureSoapTextNode(Dom dom) {
        return (Text) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.nbf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DomImpl.impl_saajCallback_ensureSoapTextNode((DomImpl.Dom) obj);
            }
        });
    }

    public static Object saajCallback_getSaajData(Dom dom) {
        return syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.dbf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DomImpl.impl_saajCallback_getSaajData((DomImpl.Dom) obj);
            }
        });
    }

    public static Element saajCallback_importSoapElement(Dom dom, final Element element, final boolean z, final QName qName) {
        return (Element) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.ddf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Element lambda$saajCallback_importSoapElement$106;
                lambda$saajCallback_importSoapElement$106 = DomImpl.lambda$saajCallback_importSoapElement$106(Element.this, z, qName, (DomImpl.Dom) obj);
                return lambda$saajCallback_importSoapElement$106;
            }
        });
    }

    public static void saajCallback_setSaajData(Dom dom, final Object obj) {
        syncWrapVoid(dom, new Consumer() { // from class: com.sunia.HTREnginev2.adf
            @Override // java.util.function.Consumer
            public final void accept(Object obj2) {
                DomImpl.impl_saajCallback_setSaajData((DomImpl.Dom) obj2, obj);
            }
        });
    }

    public static SOAPBodyElement soapBody_addBodyElement(Dom dom, final Name name) {
        final SOAPBody sOAPBody = (SOAPBody) dom;
        return (SOAPBodyElement) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.qdf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SOAPBodyElement lambda$soapBody_addBodyElement$71;
                lambda$soapBody_addBodyElement$71 = DomImpl.lambda$soapBody_addBodyElement$71(SOAPBody.this, name, (DomImpl.Dom) obj);
                return lambda$soapBody_addBodyElement$71;
            }
        });
    }

    public static SOAPBodyElement soapBody_addDocument(Dom dom, final Document document) {
        final SOAPBody sOAPBody = (SOAPBody) dom;
        return (SOAPBodyElement) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.sef
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SOAPBodyElement lambda$soapBody_addDocument$72;
                lambda$soapBody_addDocument$72 = DomImpl.lambda$soapBody_addDocument$72(SOAPBody.this, document, (DomImpl.Dom) obj);
                return lambda$soapBody_addDocument$72;
            }
        });
    }

    public static SOAPFault soapBody_addFault(final Dom dom) throws SOAPException {
        final SOAPBody sOAPBody = (SOAPBody) dom;
        return (SOAPFault) syncWrapEx(dom, new WrapSoapEx() { // from class: org.apache.xmlbeans.impl.store.q
            @Override // org.apache.xmlbeans.impl.store.DomImpl.WrapSoapEx
            public final Object get() {
                SOAPFault lambda$soapBody_addFault$69;
                lambda$soapBody_addFault$69 = DomImpl.lambda$soapBody_addFault$69(DomImpl.Dom.this, sOAPBody);
                return lambda$soapBody_addFault$69;
            }
        });
    }

    public static SOAPFault soapBody_getFault(Dom dom) {
        final SOAPBody sOAPBody = (SOAPBody) dom;
        return (SOAPFault) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.qbf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SOAPFault lambda$soapBody_getFault$70;
                lambda$soapBody_getFault$70 = DomImpl.lambda$soapBody_getFault$70(SOAPBody.this, (DomImpl.Dom) obj);
                return lambda$soapBody_getFault$70;
            }
        });
    }

    public static boolean soapBody_hasFault(Dom dom) {
        final SOAPBody sOAPBody = (SOAPBody) dom;
        return ((Boolean) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.fdf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean lambda$soapBody_hasFault$68;
                lambda$soapBody_hasFault$68 = DomImpl.lambda$soapBody_hasFault$68(SOAPBody.this, (DomImpl.Dom) obj);
                return lambda$soapBody_hasFault$68;
            }
        })).booleanValue();
    }

    public static Detail soapFault_addDetail(final Dom dom) throws SOAPException {
        final SOAPFault sOAPFault = (SOAPFault) dom;
        return (Detail) syncWrapEx(dom, new WrapSoapEx() { // from class: org.apache.xmlbeans.impl.store.w
            @Override // org.apache.xmlbeans.impl.store.DomImpl.WrapSoapEx
            public final Object get() {
                Detail lambda$soapFault_addDetail$85;
                lambda$soapFault_addDetail$85 = DomImpl.lambda$soapFault_addDetail$85(DomImpl.Dom.this, sOAPFault);
                return lambda$soapFault_addDetail$85;
            }
        });
    }

    public static Detail soapFault_getDetail(Dom dom) {
        final SOAPFault sOAPFault = (SOAPFault) dom;
        return (Detail) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.ocf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Detail lambda$soapFault_getDetail$86;
                lambda$soapFault_getDetail$86 = DomImpl.lambda$soapFault_getDetail$86(SOAPFault.this, (DomImpl.Dom) obj);
                return lambda$soapFault_getDetail$86;
            }
        });
    }

    public static String soapFault_getFaultActor(Dom dom) {
        final SOAPFault sOAPFault = (SOAPFault) dom;
        return (String) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.uef
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String lambda$soapFault_getFaultActor$79;
                lambda$soapFault_getFaultActor$79 = DomImpl.lambda$soapFault_getFaultActor$79(SOAPFault.this, (DomImpl.Dom) obj);
                return lambda$soapFault_getFaultActor$79;
            }
        });
    }

    public static String soapFault_getFaultCode(Dom dom) {
        final SOAPFault sOAPFault = (SOAPFault) dom;
        return (String) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.zdf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String lambda$soapFault_getFaultCode$80;
                lambda$soapFault_getFaultCode$80 = DomImpl.lambda$soapFault_getFaultCode$80(SOAPFault.this, (DomImpl.Dom) obj);
                return lambda$soapFault_getFaultCode$80;
            }
        });
    }

    public static Name soapFault_getFaultCodeAsName(Dom dom) {
        final SOAPFault sOAPFault = (SOAPFault) dom;
        return (Name) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.ief
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Name lambda$soapFault_getFaultCodeAsName$83;
                lambda$soapFault_getFaultCodeAsName$83 = DomImpl.lambda$soapFault_getFaultCodeAsName$83(SOAPFault.this, (DomImpl.Dom) obj);
                return lambda$soapFault_getFaultCodeAsName$83;
            }
        });
    }

    public static String soapFault_getFaultString(Dom dom) {
        final SOAPFault sOAPFault = (SOAPFault) dom;
        return (String) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.zef
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String lambda$soapFault_getFaultString$84;
                lambda$soapFault_getFaultString$84 = DomImpl.lambda$soapFault_getFaultString$84(SOAPFault.this, (DomImpl.Dom) obj);
                return lambda$soapFault_getFaultString$84;
            }
        });
    }

    public static java.util.Locale soapFault_getFaultStringLocale(Dom dom) {
        final SOAPFault sOAPFault = (SOAPFault) dom;
        return (java.util.Locale) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.ref
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                java.util.Locale lambda$soapFault_getFaultStringLocale$82;
                lambda$soapFault_getFaultStringLocale$82 = DomImpl.lambda$soapFault_getFaultStringLocale$82(SOAPFault.this, (DomImpl.Dom) obj);
                return lambda$soapFault_getFaultStringLocale$82;
            }
        });
    }

    public static void soapFault_setFaultActor(Dom dom, final String str) {
        final SOAPFault sOAPFault = (SOAPFault) dom;
        syncWrapVoid(dom, new Consumer() { // from class: com.sunia.HTREnginev2.xaf
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DomImpl.lambda$soapFault_setFaultActor$78(SOAPFault.this, str, (DomImpl.Dom) obj);
            }
        });
    }

    public static void soapFault_setFaultCode(final Dom dom, final Name name) throws SOAPException {
        final SOAPFault sOAPFault = (SOAPFault) dom;
        syncWrapEx(dom, new WrapSoapEx() { // from class: org.apache.xmlbeans.impl.store.i
            @Override // org.apache.xmlbeans.impl.store.DomImpl.WrapSoapEx
            public final Object get() {
                Object lambda$soapFault_setFaultCode$77;
                lambda$soapFault_setFaultCode$77 = DomImpl.lambda$soapFault_setFaultCode$77(DomImpl.Dom.this, sOAPFault, name);
                return lambda$soapFault_setFaultCode$77;
            }
        });
    }

    public static void soapFault_setFaultString(Dom dom, final String str) {
        final SOAPFault sOAPFault = (SOAPFault) dom;
        syncWrapVoid(dom, new Consumer() { // from class: com.sunia.HTREnginev2.bdf
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DomImpl.lambda$soapFault_setFaultString$75(SOAPFault.this, str, (DomImpl.Dom) obj);
            }
        });
    }

    public static String soapHeaderElement_getActor(Dom dom) {
        final SOAPHeaderElement sOAPHeaderElement = (SOAPHeaderElement) dom;
        return (String) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.jbf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String lambda$soapHeaderElement_getActor$90;
                lambda$soapHeaderElement_getActor$90 = DomImpl.lambda$soapHeaderElement_getActor$90(SOAPHeaderElement.this, (DomImpl.Dom) obj);
                return lambda$soapHeaderElement_getActor$90;
            }
        });
    }

    public static boolean soapHeaderElement_getMustUnderstand(Dom dom) {
        final SOAPHeaderElement sOAPHeaderElement = (SOAPHeaderElement) dom;
        return ((Boolean) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.ecf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean lambda$soapHeaderElement_getMustUnderstand$88;
                lambda$soapHeaderElement_getMustUnderstand$88 = DomImpl.lambda$soapHeaderElement_getMustUnderstand$88(SOAPHeaderElement.this, (DomImpl.Dom) obj);
                return lambda$soapHeaderElement_getMustUnderstand$88;
            }
        })).booleanValue();
    }

    public static void soapHeaderElement_setActor(Dom dom, final String str) {
        final SOAPHeaderElement sOAPHeaderElement = (SOAPHeaderElement) dom;
        syncWrapVoid(dom, new Consumer() { // from class: com.sunia.HTREnginev2.ybf
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DomImpl.lambda$soapHeaderElement_setActor$89(SOAPHeaderElement.this, str, (DomImpl.Dom) obj);
            }
        });
    }

    public static void soapHeaderElement_setMustUnderstand(Dom dom, final boolean z) {
        final SOAPHeaderElement sOAPHeaderElement = (SOAPHeaderElement) dom;
        syncWrapVoid(dom, new Consumer() { // from class: com.sunia.HTREnginev2.nef
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DomImpl.lambda$soapHeaderElement_setMustUnderstand$87(SOAPHeaderElement.this, z, (DomImpl.Dom) obj);
            }
        });
    }

    public static SOAPHeaderElement soapHeader_addHeaderElement(Dom dom, final Name name) {
        final SOAPHeader sOAPHeader = (SOAPHeader) dom;
        return (SOAPHeaderElement) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.jdf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SOAPHeaderElement lambda$soapHeader_addHeaderElement$67;
                lambda$soapHeader_addHeaderElement$67 = DomImpl.lambda$soapHeader_addHeaderElement$67(SOAPHeader.this, name, (DomImpl.Dom) obj);
                return lambda$soapHeader_addHeaderElement$67;
            }
        });
    }

    public static Iterator<SOAPHeaderElement> soapHeader_examineAllHeaderElements(Dom dom) {
        final SOAPHeader sOAPHeader = (SOAPHeader) dom;
        return (Iterator) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.mef
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Iterator lambda$soapHeader_examineAllHeaderElements$62;
                lambda$soapHeader_examineAllHeaderElements$62 = DomImpl.lambda$soapHeader_examineAllHeaderElements$62(SOAPHeader.this, (DomImpl.Dom) obj);
                return lambda$soapHeader_examineAllHeaderElements$62;
            }
        });
    }

    public static Iterator<SOAPHeaderElement> soapHeader_examineHeaderElements(Dom dom, final String str) {
        final SOAPHeader sOAPHeader = (SOAPHeader) dom;
        return (Iterator) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.zcf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Iterator lambda$soapHeader_examineHeaderElements$64;
                lambda$soapHeader_examineHeaderElements$64 = DomImpl.lambda$soapHeader_examineHeaderElements$64(SOAPHeader.this, str, (DomImpl.Dom) obj);
                return lambda$soapHeader_examineHeaderElements$64;
            }
        });
    }

    public static Iterator<SOAPHeaderElement> soapHeader_examineMustUnderstandHeaderElements(Dom dom, final String str) {
        final SOAPHeader sOAPHeader = (SOAPHeader) dom;
        return (Iterator) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.ucf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Iterator lambda$soapHeader_examineMustUnderstandHeaderElements$65;
                lambda$soapHeader_examineMustUnderstandHeaderElements$65 = DomImpl.lambda$soapHeader_examineMustUnderstandHeaderElements$65(SOAPHeader.this, str, (DomImpl.Dom) obj);
                return lambda$soapHeader_examineMustUnderstandHeaderElements$65;
            }
        });
    }

    public static Iterator<SOAPHeaderElement> soapHeader_extractAllHeaderElements(Dom dom) {
        final SOAPHeader sOAPHeader = (SOAPHeader) dom;
        return (Iterator) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.gdf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Iterator lambda$soapHeader_extractAllHeaderElements$63;
                lambda$soapHeader_extractAllHeaderElements$63 = DomImpl.lambda$soapHeader_extractAllHeaderElements$63(SOAPHeader.this, (DomImpl.Dom) obj);
                return lambda$soapHeader_extractAllHeaderElements$63;
            }
        });
    }

    public static Iterator<SOAPHeaderElement> soapHeader_extractHeaderElements(Dom dom, final String str) {
        final SOAPHeader sOAPHeader = (SOAPHeader) dom;
        return (Iterator) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.bef
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Iterator lambda$soapHeader_extractHeaderElements$66;
                lambda$soapHeader_extractHeaderElements$66 = DomImpl.lambda$soapHeader_extractHeaderElements$66(SOAPHeader.this, str, (DomImpl.Dom) obj);
                return lambda$soapHeader_extractHeaderElements$66;
            }
        });
    }

    private static <T> T syncWrap(final Dom dom, final Function<Dom, T> function) {
        return (T) syncWrapHelper(dom.locale(), true, new Supplier() { // from class: com.sunia.HTREnginev2.oef
            @Override // java.util.function.Supplier
            public final Object get() {
                Object apply;
                apply = function.apply(dom);
                return apply;
            }
        });
    }

    private static <T> T syncWrapEx(Dom dom, WrapSoapEx<T> wrapSoapEx) throws SOAPException {
        return (T) syncWrapHelperEx(dom.locale(), true, wrapSoapEx);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T syncWrapHelper(Locale locale, boolean z, Supplier<T> supplier) {
        T t;
        if (locale.noSync()) {
            return (T) syncWrapHelper2(locale, z, supplier);
        }
        synchronized (locale) {
            t = (T) syncWrapHelper2(locale, z, supplier);
        }
        return t;
    }

    private static <T> T syncWrapHelper2(Locale locale, boolean z, Supplier<T> supplier) {
        if (z) {
            locale.enter();
        }
        try {
            return supplier.get();
        } finally {
            if (z) {
                locale.exit();
            }
        }
    }

    private static <T> T syncWrapHelperEx(Locale locale, boolean z, WrapSoapEx<T> wrapSoapEx) throws SOAPException {
        T t;
        if (locale.noSync()) {
            return (T) syncWrapHelperEx2(locale, z, wrapSoapEx);
        }
        synchronized (locale) {
            t = (T) syncWrapHelperEx2(locale, z, wrapSoapEx);
        }
        return t;
    }

    private static <T> T syncWrapHelperEx2(Locale locale, boolean z, WrapSoapEx<T> wrapSoapEx) throws SOAPException {
        if (z) {
            locale.enter();
        }
        try {
            return wrapSoapEx.get();
        } finally {
            if (z) {
                locale.exit();
            }
        }
    }

    private static <T> T syncWrapNoEnter(final Dom dom, final Function<Dom, T> function) {
        return (T) syncWrapHelper(dom.locale(), false, new Supplier() { // from class: com.sunia.HTREnginev2.tbf
            @Override // java.util.function.Supplier
            public final Object get() {
                Object apply;
                apply = function.apply(dom);
                return apply;
            }
        });
    }

    private static void syncWrapVoid(final Dom dom, final Consumer<Dom> consumer) {
        syncWrapHelper(dom.locale(), true, new Supplier() { // from class: com.sunia.HTREnginev2.cef
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$syncWrapVoid$109;
                lambda$syncWrapVoid$109 = DomImpl.lambda$syncWrapVoid$109(consumer, dom);
                return lambda$syncWrapVoid$109;
            }
        });
    }

    private static void validateName(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Name is null");
        }
        if (str.length() == 0) {
            throw new IllegalArgumentException("Name is empty");
        }
        if (!XMLChar.isValidName(str)) {
            throw new InvalidCharacterError("Name has an invalid character");
        }
    }

    private static void validateNcName(String str) {
        if (str != null && str.length() > 0 && !XMLChar.isValidNCName(str)) {
            throw new InvalidCharacterError();
        }
    }

    private static void validateNewChild(Dom dom, Dom dom2) {
        String isValidChild = isValidChild(dom, dom2);
        if (isValidChild != null) {
            throw new HierarchyRequestErr(isValidChild);
        }
        if (dom == dom2) {
            throw new HierarchyRequestErr("New child and parent are the same node");
        }
        Node node = (Node) dom;
        do {
            node = parent((Dom) node);
            if (node == null) {
                return;
            }
            if (dom2.nodeType() == 5) {
                throw new NoModificationAllowedErr("Entity reference trees may not be modified");
            }
        } while (dom2 != node);
        throw new HierarchyRequestErr("New child is an ancestor node of the parent node");
    }

    private static String validatePrefix(String str, String str2, String str3, boolean z) {
        if (str != null && str.contains(":")) {
            throw new NamespaceErr("Invalid prefix - contains ':' character");
        }
        validateNcName(str);
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        if (str.length() > 0 && str2.length() == 0) {
            throw new NamespaceErr("Attempt to give a prefix for no namespace");
        }
        if (str.equals("xml") && !str2.equals("http://www.w3.org/XML/1998/namespace")) {
            throw new NamespaceErr("Invalid prefix - begins with 'xml'");
        }
        if (z) {
            if (str.length() > 0) {
                if (str3.equals("xmlns")) {
                    throw new NamespaceErr("Invalid namespace - attr is default namespace already");
                }
                if (Locale.beginsWithXml(str3)) {
                    throw new NamespaceErr("Invalid namespace - attr prefix begins with 'xml'");
                }
                if (str.equals("xmlns") && !str2.equals("http://www.w3.org/2000/xmlns/")) {
                    throw new NamespaceErr("Invalid namespace - uri is not 'http://www.w3.org/2000/xmlns/;");
                }
            } else if (str3.equals("xmlns") && !str2.equals("http://www.w3.org/2000/xmlns/")) {
                throw new NamespaceErr("Invalid namespace - uri is not 'http://www.w3.org/2000/xmlns/;");
            }
        } else if (Locale.beginsWithXml(str)) {
            throw new NamespaceErr("Invalid prefix - begins with 'xml'");
        }
        return str;
    }

    private static void validateQualifiedName(String str, String str2, boolean z) {
        if (str2 == null) {
            str2 = "";
        }
        int indexOf = str.indexOf(58);
        if (indexOf < 0) {
            validateNcName(str);
            if (z && str.equals("xmlns") && !str2.equals("http://www.w3.org/2000/xmlns/")) {
                throw new NamespaceErr("Default xmlns attribute does not have namespace: http://www.w3.org/2000/xmlns/");
            }
        } else {
            if (indexOf == 0) {
                throw new NamespaceErr("Invalid qualified name, no prefix specified");
            }
            String substring = str.substring(0, indexOf);
            validateNcName(substring);
            if (str2.length() == 0) {
                throw new NamespaceErr("Attempt to give a prefix for no namespace");
            }
            str = str.substring(indexOf + 1);
            if (str.indexOf(58) >= 0) {
                throw new NamespaceErr("Invalid qualified name, more than one colon");
            }
            validateNcName(str);
            if (substring.equals("xml") && !str2.equals("http://www.w3.org/XML/1998/namespace")) {
                throw new NamespaceErr("Invalid prefix - begins with 'xml'");
            }
        }
        if (str.length() == 0) {
            throw new NamespaceErr("Invalid qualified name, no local part specified");
        }
    }

    public static SOAPElement _soapElement_addChildElement(final Dom dom, final Name name) throws SOAPException {
        final SOAPElement sOAPElement = (SOAPElement) dom;
        return (SOAPElement) syncWrapEx(dom, new WrapSoapEx() { // from class: org.apache.xmlbeans.impl.store.t
            @Override // org.apache.xmlbeans.impl.store.DomImpl.WrapSoapEx
            public final Object get() {
                SOAPElement lambda$_soapElement_addChildElement$44;
                lambda$_soapElement_addChildElement$44 = DomImpl.lambda$_soapElement_addChildElement$44(DomImpl.Dom.this, sOAPElement, name);
                return lambda$_soapElement_addChildElement$44;
            }
        });
    }

    public static Iterator<SOAPElement> _soapElement_getChildElements(Dom dom, final Name name) {
        final SOAPElement sOAPElement = (SOAPElement) dom;
        return (Iterator) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.hcf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Iterator lambda$_soapElement_getChildElements$51;
                lambda$_soapElement_getChildElements$51 = DomImpl.lambda$_soapElement_getChildElements$51(SOAPElement.this, name, (DomImpl.Dom) obj);
                return lambda$_soapElement_getChildElements$51;
            }
        });
    }

    public static Name _soapEnvelope_createName(Dom dom, final String str, final String str2, final String str3) {
        final SOAPEnvelope sOAPEnvelope = (SOAPEnvelope) dom;
        return (Name) syncWrap(dom, new Function() { // from class: com.sunia.HTREnginev2.udf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Name lambda$_soapEnvelope_createName$61;
                lambda$_soapEnvelope_createName$61 = DomImpl.lambda$_soapEnvelope_createName$61(SOAPEnvelope.this, str, str2, str3, (DomImpl.Dom) obj);
                return lambda$_soapEnvelope_createName$61;
            }
        });
    }

    public static SOAPFault soapBody_addFault(final Dom dom, final Name name, final String str) throws SOAPException {
        final SOAPBody sOAPBody = (SOAPBody) dom;
        return (SOAPFault) syncWrapEx(dom, new WrapSoapEx() { // from class: org.apache.xmlbeans.impl.store.p
            @Override // org.apache.xmlbeans.impl.store.DomImpl.WrapSoapEx
            public final Object get() {
                SOAPFault lambda$soapBody_addFault$73;
                lambda$soapBody_addFault$73 = DomImpl.lambda$soapBody_addFault$73(DomImpl.Dom.this, sOAPBody, name, str);
                return lambda$soapBody_addFault$73;
            }
        });
    }

    public static void soapFault_setFaultCode(final Dom dom, final String str) throws SOAPException {
        final SOAPFault sOAPFault = (SOAPFault) dom;
        syncWrapEx(dom, new WrapSoapEx() { // from class: org.apache.xmlbeans.impl.store.n
            @Override // org.apache.xmlbeans.impl.store.DomImpl.WrapSoapEx
            public final Object get() {
                Object lambda$soapFault_setFaultCode$81;
                lambda$soapFault_setFaultCode$81 = DomImpl.lambda$soapFault_setFaultCode$81(DomImpl.Dom.this, sOAPFault, str);
                return lambda$soapFault_setFaultCode$81;
            }
        });
    }

    public static void soapFault_setFaultString(Dom dom, final String str, final java.util.Locale locale) {
        final SOAPFault sOAPFault = (SOAPFault) dom;
        syncWrapVoid(dom, new Consumer() { // from class: com.sunia.HTREnginev2.sbf
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DomImpl.lambda$soapFault_setFaultString$76(SOAPFault.this, str, locale, (DomImpl.Dom) obj);
            }
        });
    }

    public static SOAPElement _soapElement_addChildElement(final Dom dom, final String str) throws SOAPException {
        final SOAPElement sOAPElement = (SOAPElement) dom;
        return (SOAPElement) syncWrapEx(dom, new WrapSoapEx() { // from class: org.apache.xmlbeans.impl.store.o
            @Override // org.apache.xmlbeans.impl.store.DomImpl.WrapSoapEx
            public final Object get() {
                SOAPElement lambda$_soapElement_addChildElement$45;
                lambda$_soapElement_addChildElement$45 = DomImpl.lambda$_soapElement_addChildElement$45(DomImpl.Dom.this, sOAPElement, str);
                return lambda$_soapElement_addChildElement$45;
            }
        });
    }

    public static SOAPFault soapBody_addFault(final Dom dom, final Name name, final String str, final java.util.Locale locale) throws SOAPException {
        final SOAPBody sOAPBody = (SOAPBody) dom;
        return (SOAPFault) syncWrapEx(dom, new WrapSoapEx() { // from class: org.apache.xmlbeans.impl.store.x
            @Override // org.apache.xmlbeans.impl.store.DomImpl.WrapSoapEx
            public final Object get() {
                SOAPFault lambda$soapBody_addFault$74;
                lambda$soapBody_addFault$74 = DomImpl.lambda$soapBody_addFault$74(DomImpl.Dom.this, sOAPBody, name, str, locale);
                return lambda$soapBody_addFault$74;
            }
        });
    }

    public static SOAPElement _soapElement_addChildElement(final Dom dom, final String str, final String str2) throws SOAPException {
        final SOAPElement sOAPElement = (SOAPElement) dom;
        return (SOAPElement) syncWrapEx(dom, new WrapSoapEx() { // from class: org.apache.xmlbeans.impl.store.v
            @Override // org.apache.xmlbeans.impl.store.DomImpl.WrapSoapEx
            public final Object get() {
                SOAPElement lambda$_soapElement_addChildElement$46;
                lambda$_soapElement_addChildElement$46 = DomImpl.lambda$_soapElement_addChildElement$46(DomImpl.Dom.this, sOAPElement, str, str2);
                return lambda$_soapElement_addChildElement$46;
            }
        });
    }

    public static SOAPElement _soapElement_addChildElement(final Dom dom, final String str, final String str2, final String str3) throws SOAPException {
        final SOAPElement sOAPElement = (SOAPElement) dom;
        return (SOAPElement) syncWrapEx(dom, new WrapSoapEx() { // from class: org.apache.xmlbeans.impl.store.s
            @Override // org.apache.xmlbeans.impl.store.DomImpl.WrapSoapEx
            public final Object get() {
                SOAPElement lambda$_soapElement_addChildElement$47;
                lambda$_soapElement_addChildElement$47 = DomImpl.lambda$_soapElement_addChildElement$47(DomImpl.Dom.this, sOAPElement, str, str2, str3);
                return lambda$_soapElement_addChildElement$47;
            }
        });
    }
}
