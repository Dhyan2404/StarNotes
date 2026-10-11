package net.p110sf.saxon.event;

import com.onyx.android.sdk.data.common.cloud.Constant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Stack;
import java.util.function.Consumer;
import javax.xml.transform.Result;
import net.p110sf.saxon.event.ComplexContentOutputter;
import net.p110sf.saxon.event.RegularSequenceChecker;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.NameOfNode;
import net.p110sf.saxon.om.NamespaceBindingSet;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NoNamespaceName;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.StringConstants;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UniStringConsumer;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.util.Orphan;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import org.apache.xmlbeans.impl.common.NameUtil;

/* loaded from: classes11.dex */
public final class ComplexContentOutputter extends Outputter implements Receiver, Result {

    /* renamed from: e */
    public Receiver f98932e;

    /* renamed from: f */
    public NodeName f98933f = null;

    /* renamed from: g */
    public int f98934g = -1;

    /* renamed from: h */
    public boolean[] f98935h = new boolean[20];

    /* renamed from: i */
    public final List<AttributeInfo> f98936i = new ArrayList();

    /* renamed from: j */
    public NamespaceMap f98937j;

    /* renamed from: k */
    public final Stack<NamespaceMap> f98938k;

    /* renamed from: l */
    public SchemaType f98939l;

    /* renamed from: m */
    public int f98940m;

    /* renamed from: n */
    public Location f98941n;

    /* renamed from: o */
    public HostLanguage f98942o;

    /* renamed from: p */
    public RegularSequenceChecker.State f98943p;

    /* renamed from: q */
    public boolean f98944q;

    /* renamed from: net.sf.saxon.event.ComplexContentOutputter$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18273a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f98945a;

        static {
            int[] iArr = new int[Genre.values().length];
            f98945a = iArr;
            try {
                iArr[Genre.ATOMIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f98945a[Genre.EXTERNAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f98945a[Genre.ARRAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f98945a[Genre.FUNCTION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f98945a[Genre.MAP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f98945a[Genre.NODE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: net.sf.saxon.event.ComplexContentOutputter$b */
    /* loaded from: classes11.dex */
    public static class C18274b implements UniStringConsumer {

        /* renamed from: e */
        public final ComplexContentOutputter f98946e;

        /* renamed from: f */
        public final boolean f98947f;

        /* renamed from: g */
        public final boolean f98948g;

        /* renamed from: h */
        public final Location f98949h;

        /* renamed from: i */
        public final Consumer<Boolean> f98950i;

        public C18274b(ComplexContentOutputter complexContentOutputter, boolean z, boolean z2, Location location, Consumer<Boolean> consumer) {
            this.f98946e = complexContentOutputter;
            this.f98947f = z;
            this.f98948g = z2;
            this.f98949h = location;
            this.f98950i = consumer;
        }

        @Override // net.p110sf.saxon.str.UniStringConsumer
        public UniStringConsumer accept(UnicodeString unicodeString) throws XPathException {
            this.f98946e.characters(unicodeString, this.f98949h, 0);
            return this;
        }

        @Override // net.p110sf.saxon.str.UniStringConsumer
        public void close() {
            this.f98950i.accept(Boolean.valueOf(!this.f98948g));
        }

        @Override // net.p110sf.saxon.str.UniStringConsumer
        public void open() throws XPathException {
            if (!this.f98947f || this.f98948g) {
                return;
            }
            this.f98946e.characters(StringConstants.SINGLE_SPACE, this.f98949h, 0);
        }
    }

