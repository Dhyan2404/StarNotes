package net.p110sf.saxon.functions;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.net.URI;
import java.net.URISyntaxException;
import javax.xml.transform.Source;
import javax.xml.transform.SourceLocator;
import javax.xml.transform.TransformerException;
import javax.xml.transform.dom.DOMSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.IDFilter;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.Sender;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.ItemMappingFunction;
import net.p110sf.saxon.expr.ItemMappingIterator;
import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.sort.DocumentOrderIterator;
import net.p110sf.saxon.expr.sort.GlobalOrderComparer;
import net.p110sf.saxon.lib.ActiveSource;
import net.p110sf.saxon.lib.DirectResourceResolver;
import net.p110sf.saxon.lib.EmptySource;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.lib.ResourceRequest;
import net.p110sf.saxon.lib.ResourceResolver;
import net.p110sf.saxon.lib.StandardErrorHandler;
import net.p110sf.saxon.om.DocumentKey;
import net.p110sf.saxon.om.DocumentPool;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NoElementsSpaceStrippingRule;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeSource;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.SpaceStrippingRule;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XsltController;
import net.p110sf.saxon.tree.tiny.TinyBuilder;
import net.p110sf.saxon.value.Cardinality;

/* loaded from: classes11.dex */
public class DocumentFn extends SystemFunction implements Callable {

    /* renamed from: h */
    public Location f100185h;

    /* renamed from: net.sf.saxon.functions.DocumentFn$a */
    /* loaded from: classes11.dex */
    public static class C18351a implements ItemMappingFunction {

        /* renamed from: e */
        public String f100186e;

        /* renamed from: f */
        public String f100187f;

        /* renamed from: g */
        public Location f100188g;

        /* renamed from: h */
        public PackageData f100189h;

        /* renamed from: i */
        public XPathContext f100190i;

        public C18351a(XPathContext xPathContext) {
            this.f100190i = xPathContext;
        }

        @Override // net.p110sf.saxon.expr.ItemMappingFunction
        public Item mapItem(Item item) throws XPathException {
            String str = this.f100186e;
            if (str == null) {
                str = item instanceof NodeInfo ? ((NodeInfo) item).getBaseURI() : this.f100187f;
            }
            return DocumentFn.makeDoc(item.getStringValue(), str, this.f100189h, null, this.f100190i, this.f100188g, false);
        }
    }

    /* renamed from: a */
    public static String[] m62978a(String str) throws XPathException {
        int indexOf = str.indexOf(35);
        String str2 = null;
        if (indexOf >= 0) {
            if (indexOf == str.length() - 1) {
                str = str.substring(0, indexOf);
            } else {
                str2 = str.substring(indexOf + 1);
                str = str.substring(0, indexOf);
                if (!NameChecker.isValidNCName(str2)) {
                    XPathException xPathException = new XPathException("The fragment identifier " + Err.wrap(str2) + " is not a valid NCName");
                    xPathException.setErrorCode("XTDE1160");
                    throw xPathException;
                }
            }
        }
        return new String[]{str, str2};
    }

    /* renamed from: b */
    public static NodeInfo m62979b(TreeInfo treeInfo, String str, XPathContext xPathContext, Location location) {
        if (str == null) {
            return treeInfo.getRootNode();
        }
        if (NameChecker.isValidNCName(str)) {
            return treeInfo.selectID(str, false);
        }
        xPathContext.getController().warning("Invalid fragment identifier in URI", "XTDE1160", location);
        return treeInfo.getRootNode();
    }

    public static DocumentKey computeDocumentKey(String str, String str2, PackageData packageData, XPathContext xPathContext) throws XPathException {
        return computeDocumentKey(str, str2, packageData, true);
    }

