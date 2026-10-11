package net.p110sf.saxon;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import javax.xml.transform.Source;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.Sender;
import net.p110sf.saxon.event.SequenceCollector;
import net.p110sf.saxon.event.Sink;
import net.p110sf.saxon.event.Stripper;
import net.p110sf.saxon.expr.ContextOriginator;
import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.Bindery;
import net.p110sf.saxon.expr.instruct.Executable;
import net.p110sf.saxon.expr.instruct.GlobalParameterSet;
import net.p110sf.saxon.expr.instruct.GlobalVariable;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.sort.GroupIterator;
import net.p110sf.saxon.functions.AccessorFn;
import net.p110sf.saxon.lib.AugmentedSource;
import net.p110sf.saxon.lib.CollectionFinder;
import net.p110sf.saxon.lib.ErrorReporter;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.lib.ResourceResolver;
import net.p110sf.saxon.lib.TraceListener;
import net.p110sf.saxon.lib.UnparsedTextURIResolver;
import net.p110sf.saxon.om.AllElementsSpaceStrippingRule;
import net.p110sf.saxon.om.DocumentKey;
import net.p110sf.saxon.om.DocumentPool;
import net.p110sf.saxon.om.FocusTrackingIterator;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.MemoSequence;
import net.p110sf.saxon.om.NoElementsSpaceStrippingRule;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeSource;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SpaceStrippingRule;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.om.TreeModel;
import net.p110sf.saxon.p111z.IntHashMap;
import net.p110sf.saxon.regex.RegexIterator;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trace.TraceEventMulticaster;
import net.p110sf.saxon.trans.KeyIndex;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.StylesheetCache;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingException;
import net.p110sf.saxon.trans.XmlProcessingIncident;
import net.p110sf.saxon.trans.rules.RuleManager;
import net.p110sf.saxon.tree.iter.GroundedIterator;
import net.p110sf.saxon.tree.tiny.TinyBuilder;
import net.p110sf.saxon.tree.wrapper.SpaceStrippedDocument;
import net.p110sf.saxon.tree.wrapper.SpaceStrippedNode;
import net.p110sf.saxon.tree.wrapper.TypeStrippedDocument;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.value.DateTimeValue;
import net.p110sf.saxon.value.SequenceType;
import org.xml.sax.SAXParseException;

/* loaded from: classes11.dex */
public class Controller implements ContextOriginator {
    public static final String ANONYMOUS_PRINCIPAL_OUTPUT_URI = "dummy:/anonymous/principal/result";

    /* renamed from: Z */
    public Function<SequenceIterator, FocusTrackingIterator> f98807Z;

    /* renamed from: e */
    public final Configuration f98808e;
    protected Executable executable;

    /* renamed from: f */
    public boolean f98809f;

    /* renamed from: g */
    public Map<PackageData, Bindery> f98810g;
    protected Item globalContextItem;

    /* renamed from: h */
    public GlobalParameterSet f98811h;

    /* renamed from: k */
    public boolean f98814k;

    /* renamed from: l */
    public Logger f98815l;

    /* renamed from: m */
    public ResourceResolver f98816m;

    /* renamed from: n */
    public UnparsedTextURIResolver f98817n;

    /* renamed from: o */
    public String f98818o;

    /* renamed from: p */
    public ErrorReporter f98819p;
    protected Receiver principalResult;
    protected String principalResultURI;

    /* renamed from: s */
    public IntHashMap<Map<Long, KeyIndex>> f98822s;

    /* renamed from: t */
    public HashMap<String, Object> f98823t;
    protected TraceListener traceListener;

    /* renamed from: w */
    public DateTimeValue f98826w;

    /* renamed from: i */
    public boolean f98812i = true;

    /* renamed from: j */
    public final Map<GlobalVariable, Set<GlobalVariable>> f98813j = new HashMap();

    /* renamed from: q */
    public TreeModel f98820q = TreeModel.TINY_TREE;

    /* renamed from: u */
    public NodeInfo f98824u = null;

    /* renamed from: v */
    public int f98825v = -1;

    /* renamed from: x */
    public boolean f98827x = false;

    /* renamed from: y */
    public PathMap f98828y = null;
    protected int validationMode = 0;
    protected boolean inUse = false;

