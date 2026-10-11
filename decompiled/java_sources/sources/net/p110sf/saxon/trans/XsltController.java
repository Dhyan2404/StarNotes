package net.p110sf.saxon.trans;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Stack;
import java.util.function.Consumer;
import java.util.function.Supplier;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.PreparedStylesheet;
import net.p110sf.saxon.event.ComplexContentOutputter;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.MappingFunction;
import net.p110sf.saxon.expr.SequenceMapper;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.accum.AccumulatorManager;
import net.p110sf.saxon.expr.instruct.AttributeSet;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.lib.OutputURIResolver;
import net.p110sf.saxon.lib.OutputURIResolverWrapper;
import net.p110sf.saxon.lib.ResultDocumentResolver;
import net.p110sf.saxon.lib.StandardMessageHandler;
import net.p110sf.saxon.lib.TraceListener;
import net.p110sf.saxon.om.DocumentKey;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SpaceStrippingRule;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.s9api.Destination;
import net.p110sf.saxon.s9api.Message;
import net.p110sf.saxon.serialize.PrincipalOutputGatekeeper;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.trace.TemplateRuleTraceListener;
import net.p110sf.saxon.trans.XsltController;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.SingletonIterator;
import net.p110sf.saxon.tree.wrapper.SpaceStrippedDocument;
import net.p110sf.saxon.tree.wrapper.SpaceStrippedNode;
import net.p110sf.saxon.tree.wrapper.TypeStrippedDocument;

/* loaded from: classes11.dex */
public class XsltController extends Controller {

    /* renamed from: A0 */
    public AccumulatorManager f102376A0;

    /* renamed from: B0 */
    public PrincipalOutputGatekeeper f102377B0;

    /* renamed from: C0 */
    public Destination f102378C0;

    /* renamed from: D0 */
    public TemplateRuleTraceListener f102379D0;

    /* renamed from: E0 */
    public Consumer<Message> f102380E0;

    /* renamed from: k0 */
    public final Map<StructuredQName, Integer> f102381k0;

    /* renamed from: q0 */
    public boolean f102382q0;

    /* renamed from: t0 */
    public ResultDocumentResolver f102383t0;

    /* renamed from: u0 */
    public HashSet<DocumentKey> f102384u0;

    /* renamed from: v0 */
    public Component.C18300M f102385v0;

    /* renamed from: w0 */
    public final Function f102386w0;

    /* renamed from: x0 */
    public Map<StructuredQName, Sequence> f102387x0;

    /* renamed from: y0 */
    public Map<StructuredQName, Sequence> f102388y0;

    /* renamed from: z0 */
    public final Map<Long, Stack<AttributeSet>> f102389z0;

    /* renamed from: net.sf.saxon.trans.XsltController$a */
    /* loaded from: classes11.dex */
    public class C18534a extends ProxyReceiver {

        /* renamed from: e */
        public final /* synthetic */ Outputter f102390e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18534a(Receiver receiver, Outputter outputter) {
            super(receiver);
            this.f102390e = outputter;
        }

        @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
        public void close() throws XPathException {
            if (((Controller) XsltController.this).traceListener != null) {
                ((Controller) XsltController.this).traceListener.close();
            }
            this.f102390e.close();
            ((Controller) XsltController.this).inUse = false;
        }
    }

    public XsltController(Configuration configuration, PreparedStylesheet preparedStylesheet) {
        super(configuration, preparedStylesheet);
        this.f102381k0 = new HashMap();
        this.f102382q0 = true;
        this.f102385v0 = null;
        this.f102386w0 = null;
        this.f102389z0 = new HashMap();
        this.f102376A0 = new AccumulatorManager();
        this.f102377B0 = null;
        this.f102379D0 = null;
        m64500k(configuration);
    }