    public static NodeInfo makeDoc(String str, String str2, PackageData packageData, ParseOptions parseOptions, XPathContext xPathContext, Location location, boolean z) throws XPathException {
        URIQueryParameters uRIQueryParameters;
        TreeInfo treeInfo;
        PathMap.PathMapRoot rootForDocument;
        SpaceStrippingRule spaceStrippingRule;
        int indexOf;
        Configuration configuration = xPathContext.getConfiguration();
        String[] m62978a = m62978a(str);
        String str3 = m62978a[1];
        String str4 = m62978a[0];
        if (!configuration.getBooleanProperty(Feature.RECOGNIZE_URI_QUERY_PARAMETERS) || (indexOf = str4.indexOf(63)) < 0) {
            uRIQueryParameters = null;
        } else {
            uRIQueryParameters = new URIQueryParameters(str4.substring(indexOf + 1), configuration);
            str4 = str4.substring(0, indexOf);
        }
        Controller controller = xPathContext.getController();
        if (controller == null) {
            throw new XPathException("doc() function is not available in this environment");
        }
        DocumentKey computeDocumentKey = computeDocumentKey(str4, str2, packageData, xPathContext);
        TreeInfo find = configuration.getGlobalDocumentPool().find(computeDocumentKey);
        if (find != null) {
            return find.getRootNode();
        }
        DocumentPool documentPool = controller.getDocumentPool();
        synchronized (controller) {
            TreeInfo find2 = documentPool.find(computeDocumentKey);
            if (find2 != null) {
                return m62979b(find2, str3, xPathContext, location);
            }
            if ((controller instanceof XsltController) && !((XsltController) controller).checkUniqueOutputDestination(computeDocumentKey)) {
                documentPool.markUnavailable(computeDocumentKey);
                XPathException xPathException = new XPathException("Cannot read a document that was written during the same transformation: " + computeDocumentKey);
                xPathException.setXPathContext(xPathContext);
                xPathException.setErrorCode("XTRE1500");
                xPathException.setLocator(location);
                throw xPathException;
            }
            if (documentPool.isMarkedUnavailable(computeDocumentKey)) {
                XPathException xPathException2 = new XPathException("Document has been marked not available: " + computeDocumentKey);
                xPathException2.setXPathContext(xPathContext);
                xPathException2.setErrorCode("FODC0002");
                xPathException2.setLocator(location);
                throw xPathException2;
            }
            try {
                Source resolveURI = resolveURI(str4, str2, computeDocumentKey.toString(), xPathContext);
                if (resolveURI != null && !(resolveURI instanceof EmptySource)) {
                    ActiveSource resolveSource = configuration.getSourceResolver().resolveSource(resolveURI, configuration);
                    if (sourceIsTree(resolveSource)) {
                        treeInfo = controller.prepareInputTree(resolveSource).getTreeInfo();
                    } else {
                        Builder makeBuilder = controller.makeBuilder();
                        makeBuilder.setUseEventLocation(true);
                        if (makeBuilder instanceof TinyBuilder) {
                            ((TinyBuilder) makeBuilder).setStatistics(configuration.getTreeStatistics().SOURCE_DOCUMENT_STATISTICS);
                        }
                        if (parseOptions == null) {
                            parseOptions = new ParseOptions(makeBuilder.getPipelineConfiguration().getParseOptions());
                            if ((packageData instanceof StylesheetPackage) && (spaceStrippingRule = ((StylesheetPackage) packageData).getSpaceStrippingRule()) != NoElementsSpaceStrippingRule.getInstance()) {
                                parseOptions.setSpaceStrippingRule(spaceStrippingRule);
                            }
                            parseOptions.setSchemaValidationMode(controller.getSchemaValidationMode());
                        }
                        if (uRIQueryParameters != null) {
                            parseOptions.merge(uRIQueryParameters.makeParseOptions(configuration));
                        }
                        makeBuilder.getPipelineConfiguration().setParseOptions(parseOptions);
                        if (parseOptions.isLineNumbering()) {
                            makeBuilder.setLineNumbering(true);
                        }
                        if (z) {
                            StandardErrorHandler standardErrorHandler = new StandardErrorHandler(controller.getErrorReporter());
                            standardErrorHandler.setSilent(true);
                            parseOptions.setErrorHandler(standardErrorHandler);
                        }
                        Receiver annotationStripper = ((packageData instanceof StylesheetPackage) && ((StylesheetPackage) packageData).isStripsTypeAnnotations()) ? configuration.getAnnotationStripper(makeBuilder) : makeBuilder;
                        PathMap pathMapForDocumentProjection = controller.getPathMapForDocumentProjection();
                        if (pathMapForDocumentProjection != null && (rootForDocument = pathMapForDocumentProjection.getRootForDocument(computeDocumentKey.toString())) != null && !rootForDocument.isReturnable() && !rootForDocument.hasUnknownDependencies()) {
                            parseOptions.addFilter(configuration.makeDocumentProjector(rootForDocument));
                        }
                        annotationStripper.setPipelineConfiguration(makeBuilder.getPipelineConfiguration());
                        try {
                            try {
                                Sender.send(resolveSource, annotationStripper, parseOptions);
                                TreeInfo treeInfo2 = makeBuilder.getCurrentRoot().getTreeInfo();
                                makeBuilder.reset();
                                treeInfo = treeInfo2;
                            } catch (XPathException e) {
                                if (e.getErrorCodeLocalPart() == null || e.getErrorCodeLocalPart().equals(SaxonErrorCode.SXXP0003)) {
                                    e.setErrorCode("FODC0002");
                                }
                                throw e;
                            }
                        } finally {
                            if (parseOptions.isPleaseCloseAfterUse()) {
                                ParseOptions.close(resolveSource);
                            }
                        }
                    }
                    synchronized (controller) {
                        TreeInfo find3 = documentPool.find(computeDocumentKey);
                        if (find3 != null) {
                            return m62979b(find3, str3, xPathContext, location);
                        }
                        controller.registerDocument(treeInfo, computeDocumentKey);
                        if (controller instanceof XsltController) {
                            ((XsltController) controller).addUnavailableOutputDestination(computeDocumentKey);
                        }
                        return m62979b(treeInfo, str3, xPathContext, location);
                    }
                }
                return null;
            } catch (TransformerException e2) {
                documentPool.markUnavailable(computeDocumentKey);
                XPathException makeXPathException = XPathException.makeXPathException(e2);
                makeXPathException.maybeSetLocation(location);
                makeXPathException.maybeSetErrorCode(e2.getException() instanceof URISyntaxException ? "FODC0005" : "FODC0002");
                throw makeXPathException;
            }
        }
    }

