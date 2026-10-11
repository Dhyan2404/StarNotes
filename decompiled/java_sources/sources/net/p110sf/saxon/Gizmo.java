package net.p110sf.saxon;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.bumptech.glide.load.engine.GlideException;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintStream;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Gizmo;
import net.p110sf.saxon.event.ComplexContentOutputter;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.expr.parser.XPathParser;
import net.p110sf.saxon.gizmo.DefaultTalker;
import net.p110sf.saxon.gizmo.JLine2Talker;
import net.p110sf.saxon.gizmo.Talker;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.MutableNodeInfo;
import net.p110sf.saxon.om.NameOfNode;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.om.TreeModel;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.query.DynamicQueryContext;
import net.p110sf.saxon.query.QueryResult;
import net.p110sf.saxon.query.StaticQueryContext;
import net.p110sf.saxon.query.XQueryExpression;
import net.p110sf.saxon.s9api.UnprefixedElementMatchingPolicy;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.sxpath.IndependentContext;
import net.p110sf.saxon.sxpath.XPathDynamicContext;
import net.p110sf.saxon.sxpath.XPathEvaluator;
import net.p110sf.saxon.sxpath.XPathExpression;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.NamespaceNode;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.linked.DocumentImpl;
import net.p110sf.saxon.tree.linked.LinkedTreeBuilder;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.tree.util.Orphan;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.QNameValue;
import net.p110sf.saxon.value.SequenceType;
import org.apache.commons.lang3.SystemUtils;

/* loaded from: classes11.dex */
public class Gizmo {

    /* renamed from: k */
    public static String[] f98830k = {"ancestor::", "ancestor-or-self::", "array", "attribute", "cast as", "castable as", "child::", "comment()", "descendant::", "descendant-or-self::", "document-node()", "element()", "else", "empty-sequence()", "every", "except", "following::", "following-sibling::", Constants.EXSLT_ELEMNAME_FUNCTION_STRING, "instance of", "intersect", "item()", "namespace::", "namespace-node()", "node()", "parent::", "preceding::", "preceding-sibling::", "processing-instruction()", "return", "satisfies", "schema-attribute", "schema-element", "self::", "some", "text()", "then", "treat as", "union"};

    /* renamed from: a */
    public final Configuration f98831a;

    /* renamed from: b */
    public final IndependentContext f98832b;

    /* renamed from: c */
    public DocumentImpl f98833c;

    /* renamed from: d */
    public boolean f98834d;

    /* renamed from: e */
    public final Map<StructuredQName, GroundedValue> f98835e;

    /* renamed from: f */
    public final Map<String, C18259c> f98836f;

    /* renamed from: g */
    public final Talker f98837g;

    /* renamed from: h */
    public boolean f98838h;

    /* renamed from: i */
    public final List<DocumentImpl> f98839i;

    /* renamed from: j */
    public PrintStream f98840j;

    @FunctionalInterface
    /* renamed from: net.sf.saxon.Gizmo$b */
    /* loaded from: classes11.dex */
    public interface InterfaceC18258b {
        /* renamed from: a */
        void mo52952a(StringBuilder sb) throws XPathException;
    }

    /* renamed from: net.sf.saxon.Gizmo$c */
    /* loaded from: classes11.dex */
    public static class C18259c {

        /* renamed from: a */
        public String f98841a;

        /* renamed from: b */
        public String f98842b;

        /* renamed from: c */
        public InterfaceC18258b f98843c;

        public C18259c() {
        }
    }