    public ComplexContentOutputter(Receiver receiver) {
        Stack<NamespaceMap> stack = new Stack<>();
        this.f98938k = stack;
        this.f98939l = null;
        this.f98941n = Loc.NONE;
        this.f98942o = HostLanguage.XSLT;
        this.f98943p = RegularSequenceChecker.State.INITIAL;
        this.f98944q = false;
        PipelineConfiguration pipelineConfiguration = receiver.getPipelineConfiguration();
        setPipelineConfiguration(pipelineConfiguration);
        setReceiver(receiver);
        Objects.requireNonNull(pipelineConfiguration);
        setHostLanguage(pipelineConfiguration.getHostLanguage());
        stack.push(NamespaceMap.emptyMap());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ void m62487i(Boolean bool) {
        this.f98944q = bool.booleanValue();
    }

    public static ComplexContentOutputter makeComplexContentReceiver(Receiver receiver, ParseOptions parseOptions) {
        String systemId = receiver.getSystemId();
        if ((parseOptions == null || parseOptions.getSchemaValidationMode() == 3) ? false : true) {
            receiver = receiver.getPipelineConfiguration().getConfiguration().getDocumentValidator(receiver, systemId, parseOptions, null);
        }
        ComplexContentOutputter complexContentOutputter = new ComplexContentOutputter(receiver);
        complexContentOutputter.setSystemId(systemId);
        return complexContentOutputter;
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    /* renamed from: append, reason: merged with bridge method [inline-methods] */
    public void m62486h(Item item, Location location, int i) throws XPathException {
        if (this.f98934g >= 0) {
            m62489d(item, location, i);
        } else {
            this.f98932e.m62516b(item, location, i);
        }
    }

    @Override // net.p110sf.saxon.event.Outputter
    public void attribute(NodeName nodeName, SimpleType simpleType, String str, Location location, int i) throws XPathException {
        if (this.f98934g >= 0 && this.f98943p != RegularSequenceChecker.State.START_TAG) {
            NoOpenStartTagException makeNoOpenStartTagException = NoOpenStartTagException.makeNoOpenStartTagException(2, nodeName.getDisplayName(), this.f98942o, this.f98935h[this.f98934g], this.f98941n);
            makeNoOpenStartTagException.setLocator(location);
            throw makeNoOpenStartTagException;
        }
        AttributeInfo attributeInfo = new AttributeInfo(nodeName, simpleType, str, location, i);
        if (this.f98934g >= 0 && !ReceiverOption.contains(i, 1048576)) {
            for (int i2 = 0; i2 < this.f98936i.size(); i2++) {
                if (this.f98936i.get(i2).getNodeName().equals(nodeName)) {
                    if (this.f98942o == HostLanguage.XSLT) {
                        this.f98936i.set(i2, attributeInfo);
                        return;
                    }
                    XPathException xPathException = new XPathException("Cannot create an element having two attributes with the same name: " + Err.wrap(nodeName.getDisplayName(), 2));
                    xPathException.setErrorCode("XQDY0025");
                    throw xPathException;
                }
            }
        }
        if (this.f98934g == 0 && !simpleType.equals(BuiltInAtomicType.UNTYPED_ATOMIC) && this.f98935h[0] && simpleType.isNamespaceSensitive()) {
            XPathException xPathException2 = new XPathException("Cannot copy attributes whose type is namespace-sensitive (QName or NOTATION): " + Err.wrap(nodeName.getDisplayName(), 2));
            xPathException2.setErrorCode(this.f98942o == HostLanguage.XSLT ? "XTTE0950" : "XQTY0086");
            throw xPathException2;
        }
        if (this.f98934g < 0) {
            Orphan orphan = new Orphan(getConfiguration());
            orphan.setNodeKind((short) 2);
            orphan.setNodeName(nodeName);
            orphan.setTypeAnnotation(simpleType);
            orphan.setStringValue(StringView.tidy(str));
            this.f98932e.m62516b(orphan, location, i);
        }
        this.f98936i.add(attributeInfo);
        this.f98944q = false;
    }

    /* renamed from: c */
    public final NodeName m62488c(NodeName nodeName, int i) {
        String prefix = nodeName.getPrefix();
        String uri = nodeName.getURI();
        if (uri.isEmpty()) {
            return nodeName;
        }
        String uri2 = this.f98937j.getURI(prefix);
        if (uri2 == null) {
            this.f98937j = this.f98937j.put(prefix, uri);
            return nodeName;
        }
        if (uri.equals(uri2)) {
            return nodeName;
        }
        String m62492g = m62492g(prefix, uri, i);
        FingerprintedQName fingerprintedQName = new FingerprintedQName(m62492g, uri, nodeName.getLocalPart());
        this.f98937j = this.f98937j.put(m62492g, uri);
        return fingerprintedQName;
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f98934g >= 0) {
            this.f98944q = false;
            if (unicodeString == null || unicodeString.isEmpty()) {
                return;
            }
            if (this.f98943p == RegularSequenceChecker.State.START_TAG) {
                startContent();
            }
        }
        this.f98932e.characters(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        this.f98932e.close();
        this.f98944q = false;
        this.f98943p = RegularSequenceChecker.State.FINAL;
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f98934g >= 0) {
            if (this.f98943p == RegularSequenceChecker.State.START_TAG) {
                startContent();
            }
            this.f98944q = false;
        }
        this.f98932e.comment(unicodeString, location, i);
    }

    /* renamed from: d */
    public final void m62489d(Item item, Location location, int i) throws XPathException {
        if (item != null) {
            int i2 = C18273a.f98945a[item.getGenre().ordinal()];
            if (i2 == 1 || i2 == 2) {
                if (this.f98944q) {
                    characters(StringConstants.SINGLE_SPACE, location, 0);
                }
                characters(item.getUnicodeStringValue(), location, 0);
                this.f98944q = true;
                return;
            }
            if (i2 == 3) {
                m62490e((ArrayItem) item, location, i);
                return;
            }
            if (i2 == 4 || i2 == 5) {
                String str = item instanceof MapItem ? Constant.MAP_TAG : "function item";
                String m62491f = m62491f();
                if (m62491f.startsWith("SENR")) {
                    throw new XPathException("Cannot serialize a " + str + " using this output method", m62491f, location);
                }
                throw new XPathException("Cannot add a " + str + " to an XDM node tree", m62491f, location);
            }
            NodeInfo nodeInfo = (NodeInfo) item;
            int nodeKind = nodeInfo.getNodeKind();
            if (nodeKind != 2) {
                if (nodeKind == 3) {
                    characters(item.getUnicodeStringValue(), location, ((nodeInfo instanceof Orphan) && ((Orphan) nodeInfo).isDisableOutputEscaping()) ? 1 : 0);
                } else if (nodeKind == 9) {
                    startDocument(0);
                    Iterator<? extends NodeInfo> it2 = nodeInfo.children().iterator();
                    while (it2.hasNext()) {
                        m62516b(it2.next(), location, i);
                    }
                    endDocument();
                } else if (nodeKind != 13) {
                    nodeInfo.copy(this, ReceiverOption.contains(i, 524288) ? 6 : 4, location);
                } else {
                    namespace(nodeInfo.getLocalPart(), nodeInfo.getStringValue(), 0);
                }
            } else {
                if (((SimpleType) nodeInfo.getSchemaType()).isNamespaceSensitive()) {
                    XPathException xPathException = new XPathException("Cannot copy attributes whose type is namespace-sensitive (QName or NOTATION): " + Err.wrap(nodeInfo.getDisplayName(), 2));
                    xPathException.setErrorCode(getPipelineConfiguration().isXSLT() ? "XTTE0950" : "XQTY0086");
                    throw xPathException;
                }
                attribute(NameOfNode.makeName(nodeInfo), (SimpleType) nodeInfo.getSchemaType(), nodeInfo.getStringValue(), location, 0);
            }
            this.f98944q = false;
        }
    }

    /* renamed from: e */
    public final void m62490e(ArrayItem arrayItem, final Location location, final int i) throws XPathException {
        Iterator<GroundedValue> it2 = arrayItem.members().iterator();
        while (it2.hasNext()) {
            SequenceTool.supply(it2.next().iterate(), new ItemConsumer() { // from class: com.sunia.HTREnginev2.c6e
                @Override // net.p110sf.saxon.om.ItemConsumer
                public final void accept(Item item) {
                    ComplexContentOutputter.this.m62486h(location, i, item);
                }
            });
        }
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        if (this.f98934g == 0) {
            this.f98932e.endDocument();
        }
        this.f98944q = false;
        int i = this.f98934g - 1;
        this.f98934g = i;
        this.f98943p = i < 0 ? RegularSequenceChecker.State.OPEN : RegularSequenceChecker.State.CONTENT;
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        if (this.f98943p == RegularSequenceChecker.State.START_TAG) {
            startContent();
        } else {
            this.f98933f = null;
        }
        this.f98932e.endElement();
        int i = this.f98934g - 1;
        this.f98934g = i;
        this.f98944q = false;
        this.f98943p = i < 0 ? RegularSequenceChecker.State.OPEN : RegularSequenceChecker.State.CONTENT;
        this.f98938k.pop();
    }

    /* renamed from: f */
    public final String m62491f() {
        return getPipelineConfiguration().isXSLT() ? "XTDE0450" : "XQTY0105";
    }

    /* renamed from: g */
    public final String m62492g(String str, String str2, int i) {
        if (str2.equals("http://www.w3.org/XML/1998/namespace")) {
            return "xml";
        }
        return str + NameUtil.USCORE + i;
    }

    public Receiver getReceiver() {
        return this.f98932e;
    }

    @Override // net.p110sf.saxon.event.Outputter
    public UniStringConsumer getStringReceiver(boolean z, Location location) {
        return this.f98934g >= 0 ? new C18274b(this, this.f98944q, z, location, new Consumer() { // from class: com.sunia.HTREnginev2.d6e
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ComplexContentOutputter.this.m62487i((Boolean) obj);
            }
        }) : super.getStringReceiver(z, location);
    }

