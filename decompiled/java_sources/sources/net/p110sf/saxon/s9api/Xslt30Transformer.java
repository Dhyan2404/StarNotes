package net.p110sf.saxon.s9api;

import java.io.File;
import java.io.OutputStream;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import javax.xml.transform.Source;
import javax.xml.transform.dom.DOMSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.PreparedStylesheet;
import net.p110sf.saxon.event.ComplexContentOutputter;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.SequenceNormalizerWithSpaceSeparator;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.GlobalParameterSet;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.expr.instruct.UserFunctionParameter;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingException;
import net.p110sf.saxon.trans.XsltController;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class Xslt30Transformer extends AbstractXsltTransformer {

    /* renamed from: f */
    public GlobalParameterSet f101416f;

    /* renamed from: g */
    public boolean f101417g;

    /* renamed from: h */
    public Item f101418h;

    /* renamed from: i */
    public boolean f101419i;

    /* renamed from: net.sf.saxon.s9api.Xslt30Transformer$a */
    /* loaded from: classes11.dex */
    public class C18484a extends AbstractDestination {

        /* renamed from: f */
        public Receiver f101420f;

        /* renamed from: g */
        public final /* synthetic */ Destination f101421g;

        public C18484a(Destination destination) {
            this.f101421g = destination;
        }

        @Override // net.p110sf.saxon.s9api.Destination
        public void close() throws SaxonApiException {
            try {
                this.f101420f.close();
            } catch (XPathException e) {
                throw new SaxonApiException(e);
            }
        }

        @Override // net.p110sf.saxon.s9api.Destination
        public Receiver getReceiver(PipelineConfiguration pipelineConfiguration, SerializationProperties serializationProperties) throws SaxonApiException {
            Xslt30Transformer xslt30Transformer = Xslt30Transformer.this;
            SequenceNormalizerWithSpaceSeparator sequenceNormalizerWithSpaceSeparator = new SequenceNormalizerWithSpaceSeparator(xslt30Transformer.getReceivingTransformer(xslt30Transformer.controller, xslt30Transformer.f101416f, this.f101421g));
            sequenceNormalizerWithSpaceSeparator.setPipelineConfiguration(pipelineConfiguration);
            this.f101420f = sequenceNormalizerWithSpaceSeparator;
            return sequenceNormalizerWithSpaceSeparator;
        }
    }

    public Xslt30Transformer(Processor processor, XsltController xsltController, GlobalParameterSet globalParameterSet) {
        super(processor, xsltController);
        this.f101417g = false;
        this.f101418h = null;
        this.f101416f = new GlobalParameterSet();
    }

    public synchronized void applyTemplates(Source source, Destination destination) throws SaxonApiException {
        Objects.requireNonNull(destination);
        if (source != null) {
            m63692f();
            try {
                applyTemplatesToSource(source, getDestinationReceiver(this.controller, destination));
                destination.closeAndNotify();
            } catch (XPathException e) {
                if (!e.hasBeenReported()) {
                    getErrorReporter().report(new XmlProcessingException(e));
                }
                throw new SaxonApiException(e);
            }
        } else {
            throw new SaxonApiException(new XPathException("No initial match selection supplied", "XTDE0044"));
        }
    }

    public Destination asDocumentDestination(Destination destination) {
        return new C18484a(destination);
    }

    public synchronized XdmValue callFunction(QName qName, XdmValue[] xdmValueArr) throws SaxonApiException {
        UserFunction userFunction;
        Sequence[] m63693g;
        XPathContextMajor newXPathContext;
        Objects.requireNonNull(qName);
        Objects.requireNonNull(xdmValueArr);
        m63692f();
        try {
            Component m63691e = m63691e(qName, xdmValueArr);
            userFunction = (UserFunction) m63691e.getActor();
            m63693g = m63693g(userFunction, xdmValueArr);
            newXPathContext = this.controller.newXPathContext();
            newXPathContext.setCurrentComponent(m63691e);
            newXPathContext.setTemporaryOutputState(160);
            newXPathContext.setCurrentOutputUri(null);
        } catch (XPathException e) {
            if (!e.hasBeenReported()) {
                getErrorReporter().report(new XmlProcessingException(e));
            }
            throw new SaxonApiException(e);
        }
        return XdmValue.wrap(userFunction.call(newXPathContext, m63693g).materialize());
    }

    public synchronized void callTemplate(QName qName, Destination destination) throws SaxonApiException {
        Objects.requireNonNull(destination);
        m63692f();
        if (qName == null) {
            qName = new QName("xsl", "http://www.w3.org/1999/XSL/Transform", "initial-template");
        }
        try {
            Receiver destinationReceiver = getDestinationReceiver(this.controller, destination);
            if (this.baseOutputUriWasSet) {
                destinationReceiver.setSystemId(getBaseOutputURI());
            }
            this.controller.callTemplate(qName.getStructuredQName(), destinationReceiver);
            destination.closeAndNotify();
        } catch (XPathException e) {
            destination.closeAndNotify();
            if (!e.hasBeenReported()) {
                getErrorReporter().report(new XmlProcessingException(e));
            }
            throw new SaxonApiException(e);
        }
    }

    /* renamed from: e */
    public final synchronized Component m63691e(QName qName, XdmValue[] xdmValueArr) throws XPathException {
        Component component;
        SymbolicName.C18533F c18533f = new SymbolicName.C18533F(qName.getStructuredQName(), xdmValueArr.length);
        component = ((PreparedStylesheet) this.controller.getExecutable()).getComponent(c18533f);
        if (component == null) {
            throw new XPathException("No public function with name " + qName.getClarkName() + " and arity " + xdmValueArr.length + " has been declared in the stylesheet", "XTDE0041");
        }
        if (component.getVisibility() != Visibility.FINAL && component.getVisibility() != Visibility.PUBLIC) {
            throw new XPathException("Cannot invoke " + c18533f + " externally, because it is not public", "XTDE0041");
        }
        return component;
    }

    /* renamed from: f */
    public final void m63692f() throws SaxonApiException {
        if (!this.f101417g) {
            if (this.f101416f == null) {
                this.f101416f = new GlobalParameterSet();
            }
            try {
                this.controller.setGlobalContextItem(this.f101418h, this.f101419i);
                this.controller.initializeController(this.f101416f);
            } catch (XPathException e) {
                throw new SaxonApiException(e);
            }
        }
        this.f101417g = true;
    }

    /* renamed from: g */
    public final Sequence[] m63693g(UserFunction userFunction, XdmValue[] xdmValueArr) throws XPathException {
        Configuration underlyingConfiguration = this.processor.getUnderlyingConfiguration();
        UserFunctionParameter[] parameterDefinitions = userFunction.getParameterDefinitions();
        GroundedValue[] groundedValueArr = new GroundedValue[xdmValueArr.length];
        for (int i = 0; i < xdmValueArr.length; i++) {
            SequenceType requiredType = parameterDefinitions[i].getRequiredType();
            GroundedValue underlyingValue = xdmValueArr[i].getUnderlyingValue();
            groundedValueArr[i] = underlyingValue;
            if (!requiredType.matches(underlyingValue, underlyingConfiguration.getTypeHierarchy())) {
                groundedValueArr[i] = underlyingConfiguration.getTypeHierarchy().applyFunctionConversionRules(groundedValueArr[i], requiredType, new RoleDiagnostic(0, userFunction.getFunctionName().getDisplayName(), i), Loc.NONE).materialize();
            }
        }
        return groundedValueArr;
    }

    public XdmItem getGlobalContextItem() {
        return XdmItem.wrapItem(this.f101418h);
    }

    public Serializer newSerializer() {
        Serializer newSerializer = this.processor.newSerializer();
        newSerializer.setOutputProperties(this.controller.getExecutable().getPrimarySerializationProperties());
        return newSerializer;
    }

    public void setGlobalContextItem(XdmItem xdmItem) throws SaxonApiException {
        setGlobalContextItem(xdmItem, false);
    }

    public synchronized <T extends XdmValue> void setInitialTemplateParameters(Map<QName, T> map, boolean z) throws SaxonApiException {
        HashMap hashMap = new HashMap();
        for (Map.Entry<QName, T> entry : map.entrySet()) {
            hashMap.put(entry.getKey().getStructuredQName(), entry.getValue().getUnderlyingValue());
        }
        this.controller.setInitialTemplateParameters(hashMap, z);
    }

    public synchronized <T extends XdmValue> void setStylesheetParameters(Map<QName, T> map) throws SaxonApiException {
        if (this.f101417g) {
            throw new IllegalStateException("Stylesheet has already been evaluated");
        }
        if (this.f101416f == null) {
            this.f101416f = new GlobalParameterSet();
        }
        for (Map.Entry<QName, T> entry : map.entrySet()) {
            try {
                this.f101416f.put(entry.getKey().getStructuredQName(), entry.getValue().getUnderlyingValue());
            } catch (UncheckedXPathException e) {
                throw new SaxonApiException(e);
            }
        }
    }

    public synchronized void transform(Source source, Destination destination) throws SaxonApiException {
        NodeInfo makeSourceTree;
        Objects.requireNonNull(destination);
        if (source == null) {
            throw new SaxonApiException(new XPathException("No initial match selection supplied", "XTDE0044"));
        }
        if (this.controller.getInitialMode().isDeclaredStreamable()) {
            throw new SaxonApiException("Cannot use the transform() method when the initial mode is streamable");
        }
        m63692f();
        try {
            if (source instanceof NodeInfo) {
                this.controller.setGlobalContextItem((NodeInfo) source);
                makeSourceTree = (NodeInfo) source;
            } else if (source instanceof DOMSource) {
                makeSourceTree = this.controller.prepareInputTree(source);
                this.controller.setGlobalContextItem(makeSourceTree);
            } else {
                makeSourceTree = this.controller.makeSourceTree(source, getSchemaValidationMode().getNumber());
                this.controller.setGlobalContextItem(makeSourceTree);
            }
            this.controller.applyTemplates(makeSourceTree, getDestinationReceiver(this.controller, destination));
            destination.closeAndNotify();
        } catch (XPathException e) {
            if (!e.hasBeenReported()) {
                getErrorReporter().report(new XmlProcessingException(e));
            }
            throw new SaxonApiException(e);
        }
    }

    public synchronized void setGlobalContextItem(XdmItem xdmItem, boolean z) throws SaxonApiException {
        if (!this.f101417g) {
            this.f101418h = xdmItem == null ? null : xdmItem.getUnderlyingValue();
            this.f101419i = z;
        } else {
            throw new IllegalStateException("Stylesheet has already been evaluated");
        }
    }

    public Serializer newSerializer(File file) {
        Serializer newSerializer = this.processor.newSerializer(file);
        newSerializer.setOutputProperties(this.controller.getExecutable().getPrimarySerializationProperties());
        setBaseOutputURI(file.toURI().toString());
        return newSerializer;
    }

    public Serializer newSerializer(Writer writer) {
        Serializer newSerializer = newSerializer();
        newSerializer.setOutputWriter(writer);
        return newSerializer;
    }

    public Serializer newSerializer(OutputStream outputStream) {
        Serializer newSerializer = newSerializer();
        newSerializer.setOutputStream(outputStream);
        return newSerializer;
    }

    public synchronized XdmValue applyTemplates(Source source) throws SaxonApiException {
        RawDestination rawDestination;
        Objects.requireNonNull(source);
        rawDestination = new RawDestination();
        applyTemplates(source, rawDestination);
        return rawDestination.getXdmValue();
    }

    public synchronized XdmValue callTemplate(QName qName) throws SaxonApiException {
        RawDestination rawDestination;
        rawDestination = new RawDestination();
        callTemplate(qName, rawDestination);
        return rawDestination.getXdmValue();
    }

    public synchronized void applyTemplates(XdmValue xdmValue, Destination destination) throws SaxonApiException {
        Objects.requireNonNull(xdmValue);
        Objects.requireNonNull(destination);
        m63692f();
        try {
            Receiver destinationReceiver = getDestinationReceiver(this.controller, destination);
            if (this.baseOutputUriWasSet) {
                destinationReceiver.setSystemId(getBaseOutputURI());
            }
            this.controller.applyTemplates(xdmValue.getUnderlyingValue(), destinationReceiver);
            destination.closeAndNotify();
        } catch (XPathException e) {
            if (!e.hasBeenReported()) {
                getErrorReporter().report(new XmlProcessingException(e));
            }
            throw new SaxonApiException(e);
        }
    }

    public synchronized void callFunction(QName qName, XdmValue[] xdmValueArr, Destination destination) throws SaxonApiException {
        m63692f();
        try {
            Component m63691e = m63691e(qName, xdmValueArr);
            UserFunction userFunction = (UserFunction) m63691e.getActor();
            Sequence[] m63693g = m63693g(userFunction, xdmValueArr);
            XPathContextMajor newXPathContext = this.controller.newXPathContext();
            newXPathContext.setCurrentComponent(m63691e);
            newXPathContext.setTemporaryOutputState(160);
            newXPathContext.setCurrentOutputUri(null);
            Receiver receiver = destination.getReceiver(this.controller.makePipelineConfiguration(), this.controller.getExecutable().getPrimarySerializationProperties());
            receiver.open();
            userFunction.process(newXPathContext, m63693g, new ComplexContentOutputter(receiver));
            receiver.close();
            destination.closeAndNotify();
        } catch (XPathException e) {
            getErrorReporter().report(new XmlProcessingException(e));
            throw new SaxonApiException(e);
        }
    }

    public synchronized XdmValue applyTemplates(XdmValue xdmValue) throws SaxonApiException {
        RawDestination rawDestination;
        Objects.requireNonNull(xdmValue);
        rawDestination = new RawDestination();
        applyTemplates(xdmValue, rawDestination);
        return rawDestination.getXdmValue();
    }
}
