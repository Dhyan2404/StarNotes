package net.p110sf.saxon.s9api;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.EventSource;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.RegularSequenceChecker;
import net.p110sf.saxon.event.TreeReceiver;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.GlobalParameterSet;
import net.p110sf.saxon.functions.ResolveURI;
import net.p110sf.saxon.lib.ActiveSource;
import net.p110sf.saxon.lib.AugmentedSource;
import net.p110sf.saxon.lib.ErrorReporter;
import net.p110sf.saxon.lib.ErrorReporterToListener;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.lib.ResourceResolver;
import net.p110sf.saxon.lib.ResourceResolverWrappingURIResolver;
import net.p110sf.saxon.lib.ResultDocumentResolver;
import net.p110sf.saxon.lib.TraceListener;
import net.p110sf.saxon.lib.UnparsedTextURIResolver;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.AbstractXsltTransformer;
import net.p110sf.saxon.s9api.Message;
import net.p110sf.saxon.s9api.MessageListener2;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XsltController;
import net.p110sf.saxon.tree.tiny.TinyBuilder;

/* loaded from: classes11.dex */
public abstract class AbstractXsltTransformer {
    protected boolean baseOutputUriWasSet = false;
    protected XsltController controller;

    /* renamed from: e */
    public MessageListener2 f101320e;
    protected Processor processor;

    /* renamed from: net.sf.saxon.s9api.AbstractXsltTransformer$a */
    /* loaded from: classes11.dex */
    public class C18455a implements ResultDocumentResolver {

        /* renamed from: a */
        public final /* synthetic */ Function f101321a;

        public C18455a(Function function) {
            this.f101321a = function;
        }

        @Override // net.p110sf.saxon.lib.ResultDocumentResolver
        public Receiver resolve(XPathContext xPathContext, String str, String str2, SerializationProperties serializationProperties) throws XPathException {
            try {
                try {
                    try {
                        return ((Destination) this.f101321a.apply(ResolveURI.makeAbsolute(str, str2))).getReceiver(xPathContext.getController().makePipelineConfiguration(), serializationProperties);
                    } catch (SaxonApiException e) {
                        throw XPathException.makeXPathException(e);
                    }
                } catch (SaxonApiUncheckedException e2) {
                    XPathException makeXPathException = XPathException.makeXPathException(e2);
                    makeXPathException.maybeSetErrorCode(SaxonErrorCode.SXRD0001);
                    throw makeXPathException;
                }
            } catch (URISyntaxException e3) {
                throw XPathException.makeXPathException(e3);
            }
        }
    }

    /* renamed from: net.sf.saxon.s9api.AbstractXsltTransformer$b */
    /* loaded from: classes11.dex */
    public class C18456b extends TreeReceiver {

        /* renamed from: h */
        public boolean f101323h;

        /* renamed from: i */
        public final /* synthetic */ Builder f101324i;

        /* renamed from: j */
        public final /* synthetic */ XsltController f101325j;

        /* renamed from: k */
        public final /* synthetic */ Destination f101326k;

        /* renamed from: l */
        public final /* synthetic */ GlobalParameterSet f101327l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18456b(Receiver receiver, Builder builder, XsltController xsltController, Destination destination, GlobalParameterSet globalParameterSet) {
            super(receiver);
            this.f101324i = builder;
            this.f101325j = xsltController;
            this.f101326k = destination;
            this.f101327l = globalParameterSet;
            this.f101323h = false;
        }

        @Override // net.p110sf.saxon.event.TreeReceiver, net.p110sf.saxon.event.Receiver
        public void close() throws XPathException {
            if (this.f101323h) {
                return;
            }
            try {
                NodeInfo currentRoot = this.f101324i.getCurrentRoot();
                if (currentRoot != null) {
                    currentRoot.getTreeInfo().setSpaceStrippingRule(this.f101325j.getSpaceStrippingRule());
                    Receiver destinationReceiver = AbstractXsltTransformer.this.getDestinationReceiver(this.f101325j, this.f101326k);
                    try {
                        this.f101325j.setGlobalContextItem(currentRoot);
                        this.f101325j.initializeController(this.f101327l);
                        this.f101325j.applyTemplates(currentRoot, destinationReceiver);
                    } catch (TransformerException e) {
                        throw new SaxonApiException(e);
                    }
                }
                this.f101323h = true;
            } catch (SaxonApiException e2) {
                throw XPathException.makeXPathException(e2);
            }
        }
    }

