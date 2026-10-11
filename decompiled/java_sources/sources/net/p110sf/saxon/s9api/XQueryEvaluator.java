package net.p110sf.saxon.s9api;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import javax.xml.transform.dom.DOMSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.RegularSequenceChecker;
import net.p110sf.saxon.event.SequenceNormalizer;
import net.p110sf.saxon.expr.instruct.GlobalContextRequirement;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.lib.ErrorReporter;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.lib.ResourceResolver;
import net.p110sf.saxon.lib.ResourceResolverWrappingURIResolver;
import net.p110sf.saxon.lib.TraceListener;
import net.p110sf.saxon.lib.UnparsedTextURIResolver;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.MutableNodeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.query.DynamicQueryContext;
import net.p110sf.saxon.query.XQueryExpression;
import net.p110sf.saxon.s9api.XQueryEvaluator;
import net.p110sf.saxon.s9api.streams.XdmStream;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.tiny.TinyBuilder;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class XQueryEvaluator extends AbstractDestination implements Iterable<XdmItem> {

    /* renamed from: f */
    public final Processor f101394f;

    /* renamed from: g */
    public final XQueryExpression f101395g;

    /* renamed from: h */
    public final DynamicQueryContext f101396h;

    /* renamed from: i */
    public Controller f101397i;

    /* renamed from: j */
    public Destination f101398j;

    /* renamed from: k */
    public Set<XdmNode> f101399k;

    /* renamed from: l */
    public Builder f101400l;

    public XQueryEvaluator(Processor processor, XQueryExpression xQueryExpression) {
        this.f101394f = processor;
        this.f101395g = xQueryExpression;
        this.f101396h = new DynamicQueryContext(xQueryExpression.getConfiguration());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m63673c() throws SaxonApiException {
        NodeInfo currentRoot = this.f101400l.getCurrentRoot();
        if (currentRoot == null) {
            throw new SaxonApiException("No source document has been built by the previous pipeline stage");
        }
        currentRoot.getTreeInfo().setSpaceStrippingRule(this.f101397i.getSpaceStrippingRule());
        setSource(currentRoot.asActiveSource());
        this.f101400l = null;
        run(this.f101398j);
        this.f101398j.closeAndNotify();
    }

    /* renamed from: b */
    public final Receiver m63674b(Destination destination) throws SaxonApiException {
        Receiver receiver = destination.getReceiver(this.f101395g.getConfiguration().makePipelineConfiguration(), this.f101395g.getExecutable().getPrimarySerializationProperties());
        return Configuration.isAssertionsEnabled() ? new RegularSequenceChecker(receiver, true) : receiver;
    }

    public XdmValue callFunction(QName qName, XdmValue... xdmValueArr) throws SaxonApiException {
        UserFunction userDefinedFunction = this.f101395g.getMainModule().getUserDefinedFunction(qName.getNamespaceURI(), qName.getLocalName(), xdmValueArr.length);
        if (userDefinedFunction == null) {
            throw new SaxonApiException("No function with name " + qName.getEQName() + " and arity " + xdmValueArr.length + " has been declared in the query");
        }
        try {
            Controller controller = this.f101397i;
            if (controller == null) {
                this.f101397i = this.f101395g.newController(this.f101396h);
            } else {
                this.f101396h.initializeController(controller);
            }
            TypeHierarchy typeHierarchy = this.f101394f.getUnderlyingConfiguration().getTypeHierarchy();
            Sequence[] makeSequenceArray = SequenceTool.makeSequenceArray(xdmValueArr.length);
            for (int i = 0; i < xdmValueArr.length; i++) {
                SequenceType requiredType = userDefinedFunction.getParameterDefinitions()[i].getRequiredType();
                GroundedValue underlyingValue = xdmValueArr[i].getUnderlyingValue();
                if (!requiredType.matches(underlyingValue, typeHierarchy)) {
                    underlyingValue = typeHierarchy.applyFunctionConversionRules(underlyingValue, requiredType, new RoleDiagnostic(0, qName.getStructuredQName().getDisplayName(), i), Loc.NONE);
                }
                makeSequenceArray[i] = underlyingValue;
            }
            return XdmValue.wrap(userDefinedFunction.call(makeSequenceArray, this.f101397i));
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public void close() throws SaxonApiException {
    }

    public XdmValue evaluate() throws SaxonApiException {
        if (this.f101395g.isUpdateQuery()) {
            throw new IllegalStateException("Query is updating");
        }
        try {
            return XdmValue.wrap(SequenceTool.toGroundedValue(this.f101395g.iterator(this.f101396h)));
        } catch (UncheckedXPathException e) {
            throw new SaxonApiException(e.getXPathException());
        } catch (XPathException e2) {
            throw new SaxonApiException(e2);
        }
    }

    public XdmItem evaluateSingle() throws SaxonApiException {
        try {
            Item next = this.f101395g.iterator(this.f101396h).next();
            if (next == null) {
                return null;
            }
            return (XdmItem) XdmValue.wrap(next);
        } catch (UncheckedXPathException e) {
            throw new SaxonApiException(e.getXPathException());
        } catch (XPathException e2) {
            throw new SaxonApiException(e2);
        }
    }

    public XdmItem getContextItem() {
        Item contextItem = this.f101396h.getContextItem();
        if (contextItem == null) {
            return null;
        }
        return (XdmItem) XdmValue.wrap(contextItem);
    }

    public ErrorListener getErrorListener() {
        return this.f101396h.getErrorListener();
    }

    public ErrorReporter getErrorReporter() {
        return this.f101396h.getErrorReporter();
    }

    public XdmValue getExternalVariable(QName qName) {
        GroundedValue parameter = this.f101396h.getParameter(qName.getStructuredQName());
        if (parameter == null) {
            return null;
        }
        return XdmValue.wrap(parameter);
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public Receiver getReceiver(PipelineConfiguration pipelineConfiguration, SerializationProperties serializationProperties) throws SaxonApiException {
        if (this.f101398j == null) {
            throw new IllegalStateException("No destination has been supplied");
        }
        try {
            Controller controller = this.f101397i;
            if (controller == null) {
                this.f101397i = this.f101395g.newController(this.f101396h);
            } else {
                this.f101396h.initializeController(controller);
            }
            Builder makeBuilder = this.f101397i.makeBuilder();
            this.f101400l = makeBuilder;
            if (makeBuilder instanceof TinyBuilder) {
                ((TinyBuilder) makeBuilder).setStatistics(this.f101396h.getConfiguration().getTreeStatistics().SOURCE_DOCUMENT_STATISTICS);
            }
            SequenceNormalizer makeSequenceNormalizer = serializationProperties.makeSequenceNormalizer(this.f101397i.makeStripper(this.f101400l));
            makeSequenceNormalizer.onClose(new Action() { // from class: com.sunia.HTREnginev2.kmo
                @Override // net.p110sf.saxon.s9api.Action
                public final void act() {
                    XQueryEvaluator.this.m63673c();
                }
            });
            return makeSequenceNormalizer;
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    public ResourceResolver getResourceResolver() {
        return this.f101396h.getResourceResolver();
    }

    public ValidationMode getSchemaValidationMode() {
        return ValidationMode.get(this.f101396h.getSchemaValidationMode());
    }

    public Logger getTraceFunctionDestination() {
        return this.f101396h.getTraceFunctionDestination();
    }

    public TraceListener getTraceListener() {
        return this.f101396h.getTraceListener();
    }

    public URIResolver getURIResolver() {
        ResourceResolver resourceResolver = this.f101396h.getResourceResolver();
        if (resourceResolver instanceof ResourceResolverWrappingURIResolver) {
            return ((ResourceResolverWrappingURIResolver) resourceResolver).getWrappedURIResolver();
        }
        return null;
    }

    public DynamicQueryContext getUnderlyingQueryContext() {
        return this.f101396h;
    }

    public UnparsedTextURIResolver getUnparsedTextURIResolver() {
        return this.f101396h.getUnparsedTextURIResolver();
    }

    public Iterator<XdmNode> getUpdatedDocuments() {
        return this.f101399k.iterator();
    }

    public void run() throws SaxonApiException {
        try {
            if (this.f101395g.isUpdateQuery()) {
                Set<MutableNodeInfo> runUpdate = this.f101395g.runUpdate(this.f101396h);
                this.f101399k = new HashSet();
                Iterator<MutableNodeInfo> it2 = runUpdate.iterator();
                while (it2.hasNext()) {
                    this.f101399k.add(XdmItem.wrapItem((NodeInfo) it2.next()));
                }
                return;
            }
            Destination destination = this.f101398j;
            if (destination != null) {
                run(destination);
                return;
            }
            throw new IllegalStateException("No destination supplied");
        } catch (TransformerException e) {
            throw new SaxonApiException(e);
        } catch (UncheckedXPathException e2) {
            throw new SaxonApiException(e2.getXPathException());
        }
    }

    public void runStreamed(Source source, Destination destination) throws SaxonApiException {
        if (this.f101395g.isUpdateQuery()) {
            throw new IllegalStateException("Query is updating; cannot run with streaming");
        }
        Configuration configuration = this.f101396h.getConfiguration();
        if (configuration.isTiming()) {
            String systemId = source.getSystemId();
            if (systemId == null) {
                systemId = "";
            }
            configuration.getLogger().info("Processing streamed input " + systemId);
        }
        try {
            this.f101395g.runStreamed(this.f101396h, source, m63674b(destination), null);
            destination.closeAndNotify();
        } catch (TransformerException e) {
            throw new SaxonApiException(e);
        }
    }

    public void setContextItem(XdmItem xdmItem) throws SaxonApiException {
        if (xdmItem != null) {
            GlobalContextRequirement globalContextRequirement = this.f101395g.getExecutable().getGlobalContextRequirement();
            if (globalContextRequirement != null && !globalContextRequirement.isExternal()) {
                throw new SaxonApiException("The context item for the query is not defined as external");
            }
            this.f101396h.setContextItem(xdmItem.getUnderlyingValue());
        }
    }

    public void setDestination(Destination destination) {
        this.f101398j = destination;
    }

    public void setErrorListener(ErrorListener errorListener) {
        this.f101396h.setErrorListener(errorListener);
    }

    public void setErrorReporter(ErrorReporter errorReporter) {
        this.f101396h.setErrorReporter(errorReporter);
    }

    public void setExternalVariable(QName qName, XdmValue xdmValue) {
        try {
            this.f101396h.setParameter(qName.getStructuredQName(), xdmValue == null ? null : xdmValue.getUnderlyingValue().materialize());
        } catch (UncheckedXPathException e) {
            throw new SaxonApiUncheckedException(e);
        }
    }

    public void setResourceResolver(ResourceResolver resourceResolver) {
        this.f101396h.setResourceResolver(resourceResolver);
    }

    public void setSchemaValidationMode(ValidationMode validationMode) {
        if (validationMode != null) {
            this.f101396h.setSchemaValidationMode(validationMode.getNumber());
        }
    }

    public void setSource(Source source) throws SaxonApiException {
        if (source instanceof NodeInfo) {
            setContextItem(new XdmNode((NodeInfo) source));
        } else if (source instanceof DOMSource) {
            setContextItem(this.f101394f.newDocumentBuilder().wrap(source));
        } else {
            setContextItem(this.f101394f.newDocumentBuilder().build(source));
        }
    }

    public void setTraceFunctionDestination(Logger logger) {
        this.f101396h.setTraceFunctionDestination(logger);
    }

    public void setTraceListener(TraceListener traceListener) {
        this.f101396h.setTraceListener(traceListener);
    }

    public void setURIResolver(URIResolver uRIResolver) {
        this.f101396h.setResourceResolver(new ResourceResolverWrappingURIResolver(uRIResolver));
    }

    public void setUnparsedTextResolver(UnparsedTextURIResolver unparsedTextURIResolver) {
        this.f101396h.setUnparsedTextURIResolver(unparsedTextURIResolver);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [net.sf.saxon.s9api.XdmSequenceIterator] */
    public XdmStream<XdmItem> stream() throws SaxonApiUncheckedException {
        return iterator().stream();
    }

    @Override // java.lang.Iterable
    public Iterator<XdmItem> iterator() throws SaxonApiUncheckedException {
        if (!this.f101395g.isUpdateQuery()) {
            try {
                return new XdmSequenceIterator(this.f101395g.iterator(this.f101396h));
            } catch (XPathException e) {
                throw new SaxonApiUncheckedException(e);
            }
        }
        throw new IllegalStateException("Query is updating");
    }

    public void run(Destination destination) throws SaxonApiException {
        if (!this.f101395g.isUpdateQuery()) {
            try {
                this.f101395g.run(this.f101396h, m63674b(destination), null);
                destination.closeAndNotify();
                return;
            } catch (TransformerException e) {
                throw new SaxonApiException(e);
            }
        }
        throw new IllegalStateException("Query is updating");
    }
}