    /* renamed from: z */
    public boolean f98829z = true;

    /* renamed from: J */
    public CollectionFinder f98804J = null;

    /* renamed from: O */
    public StylesheetCache f98805O = null;

    /* renamed from: Q */
    public Function<SequenceIterator, FocusTrackingIterator> f98806Q = new Function() { // from class: com.sunia.HTREnginev2.ace
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            FocusTrackingIterator m62368c;
            m62368c = Controller.m62368c((SequenceIterator) obj);
            return m62368c;
        }
    };

    /* renamed from: r */
    public DocumentPool f98821r = new DocumentPool();

    public Controller(Configuration configuration) {
        this.f98808e = configuration;
        this.executable = new Executable(configuration);
        reset();
    }

    /* renamed from: c */
    public static /* synthetic */ FocusTrackingIterator m62368c(SequenceIterator sequenceIterator) {
        return new FocusTrackingIterator(sequenceIterator);
    }

    /* renamed from: d */
    public static /* synthetic */ FocusTrackingIterator m62369d(SequenceIterator sequenceIterator) {
        if (((sequenceIterator instanceof GroundedIterator) && ((GroundedIterator) sequenceIterator).isActuallyGrounded()) || (sequenceIterator instanceof GroupIterator) || (sequenceIterator instanceof RegexIterator)) {
            return FocusTrackingIterator.track(sequenceIterator);
        }
        try {
            return FocusTrackingIterator.track(new MemoSequence(sequenceIterator).iterate());
        } catch (UncheckedXPathException unused) {
            return FocusTrackingIterator.track(sequenceIterator);
        }
    }

    public void addTraceListener(TraceListener traceListener) {
        if (traceListener != null) {
            this.traceListener = TraceEventMulticaster.add(this.traceListener, traceListener);
        }
    }

    public SequenceCollector allocateSequenceOutputter() {
        return new SequenceCollector(makePipelineConfiguration(), 20);
    }

    public void checkReadiness() throws XPathException {
        if (this.inUse) {
            throw new IllegalStateException("The Controller is being used recursively or concurrently. This is not permitted.");
        }
        if (this.f98810g == null) {
            throw new IllegalStateException("The Controller has not been initialized");
        }
        this.inUse = true;
        clearPerTransformationData();
        if (this.executable == null) {
            throw new XPathException("Stylesheet has not been prepared");
        }
        if (this.f98827x) {
            return;
        }
        this.f98826w = null;
    }

    public void clearDocumentPool() {
        Iterator<PackageData> it2 = getExecutable().getPackages().iterator();
        while (it2.hasNext()) {
            this.f98821r.discardIndexes(it2.next().getKeyManager());
        }
        this.f98821r = new DocumentPool();
    }

    public void clearGlobalContextItem() {
        this.globalContextItem = null;
        this.f98809f = false;
    }

    public synchronized void clearPerTransformationData() {
        this.f98823t = new HashMap<>(20);
        this.principalResult = null;
        this.f98814k = false;
        this.f98824u = null;
        this.f98825v = -1;
        this.f98805O = null;
        this.f98822s = null;
        if (!this.f98809f) {
            this.globalContextItem = null;
        }
    }

    public String getBaseOutputURI() {
        return this.principalResultURI;
    }

    public synchronized Bindery getBindery(PackageData packageData) {
        Bindery bindery;
        bindery = this.f98810g.get(packageData);
        if (bindery == null) {
            bindery = new Bindery(packageData);
            this.f98810g.put(packageData, bindery);
        }
        return bindery;
    }

    public CollectionFinder getCollectionFinder() {
        if (this.f98804J == null) {
            this.f98804J = this.f98808e.getCollectionFinder();
        }
        return this.f98804J;
    }

    public Configuration getConfiguration() {
        return this.f98808e;
    }

    public GroundedValue getConvertedParameter(StructuredQName structuredQName, SequenceType sequenceType, XPathContext xPathContext) throws XPathException {
        String systemId;
        GroundedValue convertParameterValue = this.f98811h.convertParameterValue(structuredQName, sequenceType, this.f98812i, xPathContext);
        if (convertParameterValue == null) {
            return convertParameterValue;
        }
        Configuration configuration = getConfiguration();
        SequenceIterator iterate = convertParameterValue.iterate();
        while (true) {
            Item next = iterate.next();
            if (next == null) {
                if (convertParameterValue instanceof NodeInfo) {
                    NodeInfo nodeInfo = (NodeInfo) convertParameterValue;
                    if (nodeInfo.getNodeKind() == 9 && (systemId = nodeInfo.getRoot().getSystemId()) != null) {
                        try {
                            if (new URI(systemId).isAbsolute()) {
                                DocumentKey documentKey = new DocumentKey(systemId);
                                DocumentPool documentPool = getDocumentPool();
                                if (documentPool.find(documentKey) == null) {
                                    documentPool.add(((NodeInfo) convertParameterValue).getTreeInfo(), documentKey);
                                }
                            }
                        } catch (URISyntaxException unused) {
                        }
                    }
                }
                return convertParameterValue.materialize();
            }
            if ((next instanceof NodeInfo) && !configuration.isCompatible(((NodeInfo) next).getConfiguration())) {
                throw new XPathException("A node supplied in a global parameter must be built using the same Configuration that was used to compile the stylesheet or query", SaxonErrorCode.SXXP0004);
            }
        }
    }

    public DateTimeValue getCurrentDateTime() {
        if (this.f98826w == null) {
            this.f98826w = DateTimeValue.now();
        }
        return this.f98826w;
    }

    public String getDefaultCollection() {
        String str = this.f98818o;
        return str == null ? getConfiguration().getDefaultCollection() : str;
    }

    public DocumentPool getDocumentPool() {
        return this.f98821r;
    }

    public ErrorReporter getErrorReporter() {
        return this.f98819p;
    }

    public Executable getExecutable() {
        return this.executable;
    }

    public Function<SequenceIterator, FocusTrackingIterator> getFocusTrackerFactory(boolean z) {
        Function<SequenceIterator, FocusTrackingIterator> function;
        return (!z || (function = this.f98807Z) == null) ? this.f98806Q : function;
    }

    public Item getGlobalContextItem() {
        return this.globalContextItem;
    }

    public int getImplicitTimezone() {
        return getCurrentDateTime().getTimezoneInMinutes();
    }

    public synchronized IntHashMap<Map<Long, KeyIndex>> getLocalIndexes() {
        if (this.f98822s == null) {
            this.f98822s = new IntHashMap<>();
        }
        return this.f98822s;
    }

    public TreeModel getModel() {
        return this.f98820q;
    }

    public Sequence getParameter(StructuredQName structuredQName) {
        return this.f98811h.get(structuredQName);
    }

    public PathMap getPathMapForDocumentProjection() {
        return this.f98828y;
    }

    public Receiver getPrincipalResult() {
        return this.principalResult;
    }

    public synchronized int getRememberedNumber(NodeInfo nodeInfo) {
        if (this.f98824u != nodeInfo) {
            return -1;
        }
        return this.f98825v;
    }

    public ResourceResolver getResourceResolver() {
        return this.f98816m;
    }

    public RuleManager getRuleManager() {
        if (getExecutable() instanceof PreparedStylesheet) {
            return ((PreparedStylesheet) getExecutable()).getRuleManager();
        }
        return null;
    }

    public int getSchemaValidationMode() {
        return this.validationMode;
    }

    public SpaceStrippingRule getSpaceStrippingRule() {
        SpaceStrippingRule spaceStrippingRule;
        if (this.f98808e.getParseOptions().getSpaceStrippingRule() == AllElementsSpaceStrippingRule.getInstance()) {
            return AllElementsSpaceStrippingRule.getInstance();
        }
        Executable executable = this.executable;
        return (!(executable instanceof PreparedStylesheet) || (spaceStrippingRule = ((PreparedStylesheet) executable).getTopLevelPackage().getSpaceStrippingRule()) == null) ? NoElementsSpaceStrippingRule.getInstance() : spaceStrippingRule;
    }

    public synchronized StylesheetCache getStylesheetCache() {
        if (this.f98805O == null) {
            this.f98805O = new StylesheetCache();
        }
        return this.f98805O;
    }

    public Logger getTraceFunctionDestination() {
        return this.f98815l;
    }

    public TraceListener getTraceListener() {
        return this.traceListener;
    }

    public UnparsedTextURIResolver getUnparsedTextURIResolver() {
        return this.f98817n;
    }

    public synchronized Object getUserData(Object obj, String str) {
        return this.f98823t.get(obj.hashCode() + " " + str);
    }

    public void handleXPathException(XPathException xPathException) throws XPathException {
        Throwable exception = xPathException.getException();
        if (!(exception instanceof SAXParseException)) {
            reportFatalError(xPathException);
            throw xPathException;
        }
        if (!(((SAXParseException) exception).getException() instanceof RuntimeException)) {
            throw xPathException;
        }
        reportFatalError(xPathException);
        throw xPathException;
    }

    public void initializeController(GlobalParameterSet globalParameterSet) throws XPathException {
        this.f98810g = new HashMap();
        try {
            this.executable.checkSuppliedParameters(globalParameterSet);
        } catch (XPathException e) {
            if (!e.hasBeenReported()) {
                getErrorReporter().report(new XmlProcessingException(e));
                throw e;
            }
        }
        this.f98811h = globalParameterSet;
        this.globalContextItem = this.executable.checkInitialContextItem(this.globalContextItem, newXPathContext());
        TraceListener traceListener = this.traceListener;
        if (traceListener != null) {
            traceListener.open(this);
            preEvaluateGlobals(newXPathContext());
        }
    }

    public boolean isStripSourceTree() {
        return this.f98829z;
    }

    public boolean isStylesheetContainingStripSpace() {
        SpaceStrippingRule spaceStrippingRule;
        Executable executable = this.executable;
        return (!(executable instanceof PreparedStylesheet) || (spaceStrippingRule = ((PreparedStylesheet) executable).getTopLevelPackage().getSpaceStrippingRule()) == null || spaceStrippingRule == NoElementsSpaceStrippingRule.getInstance()) ? false : true;
    }

    public boolean isStylesheetStrippingTypeAnnotations() {
        Executable executable = this.executable;
        return (executable instanceof PreparedStylesheet) && ((PreparedStylesheet) executable).getTopLevelPackage().isStripsTypeAnnotations();
    }

    public final boolean isTracing() {
        return (this.traceListener == null || this.f98814k) ? false : true;
    }

    public Builder makeBuilder() {
        Builder makeBuilder = this.f98820q.makeBuilder(makePipelineConfiguration());
        makeBuilder.setTiming(this.f98808e.isTiming());
        makeBuilder.setLineNumbering(this.f98808e.isLineNumbering());
        return makeBuilder;
    }

    public PipelineConfiguration makePipelineConfiguration() {
        PipelineConfiguration pipelineConfiguration = new PipelineConfiguration(getConfiguration());
        pipelineConfiguration.setController(this);
        ParseOptions parseOptions = new ParseOptions(getConfiguration().getParseOptions());
        parseOptions.setSchemaValidationMode(this.validationMode);
        parseOptions.setErrorReporter(this.f98819p);
        pipelineConfiguration.setParseOptions(parseOptions);
        return pipelineConfiguration;
    }

    public NodeInfo makeSourceTree(Source source, int i) throws XPathException {
        Receiver makeStripper;
        if (source instanceof NodeSource) {
            return ((NodeSource) source).getNode();
        }
        if (source instanceof NodeInfo) {
            return (NodeInfo) source;
        }
        if ((source instanceof SAXSource) && this.f98808e.getBooleanProperty(Feature.IGNORE_SAX_SOURCE_PARSER)) {
            ((SAXSource) source).setXMLReader(null);
        } else if ((source instanceof StreamSource) && source.getSystemId() != null) {
            StreamSource streamSource = (StreamSource) source;
            if (streamSource.getInputStream() == null && streamSource.getReader() == null) {
                TreeInfo find = this.f98821r.find(new DocumentKey(source.getSystemId()));
                if (find != null) {
                    return find.getRootNode();
                }
            }
        }
        Builder makeBuilder = makeBuilder();
        makeBuilder.setUseEventLocation(true);
        if (makeBuilder instanceof TinyBuilder) {
            ((TinyBuilder) makeBuilder).setStatistics(this.f98808e.getTreeStatistics().SOURCE_DOCUMENT_STATISTICS);
        }
        SpaceStrippingRule noElementsSpaceStrippingRule = NoElementsSpaceStrippingRule.getInstance();
        if (this.f98808e.isStripsAllWhiteSpace() || isStylesheetContainingStripSpace() || i == 1 || i == 2) {
            makeStripper = makeStripper(makeBuilder);
            noElementsSpaceStrippingRule = getSpaceStrippingRule();
        } else {
            makeStripper = makeBuilder;
        }
        if (isStylesheetStrippingTypeAnnotations()) {
            makeStripper = this.f98808e.getAnnotationStripper(makeStripper);
        }
        PipelineConfiguration pipelineConfiguration = makeBuilder.getPipelineConfiguration();
        pipelineConfiguration.getParseOptions().setSchemaValidationMode(i);
        makeStripper.setPipelineConfiguration(pipelineConfiguration);
        Sender.send(source, makeStripper, null);
        if (source instanceof AugmentedSource) {
            AugmentedSource augmentedSource = (AugmentedSource) source;
            if (augmentedSource.isPleaseCloseAfterUse()) {
                augmentedSource.close();
            }
        }
        NodeInfo currentRoot = makeBuilder.getCurrentRoot();
        makeBuilder.reset();
        if (source.getSystemId() != null) {
            registerDocument(currentRoot.getTreeInfo(), new DocumentKey(source.getSystemId()));
        }
        currentRoot.getTreeInfo().setSpaceStrippingRule(noElementsSpaceStrippingRule);
        return currentRoot;
    }

    public Stripper makeStripper(Receiver receiver) {
        if (receiver == null) {
            receiver = new Sink(makePipelineConfiguration());
        }
        return new Stripper(getSpaceStrippingRule(), receiver);
    }

    public XPathContextMajor newXPathContext() {
        XPathContextMajor xPathContextMajor = new XPathContextMajor(this);
        xPathContextMajor.setCurrentOutputUri(this.principalResultURI);
        return xPathContextMajor;
    }

    public final void pauseTracing(boolean z) {
        this.f98814k = z;
    }

    public void preEvaluateGlobals(XPathContext xPathContext) throws XPathException {
        Iterator<PackageData> it2 = getExecutable().getPackages().iterator();
        while (it2.hasNext()) {
            for (GlobalVariable globalVariable : it2.next().getGlobalVariableList()) {
                if (!globalVariable.isUnused()) {
                    try {
                        globalVariable.evaluateVariable(xPathContext, globalVariable.getDeclaringComponent());
                    } catch (XPathException e) {
                        getBindery(globalVariable.getPackageData()).setGlobalVariable(globalVariable, new Bindery.FailureValue(e));
                    }
                }
            }
        }
    }

    public NodeInfo prepareInputTree(Source source) {
        NodeInfo unravel = getConfiguration().unravel(source);
        if (isStylesheetStrippingTypeAnnotations()) {
            TreeInfo treeInfo = unravel.getTreeInfo();
            if (treeInfo.isTyped()) {
                unravel = new TypeStrippedDocument(treeInfo).wrap(unravel);
            }
        }
        if (!this.f98829z || !isStylesheetContainingStripSpace()) {
            return unravel;
        }
        TreeInfo treeInfo2 = unravel.getTreeInfo();
        SpaceStrippingRule spaceStrippingRule = getSpaceStrippingRule();
        if (treeInfo2.getSpaceStrippingRule() == spaceStrippingRule) {
            return unravel;
        }
        SpaceStrippedDocument spaceStrippedDocument = new SpaceStrippedDocument(treeInfo2, spaceStrippingRule);
        if (SpaceStrippedNode.isPreservedNode(unravel, spaceStrippedDocument, unravel.getParent())) {
            return spaceStrippedDocument.wrap(unravel);
        }
        return null;
    }

    public void registerDocument(TreeInfo treeInfo, DocumentKey documentKey) throws XPathException {
        if (!getExecutable().isSchemaAware() && !Untyped.getInstance().equals(treeInfo.getRootNode().getSchemaType())) {
            throw new XPathException(getExecutable().getHostLanguage() == HostLanguage.XSLT ? "The source document has been schema-validated, but the stylesheet is not schema-aware. A stylesheet is schema-aware if either (a) it contains an xsl:import-schema declaration, or (b) the stylesheet compiler was configured to be schema-aware." : "The source document has been schema-validated, but the query is not schema-aware. A query is schema-aware if either (a) it contains an 'import schema' declaration, or (b) the query compiler was configured to be schema-aware.");
        }
        if (documentKey != null) {
            this.f98821r.add(treeInfo, documentKey);
        }
    }

    public synchronized void registerGlobalVariableDependency(GlobalVariable globalVariable, GlobalVariable globalVariable2) throws XPathException {
        if (globalVariable == globalVariable2) {
            throw new XPathException.Circularity("Circular dependency among global variables: " + globalVariable.getVariableQName().getDisplayName() + " depends on its own value");
        }
        Set<GlobalVariable> set = this.f98813j.get(globalVariable2);
        if (set != null) {
            if (set.contains(globalVariable)) {
                throw new XPathException.Circularity("Circular dependency among variables: " + globalVariable.getVariableQName().getDisplayName() + " depends on the value of " + globalVariable2.getVariableQName().getDisplayName() + ", which depends directly or indirectly on the value of " + globalVariable.getVariableQName().getDisplayName());
            }
            Iterator<GlobalVariable> it2 = set.iterator();
            while (it2.hasNext()) {
                registerGlobalVariableDependency(globalVariable, it2.next());
            }
        }
        Set<GlobalVariable> set2 = this.f98813j.get(globalVariable);
        if (set2 == null) {
            set2 = new HashSet<>();
            this.f98813j.put(globalVariable, set2);
        }
        set2.add(globalVariable2);
    }

    public void removeTraceListener(TraceListener traceListener) {
        this.traceListener = TraceEventMulticaster.remove(this.traceListener, traceListener);
    }

    public void reportFatalError(XPathException xPathException) {
        if (xPathException.hasBeenReported()) {
            return;
        }
        if (xPathException.getHostLanguage() == null) {
            if (this.executable.getHostLanguage() == HostLanguage.XSLT) {
                xPathException.setHostLanguage("XSLT");
            } else if (this.executable.getHostLanguage() == HostLanguage.XQUERY) {
                xPathException.setHostLanguage("XQuery");
            }
        }
        getErrorReporter().report(new XmlProcessingException(xPathException));
        xPathException.setHasBeenReported(true);
    }

    public void reset() {
        this.f98811h = new GlobalParameterSet();
        this.f98806Q = this.f98808e.getFocusTrackerFactory(this.executable, false);
        this.f98807Z = this.f98808e.getFocusTrackerFactory(this.executable, true);
        this.f98816m = null;
        this.f98817n = this.f98808e.getUnparsedTextURIResolver();
        this.validationMode = this.f98808e.getSchemaValidationMode();
        this.f98819p = this.f98808e.makeErrorReporter();
        this.traceListener = null;
        this.f98815l = this.f98808e.getLogger();
        try {
            TraceListener makeTraceListener = this.f98808e.makeTraceListener();
            if (makeTraceListener != null) {
                addTraceListener(makeTraceListener);
            }
            setModel(this.f98808e.getParseOptions().getModel());
            this.globalContextItem = null;
            this.f98826w = null;
            this.f98827x = false;
            clearPerTransformationData();
        } catch (XPathException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    public void setApplyFunctionConversionRulesToExternalVariables(boolean z) {
        this.f98812i = z;
    }

    public void setBaseOutputURI(String str) {
        this.principalResultURI = str;
    }

    public void setCollectionFinder(CollectionFinder collectionFinder) {
        this.f98804J = collectionFinder;
    }

    public void setCurrentDateTime(DateTimeValue dateTimeValue) throws XPathException {
        if (this.f98826w != null) {
            throw new IllegalStateException("Current date and time can only be set once, and cannot subsequently be changed");
        }
        if (dateTimeValue.getComponent(AccessorFn.Component.TIMEZONE) == null) {
            throw new XPathException("No timezone is present in supplied value of current date/time");
        }
        this.f98826w = dateTimeValue;
        this.f98827x = true;
    }

    public void setDefaultCollection(String str) {
        this.f98818o = str;
    }

    public void setErrorReporter(ErrorReporter errorReporter) {
        this.f98819p = errorReporter;
    }

    public void setFocusTrackerFactory(Function<SequenceIterator, FocusTrackingIterator> function) {
        this.f98806Q = function;
    }

    public void setGlobalContextItem(Item item) throws XPathException {
        setGlobalContextItem(item, false);
    }

    public void setMemoizingFocusTrackerFactory() {
        setFocusTrackerFactory(new Function() { // from class: com.sunia.HTREnginev2.bce
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                FocusTrackingIterator m62369d;
                m62369d = Controller.m62369d((SequenceIterator) obj);
                return m62369d;
            }
        });
    }

    public void setModel(TreeModel treeModel) {
        this.f98820q = treeModel;
    }

    public void setMultithreadedFocusTrackerFactory(Function<SequenceIterator, FocusTrackingIterator> function) {
        this.f98807Z = function;
    }

    public synchronized void setRememberedNumber(NodeInfo nodeInfo, int i) {
        this.f98824u = nodeInfo;
        this.f98825v = i;
    }

    public void setResourceResolver(ResourceResolver resourceResolver) {
        this.f98816m = resourceResolver;
    }

    public void setSchemaValidationMode(int i) {
        this.validationMode = i;
    }

    public void setStripSourceTrees(boolean z) {
        this.f98829z = z;
    }

    public void setTraceFunctionDestination(Logger logger) {
        this.f98815l = logger;
    }

    public void setTraceListener(TraceListener traceListener) {
        this.traceListener = traceListener;
    }

    public void setUnparsedTextURIResolver(UnparsedTextURIResolver unparsedTextURIResolver) {
        this.f98817n = unparsedTextURIResolver;
    }

    public void setUseDocumentProjection(PathMap pathMap) {
        this.f98828y = pathMap;
    }

    public synchronized void setUserData(Object obj, String str, Object obj2) {
        String str2 = obj.hashCode() + " " + str;
        if (obj2 == null) {
            this.f98823t.remove(str2);
        } else {
            this.f98823t.put(str2, obj2);
        }
    }

    public void warning(String str, String str2, Location location) {
        if (location == null) {
            location = Loc.NONE;
        }
        if (str2 == null) {
            str2 = SaxonErrorCode.SXWN9000;
        }
        if (str == null) {
            str = "Unspecified warning";
        }
        this.f98819p.report(new XmlProcessingIncident(str, str2, location).asWarning());
    }

    public void setGlobalContextItem(Item item, boolean z) throws XPathException {
        if (!z) {
            Item item2 = this.globalContextItem;
            if ((item2 instanceof SpaceStrippedNode) && ((SpaceStrippedNode) item2).getUnderlyingNode() == item) {
                return;
            }
            if (item instanceof NodeInfo) {
                NodeInfo nodeInfo = (NodeInfo) item;
                NodeInfo prepareInputTree = prepareInputTree(nodeInfo.asActiveSource());
                if (nodeInfo.getNodeKind() == 9 && nodeInfo.getSystemId() != null) {
                    DocumentKey documentKey = new DocumentKey(nodeInfo.getSystemId());
                    if (getDocumentPool().find(documentKey) == null) {
                        getDocumentPool().add(nodeInfo.getTreeInfo(), documentKey);
                    }
                }
                item = prepareInputTree;
            }
        }
        if (item instanceof NodeInfo) {
            NodeInfo nodeInfo2 = (NodeInfo) item;
            if (nodeInfo2.getConfiguration() != null) {
                if (nodeInfo2.getConfiguration().isCompatible(this.executable.getConfiguration())) {
                    if (nodeInfo2.getTreeInfo().isTyped() && !this.executable.isSchemaAware()) {
                        throw new XPathException("Cannot use a schema-validated source document unless the stylesheet is schema-aware");
                    }
                } else {
                    throw new XPathException("Source document and stylesheet must use the same or compatible Configurations", SaxonErrorCode.SXXP0004);
                }
            } else {
                throw new XPathException("The supplied source document must be associated with a Configuration");
            }
        }
        this.globalContextItem = item;
        this.f98809f = true;
    }

    public SequenceCollector allocateSequenceOutputter(int i) {
        return new SequenceCollector(makePipelineConfiguration(), i);
    }

    public Controller(Configuration configuration, Executable executable) {
        this.f98808e = configuration;
        this.executable = executable;
        reset();
    }
}
