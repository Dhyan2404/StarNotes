package net.p110sf.saxon.jaxp;

import com.sunia.HTREnginev2.AbstractC13810h5;
import java.util.HashMap;
import java.util.Map;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.URIResolver;
import javax.xml.transform.sax.TransformerHandler;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.ReceivingContentHandler;
import net.p110sf.saxon.event.TreeReceiver;
import net.p110sf.saxon.expr.instruct.GlobalParameterSet;
import net.p110sf.saxon.s9api.Destination;
import net.p110sf.saxon.s9api.QName;
import net.p110sf.saxon.s9api.SaxonApiException;
import net.p110sf.saxon.s9api.XdmValue;
import net.p110sf.saxon.s9api.Xslt30Transformer;
import net.p110sf.saxon.s9api.XsltExecutable;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XsltController;
import org.xml.sax.XMLFilter;

/* loaded from: classes11.dex */
public class StreamingTransformerImpl extends AbstractC13810h5 {

    /* renamed from: k */
    public final Xslt30Transformer f100457k;

    /* renamed from: l */
    public final Map<QName, XdmValue> f100458l;

    /* loaded from: classes11.dex */
    public class StreamingTransformerHandler extends ReceivingContentHandler implements TransformerHandler {

        /* renamed from: x */
        public final XsltController f100459x;

        /* renamed from: y */
        public String f100460y;

        public StreamingTransformerHandler(XsltController xsltController) {
            this.f100459x = xsltController;
        }

        @Override // javax.xml.transform.sax.TransformerHandler
        public String getSystemId() {
            return this.f100460y;
        }

        @Override // javax.xml.transform.sax.TransformerHandler
        public Transformer getTransformer() {
            return StreamingTransformerImpl.this;
        }

        @Override // javax.xml.transform.sax.TransformerHandler
        public void setResult(Result result) throws IllegalArgumentException {
            try {
                PipelineConfiguration makePipelineConfiguration = this.f100459x.makePipelineConfiguration();
                setPipelineConfiguration(makePipelineConfiguration);
                this.f100459x.initializeController(new GlobalParameterSet());
                Receiver receiver = this.f100459x.getConfiguration().getSerializerFactory().getReceiver(result, new SerializationProperties(), makePipelineConfiguration);
                XsltController xsltController = this.f100459x;
                setReceiver(xsltController.getStreamingReceiver(xsltController.getInitialMode(), new TreeReceiver(receiver)));
            } catch (XPathException e) {
                throw new IllegalArgumentException(e);
            }
        }

        @Override // javax.xml.transform.sax.TransformerHandler
        public void setSystemId(String str) {
            this.f100460y = str;
        }
    }

    public StreamingTransformerImpl(XsltExecutable xsltExecutable, Xslt30Transformer xslt30Transformer) {
        super(xsltExecutable);
        this.f100458l = new HashMap();
        this.f100457k = xslt30Transformer;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13810h5, net.p110sf.saxon.jaxp.IdentityTransformer, javax.xml.transform.Transformer
    public void clearParameters() {
        super.clearParameters();
        this.f100458l.clear();
    }

    @Override // com.sunia.HTREnginev2.AbstractC13810h5, net.p110sf.saxon.jaxp.IdentityTransformer, javax.xml.transform.Transformer
    public /* bridge */ /* synthetic */ Object getParameter(String str) {
        return super.getParameter(str);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13810h5
    public Controller getUnderlyingController() {
        return this.f100457k.getUnderlyingController();
    }

    @Override // com.sunia.HTREnginev2.AbstractC13810h5
    public /* bridge */ /* synthetic */ XsltExecutable getUnderlyingXsltExecutable() {
        return super.getUnderlyingXsltExecutable();
    }

    public Xslt30Transformer getUnderlyingXsltTransformer() {
        return this.f100457k;
    }

    public TransformerHandler newTransformerHandler() throws XPathException {
        return new StreamingTransformerHandler(this.f100457k.getUnderlyingController());
    }

    @Override // com.sunia.HTREnginev2.AbstractC13810h5
    public XMLFilter newXMLFilter() {
        return new StreamingFilterImpl(this.f100457k);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13810h5
    public void setConvertedParameter(QName qName, XdmValue xdmValue) {
        this.f100458l.put(qName, xdmValue);
    }

    @Override // net.p110sf.saxon.jaxp.IdentityTransformer, javax.xml.transform.Transformer
    public void setErrorListener(ErrorListener errorListener) throws IllegalArgumentException {
        super.setErrorListener(errorListener);
        this.f100457k.setErrorListener(errorListener);
    }

    public void setInitialMode(String str) throws IllegalArgumentException {
        try {
            this.f100457k.setInitialMode(QName.fromClarkName(str));
        } catch (SaxonApiException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @Override // com.sunia.HTREnginev2.AbstractC13810h5, net.p110sf.saxon.jaxp.IdentityTransformer, javax.xml.transform.Transformer
    public /* bridge */ /* synthetic */ void setParameter(String str, Object obj) {
        super.setParameter(str, obj);
    }

    @Override // net.p110sf.saxon.jaxp.IdentityTransformer, javax.xml.transform.Transformer
    public void setURIResolver(URIResolver uRIResolver) {
        super.setURIResolver(uRIResolver);
        this.f100457k.setURIResolver(uRIResolver);
    }

    @Override // net.p110sf.saxon.jaxp.IdentityTransformer, javax.xml.transform.Transformer
    public void transform(Source source, Result result) throws XPathException {
        try {
            this.f100457k.setStylesheetParameters(this.f100458l);
            if (result.getSystemId() != null) {
                this.f100457k.setBaseOutputURI(result.getSystemId());
            }
            Destination m54398b = m54398b(result);
            if (m54398b == null) {
                transform(source, getConfiguration().getSerializerFactory().getReceiver(result, new SerializationProperties(getLocalOutputProperties()), getConfiguration().makePipelineConfiguration()));
            } else {
                this.f100457k.applyTemplates(source, m54398b);
            }
        } catch (SaxonApiException e) {
            throw XPathException.makeXPathException(e);
        }
    }
}