    public static NodeInfo preLoadDoc(String str, String str2, PackageData packageData, Configuration configuration, SourceLocator sourceLocator) throws XPathException {
        URIQueryParameters uRIQueryParameters;
        int indexOf;
        if (str.indexOf(35) >= 0) {
            throw new XPathException("Fragment identifier not supported for preloaded documents");
        }
        if (!configuration.getBooleanProperty(Feature.RECOGNIZE_URI_QUERY_PARAMETERS) || (indexOf = str.indexOf(63)) < 0) {
            uRIQueryParameters = null;
        } else {
            uRIQueryParameters = new URIQueryParameters(str.substring(indexOf + 1), configuration);
            str = str.substring(0, indexOf);
        }
        DocumentKey computeDocumentKey = computeDocumentKey(str, str2, packageData, true);
        TreeInfo find = configuration.getGlobalDocumentPool().find(computeDocumentKey);
        if (find != null) {
            return find.getRootNode();
        }
        ResourceRequest resourceRequest = new ResourceRequest();
        resourceRequest.relativeUri = str;
        resourceRequest.baseUri = str2;
        resourceRequest.uri = computeDocumentKey.getAbsoluteURI();
        try {
            Source resolve = resourceRequest.resolve(configuration.getResourceResolver(), new DirectResourceResolver(configuration));
            ParseOptions parseOptions = configuration.getParseOptions();
            if (uRIQueryParameters != null) {
                parseOptions.merge(uRIQueryParameters.makeParseOptions(configuration));
            }
            TreeInfo buildDocumentTree = configuration.buildDocumentTree(resolve, parseOptions);
            configuration.getGlobalDocumentPool().add(buildDocumentTree, computeDocumentKey);
            return buildDocumentTree.getRootNode();
        } catch (Exception e) {
            XPathException xPathException = new XPathException("Exception thrown by ResourceResolver", e);
            if (configuration.getBooleanProperty(Feature.TRACE_EXTERNAL_FUNCTIONS)) {
                e.printStackTrace();
            }
            xPathException.setLocator(sourceLocator);
            throw xPathException;
        }
    }