    @Override // net.p110sf.saxon.event.Outputter
    public void namespace(String str, String str2, int i) throws XPathException {
        String uri;
        Objects.requireNonNull(str);
        Objects.requireNonNull(str2);
        if (ReceiverOption.contains(i, 64)) {
            this.f98937j = this.f98937j.put(str, str2);
        } else {
            int i2 = this.f98934g;
            if (i2 < 0) {
                Orphan orphan = new Orphan(getConfiguration());
                orphan.setNodeKind((short) 13);
                orphan.setNodeName(new NoNamespaceName(str));
                orphan.setStringValue(StringView.tidy(str2));
                this.f98932e.m62516b(orphan, Loc.NONE, i);
            } else {
                if (this.f98943p != RegularSequenceChecker.State.START_TAG) {
                    throw NoOpenStartTagException.makeNoOpenStartTagException(13, str, this.f98942o, this.f98935h[i2], this.f98941n);
                }
                boolean hasURI = this.f98933f.hasURI("");
                if (str.isEmpty() && !str2.isEmpty() && hasURI) {
                    XPathException xPathException = new XPathException("Cannot output a namespace node for the default namespace (" + str2 + ") when the element is in no namespace");
                    xPathException.setErrorCode(this.f98942o == HostLanguage.XSLT ? "XTDE0440" : "XQDY0102");
                    throw xPathException;
                }
                if (ReceiverOption.contains(i, 32) && (uri = this.f98937j.getURI(str)) != null && !uri.equals(str2)) {
                    XPathException xPathException2 = new XPathException("Cannot create two namespace nodes with the same prefix mapped to different URIs (prefix=\"" + str + "\", URIs=(" + uri + "\", \"" + str2 + "\")");
                    xPathException2.setErrorCode(this.f98942o == HostLanguage.XSLT ? "XTDE0430" : "XQDY0102");
                    throw xPathException2;
                }
                this.f98937j = this.f98937j.put(str, str2);
            }
        }
        this.f98944q = false;
    }

