package net.p110sf.saxon.s9api;

import java.io.File;
import java.net.URI;
import java.util.Objects;
import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.FilterFactory;
import net.p110sf.saxon.event.NamespaceReducer;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.ReceivingContentHandler;
import net.p110sf.saxon.event.Sender;
import net.p110sf.saxon.expr.EarlyEvaluationContext;
import net.p110sf.saxon.expr.JPConverter;
import net.p110sf.saxon.lib.AugmentedSource;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.om.NoElementsSpaceStrippingRule;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.TreeModel;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class DocumentBuilder {

    /* renamed from: a */
    public final Configuration f101333a;

    /* renamed from: b */
    public SchemaValidator f101334b;

    /* renamed from: c */
    public boolean f101335c;

    /* renamed from: d */
    public boolean f101336d;

    /* renamed from: e */
    public TreeModel f101337e = TreeModel.TINY_TREE;

    /* renamed from: f */
    public WhitespaceStrippingPolicy f101338f = WhitespaceStrippingPolicy.UNSPECIFIED;

    /* renamed from: g */
    public URI f101339g;

    /* renamed from: h */
    public XQueryExecutable f101340h;

    /* renamed from: net.sf.saxon.s9api.DocumentBuilder$a */
    /* loaded from: classes11.dex */
    public static class C18457a extends ReceivingContentHandler implements BuildingContentHandler {

        /* renamed from: x */
        public final Builder f101341x;

        public C18457a(Receiver receiver, Builder builder) {
            setReceiver(receiver);
            setPipelineConfiguration(receiver.getPipelineConfiguration());
            this.f101341x = builder;
        }

        @Override // net.p110sf.saxon.s9api.BuildingContentHandler
        public XdmNode getDocumentNode() {
            return new XdmNode(this.f101341x.getCurrentRoot());
        }
    }

    public DocumentBuilder(Configuration configuration) {
        this.f101333a = configuration;
    }

    /* renamed from: a */
    public final ParseOptions m63651a(Source source) throws SaxonApiException {
        URI uri;
        WhitespaceStrippingPolicy whitespaceStrippingPolicy = this.f101338f;
        WhitespaceStrippingPolicy whitespaceStrippingPolicy2 = WhitespaceStrippingPolicy.UNSPECIFIED;
        if (whitespaceStrippingPolicy != whitespaceStrippingPolicy2 && whitespaceStrippingPolicy != WhitespaceStrippingPolicy.IGNORABLE && whitespaceStrippingPolicy.ordinal() != 4) {
            if (this.f101335c) {
                throw new SaxonApiException("When DTD validation is used, the whitespace stripping policy must be IGNORABLE");
            }
            if (this.f101334b != null) {
                throw new SaxonApiException("When schema validation is used, the whitespace stripping policy must be IGNORABLE");
            }
        }
        ParseOptions parseOptions = new ParseOptions(this.f101333a.getParseOptions());
        parseOptions.setDTDValidationMode(this.f101335c ? 1 : 4);
        SchemaValidator schemaValidator = this.f101334b;
        if (schemaValidator != null) {
            parseOptions.setSchemaValidationMode(schemaValidator.isLax() ? 2 : 1);
            if (this.f101334b.getDocumentElementName() != null) {
                parseOptions.setTopLevelElement(this.f101334b.getDocumentElementName().getStructuredQName());
            }
            if (this.f101334b.getDocumentElementType() != null) {
                parseOptions.setTopLevelType(this.f101334b.getDocumentElementType());
            }
            parseOptions.setUseXsiSchemaLocation(this.f101334b.isUseXsiSchemaLocation());
            parseOptions.setExpandAttributeDefaults(this.f101334b.isExpandAttributeDefaults());
            parseOptions.setValidationParams(this.f101334b.getValidationParameters());
            parseOptions.setInvalidityHandler(this.f101334b.getInvalidityHandler());
        }
        TreeModel treeModel = this.f101337e;
        if (treeModel != null) {
            parseOptions.setModel(treeModel);
        }
        WhitespaceStrippingPolicy whitespaceStrippingPolicy3 = this.f101338f;
        if (whitespaceStrippingPolicy3 != null && whitespaceStrippingPolicy3 != whitespaceStrippingPolicy2) {
            if (whitespaceStrippingPolicy3.ordinal() == 4) {
                parseOptions.setSpaceStrippingRule(NoElementsSpaceStrippingRule.getInstance());
                parseOptions.addFilter(this.f101338f.makeStripper());
            } else {
                parseOptions.setSpaceStrippingRule(this.f101338f.getSpaceStrippingRule());
            }
        }
        parseOptions.setLineNumbering(this.f101336d);
        if (source.getSystemId() == null && (uri = this.f101339g) != null) {
            source.setSystemId(uri.toString());
        }
        XQueryExecutable xQueryExecutable = this.f101340h;
        if (xQueryExecutable != null) {
            FilterFactory makeDocumentProjector = this.f101333a.makeDocumentProjector(xQueryExecutable.getUnderlyingCompiledQuery());
            if (makeDocumentProjector != null) {
                parseOptions.addFilter(makeDocumentProjector);
            }
        }
        if (source instanceof AugmentedSource) {
            parseOptions.merge(((AugmentedSource) source).getParseOptions());
        }
        return parseOptions;
    }

    /* renamed from: b */
    public final Receiver m63652b(Receiver receiver, Builder builder) throws SaxonApiException {
        if (this.f101334b == null) {
            return receiver;
        }
        PipelineConfiguration pipelineConfiguration = builder.getPipelineConfiguration();
        Receiver receiver2 = this.f101334b.getReceiver(pipelineConfiguration, this.f101333a.obtainDefaultSerializationProperties());
        receiver2.setPipelineConfiguration(pipelineConfiguration);
        if (receiver2 instanceof ProxyReceiver) {
            ((ProxyReceiver) receiver2).setUnderlyingReceiver(receiver);
        }
        return receiver2;
    }

    public XdmNode build(Source source) throws SaxonApiException {
        Objects.requireNonNull(source, "source");
        try {
            return new XdmNode(this.f101333a.buildDocumentTree(source, m63651a(source)).getRootNode());
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    public URI getBaseURI() {
        return this.f101339g;
    }

    public XQueryExecutable getDocumentProjectionQuery() {
        return this.f101340h;
    }

    public SchemaValidator getSchemaValidator() {
        return this.f101334b;
    }

    public TreeModel getTreeModel() {
        return this.f101337e;
    }

    public WhitespaceStrippingPolicy getWhitespaceStrippingPolicy() {
        return this.f101338f;
    }

    public boolean isDTDValidation() {
        return this.f101335c;
    }

    public boolean isLineNumbering() {
        return this.f101336d;
    }

    public BuildingContentHandler newBuildingContentHandler() throws SaxonApiException {
        Builder makeBuilder = this.f101337e.makeBuilder(this.f101333a.makePipelineConfiguration());
        URI uri = this.f101339g;
        if (uri != null) {
            makeBuilder.setSystemId(uri.toASCIIString());
        }
        makeBuilder.setLineNumbering(this.f101336d);
        return new C18457a(m63652b(new NamespaceReducer(makeBuilder), makeBuilder), makeBuilder);
    }

    public BuildingStreamWriterImpl newBuildingStreamWriter() throws SaxonApiException {
        Builder makeBuilder = this.f101337e.makeBuilder(this.f101333a.makePipelineConfiguration());
        makeBuilder.setLineNumbering(this.f101336d);
        return new BuildingStreamWriterImpl(m63652b(new NamespaceReducer(makeBuilder), makeBuilder), makeBuilder);
    }

    public void parse(Source source, Destination destination) throws SaxonApiException {
        try {
            Sender.send(source, destination.getReceiver(this.f101333a.makePipelineConfiguration(), new SerializationProperties()), m63651a(source));
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    public void setBaseURI(URI uri) {
        if (!uri.isAbsolute()) {
            throw new IllegalArgumentException("Supplied base URI must be absolute");
        }
        this.f101339g = uri;
    }

    public void setDTDValidation(boolean z) {
        this.f101335c = z;
    }

    public void setDocumentProjectionQuery(XQueryExecutable xQueryExecutable) {
        this.f101340h = xQueryExecutable;
    }

    public void setLineNumbering(boolean z) {
        this.f101336d = z;
    }

    public void setSchemaValidator(SchemaValidator schemaValidator) {
        this.f101334b = schemaValidator;
    }

    public void setTreeModel(TreeModel treeModel) {
        this.f101337e = treeModel;
    }

    public void setWhitespaceStrippingPolicy(WhitespaceStrippingPolicy whitespaceStrippingPolicy) {
        this.f101338f = whitespaceStrippingPolicy;
    }

    public XdmNode wrap(Object obj) throws IllegalArgumentException {
        if (obj instanceof NodeInfo) {
            NodeInfo nodeInfo = (NodeInfo) obj;
            if (nodeInfo.getConfiguration().isCompatible(this.f101333a)) {
                return new XdmNode(nodeInfo);
            }
            throw new IllegalArgumentException("Supplied NodeInfo was created using a different Configuration");
        }
        try {
            return XdmItem.wrapItem((NodeInfo) JPConverter.allocate(obj.getClass(), null, this.f101333a).convert(obj, new EarlyEvaluationContext(this.f101333a)));
        } catch (ClassCastException unused) {
            throw new IllegalArgumentException("Class " + obj.getClass() + " is not a recognized external node type");
        } catch (XPathException e) {
            throw new IllegalArgumentException(e.getMessage());
        }
    }

    public void parse(File file, Destination destination) throws SaxonApiException {
        parse(new StreamSource(file), destination);
    }

    public XdmNode build(File file) throws SaxonApiException {
        return build(new StreamSource(file));
    }
}
