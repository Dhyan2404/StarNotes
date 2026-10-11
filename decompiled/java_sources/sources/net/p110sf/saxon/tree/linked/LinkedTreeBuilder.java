package net.p110sf.saxon.tree.linked;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Stack;
import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.BuilderMonitor;
import net.p110sf.saxon.event.CopyInformee;
import net.p110sf.saxon.event.LocationCopier;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.ReceiverOption;
import net.p110sf.saxon.event.ReceivingContentHandler;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.StringTool;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class LinkedTreeBuilder extends Builder {

    /* renamed from: f */
    public ParentNodeImpl f102521f;

    /* renamed from: g */
    public NodeFactory f102522g;

    /* renamed from: h */
    public int[] f102523h;

    /* renamed from: i */
    public int f102524i;

    /* renamed from: j */
    public ArrayList<NodeImpl[]> f102525j;

    /* renamed from: k */
    public final Stack<NamespaceMap> f102526k;

    /* renamed from: l */
    public boolean f102527l;

    /* renamed from: m */
    public int f102528m;

    /* renamed from: n */
    public boolean f102529n;

    /* renamed from: net.sf.saxon.tree.linked.LinkedTreeBuilder$a */
    /* loaded from: classes11.dex */
    public static class C18540a implements NodeFactory {

        /* renamed from: a */
        public static C18540a f102530a = new C18540a();

        @Override // net.p110sf.saxon.tree.linked.NodeFactory
        public ElementImpl makeElementNode(NodeInfo nodeInfo, NodeName nodeName, SchemaType schemaType, boolean z, AttributeMap attributeMap, NamespaceMap namespaceMap, PipelineConfiguration pipelineConfiguration, Location location, int i) {
            ElementImpl elementImpl = new ElementImpl();
            elementImpl.setNamespaceMap(namespaceMap);
            elementImpl.initialise(nodeName, schemaType, attributeMap, nodeInfo, i);
            if (z) {
                elementImpl.setNilled();
            }
            if (location != Loc.NONE && i >= 0) {
                elementImpl.setLocation(location.getSystemId(), location.getLineNumber(), location.getColumnNumber());
            }
            return elementImpl;
        }

        @Override // net.p110sf.saxon.tree.linked.NodeFactory
        public TextImpl makeTextNode(NodeInfo nodeInfo, UnicodeString unicodeString) {
            return new TextImpl(unicodeString);
        }
    }

    public LinkedTreeBuilder(PipelineConfiguration pipelineConfiguration) {
        super(pipelineConfiguration);
        this.f102523h = new int[100];
        this.f102524i = 0;
        this.f102525j = new ArrayList<>(20);
        this.f102526k = new Stack<>();
        this.f102527l = true;
        this.f102528m = 1;
        this.f102522g = C18540a.f102530a;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (unicodeString.isEmpty()) {
            return;
        }
        UnicodeString tidy = unicodeString.tidy();
        NodeImpl nthChild = this.f102521f.getNthChild(this.f102523h[this.f102524i] - 1);
        if (nthChild instanceof TextImpl) {
            ((TextImpl) nthChild).appendStringValue(tidy);
            return;
        }
        TextImpl makeTextNode = this.f102522g.makeTextNode(this.f102521f, tidy);
        ParentNodeImpl parentNodeImpl = this.f102521f;
        int[] iArr = this.f102523h;
        int i2 = this.f102524i;
        int i3 = iArr[i2];
        iArr[i2] = i3 + 1;
        parentNodeImpl.addChild(makeTextNode, i3);
    }

    @Override // net.p110sf.saxon.event.Builder, net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        ParentNodeImpl parentNodeImpl = this.f102521f;
        if (parentNodeImpl == null) {
            return;
        }
        parentNodeImpl.compact(this.f102523h[this.f102524i]);
        this.f102521f = null;
        this.f102525j = null;
        super.close();
        this.f102522g = C18540a.f102530a;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        CommentImpl commentImpl = new CommentImpl(unicodeString.tidy());
        ParentNodeImpl parentNodeImpl = this.f102521f;
        int[] iArr = this.f102523h;
        int i2 = this.f102524i;
        int i3 = iArr[i2];
        iArr[i2] = i3 + 1;
        parentNodeImpl.addChild(commentImpl, i3);
        commentImpl.setLocation(location.getSystemId(), location.getLineNumber(), location.getColumnNumber());
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        this.f102521f.compact(this.f102523h[this.f102524i]);
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        this.f102521f.compact(this.f102523h[this.f102524i]);
        this.f102524i--;
        this.f102521f = (ParentNodeImpl) this.f102521f.getParent();
        this.f102526k.pop();
    }

    @Override // net.p110sf.saxon.event.Builder
    public BuilderMonitor getBuilderMonitor() {
        return new LinkedBuilderMonitor(this);
    }

    public NodeImpl getCurrentLeafNode() {
        return this.f102521f.getLastChild();
    }

    public ParentNodeImpl getCurrentParentNode() {
        return this.f102521f;
    }

    @Override // net.p110sf.saxon.event.Builder
    public NodeInfo getCurrentRoot() {
        NodeInfo nodeInfo = this.currentRoot;
        if (!(nodeInfo instanceof DocumentImpl)) {
            return nodeInfo;
        }
        DocumentImpl documentImpl = (DocumentImpl) nodeInfo;
        return documentImpl.isImaginary() ? documentImpl.getDocumentElement() : nodeInfo;
    }

    public void graftElement(ElementImpl elementImpl) {
        ParentNodeImpl parentNodeImpl = this.f102521f;
        int[] iArr = this.f102523h;
        int i = this.f102524i;
        int i2 = iArr[i];
        iArr[i] = i2 + 1;
        parentNodeImpl.addChild(elementImpl, i2);
    }

    @Override // net.p110sf.saxon.event.Builder, net.p110sf.saxon.event.Receiver
    public void open() {
        this.started = true;
        this.f102524i = 0;
        this.f102523h[0] = 0;
        if (this.f102525j == null) {
            this.f102525j = new ArrayList<>(20);
        }
        if (this.useEventLocation) {
            Object component = getPipelineConfiguration().getComponent(CopyInformee.class.getName());
            if (component instanceof LocationCopier) {
                setSystemId(((LocationCopier) component).getSystemId());
            }
        }
        super.open();
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) {
        ProcInstImpl procInstImpl = new ProcInstImpl(str, unicodeString.tidy());
        ParentNodeImpl parentNodeImpl = this.f102521f;
        int[] iArr = this.f102523h;
        int i2 = this.f102524i;
        int i3 = iArr[i2];
        iArr[i2] = i3 + 1;
        parentNodeImpl.addChild(procInstImpl, i3);
        procInstImpl.setLocation(location.getSystemId(), location.getLineNumber(), location.getColumnNumber());
    }

    @Override // net.p110sf.saxon.event.Builder
    public void reset() {
        super.reset();
        this.f102521f = null;
        this.f102522g = C18540a.f102530a;
        this.f102524i = 0;
        this.f102527l = true;
        this.f102528m = 1;
    }

    public void setAllocateSequenceNumbers(boolean z) {
        this.f102527l = z;
    }

    public void setNodeFactory(NodeFactory nodeFactory) {
        this.f102522g = nodeFactory;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void setUnparsedEntity(String str, String str2, String str3) {
        if (((DocumentImpl) this.currentRoot).getUnparsedEntity(str) == null) {
            ((DocumentImpl) this.currentRoot).setUnparsedEntity(str, str2, str3);
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        DocumentImpl documentImpl = new DocumentImpl();
        documentImpl.setMutable(this.f102529n);
        this.currentRoot = documentImpl;
        documentImpl.setSystemId(getSystemId());
        documentImpl.setBaseURI(getBaseURI());
        documentImpl.setConfiguration(this.config);
        this.f102521f = documentImpl;
        this.f102524i = 0;
        this.f102523h[0] = 0;
        if (this.f102525j == null) {
            this.f102525j = new ArrayList<>(20);
        }
        documentImpl.setRawSequenceNumber(0);
        if (this.lineNumbering) {
            documentImpl.setLineNumbering();
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        int i2;
        AttributeMap attributeMap2 = attributeMap;
        if (this.f102521f == null) {
            startDocument(0);
            ((DocumentImpl) this.currentRoot).setImaginary(true);
        }
        boolean contains = ReceiverOption.contains(i, 16);
        this.f102526k.push(namespaceMap);
        boolean z = (location instanceof ReceivingContentHandler.LocalLocator) && ((ReceivingContentHandler.LocalLocator) location).levelInEntity == 0;
        AttributeInfo attributeInfo = attributeMap2.get("http://www.w3.org/XML/1998/namespace", "id");
        if (attributeInfo != null && Whitespace.containsWhitespace(StringTool.codePoints(attributeInfo.getValue()))) {
            attributeMap2 = attributeMap2.put(new AttributeInfo(attributeInfo.getNodeName(), attributeInfo.getType(), Whitespace.trim(attributeInfo.getValue()), attributeInfo.getLocation(), attributeInfo.getProperties()));
        }
        AttributeMap attributeMap3 = attributeMap2;
        NodeFactory nodeFactory = this.f102522g;
        ParentNodeImpl parentNodeImpl = this.f102521f;
        NamespaceMap peek = this.f102526k.peek();
        PipelineConfiguration pipelineConfiguration = this.pipe;
        if (this.f102527l) {
            i2 = this.f102528m;
            this.f102528m = i2 + 1;
        } else {
            i2 = -1;
        }
        ElementImpl makeElementNode = nodeFactory.makeElementNode(parentNodeImpl, nodeName, schemaType, contains, attributeMap3, peek, pipelineConfiguration, location, i2);
        while (this.f102524i >= this.f102525j.size()) {
            this.f102525j.add(new NodeImpl[20]);
        }
        makeElementNode.setChildren(this.f102525j.get(this.f102524i));
        ParentNodeImpl parentNodeImpl2 = this.f102521f;
        int[] iArr = this.f102523h;
        int i3 = this.f102524i;
        int i4 = iArr[i3];
        iArr[i3] = i4 + 1;
        parentNodeImpl2.addChild(makeElementNode, i4);
        int i5 = this.f102524i;
        int[] iArr2 = this.f102523h;
        if (i5 >= iArr2.length - 1) {
            this.f102523h = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.f102523h;
        int i6 = this.f102524i + 1;
        this.f102524i = i6;
        iArr3[i6] = 0;
        ParentNodeImpl parentNodeImpl3 = this.f102521f;
        if (parentNodeImpl3 instanceof TreeInfo) {
            ((DocumentImpl) parentNodeImpl3).setDocumentElement(makeElementNode);
        }
        if (z) {
            this.f102521f.getPhysicalRoot().markTopWithinEntity(makeElementNode);
        }
        this.f102521f = makeElementNode;
    }

    public LinkedTreeBuilder(PipelineConfiguration pipelineConfiguration, boolean z) {
        super(pipelineConfiguration);
        this.f102523h = new int[100];
        this.f102524i = 0;
        this.f102525j = new ArrayList<>(20);
        this.f102526k = new Stack<>();
        this.f102527l = true;
        this.f102528m = 1;
        this.f102529n = z;
        this.f102522g = C18540a.f102530a;
    }
}