    @Override // net.p110sf.saxon.event.Outputter
    public void namespaces(NamespaceBindingSet namespaceBindingSet, int i) throws XPathException {
        if ((namespaceBindingSet instanceof NamespaceMap) && this.f98937j.isEmpty() && ReceiverOption.contains(i, 64)) {
            this.f98937j = (NamespaceMap) namespaceBindingSet;
        } else {
            super.namespaces(namespaceBindingSet, i);
        }
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
        this.f98932e.open();
        this.f98944q = false;
        this.f98943p = RegularSequenceChecker.State.OPEN;
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f98934g >= 0) {
            if (this.f98943p == RegularSequenceChecker.State.START_TAG) {
                startContent();
            }
            this.f98944q = false;
        }
        this.f98932e.processingInstruction(str, unicodeString, location, i);
    }

    public void setHostLanguage(HostLanguage hostLanguage) {
        this.f98942o = hostLanguage;
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void setPipelineConfiguration(PipelineConfiguration pipelineConfiguration) {
        if (this.pipelineConfiguration != pipelineConfiguration) {
            this.pipelineConfiguration = pipelineConfiguration;
            Receiver receiver = this.f98932e;
            if (receiver != null) {
                receiver.setPipelineConfiguration(pipelineConfiguration);
            }
        }
    }

    public void setReceiver(Receiver receiver) {
        this.f98932e = receiver;
    }

    @Override // net.p110sf.saxon.event.Outputter, javax.xml.transform.Result
    public void setSystemId(String str) {
        super.setSystemId(str);
        this.f98932e.setSystemId(str);
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void setUnparsedEntity(String str, String str2, String str3) throws XPathException {
        this.f98932e.setUnparsedEntity(str, str2, str3);
    }

    @Override // net.p110sf.saxon.event.Outputter
    public void startContent() throws XPathException {
        NodeName m62488c;
        if (this.f98943p != RegularSequenceChecker.State.START_TAG) {
            return;
        }
        NodeName m62488c2 = m62488c(this.f98933f, 0);
        int i = this.f98940m | 64;
        for (int i2 = 0; i2 < this.f98936i.size(); i2++) {
            NodeName nodeName = this.f98936i.get(i2).getNodeName();
            if (!nodeName.hasURI("") && (m62488c = m62488c(nodeName, i2 + 1)) != nodeName) {
                this.f98936i.set(i2, this.f98936i.get(i2).withNodeName(m62488c));
            }
        }
        NamespaceMap emptyMap = this.f98938k.isEmpty() ? NamespaceMap.emptyMap() : this.f98938k.peek();
        if (!ReceiverOption.contains(this.f98940m, 65536)) {
            this.f98937j = emptyMap.putAll(this.f98937j);
        }
        if (this.f98933f.hasURI("") && !this.f98937j.getDefaultNamespace().isEmpty()) {
            this.f98937j = this.f98937j.remove("");
        }
        this.f98932e.startElement(m62488c2, this.f98939l, SequenceTool.attributeMapFromList(this.f98936i), this.f98937j, this.f98941n, i);
        boolean z = !ReceiverOption.contains(this.f98940m, 128);
        Stack<NamespaceMap> stack = this.f98938k;
        if (z) {
            emptyMap = this.f98937j;
        }
        stack.push(emptyMap);
        this.f98936i.clear();
        this.f98937j = NamespaceMap.emptyMap();
        this.f98944q = false;
        this.f98943p = RegularSequenceChecker.State.CONTENT;
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        int i2 = this.f98934g + 1;
        this.f98934g = i2;
        if (i2 == 0) {
            this.f98932e.startDocument(i);
        } else if (this.f98943p == RegularSequenceChecker.State.START_TAG) {
            startContent();
        }
        this.f98944q = false;
        boolean[] zArr = this.f98935h;
        int length = zArr.length;
        int i3 = this.f98934g;
        if (length < i3 + 1) {
            this.f98935h = Arrays.copyOf(zArr, i3 * 2);
        }
        this.f98935h[this.f98934g] = true;
        this.f98943p = RegularSequenceChecker.State.CONTENT;
    }

    @Override // net.p110sf.saxon.event.Outputter
    public void startElement(NodeName nodeName, SchemaType schemaType, Location location, int i) throws XPathException {
        this.f98934g++;
        RegularSequenceChecker.State state = this.f98943p;
        RegularSequenceChecker.State state2 = RegularSequenceChecker.State.START_TAG;
        if (state == state2) {
            startContent();
        }
        this.f98940m = i;
        this.f98941n = location.saveLocation();
        this.f98936i.clear();
        this.f98937j = NamespaceMap.emptyMap();
        this.f98933f = nodeName;
        this.f98939l = schemaType;
        this.f98944q = false;
        boolean[] zArr = this.f98935h;
        int length = zArr.length;
        int i2 = this.f98934g;
        if (length < i2 + 1) {
            this.f98935h = Arrays.copyOf(zArr, i2 * 2);
        }
        this.f98935h[this.f98934g] = false;
        this.f98943p = state2;
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public boolean usesTypeAnnotations() {
        return this.f98932e.usesTypeAnnotations();
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        NamespaceMap namespaceMap2;
        if (this.f98943p == RegularSequenceChecker.State.START_TAG) {
            startContent();
        }
        this.f98934g++;
        this.f98941n = location.saveLocation();
        boolean[] zArr = this.f98935h;
        int length = zArr.length;
        int i2 = this.f98934g;
        if (length < i2 + 1) {
            this.f98935h = Arrays.copyOf(zArr, i2 * 2);
        }
        this.f98935h[this.f98934g] = false;
        if (nodeName.hasURI("") && !namespaceMap.getDefaultNamespace().isEmpty()) {
            namespaceMap = namespaceMap.remove("");
        }
        if (!ReceiverOption.contains(i, 128)) {
            NamespaceMap peek = this.f98938k.peek();
            if (!peek.getDefaultNamespace().isEmpty() && nodeName.getURI().isEmpty()) {
                peek = peek.remove("");
            }
            namespaceMap2 = peek.putAll(namespaceMap);
            if (ReceiverOption.contains(i, 131072)) {
                this.f98938k.push(peek);
            } else {
                this.f98938k.push(namespaceMap2);
            }
        } else {
            this.f98938k.push(NamespaceMap.emptyMap());
            namespaceMap2 = namespaceMap;
        }
        this.f98932e.startElement(nodeName, schemaType, attributeMap, ReceiverOption.contains(i, 65536) ? namespaceMap : namespaceMap2, location, i);
        this.f98943p = RegularSequenceChecker.State.CONTENT;
    }
}