    public static Source resolveURI(String str, String str2, String str3, XPathContext xPathContext) throws XPathException {
        Configuration configuration = xPathContext.getConfiguration();
        ResourceResolver resourceResolver = xPathContext.getResourceResolver();
        if (str.contains(" ")) {
            str = ResolveURI.escapeSpaces(str);
        }
        if (str2 == null) {
            try {
                if (!new URI(str).isAbsolute()) {
                    throw new XPathException("Relative URI passed to document() function (" + str + "); but no base URI is available", "XTDE1162");
                }
            } catch (URISyntaxException unused) {
                throw new XPathException("Invalid URI passed to document() function: " + str, "FODC0005");
            }
        }
        ResourceRequest resourceRequest = new ResourceRequest();
        resourceRequest.relativeUri = str;
        if (str2 != null) {
            resourceRequest.baseUri = str2;
            resourceRequest.uri = str3;
        } else {
            resourceRequest.uri = str;
        }
        resourceRequest.nature = ResourceRequest.XML_NATURE;
        resourceRequest.purpose = "source document";
        try {
            return resourceRequest.resolve(resourceResolver, configuration.getResourceResolver(), new DirectResourceResolver(configuration));
        } catch (XPathException e) {
            e.setErrorCode("FODC0005");
            e.maybeSetContext(xPathContext);
            throw e;
        } catch (Exception e2) {
            XPathException xPathException = new XPathException("Exception thrown by URIResolver resolving `" + str + "` against `" + str2 + CloudStorageConstants.SINGLE_QUOTES, e2);
            if (!configuration.getBooleanProperty(Feature.TRACE_EXTERNAL_FUNCTIONS)) {
                throw xPathException;
            }
            e2.printStackTrace();
            throw xPathException;
        }
    }

    public static void sendDoc(String str, String str2, PackageData packageData, XPathContext xPathContext, Location location, Receiver receiver, ParseOptions parseOptions) throws XPathException {
        Source resolve;
        PipelineConfiguration pipelineConfiguration = receiver.getPipelineConfiguration();
        if (pipelineConfiguration == null) {
            pipelineConfiguration = xPathContext.getController().makePipelineConfiguration();
            pipelineConfiguration.setXPathContext(xPathContext);
            receiver.setPipelineConfiguration(pipelineConfiguration);
        }
        String[] m62978a = m62978a(str);
        String str3 = m62978a[1];
        if (str3 != null) {
            str = m62978a[0];
            receiver = new IDFilter(receiver, str3);
        }
        DocumentKey computeDocumentKey = computeDocumentKey(str, str2, packageData, true);
        Controller controller = xPathContext.getController();
        Configuration configuration = controller.getConfiguration();
        TreeInfo find = controller.getDocumentPool().find(computeDocumentKey);
        if (find != null) {
            resolve = find.getRootNode().asActiveSource();
        } else {
            try {
                ResourceRequest resourceRequest = new ResourceRequest();
                resourceRequest.baseUri = str2;
                resourceRequest.relativeUri = str;
                resourceRequest.uri = computeDocumentKey.getAbsoluteURI();
                resourceRequest.streamable = true;
                resourceRequest.nature = ResourceRequest.XML_NATURE;
                resourceRequest.purpose = "source document";
                resolve = resourceRequest.resolve(xPathContext.getResourceResolver(), configuration.getResourceResolver(), new DirectResourceResolver(configuration));
                if (resolve == null) {
                    XPathException xPathException = new XPathException("Failed to resolve streamed document URI " + resourceRequest.uri, "FODC0005");
                    xPathException.setLocator(location);
                    throw xPathException;
                }
                if (sourceIsTree(resolve)) {
                    resolve = controller.prepareInputTree(resolve).getRoot().asActiveSource();
                }
            } catch (TransformerException e) {
                XPathException makeXPathException = XPathException.makeXPathException(e);
                makeXPathException.setLocator(location);
                makeXPathException.maybeSetErrorCode("FODC0005");
                throw makeXPathException;
            }
        }
        if (controller.getConfiguration().isTiming()) {
            controller.getConfiguration().getLogger().info("Streaming input document " + resolve.getSystemId());
        }
        receiver.setPipelineConfiguration(pipelineConfiguration);
        try {
            Sender.send(resolve, receiver, parseOptions);
        } catch (XPathException e2) {
            e2.maybeSetLocation(location);
            e2.maybeSetErrorCode("FODC0002");
            throw e2;
        }
    }