    public Gizmo(String[] strArr) {
        this.f98834d = false;
        this.f98835e = new HashMap();
        this.f98836f = new HashMap();
        this.f98838h = false;
        this.f98839i = new LinkedList();
        this.f98840j = System.out;
        m62413L();
        Configuration newConfiguration = Configuration.newConfiguration();
        this.f98831a = newConfiguration;
        newConfiguration.setConfigurationProperty((Feature<Feature<Boolean>>) Feature.ALLOW_SYNTAX_EXTENSIONS, (Feature<Boolean>) Boolean.TRUE);
        this.f98832b = new IndependentContext(newConfiguration);
        String str = null;
        String str2 = null;
        boolean z = true;
        for (String str3 : strArr) {
            str2 = str3.startsWith("-s:") ? str3.substring(3) : str2;
            if (str3.startsWith("-q:")) {
                str = str3.substring(3);
                z = false;
            }
        }
        Talker initTalker = initTalker(str);
        this.f98837g = initTalker;
        ArrayList arrayList = new ArrayList(Arrays.asList(f98830k));
        Collections.sort(arrayList);
        initTalker.setAutoCompletion(arrayList);
        if (str2 != null) {
            try {
                m62416W(new StringBuilder(str2));
            } catch (XPathException e) {
                System.err.println(e.getMessage());
                System.exit(2);
            }
        } else {
            try {
                StreamSource streamSource = new StreamSource(new StringReader("<dummy/>"));
                ParseOptions parseOptions = new ParseOptions();
                parseOptions.setModel(TreeModel.LINKED_TREE);
                parseOptions.setLineNumbering(true);
                this.f98833c = (DocumentImpl) this.f98831a.buildDocumentTree(streamSource, parseOptions).getRootNode();
                this.f98838h = false;
            } catch (XPathException e2) {
                System.err.println(e2.getMessage());
                System.exit(2);
            }
        }
        this.f98832b.declareNamespace("xml", "http://www.w3.org/XML/1998/namespace");
        this.f98832b.declareNamespace("xsl", "http://www.w3.org/1999/XSL/Transform");
        this.f98832b.declareNamespace("saxon", NamespaceConstant.SAXON);
        this.f98832b.declareNamespace("xs", "http://www.w3.org/2001/XMLSchema");
        this.f98832b.declareNamespace("xsi", "http://www.w3.org/2001/XMLSchema-instance");
        this.f98832b.declareNamespace("fn", "http://www.w3.org/2005/xpath-functions");
        this.f98832b.declareNamespace("math", NamespaceConstant.MATH);
        this.f98832b.declareNamespace(Constant.MAP_TAG, NamespaceConstant.MAP_FUNCTIONS);
        this.f98832b.declareNamespace("array", NamespaceConstant.ARRAY_FUNCTIONS);
        this.f98832b.declareNamespace("", "");
        this.f98832b.setUnprefixedElementMatchingPolicy(UnprefixedElementMatchingPolicy.ANY_NAMESPACE);
        this.f98840j.println("Saxon Gizmo " + Version.getProductVersion());
        m62407F(this.f98837g, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M */
    public /* synthetic */ void m62370M(StringBuilder sb) throws XPathException {
        m62428i0(sb, "follow");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N */
    public /* synthetic */ void m62371N(StringBuilder sb) throws XPathException {
        m62414U(new StringBuilder("distinct-values(//*!('/'||string-join(ancestor-or-self::*!name(),'/')))"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O */
    public /* synthetic */ void m62372O(StringBuilder sb) throws XPathException {
        m62428i0(sb, "precede");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: P */
    public /* synthetic */ void m62373P(StringBuilder sb) throws XPathException {
        m62428i0(sb, RequestParameters.PREFIX);
    }

    /* renamed from: Q */
    public static /* synthetic */ void m62374Q(StringBuilder sb) throws XPathException {
        throw new RuntimeException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: R */
    public /* synthetic */ void m62375R(StringBuilder sb) throws XPathException {
        m62403B(new StringBuilder("//text()[not(normalize-space())]"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: S */
    public /* synthetic */ void m62376S(StringBuilder sb) throws XPathException {
        m62428i0(sb, "suffix");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: T */
    public /* synthetic */ void m62377T(StringBuilder sb) throws XPathException {
        m62428i0(sb, "content");
    }

    public static void main(String[] strArr) {
        new Gizmo(strArr);
    }

    /* renamed from: A */
    public final void m62402A(StringBuilder sb) throws XPathException {
        m62418Y();
        SequenceIterator m62411J = m62411J(sb, 0);
        LinkedTreeBuilder linkedTreeBuilder = new LinkedTreeBuilder(this.f98831a.makePipelineConfiguration());
        linkedTreeBuilder.open();
        linkedTreeBuilder.startDocument(0);
        while (true) {
            Item next = m62411J.next();
            if (next == null) {
                this.f98833c = (DocumentImpl) linkedTreeBuilder.getCurrentRoot();
                this.f98834d = true;
                return;
            } else {
                if (!(next instanceof NodeInfo)) {
                    throw new XPathException("Selected item is not a node");
                }
                ((NodeInfo) next).copy(linkedTreeBuilder, 2, Loc.NONE);
            }
        }
    }

    /* renamed from: B */
    public final void m62403B(StringBuilder sb) throws XPathException {
        m62418Y();
        m62422c0();
        List<NodeInfo> m62415V = m62415V(sb, 0);
        m62404C();
        for (NodeInfo nodeInfo : m62415V) {
            if (nodeInfo instanceof MutableNodeInfo) {
                ((MutableNodeInfo) nodeInfo).delete();
                this.f98834d = true;
            } else {
                if (!(nodeInfo instanceof NamespaceNode)) {
                    throw new XPathException("Selected item is not a mutable node");
                }
                NodeInfo parent = ((NamespaceNode) nodeInfo).getParent();
                if (parent instanceof MutableNodeInfo) {
                    try {
                        ((MutableNodeInfo) parent).removeNamespace(((NamespaceNode) nodeInfo).getLocalPart());
                    } catch (Exception e) {
                        throw new XPathException("Cannot remove namespace: " + e.getMessage());
                    }
                }
                this.f98834d = true;
            }
        }
    }

    /* renamed from: C */
    public final void m62404C() {
        this.f98833c.resetIndexes();
    }

    /* renamed from: D */
    public final SequenceIterator m62405D(XPathExpression xPathExpression, Item item) throws XPathException {
        XPathDynamicContext createDynamicContext = xPathExpression.createDynamicContext(item);
        for (Map.Entry<StructuredQName, GroundedValue> entry : this.f98835e.entrySet()) {
            createDynamicContext.setVariable(this.f98832b.getExternalVariable(entry.getKey()), entry.getValue());
        }
        return xPathExpression.iterate(createDynamicContext);
    }

    /* renamed from: E */
    public final SequenceIterator m62406E(XQueryExpression xQueryExpression, Item item) throws XPathException {
        DynamicQueryContext dynamicQueryContext = new DynamicQueryContext(this.f98831a);
        dynamicQueryContext.setContextItem(item);
        return xQueryExpression.iterator(dynamicQueryContext);
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0052, code lost:
    
        if (r1.equals("now") == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0054, code lost:
    
        r1 = r8.exchange("Quit without saving? (Y|N)");
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0060, code lost:
    
        if (r1.equalsIgnoreCase("y") == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0069, code lost:
    
        if (r1.equalsIgnoreCase(com.google.android.gms.common.GoogleApiAvailabilityLight.f29016b) == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x006b, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00e5 A[SYNTHETIC] */
    /* renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m62407F(net.p110sf.saxon.gizmo.Talker r8, boolean r9) {
        /*
            r7 = this;
            r0 = 0
        L1:
            r1 = r0
        L2:
            r2 = 2
            java.lang.String r3 = ""
            java.lang.String r3 = r8.exchange(r3)     // Catch: net.p110sf.saxon.trans.XPathException -> Lbb
            boolean r4 = r3.isEmpty()     // Catch: net.p110sf.saxon.trans.XPathException -> Lbb
            if (r4 == 0) goto L12
            if (r9 != 0) goto L12
            return
        L12:
            boolean r4 = r3.isEmpty()     // Catch: net.p110sf.saxon.trans.XPathException -> Lbb
            if (r4 == 0) goto L28
            int r4 = r1 + 1
            if (r1 <= r2) goto L26
            java.lang.String r1 = "To exit, type 'quit'. For help, type 'help'"
            java.lang.String r3 = r8.exchange(r1)     // Catch: net.p110sf.saxon.trans.XPathException -> L23
            goto L26
        L23:
            r1 = move-exception
            goto Lbe
        L26:
            r1 = r4
            goto L12
        L28:
            r1 = 32
            int r1 = r3.indexOf(r1)     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            if (r1 >= 0) goto L34
            int r1 = r3.length()     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
        L34:
            java.lang.String r4 = r3.substring(r0, r1)     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            java.lang.String r1 = r3.substring(r1)     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            java.lang.String r1 = r1.trim()     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            java.lang.String r3 = "quit"
            boolean r3 = r4.equals(r3)     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            if (r3 == 0) goto L71
            boolean r3 = r7.f98834d     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            if (r3 == 0) goto L6d
            java.lang.String r3 = "now"
            boolean r1 = r1.equals(r3)     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            if (r1 != 0) goto L6d
        L54:
            java.lang.String r1 = "Quit without saving? (Y|N)"
            java.lang.String r1 = r8.exchange(r1)     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            java.lang.String r3 = "y"
            boolean r3 = r1.equalsIgnoreCase(r3)     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            if (r3 == 0) goto L63
            goto L6d
        L63:
            java.lang.String r3 = "n"
            boolean r1 = r1.equalsIgnoreCase(r3)     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            if (r1 == 0) goto L54
            r1 = r0
            goto L6e
        L6d:
            r1 = 1
        L6e:
            if (r1 == 0) goto L1
            return
        L71:
            java.util.Map<java.lang.String, net.sf.saxon.Gizmo$c> r3 = r7.f98836f     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            java.lang.Object r3 = r3.get(r4)     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            net.sf.saxon.Gizmo$c r3 = (net.p110sf.saxon.Gizmo.C18259c) r3     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            if (r3 != 0) goto Lac
            if (r9 == 0) goto La4
            java.io.PrintStream r1 = r7.f98840j     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            r3.<init>()     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            java.lang.String r5 = "Unknown command "
            r3.append(r5)     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            r3.append(r4)     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            java.lang.String r4 = " (Use 'quit' to exit)"
            r3.append(r4)     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            java.lang.String r3 = r3.toString()     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            r1.println(r3)     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            java.lang.String r3 = "?"
            r1.<init>(r3)     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            r7.m62412K(r1)     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            goto L1
        La4:
            net.sf.saxon.trans.XPathException r1 = new net.sf.saxon.trans.XPathException     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            java.lang.String r3 = "\"Unknown command \" + cmd + \""
            r1.<init>(r3)     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            throw r1     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
        Lac:
            net.sf.saxon.Gizmo$b r3 = r3.f98843c     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            r4.<init>(r1)     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            r3.mo52952a(r4)     // Catch: net.p110sf.saxon.trans.XPathException -> Lb8
            goto L1
        Lb8:
            r1 = move-exception
            r4 = r0
            goto Lbe
        Lbb:
            r3 = move-exception
            r4 = r1
            r1 = r3
        Lbe:
            java.io.PrintStream r3 = r7.f98840j
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = r1.getErrorCodeLocalPart()
            r5.append(r6)
            java.lang.String r6 = ": "
            r5.append(r6)
            java.lang.String r1 = r1.getMessage()
            r5.append(r1)
            java.lang.String r1 = r5.toString()
            r3.println(r1)
            if (r9 == 0) goto Le2
            goto Le5
        Le2:
            java.lang.System.exit(r2)
        Le5:
            r1 = r4
            goto L2
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.Gizmo.m62407F(net.sf.saxon.gizmo.Talker, boolean):void");
    }

    /* renamed from: G */
    public final XPathExpression m62408G(StringBuilder sb, int i) throws XPathException {
        XPathEvaluator xPathEvaluator = new XPathEvaluator(this.f98831a);
        xPathEvaluator.setStaticContext(this.f98832b);
        Iterator<StructuredQName> it2 = this.f98835e.keySet().iterator();
        while (it2.hasNext()) {
            this.f98832b.declareVariable(it2.next());
        }
        XPathParser newExpressionParser = this.f98831a.newExpressionParser("XP", false, 31);
        newExpressionParser.parse(sb.toString(), 0, i, this.f98832b);
        int i2 = newExpressionParser.getTokenizer().currentTokenStartOffset;
        XPathExpression createExpression = xPathEvaluator.createExpression(sb.substring(0, i2));
        sb.replace(0, i2, "");
        return createExpression;
    }

    /* renamed from: H */
    public final StructuredQName m62409H(String str) throws XPathException {
        return StructuredQName.fromLexicalQName(str, false, true, this.f98832b.getNamespaceResolver());
    }

    /* renamed from: I */
    public final XQueryExpression m62410I(StringBuilder sb) throws XPathException {
        StaticQueryContext makeStaticQueryContext = this.f98831a.makeStaticQueryContext(true);
        for (StructuredQName structuredQName : this.f98835e.keySet()) {
            makeStaticQueryContext.declareGlobalVariable(structuredQName, SequenceType.ANY_SEQUENCE, this.f98835e.get(structuredQName), false);
        }
        if (this.f98838h) {
            makeStaticQueryContext.setSchemaAware(true);
        }
        Iterator<String> iteratePrefixes = this.f98832b.iteratePrefixes();
        while (iteratePrefixes.hasNext()) {
            String next = iteratePrefixes.next();
            makeStaticQueryContext.declareNamespace(next, this.f98832b.getURIForPrefix(next, true));
        }
        return makeStaticQueryContext.compileQuery(sb.toString());
    }

    /* renamed from: J */
    public final SequenceIterator m62411J(StringBuilder sb, int i) throws XPathException {
        return m62405D(m62408G(sb, i), this.f98833c);
    }

    /* renamed from: K */
    public final void m62412K(StringBuilder sb) {
        String trim = sb == null ? null : sb.toString().trim();
        if (trim != null && !trim.isEmpty() && !trim.equals("help") && !trim.equals("?")) {
            C18259c c18259c = this.f98836f.get(trim);
            if (c18259c == null) {
                m62412K(null);
                return;
            } else {
                this.f98840j.println(c18259c.f98842b);
                return;
            }
        }
        this.f98840j.println("Commands available:");
        ArrayList<String> arrayList = new ArrayList(this.f98836f.keySet());
        arrayList.sort(null);
        for (String str : arrayList) {
            this.f98840j.println(GlideException.C1935a.f14609h + this.f98836f.get(str).f98842b);
        }
    }

    /* renamed from: L */
    public final void m62413L() {
        m62430y("call", "call {filename} -- execute script from a file", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.w2h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.this.m62431z(sb);
            }
        });
        m62430y("copy", "copy {expression} -- make deep copy of all selected nodes", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.y2h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.this.m62402A(sb);
            }
        });
        m62430y("delete", "delete {expression} -- delete all selected nodes, with their content", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.e3h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.this.m62403B(sb);
            }
        });
        m62430y("follow", "follow {expression} with {query} -- add result of query after each selected node", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.f3h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.this.m62370M(sb);
            }
        });
        m62430y("help", "help {keyword} -- help on a specific command, or '?' for all commands", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.d3h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.this.m62412K(sb);
            }
        });
        m62430y("list", "list {expression} -- display paths of selected nodes", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.g3h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.this.m62414U(sb);
            }
        });
        m62430y("load", "load {fileName} -- load new source document from file", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.i3h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.this.m62416W(sb);
            }
        });
        m62430y(Constants.ATTRNAME_NAMESPACE, "namespace {prefix} {uri} -- bind namespace prefix to URI", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.j3h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.this.m62417X(sb);
            }
        });
        m62430y("paths", "paths -- display all distinct element paths in the document", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.k3h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.this.m62371N(sb);
            }
        });
        m62430y("precede", "precede {expression} with {query} -- add result of query before each selected node", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.l3h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.this.m62372O(sb);
            }
        });
        m62430y(RequestParameters.PREFIX, "prefix {expression} with {query} -- add result of query as first child of each selected node", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.h3h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.this.m62373P(sb);
            }
        });
        m62430y("quit", "quit [now] -- stop Gizmo", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.m3h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.m62374Q(sb);
            }
        });
        m62430y("rename", "rename {expression-1} as {expression-2} -- change the name of selected nodes", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.n3h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.this.m62419Z(sb);
            }
        });
        m62430y("replace", "replace {expression} with {query} -- replace selected nodes with result of query", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.o3h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.this.m62420a0(sb);
            }
        });
        m62430y("save", "save {filename} {output-property=value}... -- save current document to file", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.p3h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.this.m62421b0(sb);
            }
        });
        m62430y("schema", "schema {filename} -- load XSD 1.1 schema for use in validation", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.q3h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.this.m62423d0(sb);
            }
        });
        m62430y(ExtensionNamespaceContext.EXSLT_SET_PREFIX, "set {variable} {expression} -- set variable to value of expression", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.r3h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.this.m62424e0(sb);
            }
        });
        m62430y("show", "show {expression} -- display content of all selected nodes", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.s3h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.this.m62425f0(sb);
            }
        });
        m62430y("strip", "strip -- delete whitespace text nodes", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.t3h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.this.m62375R(sb);
            }
        });
        m62430y("suffix", "suffix {expression} with {query} -- add result of query as last child of each selected node", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.x2h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.this.m62376S(sb);
            }
        });
        m62430y(Constants.ELEMNAME_TRANSFORM_STRING, "transform {filename} -- transform current document using stylesheet in named file", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.z2h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.this.m62426g0(sb);
            }
        });
        m62430y("undo", "undo -- revert the most recent changes", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.a3h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.this.m62427h0(sb);
            }
        });
        m62430y("update", "update {expression} with {query} -- replace content of selected nodes with result of query", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.b3h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.this.m62377T(sb);
            }
        });
        m62430y("validate", "validate -- validate against loaded schema and/or xsi:schemaLocation", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.c3h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.this.m62429j0(sb);
            }
        });
        m62430y("?", "", new InterfaceC18258b() { // from class: com.sunia.HTREnginev2.d3h
            @Override // net.p110sf.saxon.Gizmo.InterfaceC18258b
            /* renamed from: a */
            public final void mo52952a(StringBuilder sb) {
                Gizmo.this.m62412K(sb);
            }
        });
    }

    /* renamed from: U */
    public final void m62414U(StringBuilder sb) throws XPathException {
        m62418Y();
        GroundedValue groundedValue = SequenceTool.toGroundedValue(m62411J(sb, 0));
        int length = groundedValue.getLength();
        if (length != 1) {
            this.f98840j.println("Found " + length + " items");
        }
        for (Item item : groundedValue.asIterable()) {
            if (item instanceof NodeInfo) {
                NodeInfo nodeInfo = (NodeInfo) item;
                int lineNumber = nodeInfo.getLineNumber();
                this.f98840j.println((lineNumber >= 0 ? "Line " + lineNumber + ": " : "") + Navigator.getPath(nodeInfo));
            } else {
                this.f98840j.println(item.getUnicodeStringValue());
            }
        }
    }

    /* renamed from: V */
    public final List<NodeInfo> m62415V(StringBuilder sb, int i) throws XPathException {
        ArrayList arrayList = new ArrayList();
        SequenceIterator m62411J = m62411J(sb, i);
        while (true) {
            Item next = m62411J.next();
            if (next == null) {
                return arrayList;
            }
            arrayList.add((NodeInfo) next);
        }
    }

    /* renamed from: W */
    public final void m62416W(StringBuilder sb) throws XPathException {
        StreamSource streamSource = new StreamSource(new File(sb.toString().replaceFirst("^~", System.getProperty(SystemUtils.f107421b))));
        ParseOptions parseOptions = new ParseOptions();
        parseOptions.setModel(TreeModel.LINKED_TREE);
        parseOptions.setLineNumbering(true);
        this.f98833c = (DocumentImpl) this.f98831a.buildDocumentTree(streamSource, parseOptions).getRootNode();
        this.f98838h = false;
        HashSet hashSet = new HashSet();
        AxisIterator iterateAxis = this.f98833c.iterateAxis(4, NodeKindTest.ELEMENT);
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                ArrayList arrayList = new ArrayList(hashSet);
                arrayList.addAll(Arrays.asList(f98830k));
                Collections.sort(arrayList);
                this.f98837g.setAutoCompletion(arrayList);
                return;
            }
            hashSet.add(next.getLocalPart());
            AxisIterator iterateAxis2 = next.iterateAxis(2);
            while (true) {
                NodeInfo next2 = iterateAxis2.next();
                if (next2 != null) {
                    hashSet.add("@" + next2.getLocalPart());
                }
            }
        }
    }

    /* renamed from: X */
    public final void m62417X(StringBuilder sb) throws XPathException {
        int indexOf = sb.indexOf(" ");
        if (indexOf < 0) {
            throw new XPathException("No namespace prefix supplied");
        }
        this.f98832b.declareNamespace(sb.substring(0, indexOf).trim(), sb.substring(indexOf).trim());
    }

    /* renamed from: Y */
    public final void m62418Y() throws XPathException {
        if (this.f98833c == null) {
            throw new XPathException("No source document available");
        }
    }

    /* renamed from: Z */
    public final void m62419Z(StringBuilder sb) throws XPathException {
        StructuredQName m62409H;
        m62418Y();
        m62422c0();
        List<NodeInfo> m62415V = m62415V(sb, 71);
        m62404C();
        sb.replace(0, 3, "");
        XPathExpression m62408G = m62408G(sb, 0);
        for (NodeInfo nodeInfo : m62415V) {
            if (!(nodeInfo instanceof MutableNodeInfo)) {
                throw new XPathException("Selected item is not a renameable node");
            }
            Item next = m62405D(m62408G, nodeInfo).next();
            if (next instanceof QNameValue) {
                m62409H = ((QNameValue) next).getStructuredQName();
            } else {
                if (!(next instanceof AtomicValue)) {
                    throw new XPathException("New name must evaluate to a string or QName");
                }
                m62409H = m62409H(next.getStringValue());
            }
            ((MutableNodeInfo) nodeInfo).rename(new FingerprintedQName(m62409H, this.f98831a.getNamePool()), true);
        }
    }

    /* renamed from: a0 */
    public final void m62420a0(StringBuilder sb) throws XPathException {
        m62418Y();
        m62422c0();
        List<NodeInfo> m62415V = m62415V(sb, 121);
        m62404C();
        sb.replace(0, 5, "");
        XQueryExpression m62410I = m62410I(sb);
        for (NodeInfo nodeInfo : m62415V) {
            if (!(nodeInfo instanceof MutableNodeInfo)) {
                throw new XPathException("Selected item is not a mutable node");
            }
            MutableNodeInfo mutableNodeInfo = (MutableNodeInfo) nodeInfo;
            GroundedValue groundedValue = SequenceTool.toGroundedValue(m62406E(m62410I, nodeInfo));
            if (groundedValue instanceof AtomicValue) {
                Orphan orphan = new Orphan(this.f98831a);
                orphan.setNodeKind((short) 3);
                orphan.setStringValue(((AtomicValue) groundedValue).getUnicodeStringValue());
                groundedValue = orphan;
            }
            int nodeKind = mutableNodeInfo.getNodeKind();
            if (nodeKind != 1) {
                if (nodeKind == 2) {
                    ((MutableNodeInfo) mutableNodeInfo.getParent()).removeAttribute(mutableNodeInfo);
                    if (groundedValue.getLength() != 0) {
                        if (groundedValue.getLength() != 1 || !(groundedValue.itemAt(0) instanceof NodeInfo) || ((NodeInfo) groundedValue.itemAt(0)).getNodeKind() != 2) {
                            throw new XPathException("Replacement for an attribute must be an attribute");
                        }
                        NodeInfo nodeInfo2 = (NodeInfo) groundedValue.itemAt(0);
                        ((MutableNodeInfo) mutableNodeInfo.getParent()).addAttribute(NameOfNode.makeName(nodeInfo2), (SimpleType) nodeInfo2.getSchemaType(), nodeInfo2.getStringValue(), 0, true);
                    }
                } else if (nodeKind != 3 && nodeKind != 7 && nodeKind != 8) {
                    if (nodeKind == 9) {
                        throw new XPathException("Cannot replace a document node");
                    }
                }
                throw new XPathException("Cannot replace a namespace node");
            }
            ArrayList arrayList = new ArrayList();
            for (Item item : groundedValue.asIterable()) {
                if (item instanceof NodeInfo) {
                    NodeInfo nodeInfo3 = (NodeInfo) item;
                    int nodeKind2 = nodeInfo3.getNodeKind();
                    if (nodeKind2 == 2) {
                        throw new XPathException("Cannot replace non-attribute with attribute");
                    }
                    if (nodeKind2 == 9) {
                        Iterator<? extends NodeInfo> it2 = nodeInfo3.children().iterator();
                        while (it2.hasNext()) {
                            arrayList.add(it2.next());
                        }
                    } else {
                        if (nodeKind2 == 13) {
                            throw new XPathException("Cannot replace non-namespace node with namespace node");
                        }
                        arrayList.add(nodeInfo3);
                    }
                } else if (item instanceof AtomicValue) {
                    Orphan orphan2 = new Orphan(this.f98831a);
                    orphan2.setNodeKind((short) 3);
                    orphan2.setStringValue(item.getUnicodeStringValue());
                    arrayList.add(orphan2);
                }
            }
            if (!arrayList.isEmpty()) {
                mutableNodeInfo.replace((NodeInfo[]) arrayList.toArray(new NodeInfo[0]), true);
            }
        }
        this.f98834d = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003e, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003f, code lost:
    
        r2 = new javax.xml.transform.stream.StreamResult(r1);
        r1 = new net.p110sf.saxon.serialize.SerializationProperties();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0049, code lost:
    
        r3 = r0.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004e, code lost:
    
        if (r3 == null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0050, code lost:
    
        r5 = r3.getStringValue().split("=");
        r1.setProperty(r5[0].trim(), r5[1].trim());
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006b, code lost:
    
        r7.f98840j.println("Unrecognized output property '" + r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0082, code lost:
    
        r0 = r7.f98831a.getSerializerFactory().getReceiver(r2, r1);
        r0.open();
        r7.f98833c.copy(r0, 2, net.p110sf.saxon.expr.parser.Loc.NONE);
        r0.close();
        r7.f98840j.println("Written to " + new java.io.File(r8.getStringValue()).getAbsolutePath());
        r7.f98834d = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00bf, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0023, code lost:
    
        if (r1.exists() != false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0025, code lost:
    
        r2 = r7.f98837g.exchange("Overwrite existing file? (Y|N)");
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0033, code lost:
    
        if (r2.equalsIgnoreCase("y") == false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x003c, code lost:
    
        if (r2.equalsIgnoreCase(com.google.android.gms.common.GoogleApiAvailabilityLight.f29016b) == false) goto L26;
     */
    /* renamed from: b0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m62421b0(java.lang.StringBuilder r8) throws net.p110sf.saxon.trans.XPathException {
        /*
            r7 = this;
            r7.m62418Y()
            net.sf.saxon.value.Whitespace$Tokenizer r0 = new net.sf.saxon.value.Whitespace$Tokenizer
            java.lang.String r8 = r8.toString()
            net.sf.saxon.str.UnicodeString r8 = net.p110sf.saxon.str.StringView.tidy(r8)
            r0.<init>(r8)
            net.sf.saxon.value.StringValue r8 = r0.next()
            if (r8 == 0) goto Lc0
            java.io.File r1 = new java.io.File
            java.lang.String r2 = r8.getStringValue()
            r1.<init>(r2)
            boolean r2 = r1.exists()
            if (r2 == 0) goto L3f
        L25:
            net.sf.saxon.gizmo.Talker r2 = r7.f98837g
            java.lang.String r3 = "Overwrite existing file? (Y|N)"
            java.lang.String r2 = r2.exchange(r3)
            java.lang.String r3 = "y"
            boolean r3 = r2.equalsIgnoreCase(r3)
            if (r3 == 0) goto L36
            goto L3f
        L36:
            java.lang.String r3 = "n"
            boolean r2 = r2.equalsIgnoreCase(r3)
            if (r2 == 0) goto L25
            return
        L3f:
            javax.xml.transform.stream.StreamResult r2 = new javax.xml.transform.stream.StreamResult
            r2.<init>(r1)
            net.sf.saxon.serialize.SerializationProperties r1 = new net.sf.saxon.serialize.SerializationProperties
            r1.<init>()
        L49:
            net.sf.saxon.value.StringValue r3 = r0.next()
            r4 = 0
            if (r3 == 0) goto L82
            java.lang.String r5 = r3.getStringValue()     // Catch: java.lang.Exception -> L6b
            java.lang.String r6 = "="
            java.lang.String[] r5 = r5.split(r6)     // Catch: java.lang.Exception -> L6b
            r4 = r5[r4]     // Catch: java.lang.Exception -> L6b
            java.lang.String r4 = r4.trim()     // Catch: java.lang.Exception -> L6b
            r6 = 1
            r5 = r5[r6]     // Catch: java.lang.Exception -> L6b
            java.lang.String r5 = r5.trim()     // Catch: java.lang.Exception -> L6b
            r1.setProperty(r4, r5)     // Catch: java.lang.Exception -> L6b
            goto L49
        L6b:
            java.io.PrintStream r4 = r7.f98840j
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Unrecognized output property '"
            r5.append(r6)
            r5.append(r3)
            java.lang.String r3 = r5.toString()
            r4.println(r3)
            goto L49
        L82:
            net.sf.saxon.Configuration r0 = r7.f98831a
            net.sf.saxon.lib.SerializerFactory r0 = r0.getSerializerFactory()
            net.sf.saxon.event.Receiver r0 = r0.getReceiver(r2, r1)
            r0.open()
            net.sf.saxon.tree.linked.DocumentImpl r1 = r7.f98833c
            r2 = 2
            net.sf.saxon.expr.parser.Loc r3 = net.p110sf.saxon.expr.parser.Loc.NONE
            r1.copy(r0, r2, r3)
            r0.close()
            java.io.PrintStream r0 = r7.f98840j
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Written to "
            r1.append(r2)
            java.io.File r2 = new java.io.File
            java.lang.String r8 = r8.getStringValue()
            r2.<init>(r8)
            java.lang.String r8 = r2.getAbsolutePath()
            r1.append(r8)
            java.lang.String r8 = r1.toString()
            r0.println(r8)
            r7.f98834d = r4
            return
        Lc0:
            net.sf.saxon.trans.XPathException r7 = new net.sf.saxon.trans.XPathException
            java.lang.String r8 = "No file name supplied"
            r7.<init>(r8)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.Gizmo.m62421b0(java.lang.StringBuilder):void");
    }

    /* renamed from: c0 */
    public final void m62422c0() throws XPathException {
        LinkedTreeBuilder linkedTreeBuilder = new LinkedTreeBuilder(this.f98831a.makePipelineConfiguration());
        this.f98833c.copy(linkedTreeBuilder, 2, Loc.NONE);
        DocumentImpl documentImpl = (DocumentImpl) linkedTreeBuilder.getCurrentRoot();
        this.f98839i.add(this.f98833c);
        this.f98833c = documentImpl;
        if (this.f98839i.size() > 20) {
            this.f98839i.remove(0);
        }
    }

    /* renamed from: d0 */
    public final void m62423d0(StringBuilder sb) throws XPathException {
        if (!this.f98831a.isLicensedFeature(1)) {
            throw new XPathException("Schema processing is not supported in this Saxon configuration");
        }
        this.f98831a.loadSchema(new File(sb.toString().replaceFirst("^~", System.getProperty(SystemUtils.f107421b))).getAbsoluteFile().toURI().toString());
    }

    /* renamed from: e0 */
    public final void m62424e0(StringBuilder sb) throws XPathException {
        int indexOf = sb.indexOf("=");
        if (indexOf < 0 || indexOf == sb.length() - 1) {
            throw new XPathException("Format: set name = value");
        }
        String trim = sb.substring(0, indexOf).trim();
        if (trim.startsWith("$")) {
            trim = trim.substring(1);
        }
        DocumentImpl documentImpl = this.f98833c;
        GroundedValue groundedValue = SequenceTool.toGroundedValue(m62411J(new StringBuilder(sb.substring(indexOf + 1)), 0));
        if (!trim.equals(".")) {
            this.f98835e.put(m62409H(trim), groundedValue);
            this.f98833c = documentImpl;
            return;
        }
        m62422c0();
        if (groundedValue.getLength() == 1 && (groundedValue.itemAt(0) instanceof DocumentImpl)) {
            this.f98833c = (DocumentImpl) groundedValue.itemAt(0);
            return;
        }
        try {
            LinkedTreeBuilder linkedTreeBuilder = new LinkedTreeBuilder(this.f98831a.makePipelineConfiguration());
            ComplexContentOutputter complexContentOutputter = new ComplexContentOutputter(linkedTreeBuilder);
            complexContentOutputter.open();
            complexContentOutputter.startDocument(0);
            Iterator<? extends Item> it2 = groundedValue.asIterable().iterator();
            while (it2.hasNext()) {
                complexContentOutputter.append(it2.next());
            }
            complexContentOutputter.endDocument();
            complexContentOutputter.close();
            this.f98833c = (DocumentImpl) linkedTreeBuilder.getCurrentRoot();
        } catch (XPathException e) {
            throw new XPathException("Cannot save the value as a document (" + e.getMessage() + MotionUtils.f31762d);
        }
    }

    public String executeTestCommand(String str) throws XPathException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.f98840j = new PrintStream(byteArrayOutputStream);
        int indexOf = str.indexOf(32);
        if (indexOf < 0) {
            indexOf = str.length();
        }
        String substring = str.substring(0, indexOf);
        String trim = str.substring(indexOf).trim();
        C18259c c18259c = this.f98836f.get(substring);
        if (c18259c == null) {
            throw new XPathException("\"Unknown command \" + cmd + \"");
        }
        c18259c.f98843c.mo52952a(new StringBuilder(trim));
        try {
            return byteArrayOutputStream.toString("utf-8");
        } catch (UnsupportedEncodingException e) {
            throw new XPathException(e);
        }
    }

    /* renamed from: f0 */
    public final void m62425f0(StringBuilder sb) throws XPathException {
        m62418Y();
        if (sb.toString().trim().isEmpty()) {
            sb = new StringBuilder(".");
        }
        GroundedValue groundedValue = SequenceTool.toGroundedValue(m62411J(sb, 0));
        int length = groundedValue.getLength();
        if (length != 1) {
            this.f98840j.println("Found " + length + " items");
        }
        for (Item item : groundedValue.asIterable()) {
            if (item instanceof NodeInfo) {
                this.f98840j.println(QueryResult.serialize((NodeInfo) item));
            } else if (item instanceof AtomicValue) {
                this.f98840j.println(item.getUnicodeStringValue());
            } else {
                StringWriter stringWriter = new StringWriter();
                SerializationProperties serializationProperties = new SerializationProperties();
                serializationProperties.setProperty("method", "adaptive");
                this.f98831a.getSerializerFactory().getReceiver(new StreamResult(stringWriter), serializationProperties).append(item);
                this.f98840j.println(stringWriter.toString());
            }
        }
    }

    /* renamed from: g0 */
    public final void m62426g0(StringBuilder sb) throws XPathException {
        try {
            m62418Y();
            m62422c0();
            Transformer newTransformer = new TransformerFactoryImpl(this.f98831a).newTemplates(new StreamSource(new File(sb.toString().replaceFirst("^~", System.getProperty(SystemUtils.f107421b))))).newTransformer();
            LinkedTreeBuilder linkedTreeBuilder = new LinkedTreeBuilder(this.f98831a.makePipelineConfiguration());
            linkedTreeBuilder.open();
            newTransformer.transform(this.f98833c.asActiveSource(), linkedTreeBuilder);
            linkedTreeBuilder.close();
            this.f98833c = (DocumentImpl) linkedTreeBuilder.getCurrentRoot();
        } catch (TransformerException e) {
            throw XPathException.makeXPathException(e);
        }
    }

    public Configuration getConfiguration() {
        return this.f98831a;
    }

    public DocumentImpl getCurrentDoc() {
        return this.f98833c;
    }

    /* renamed from: h0 */
    public final void m62427h0(StringBuilder sb) throws XPathException {
        int size = this.f98839i.size();
        if (size <= 0) {
            throw new XPathException("Nothing to undo");
        }
        this.f98833c = this.f98839i.remove(size - 1);
    }

    /* renamed from: i0 */
    public final void m62428i0(StringBuilder sb, String str) throws XPathException {
        char c;
        m62418Y();
        m62422c0();
        List<NodeInfo> m62415V = m62415V(sb, 121);
        m62404C();
        sb.replace(0, 5, "");
        XQueryExpression m62410I = m62410I(sb);
        for (NodeInfo nodeInfo : m62415V) {
            if (!(nodeInfo instanceof MutableNodeInfo)) {
                throw new XPathException("Selected item is not a mutable node");
            }
            MutableNodeInfo mutableNodeInfo = (MutableNodeInfo) nodeInfo;
            GroundedValue groundedValue = SequenceTool.toGroundedValue(m62406E(m62410I, nodeInfo));
            if ((groundedValue instanceof AtomicValue) && str.equals("content")) {
                mutableNodeInfo.replaceStringValue(((AtomicValue) groundedValue).getUnicodeStringValue());
            } else {
                ArrayList arrayList = new ArrayList();
                ArrayList<NodeInfo> arrayList2 = new ArrayList();
                for (Item item : groundedValue.asIterable()) {
                    if (item instanceof NodeInfo) {
                        NodeInfo nodeInfo2 = (NodeInfo) item;
                        int nodeKind = nodeInfo2.getNodeKind();
                        if (nodeKind == 2) {
                            arrayList2.add(nodeInfo2);
                        } else if (nodeKind == 9) {
                            Iterator<? extends NodeInfo> it2 = nodeInfo2.children().iterator();
                            while (it2.hasNext()) {
                                arrayList.add(it2.next());
                            }
                        } else {
                            if (nodeKind == 13) {
                                throw new XPathException("Cannot replace namespace nodes");
                            }
                            arrayList.add(nodeInfo2);
                        }
                    } else if (item instanceof AtomicValue) {
                        Orphan orphan = new Orphan(this.f98831a);
                        orphan.setNodeKind((short) 3);
                        orphan.setStringValue(item.getUnicodeStringValue());
                        arrayList.add(orphan);
                    }
                }
                if (!arrayList2.isEmpty() && !str.equals(RequestParameters.PREFIX) && !str.equals("update")) {
                    throw new XPathException("Cannot supply attributes for " + str + " command (use 'prefix')");
                }
                if (!arrayList.isEmpty()) {
                    NodeInfo[] nodeInfoArr = (NodeInfo[]) arrayList.toArray(new NodeInfo[0]);
                    switch (str.hashCode()) {
                        case -1268958287:
                            if (str.equals("follow")) {
                                c = 2;
                                break;
                            }
                            break;
                        case -980110702:
                            if (str.equals(RequestParameters.PREFIX)) {
                                c = 3;
                                break;
                            }
                            break;
                        case -891422895:
                            if (str.equals("suffix")) {
                                c = 4;
                                break;
                            }
                            break;
                        case -318754426:
                            if (str.equals("precede")) {
                                c = 1;
                                break;
                            }
                            break;
                        case 951530617:
                            if (str.equals("content")) {
                                c = 0;
                                break;
                            }
                            break;
                    }
                    c = 65535;
                    if (c == 0) {
                        mutableNodeInfo.replace(nodeInfoArr, true);
                    } else if (c == 1) {
                        mutableNodeInfo.insertSiblings(nodeInfoArr, true, true);
                    } else if (c == 2) {
                        mutableNodeInfo.insertSiblings(nodeInfoArr, false, true);
                    } else if (c != 3) {
                        mutableNodeInfo.insertChildren(nodeInfoArr, false, true);
                    } else {
                        mutableNodeInfo.insertChildren(nodeInfoArr, true, true);
                    }
                }
                for (NodeInfo nodeInfo3 : arrayList2) {
                    NodeName makeName = NameOfNode.makeName(nodeInfo3);
                    NodeInfo next = mutableNodeInfo.iterateAxis(2, new NameTest(2, makeName, this.f98831a.getNamePool())).next();
                    if (next != null) {
                        mutableNodeInfo.removeAttribute(next);
                    }
                    mutableNodeInfo.addAttribute(makeName, BuiltInAtomicType.UNTYPED_ATOMIC, nodeInfo3.getStringValue(), 0, true);
                }
            }
        }
        this.f98834d = true;
    }

    public Talker initTalker(String str) {
        if (str == null) {
            try {
                return new JLine2Talker();
            } catch (IOException e) {
                System.err.println(e.getMessage());
                System.exit(2);
                return null;
            }
        }
        try {
            return new DefaultTalker(new FileInputStream(new File(str)), this.f98840j);
        } catch (FileNotFoundException e2) {
            System.err.println(e2.getMessage());
            System.exit(2);
            return null;
        }
    }

    /* renamed from: j0 */
    public final void m62429j0(StringBuilder sb) throws XPathException {
        if (!this.f98831a.isLicensedFeature(1)) {
            throw new XPathException("Schema processing is not supported in this Saxon configuration");
        }
        m62418Y();
        m62422c0();
        LinkedTreeBuilder linkedTreeBuilder = new LinkedTreeBuilder(this.f98831a.makePipelineConfiguration());
        linkedTreeBuilder.open();
        ParseOptions parseOptions = new ParseOptions();
        parseOptions.setSchemaValidationMode(1);
        this.f98833c.copy(this.f98831a.getDocumentValidator(linkedTreeBuilder, this.f98833c.getSystemId(), parseOptions, Loc.NONE), 2, Loc.NONE);
        linkedTreeBuilder.close();
        this.f98833c = (DocumentImpl) linkedTreeBuilder.getCurrentRoot();
        this.f98834d = true;
        this.f98838h = true;
    }

    public void setCurrentDoc(DocumentImpl documentImpl) {
        this.f98833c = documentImpl;
    }

    /* renamed from: y */
    public final void m62430y(String str, String str2, InterfaceC18258b interfaceC18258b) {
        C18259c c18259c = new C18259c();
        c18259c.f98841a = str;
        c18259c.f98842b = str2;
        c18259c.f98843c = interfaceC18258b;
        this.f98836f.put(str, c18259c);
    }

    /* renamed from: z */
    public final void m62431z(StringBuilder sb) throws XPathException {
        try {
            m62407F(new DefaultTalker(new FileInputStream(sb.toString()), new PrintStream(this.f98840j)), false);
        } catch (FileNotFoundException e) {
            throw new XPathException("Script not found: " + e.getMessage());
        }
    }

    public Gizmo() {
        this.f98834d = false;
        this.f98835e = new HashMap();
        this.f98836f = new HashMap();
        this.f98838h = false;
        this.f98839i = new LinkedList();
        this.f98840j = System.out;
        m62413L();
        this.f98837g = null;
        Configuration newConfiguration = Configuration.newConfiguration();
        this.f98831a = newConfiguration;
        newConfiguration.setConfigurationProperty((Feature<Feature<Boolean>>) Feature.ALLOW_SYNTAX_EXTENSIONS, (Feature<Boolean>) Boolean.TRUE);
        IndependentContext independentContext = new IndependentContext(newConfiguration);
        this.f98832b = independentContext;
        independentContext.declareNamespace("xml", "http://www.w3.org/XML/1998/namespace");
        independentContext.declareNamespace("xsl", "http://www.w3.org/1999/XSL/Transform");
        independentContext.declareNamespace("saxon", NamespaceConstant.SAXON);
        independentContext.declareNamespace("xs", "http://www.w3.org/2001/XMLSchema");
        independentContext.declareNamespace("xsi", "http://www.w3.org/2001/XMLSchema-instance");
        independentContext.declareNamespace("fn", "http://www.w3.org/2005/xpath-functions");
        independentContext.declareNamespace("math", NamespaceConstant.MATH);
        independentContext.declareNamespace(Constant.MAP_TAG, NamespaceConstant.MAP_FUNCTIONS);
        independentContext.declareNamespace("array", NamespaceConstant.ARRAY_FUNCTIONS);
        independentContext.declareNamespace("", "");
        independentContext.setUnprefixedElementMatchingPolicy(UnprefixedElementMatchingPolicy.ANY_NAMESPACE);
    }
}