    public AbstractXsltTransformer(Processor processor, XsltController xsltController) {
        this.processor = processor;
        this.controller = xsltController;
    }

    /* renamed from: b */
    public static /* synthetic */ void m63649b(MessageListener2 messageListener2, Message message) {
        messageListener2.message(message.getContent(), message.getErrorCode(), message.isTerminate(), message.getLocation());
    }

    public void applyTemplatesToSource(Source source, Receiver receiver) throws XPathException {
        NodeInfo makeSourceTree;
        Objects.requireNonNull(source);
        Objects.requireNonNull(receiver);
        if (this.controller.getInitialMode().isDeclaredStreamable()) {
            this.controller.applyStreamingTemplates(source, receiver);
            return;
        }
        if (source instanceof NodeInfo) {
            makeSourceTree = (NodeInfo) source;
        } else {
            XsltController xsltController = this.controller;
            makeSourceTree = xsltController.makeSourceTree(source, xsltController.getSchemaValidationMode());
        }
        this.controller.applyTemplates(makeSourceTree, receiver);
    }

    /* renamed from: c */
    public final TreeReceiver m63650c(XsltController xsltController, GlobalParameterSet globalParameterSet, Destination destination, Builder builder, Receiver receiver) {
        return new C18456b(receiver, builder, xsltController, destination, globalParameterSet);
    }

    public String getBaseOutputURI() {
        return this.controller.getBaseOutputURI();
    }

    public Receiver getDestinationReceiver(XsltController xsltController, Destination destination) throws SaxonApiException {
        xsltController.setPrincipalDestination(destination);
        Receiver receiver = destination.getReceiver(xsltController.makePipelineConfiguration(), xsltController.getExecutable().getPrimarySerializationProperties());
        if (Configuration.isAssertionsEnabled()) {
            receiver = new RegularSequenceChecker(receiver, true);
        }
        receiver.getPipelineConfiguration().setController(xsltController);
        if (this.baseOutputUriWasSet) {
            try {
                if (destination.getDestinationBaseURI() == null) {
                    destination.setDestinationBaseURI(new URI(xsltController.getBaseOutputURI()));
                }
            } catch (URISyntaxException unused) {
            }
        } else if (destination.getDestinationBaseURI() != null) {
            xsltController.setBaseOutputURI(destination.getDestinationBaseURI().toASCIIString());
        }
        receiver.setSystemId(xsltController.getBaseOutputURI());
        return receiver;
    }

    public ErrorListener getErrorListener() {
        ErrorReporter errorReporter = this.controller.getErrorReporter();
        if (errorReporter instanceof ErrorReporterToListener) {
            return ((ErrorReporterToListener) errorReporter).getErrorListener();
        }
        return null;
    }

    public ErrorReporter getErrorReporter() {
        return this.controller.getErrorReporter();
    }

    public QName getInitialMode() {
        StructuredQName initialModeName = this.controller.getInitialModeName();
        if (initialModeName == null) {
            return null;
        }
        return new QName(initialModeName);
    }

    public MessageListener2 getMessageListener2() {
        return this.f101320e;
    }

    public Receiver getReceivingTransformer(XsltController xsltController, GlobalParameterSet globalParameterSet, Destination destination) throws SaxonApiException {
        Configuration configuration = xsltController.getConfiguration();
        if (xsltController.getInitialMode().isDeclaredStreamable()) {
            Receiver destinationReceiver = getDestinationReceiver(xsltController, destination);
            try {
                xsltController.initializeController(globalParameterSet);
                return xsltController.getStreamingReceiver(xsltController.getInitialMode(), destinationReceiver);
            } catch (TransformerException e) {
                throw new SaxonApiException(e);
            }
        }
        Builder makeBuilder = xsltController.makeBuilder();
        if (makeBuilder instanceof TinyBuilder) {
            ((TinyBuilder) makeBuilder).setStatistics(configuration.getTreeStatistics().SOURCE_DOCUMENT_STATISTICS);
        }
        Receiver makeStripper = xsltController.makeStripper(makeBuilder);
        if (xsltController.isStylesheetStrippingTypeAnnotations()) {
            makeStripper = xsltController.getConfiguration().getAnnotationStripper(makeStripper);
        }
        return m63650c(xsltController, globalParameterSet, destination, makeBuilder, makeStripper);
    }

