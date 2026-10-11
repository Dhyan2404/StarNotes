package net.p110sf.saxon.jaxp;

import javax.xml.transform.Result;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.sax.TransformerHandler;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.ReceivingContentHandler;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.om.NoElementsSpaceStrippingRule;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trans.XsltController;
import net.p110sf.saxon.tree.tiny.TinyBuilder;
import org.xml.sax.SAXException;

/* loaded from: classes11.dex */
public class TransformerHandlerImpl extends ReceivingContentHandler implements TransformerHandler {

    /* renamed from: J */
    public Result f100472J;

    /* renamed from: O */
    public String f100473O;

    /* renamed from: Q */
    public boolean f100474Q = false;

    /* renamed from: x */
    public final TransformerImpl f100475x;

    /* renamed from: y */
    public final Builder f100476y;

    /* renamed from: z */
    public Receiver f100477z;

    public TransformerHandlerImpl(TransformerImpl transformerImpl) {
        this.f100475x = transformerImpl;
        XsltController underlyingController = transformerImpl.getUnderlyingXsltTransformer().getUnderlyingController();
        Configuration configuration = transformerImpl.getConfiguration();
        int schemaValidationMode = underlyingController.getSchemaValidationMode();
        Builder makeBuilder = underlyingController.makeBuilder();
        this.f100476y = makeBuilder;
        if (makeBuilder instanceof TinyBuilder) {
            ((TinyBuilder) makeBuilder).setStatistics(configuration.getTreeStatistics().SOURCE_DOCUMENT_STATISTICS);
        }
        PipelineConfiguration pipelineConfiguration = makeBuilder.getPipelineConfiguration();
        ParseOptions parseOptions = pipelineConfiguration.getParseOptions();
        parseOptions.setCheckEntityReferences(true);
        setPipelineConfiguration(pipelineConfiguration);
        this.f100477z = underlyingController.makeStripper(makeBuilder);
        if (underlyingController.isStylesheetStrippingTypeAnnotations()) {
            this.f100477z = configuration.getAnnotationStripper(this.f100477z);
        }
        if (schemaValidationMode != 3) {
            parseOptions.setSchemaValidationMode(schemaValidationMode);
            parseOptions.setSpaceStrippingRule(NoElementsSpaceStrippingRule.getInstance());
            this.f100477z = configuration.getDocumentValidator(this.f100477z, getSystemId(), parseOptions, null);
        }
        setReceiver(this.f100477z);
    }

    @Override // net.p110sf.saxon.event.ReceivingContentHandler, org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
        super.endDocument();
        NodeInfo currentRoot = this.f100476y.getCurrentRoot();
        if (currentRoot == null) {
            throw new SAXException("No source document has been built");
        }
        currentRoot.getTreeInfo().setSpaceStrippingRule(this.f100475x.getUnderlyingXsltTransformer().getUnderlyingController().getSpaceStrippingRule());
        this.f100476y.reset();
        try {
            this.f100475x.transform(currentRoot.asActiveSource(), this.f100472J);
        } catch (TransformerException e) {
            throw new SAXException(e);
        }
    }

    public Result getResult() {
        return this.f100472J;
    }

    @Override // javax.xml.transform.sax.TransformerHandler
    public String getSystemId() {
        return this.f100473O;
    }

    @Override // javax.xml.transform.sax.TransformerHandler
    public Transformer getTransformer() {
        return this.f100475x;
    }

    @Override // javax.xml.transform.sax.TransformerHandler
    public void setResult(Result result) {
        if (result == null) {
            throw new IllegalArgumentException("Result must not be null");
        }
        this.f100472J = result;
    }

    @Override // javax.xml.transform.sax.TransformerHandler
    public void setSystemId(String str) {
        this.f100473O = str;
        this.f100477z.setSystemId(str);
    }

    @Override // net.p110sf.saxon.event.ReceivingContentHandler, org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
        if (this.f100474Q) {
            throw new UnsupportedOperationException("The TransformerHandler is not serially reusable. The startDocument() method must be called once only.");
        }
        this.f100474Q = true;
        super.startDocument();
    }
}