    public static boolean sourceIsTree(Source source) {
        return (source instanceof NodeSource) || (source instanceof NodeInfo) || (source instanceof DOMSource);
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        String str;
        int arity = getArity();
        SequenceIterator iterate = sequenceArr[0].iterate();
        if (arity == 2) {
            str = ((NodeInfo) sequenceArr[1].head()).getBaseURI();
            if (str == null) {
                throw new XPathException("The second argument to document() is a node with no base URI", "XTDE1162");
            }
        } else {
            str = null;
        }
        C18351a c18351a = new C18351a(xPathContext);
        c18351a.f100186e = str;
        c18351a.f100187f = getStaticBaseUriString();
        c18351a.f100189h = getRetainedStaticContext().getPackageData();
        c18351a.f100188g = this.f100185h;
        return SequenceTool.toLazySequence(new DocumentOrderIterator(new ItemMappingIterator(iterate, c18351a), GlobalOrderComparer.getInstance()));
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getCardinality(Expression[] expressionArr) {
        return Cardinality.allowsMany(expressionArr[0].getCardinality()) ? 57344 : 24576;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getSpecialProperties(Expression[] expressionArr) {
        return 9043968;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression... expressionArr) {
        this.f100185h = expressionArr[0].getLocation();
        Expression maybePreEvaluate = Doc.maybePreEvaluate(this, expressionArr);
        return maybePreEvaluate == null ? super.makeFunctionCall(expressionArr) : maybePreEvaluate;
    }

    public static DocumentKey computeDocumentKey(String str, String str2, PackageData packageData, boolean z) {
        String packageName;
        String escapeSpaces = ResolveURI.escapeSpaces(str);
        if (str2 == null) {
            try {
                str2 = new URI(escapeSpaces).toString();
            } catch (URISyntaxException unused) {
                str2 = '/' + escapeSpaces;
            }
        } else if (!escapeSpaces.isEmpty()) {
            try {
                str2 = ResolveURI.makeAbsolute(escapeSpaces, str2).toString();
            } catch (IllegalArgumentException | URISyntaxException unused2) {
                str2 = str2 + "/../" + escapeSpaces;
            }
        }
        if (z && (packageData instanceof StylesheetPackage)) {
            StylesheetPackage stylesheetPackage = (StylesheetPackage) packageData;
            if (stylesheetPackage.getSpaceStrippingRule() != NoElementsSpaceStrippingRule.getInstance() && (packageName = stylesheetPackage.getPackageName()) != null) {
                return new DocumentKey(str2, packageName, stylesheetPackage.getPackageVersion());
            }
        }
        return new DocumentKey(str2);
    }
}