    public ResourceResolver getResourceResolver() {
        return this.controller.getResourceResolver();
    }

    public ValidationMode getSchemaValidationMode() {
        return ValidationMode.get(this.controller.getSchemaValidationMode());
    }

    public Logger getTraceFunctionDestination() {
        return this.controller.getTraceFunctionDestination();
    }

    public TraceListener getTraceListener() {
        return this.controller.getTraceListener();
    }

    public URIResolver getURIResolver() {
        ResourceResolver resourceResolver = this.controller.getResourceResolver();
        if (resourceResolver instanceof ResourceResolverWrappingURIResolver) {
            return ((ResourceResolverWrappingURIResolver) resourceResolver).getWrappedURIResolver();
        }
        return null;
    }

    public XsltController getUnderlyingController() {
        return this.controller;
    }

    public UnparsedTextURIResolver getUnparsedTextURIResolver() {
        return this.controller.getUnparsedTextURIResolver();
    }

    public boolean isAssertionsEnabled() {
        return this.controller.isAssertionsEnabled();
    }

    public boolean isStreamableSource(Source source) {
        if (source instanceof AugmentedSource) {
            return isStreamableSource(((AugmentedSource) source).getContainedSource());
        }
        Configuration configuration = this.controller.getConfiguration();
        try {
            ActiveSource resolveSource = configuration.getSourceResolver().resolveSource(source, configuration);
            return (resolveSource instanceof SAXSource) || (resolveSource instanceof StreamSource) || (resolveSource instanceof EventSource);
        } catch (XPathException unused) {
            return false;
        }
    }

    public void setAssertionsEnabled(boolean z) {
        this.controller.setAssertionsEnabled(z);
    }

    public synchronized void setBaseOutputURI(String str) {
        this.controller.setBaseOutputURI(str);
        this.baseOutputUriWasSet = str != null;
    }

    public void setErrorListener(ErrorListener errorListener) {
        this.controller.setErrorReporter(new ErrorReporterToListener(errorListener));
    }

    public void setErrorReporter(ErrorReporter errorReporter) {
        this.controller.setErrorReporter(errorReporter);
    }

    public void setInitialMode(QName qName) throws SaxonApiException {
        try {
            this.controller.setInitialMode(qName == null ? null : qName.getStructuredQName());
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    public void setMessageHandler(Consumer<Message> consumer) {
        this.controller.setMessageHandler(consumer);
    }

    public synchronized void setMessageListener(final MessageListener2 messageListener2) {
        this.f101320e = messageListener2;
        setMessageHandler(new Consumer() { // from class: com.sunia.HTREnginev2.l5
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                AbstractXsltTransformer.m63649b(MessageListener2.this, (Message) obj);
            }
        });
    }

    public void setResourceResolver(ResourceResolver resourceResolver) {
        this.controller.setResourceResolver(resourceResolver);
    }

    public void setResultDocumentHandler(Function<URI, Destination> function) {
        this.controller.setResultDocumentResolver(new C18455a(function));
    }

    public void setSchemaValidationMode(ValidationMode validationMode) {
        if (validationMode != null) {
            this.controller.setSchemaValidationMode(validationMode.getNumber());
        }
    }

    public void setTraceFunctionDestination(Logger logger) {
        this.controller.setTraceFunctionDestination(logger);
    }

    public void setTraceListener(TraceListener traceListener) {
        this.controller.setTraceListener(traceListener);
    }

    public void setURIResolver(URIResolver uRIResolver) {
        this.controller.setResourceResolver(new ResourceResolverWrappingURIResolver(uRIResolver));
    }

    public void setUnparsedTextResolver(UnparsedTextURIResolver unparsedTextURIResolver) {
        this.controller.setUnparsedTextURIResolver(unparsedTextURIResolver);
    }
}