    /* renamed from: l */
    public static /* synthetic */ Stack m64497l(Long l) {
        return new Stack();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ SequenceIterator m64498m(Mode mode, Item item) throws XPathException {
        if (!(item instanceof NodeInfo)) {
            return SingletonIterator.makeIterator(item);
        }
        NodeInfo nodeInfo = (NodeInfo) item;
        if (nodeInfo.getConfiguration() == null) {
            throw new XPathException("The supplied source document must be associated with a Configuration");
        }
        if (!nodeInfo.getConfiguration().isCompatible(this.executable.getConfiguration())) {
            throw new XPathException("Source document and stylesheet must use the same or compatible Configurations", SaxonErrorCode.SXXP0004);
        }
        if (nodeInfo.getTreeInfo().isTyped() && !this.executable.isSchemaAware()) {
            throw new XPathException("Cannot use a schema-validated source document unless the stylesheet is schema-aware");
        }
        if (isStylesheetStrippingTypeAnnotations() && nodeInfo != this.globalContextItem) {
            TreeInfo treeInfo = nodeInfo.getTreeInfo();
            if (treeInfo.isTyped()) {
                nodeInfo = new TypeStrippedDocument(treeInfo).wrap(nodeInfo);
            }
        }
        SpaceStrippingRule spaceStrippingRule = getSpaceStrippingRule();
        if (isStylesheetContainingStripSpace() && isStripSourceTree() && !(nodeInfo instanceof SpaceStrippedNode) && nodeInfo != this.globalContextItem && nodeInfo.getTreeInfo().getSpaceStrippingRule() != spaceStrippingRule) {
            SpaceStrippedDocument spaceStrippedDocument = new SpaceStrippedDocument(nodeInfo.getTreeInfo(), spaceStrippingRule);
            if (!SpaceStrippedNode.isPreservedNode(nodeInfo, spaceStrippedDocument, nodeInfo.getParent())) {
                return EmptyIterator.emptyIterator();
            }
            nodeInfo = spaceStrippedDocument.wrap(nodeInfo);
        }
        if (getAccumulatorManager() != null) {
            getAccumulatorManager().setApplicableAccumulators(nodeInfo.getTreeInfo(), mode.getAccumulators());
        }
        return SingletonIterator.makeIterator(nodeInfo);
    }

    public synchronized void addUnavailableOutputDestination(DocumentKey documentKey) {
        if (this.f102384u0 == null) {
            this.f102384u0 = new HashSet<>(20);
        }
        this.f102384u0.add(documentKey);
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0170 A[Catch: all -> 0x0174, TryCatch #7 {all -> 0x0174, blocks: (B:7:0x0016, B:76:0x0134, B:65:0x014e, B:59:0x016a, B:61:0x0170, B:62:0x0173), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void applyStreamingTemplates(javax.xml.transform.Source r13, net.p110sf.saxon.event.Receiver r14) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.trans.XsltController.applyStreamingTemplates(javax.xml.transform.Source, net.sf.saxon.event.Receiver):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a7, code lost:
    
        if (r11 != null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00db, code lost:
    
        r10.principalResultURI = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00ed, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d8, code lost:
    
        r11.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00ea, code lost:
    
        if (r11 == null) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00d6, code lost:
    
        if (r11 == null) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void applyTemplates(net.p110sf.saxon.om.Sequence r11, net.p110sf.saxon.event.Receiver r12) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.trans.XsltController.applyTemplates(net.sf.saxon.om.Sequence, net.sf.saxon.event.Receiver):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c0, code lost:
    
        if (r10 != null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ee, code lost:
    
        r9.inUse = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00fe, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00eb, code lost:
    
        r10.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00fb, code lost:
    
        if (r10 == null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00e9, code lost:
    
        if (r10 == null) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void callTemplate(net.p110sf.saxon.om.StructuredQName r10, net.p110sf.saxon.event.Receiver r11) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.trans.XsltController.callTemplate(net.sf.saxon.om.StructuredQName, net.sf.saxon.event.Receiver):void");
    }

    public synchronized boolean checkUniqueOutputDestination(DocumentKey documentKey) {
        if (documentKey == null) {
            return true;
        }
        if (this.f102384u0 == null) {
            this.f102384u0 = new HashSet<>(20);
        }
        return !this.f102384u0.contains(documentKey);
    }

    @Override // net.p110sf.saxon.Controller
    public synchronized void clearPerTransformationData() {
        super.clearPerTransformationData();
        this.principalResult = null;
        this.f102384u0 = null;
        Map<StructuredQName, Integer> map = this.f102381k0;
        if (map != null) {
            map.clear();
        }
    }

    public AccumulatorManager getAccumulatorManager() {
        return this.f102376A0;
    }

    public synchronized Stack<AttributeSet> getAttributeSetEvaluationStack() {
        return this.f102389z0.computeIfAbsent(Long.valueOf(Thread.currentThread().getId()), new java.util.function.Function() { // from class: com.sunia.HTREnginev2.ywo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Stack m64497l;
                m64497l = XsltController.m64497l((Long) obj);
                return m64497l;
            }
        });
    }

    public PrincipalOutputGatekeeper getGatekeeper() {
        return this.f102377B0;
    }

    public Mode getInitialMode() {
        Component.C18300M c18300m = this.f102385v0;
        if (c18300m != null) {
            return c18300m.getActor();
        }
        StylesheetPackage stylesheetPackage = (StylesheetPackage) this.executable.getTopLevelPackage();
        StructuredQName defaultMode = stylesheetPackage.getDefaultMode();
        if (defaultMode == null) {
            defaultMode = Mode.UNNAMED_MODE_NAME;
        }
        Component.C18300M c18300m2 = (Component.C18300M) stylesheetPackage.getComponent(new SymbolicName(180, defaultMode));
        this.f102385v0 = c18300m2;
        return c18300m2.getActor();
    }

    public StructuredQName getInitialModeName() {
        Component.C18300M c18300m = this.f102385v0;
        if (c18300m == null) {
            return null;
        }
        return c18300m.getActor().getModeName();
    }

    public Map<StructuredQName, Sequence> getInitialTemplateParameters(boolean z) {
        return z ? this.f102388y0 : this.f102387x0;
    }

    public Map<StructuredQName, Integer> getMessageCounters() {
        HashMap hashMap;
        synchronized (this.f102381k0) {
            hashMap = new HashMap(this.f102381k0);
        }
        return hashMap;
    }

    @Deprecated
    public Receiver getMessageEmitter() {
        return null;
    }

    public Consumer<Message> getMessageHandler() {
        return this.f102380E0;
    }

    public OutputURIResolver getOutputURIResolver() {
        ResultDocumentResolver resultDocumentResolver = this.f102383t0;
        return resultDocumentResolver instanceof OutputURIResolverWrapper ? ((OutputURIResolverWrapper) resultDocumentResolver).getOutputURIResolver() : getConfiguration().getOutputURIResolver();
    }

    public Destination getPrincipalDestination() {
        return this.f102378C0;
    }

    public ResultDocumentResolver getResultDocumentResolver() {
        return this.f102383t0;
    }

    public Receiver getStreamingReceiver(Mode mode, Receiver receiver) throws XPathException {
        checkReadiness();
        ComplexContentOutputter m64501n = m64501n(receiver);
        XPathContextMajor newXPathContext = newXPathContext();
        newXPathContext.setOrigin(this);
        this.globalContextItem = null;
        if (!mode.isDeclaredStreamable()) {
            throw new XPathException("mode supplied to getStreamingReceiver() must be streamable");
        }
        Configuration configuration = getConfiguration();
        Receiver makeStreamingTransformer = configuration.makeStreamingTransformer(mode, null, null, m64501n, newXPathContext);
        if (makeStreamingTransformer == null) {
            throw new XPathException("Streaming requires Saxon-EE");
        }
        if (configuration.isStripsAllWhiteSpace() || isStylesheetContainingStripSpace()) {
            makeStreamingTransformer = makeStripper(makeStreamingTransformer);
        }
        makeStreamingTransformer.setPipelineConfiguration(makePipelineConfiguration());
        return new C18534a(makeStreamingTransformer, m64501n);
    }

    public TemplateRuleTraceListener getTemplateRuleTraceListener() {
        return this.f102379D0;
    }

    public void incrementMessageCounter(StructuredQName structuredQName) {
        synchronized (this.f102381k0) {
            this.f102381k0.put(structuredQName, Integer.valueOf(this.f102381k0.getOrDefault(structuredQName, 0).intValue() + 1));
        }
    }

    public boolean isAssertionsEnabled() {
        return this.f102382q0;
    }

    public synchronized boolean isUnusedOutputDestination(DocumentKey documentKey) {
        boolean z;
        HashSet<DocumentKey> hashSet = this.f102384u0;
        if (hashSet != null) {
            z = hashSet.contains(documentKey) ? false : true;
        }
        return z;
    }

    /* renamed from: j */
    public final MappingFunction m64499j(final Mode mode) {
        return SequenceMapper.m62631of(new SequenceMapper.Lambda() { // from class: com.sunia.HTREnginev2.zwo
            @Override // net.sf.saxon.expr.SequenceMapper.Lambda
            public final SequenceIterator map(Item item) {
                SequenceIterator m64498m;
                m64498m = XsltController.this.m64498m(mode, item);
                return m64498m;
            }
        });
    }

    /* renamed from: k */
    public final void m64500k(Configuration configuration) {
        this.f102380E0 = new StandardMessageHandler(configuration);
    }

    @Deprecated
    public Receiver makeMessageReceiver() {
        return null;
    }

    /* renamed from: n */
    public final ComplexContentOutputter m64501n(Receiver receiver) throws XPathException {
        this.principalResult = receiver;
        if (this.principalResultURI == null) {
            this.principalResultURI = receiver.getSystemId();
        }
        if (getExecutable().createsSecondaryResult()) {
            PrincipalOutputGatekeeper principalOutputGatekeeper = new PrincipalOutputGatekeeper(this, receiver);
            this.f102377B0 = principalOutputGatekeeper;
            receiver = principalOutputGatekeeper;
        }
        ComplexContentOutputter complexContentOutputter = new ComplexContentOutputter(receiver);
        complexContentOutputter.setSystemId(receiver.getSystemId());
        complexContentOutputter.open();
        return complexContentOutputter;
    }

    /* renamed from: o */
    public final void m64502o(Mode mode) {
        if (mode.isDeclaredStreamable()) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f102385v0 == null ? "" : getInitialMode().getModeTitle(true));
            sb.append(" is streamable, but the input is not supplied as a stream");
            warning(sb.toString(), SaxonErrorCode.SXWN9000, Loc.NONE);
        }
    }

    @Override // net.p110sf.saxon.Controller
    public void preEvaluateGlobals(XPathContext xPathContext) throws XPathException {
    }

    public synchronized void releaseAttributeSetEvaluationStack() {
        this.f102389z0.remove(Long.valueOf(Thread.currentThread().getId()));
    }

    public synchronized void removeUnavailableOutputDestination(DocumentKey documentKey) {
        HashSet<DocumentKey> hashSet = this.f102384u0;
        if (hashSet != null) {
            hashSet.remove(documentKey);
        }
    }

    @Override // net.p110sf.saxon.Controller
    public void reset() {
        super.reset();
        Configuration configuration = getConfiguration();
        this.validationMode = configuration.getSchemaValidationMode();
        this.f102376A0 = new AccumulatorManager();
        this.traceListener = null;
        try {
            TraceListener makeTraceListener = configuration.makeTraceListener();
            if (makeTraceListener != null) {
                addTraceListener(makeTraceListener);
            }
            setModel(configuration.getParseOptions().getModel());
            this.globalContextItem = null;
            this.f102385v0 = null;
            clearPerTransformationData();
        } catch (XPathException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    public void setAssertionsEnabled(boolean z) {
        this.f102382q0 = z;
    }

    public void setInitialMode(StructuredQName structuredQName) throws XPathException {
        if (structuredQName == null || structuredQName.equals(Mode.UNNAMED_MODE_NAME)) {
            this.f102385v0 = ((PreparedStylesheet) this.executable).getRuleManager().obtainMode(Mode.UNNAMED_MODE_NAME, true).getDeclaringComponent();
            return;
        }
        StylesheetPackage stylesheetPackage = (StylesheetPackage) this.executable.getTopLevelPackage();
        if (structuredQName.equals(Mode.DEFAULT_MODE_NAME)) {
            StructuredQName defaultMode = stylesheetPackage.getDefaultMode();
            if (structuredQName.equals(defaultMode)) {
                return;
            }
            setInitialMode(defaultMode);
            return;
        }
        boolean isDeclaredModes = stylesheetPackage.isDeclaredModes();
        Component.C18300M c18300m = (Component.C18300M) stylesheetPackage.getComponent(new SymbolicName(180, structuredQName));
        if (c18300m == null) {
            throw new XPathException("Requested initial mode " + structuredQName + " is not defined in the stylesheet", "XTDE0045");
        }
        if (!((PreparedStylesheet) this.executable).isEligibleInitialMode(c18300m)) {
            throw new XPathException("Requested initial mode " + structuredQName + " is private in the top-level package", "XTDE0045");
        }
        this.f102385v0 = c18300m;
        if (isDeclaredModes || !c18300m.getActor().isEmpty() || structuredQName.equals(stylesheetPackage.getDefaultMode())) {
            return;
        }
        throw new XPathException("Requested initial mode " + structuredQName + " contains no template rules", "XTDE0045");
    }

    public void setInitialTemplateParameters(Map<StructuredQName, Sequence> map, boolean z) {
        if (z) {
            this.f102388y0 = map;
        } else {
            this.f102387x0 = map;
        }
    }

    @Deprecated
    public void setMessageEmitter(Receiver receiver) {
    }

    @Deprecated
    public void setMessageFactory(Supplier<Receiver> supplier) {
    }

    public void setMessageHandler(Consumer<Message> consumer) {
        this.f102380E0 = consumer;
    }

    @Deprecated
    public void setMessageReceiverClassName(String str) {
    }

    public void setOutputURIResolver(OutputURIResolver outputURIResolver) {
        if (outputURIResolver == null) {
            outputURIResolver = getConfiguration().getOutputURIResolver();
        }
        setResultDocumentResolver(new OutputURIResolverWrapper(outputURIResolver));
    }

    public void setPrincipalDestination(Destination destination) {
        this.f102378C0 = destination;
    }

    public void setResultDocumentResolver(ResultDocumentResolver resultDocumentResolver) {
        this.f102383t0 = resultDocumentResolver;
    }

    public void setTemplateRuleTraceListener(TemplateRuleTraceListener templateRuleTraceListener) {
        this.f102379D0 = templateRuleTraceListener;
    }
}
