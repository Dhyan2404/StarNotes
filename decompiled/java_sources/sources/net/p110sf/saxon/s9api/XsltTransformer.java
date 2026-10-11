package net.p110sf.saxon.s9api;

import java.net.URI;
import javax.xml.transform.Source;
import javax.xml.transform.dom.DOMSource;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.SequenceNormalizerWithSpaceSeparator;
import net.p110sf.saxon.expr.instruct.GlobalContextRequirement;
import net.p110sf.saxon.expr.instruct.GlobalParameterSet;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingException;
import net.p110sf.saxon.trans.XsltController;
import net.p110sf.saxon.tree.linked.DocumentImpl;

/* loaded from: classes11.dex */
public class XsltTransformer extends AbstractXsltTransformer implements Destination {

    /* renamed from: f */
    public QName f101433f;

    /* renamed from: g */
    public GlobalParameterSet f101434g;

    /* renamed from: h */
    public Source f101435h;

    /* renamed from: i */
    public Destination f101436i;

    /* renamed from: j */
    public final DestinationHelper f101437j;

    /* renamed from: k */
    public URI f101438k;

    public XsltTransformer(Processor processor, XsltController xsltController, GlobalParameterSet globalParameterSet) {
        super(processor, xsltController);
        this.f101434g = new GlobalParameterSet();
        this.f101437j = new DestinationHelper(this);
    }

    public synchronized void clearParameters() {
        this.f101434g = new GlobalParameterSet();
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public void close() {
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public void closeAndNotify() throws SaxonApiException {
        this.f101437j.closeAndNotify();
    }

    /* renamed from: d */
    public final boolean m63697d(Item item) throws XPathException {
        if (this.controller.getGlobalContextItem() != null) {
            return false;
        }
        this.controller.setGlobalContextItem(item, true);
        return true;
    }

    public Destination getDestination() {
        return this.f101436i;
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public URI getDestinationBaseURI() {
        return this.f101438k;
    }

    public XdmNode getInitialContextNode() {
        Source source = this.f101435h;
        if (source instanceof NodeInfo) {
            return (XdmNode) XdmValue.wrap((NodeInfo) source);
        }
        return null;
    }

    public QName getInitialTemplate() {
        return this.f101433f;
    }

    public synchronized XdmValue getParameter(QName qName) {
        GroundedValue groundedValue;
        groundedValue = this.f101434g.get(qName.getStructuredQName());
        return groundedValue == null ? null : XdmValue.wrap(groundedValue);
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public Receiver getReceiver(PipelineConfiguration pipelineConfiguration, SerializationProperties serializationProperties) throws SaxonApiException {
        Destination destination = this.f101436i;
        if (destination == null) {
            throw new IllegalStateException("No destination has been supplied");
        }
        SequenceNormalizerWithSpaceSeparator sequenceNormalizerWithSpaceSeparator = new SequenceNormalizerWithSpaceSeparator(getReceivingTransformer(this.controller, this.f101434g, destination));
        sequenceNormalizerWithSpaceSeparator.setPipelineConfiguration(pipelineConfiguration);
        return sequenceNormalizerWithSpaceSeparator;
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public void onClose(Action action) {
        this.f101437j.onClose(action);
    }

    public void setDestination(Destination destination) {
        this.f101436i = destination;
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public void setDestinationBaseURI(URI uri) {
        this.f101438k = uri;
    }

    public synchronized void setInitialContextNode(XdmNode xdmNode) throws SaxonApiUncheckedException {
        try {
            if (xdmNode == null) {
                this.f101435h = null;
                this.controller.setGlobalContextItem(null);
            } else {
                this.f101435h = xdmNode.getUnderlyingNode().asActiveSource();
                this.controller.setGlobalContextItem(xdmNode.getUnderlyingNode().getRoot());
            }
        } catch (XPathException e) {
            throw new SaxonApiUncheckedException(e);
        }
    }

    public void setInitialTemplate(QName qName) {
        this.f101433f = qName;
    }

    public synchronized void setParameter(QName qName, XdmValue xdmValue) {
        try {
            this.f101434g.put(qName.getStructuredQName(), xdmValue == null ? null : xdmValue.getUnderlyingValue().materialize());
        } catch (UncheckedXPathException e) {
            throw new SaxonApiUncheckedException(e);
        }
    }

    public synchronized void setSource(Source source) {
        if (source instanceof NodeInfo) {
            setInitialContextNode(new XdmNode((NodeInfo) source));
        } else if (!(source instanceof DOMSource)) {
            this.f101435h = source;
        } else if (((DOMSource) source).getNode() == null) {
            DocumentImpl documentImpl = new DocumentImpl();
            documentImpl.setConfiguration(this.controller.getConfiguration());
            setInitialContextNode(new XdmNode(documentImpl));
        } else {
            setInitialContextNode(new XdmNode(this.processor.getUnderlyingConfiguration().unravel(source)));
        }
    }

    public synchronized void transform() throws SaxonApiException {
        Source source = this.f101435h;
        Destination destination = this.f101436i;
        if (destination == null) {
            throw new IllegalStateException("No destination has been supplied");
        }
        boolean z = false;
        try {
            try {
                Receiver destinationReceiver = getDestinationReceiver(this.controller, destination);
                GlobalContextRequirement globalContextRequirement = this.controller.getExecutable().getGlobalContextRequirement();
                if ((globalContextRequirement == null || !globalContextRequirement.isAbsentFocus()) && source != null) {
                    if (source instanceof NodeInfo) {
                        z = m63697d((NodeInfo) source);
                    } else if (source instanceof DOMSource) {
                        NodeInfo prepareInputTree = this.controller.prepareInputTree(source);
                        z = m63697d(prepareInputTree);
                        source = prepareInputTree.asActiveSource();
                    } else {
                        NodeInfo makeSourceTree = this.controller.makeSourceTree(source, getSchemaValidationMode().getNumber());
                        z = m63697d(makeSourceTree);
                        source = makeSourceTree.asActiveSource();
                    }
                }
                if (this.baseOutputUriWasSet) {
                    destinationReceiver.setSystemId(getBaseOutputURI());
                }
                this.controller.initializeController(this.f101434g);
                QName qName = this.f101433f;
                if (qName != null) {
                    this.controller.callTemplate(qName.getStructuredQName(), destinationReceiver);
                } else if (source != null) {
                    applyTemplatesToSource(source, destinationReceiver);
                } else {
                    this.controller.callTemplate(new QName("xsl", "http://www.w3.org/1999/XSL/Transform", "initial-template").getStructuredQName(), destinationReceiver);
                }
                this.f101436i.closeAndNotify();
            } catch (XPathException e) {
                if (!e.hasBeenReported()) {
                    getErrorReporter().report(new XmlProcessingException(e));
                    e.setHasBeenReported(true);
                }
                throw new SaxonApiException(e);
            }
        } finally {
            if (z) {
                this.controller.clearGlobalContextItem();
            }
        }
    }
}
