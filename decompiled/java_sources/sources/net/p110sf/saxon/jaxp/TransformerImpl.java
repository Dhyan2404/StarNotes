package net.p110sf.saxon.jaxp;

import com.sunia.HTREnginev2.AbstractC13810h5;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.URIResolver;
import javax.xml.transform.sax.TransformerHandler;
import net.p110sf.saxon.lib.ResourceResolverWrappingURIResolver;
import net.p110sf.saxon.s9api.Destination;
import net.p110sf.saxon.s9api.QName;
import net.p110sf.saxon.s9api.SaxonApiException;
import net.p110sf.saxon.s9api.Serializer;
import net.p110sf.saxon.s9api.XdmValue;
import net.p110sf.saxon.s9api.XsltExecutable;
import net.p110sf.saxon.s9api.XsltTransformer;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XsltController;
import org.xml.sax.XMLFilter;

/* loaded from: classes11.dex */
public class TransformerImpl extends AbstractC13810h5 {

    /* renamed from: k */
    public final XsltTransformer f100478k;

    public TransformerImpl(XsltExecutable xsltExecutable, XsltTransformer xsltTransformer) {
        super(xsltExecutable);
        this.f100478k = xsltTransformer;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13810h5, net.p110sf.saxon.jaxp.IdentityTransformer, javax.xml.transform.Transformer
    public void clearParameters() {
        super.clearParameters();
        this.f100478k.clearParameters();
    }

    @Override // com.sunia.HTREnginev2.AbstractC13810h5, net.p110sf.saxon.jaxp.IdentityTransformer, javax.xml.transform.Transformer
    public /* bridge */ /* synthetic */ Object getParameter(String str) {
        return super.getParameter(str);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13810h5
    public /* bridge */ /* synthetic */ XsltExecutable getUnderlyingXsltExecutable() {
        return super.getUnderlyingXsltExecutable();
    }

    public XsltTransformer getUnderlyingXsltTransformer() {
        return this.f100478k;
    }

    public TransformerHandler newTransformerHandler() {
        return new TransformerHandlerImpl(this);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13810h5
    public XMLFilter newXMLFilter() {
        return new FilterImpl(this);
    }

    @Override // net.p110sf.saxon.jaxp.IdentityTransformer, javax.xml.transform.Transformer
    public void reset() {
        super.reset();
        getUnderlyingController().reset();
    }

    @Override // com.sunia.HTREnginev2.AbstractC13810h5
    public void setConvertedParameter(QName qName, XdmValue xdmValue) {
        this.f100478k.setParameter(qName, xdmValue);
    }

    @Override // net.p110sf.saxon.jaxp.IdentityTransformer, javax.xml.transform.Transformer
    public void setErrorListener(ErrorListener errorListener) throws IllegalArgumentException {
        super.setErrorListener(errorListener);
        this.f100478k.setErrorListener(errorListener);
    }

    public void setInitialMode(String str) throws IllegalArgumentException {
        try {
            this.f100478k.setInitialMode(QName.fromClarkName(str));
        } catch (SaxonApiException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public void setInitialTemplate(String str) {
        this.f100478k.setInitialTemplate(QName.fromClarkName(str));
    }

    @Override // com.sunia.HTREnginev2.AbstractC13810h5, net.p110sf.saxon.jaxp.IdentityTransformer, javax.xml.transform.Transformer
    public /* bridge */ /* synthetic */ void setParameter(String str, Object obj) {
        super.setParameter(str, obj);
    }

    @Override // net.p110sf.saxon.jaxp.IdentityTransformer, javax.xml.transform.Transformer
    public void setURIResolver(URIResolver uRIResolver) {
        super.setURIResolver(uRIResolver);
        if (uRIResolver != null) {
            this.f100478k.setResourceResolver(new ResourceResolverWrappingURIResolver(uRIResolver));
        }
    }

    @Override // net.p110sf.saxon.jaxp.IdentityTransformer, javax.xml.transform.Transformer
    public void transform(Source source, Result result) throws XPathException {
        try {
            this.f100478k.setSource(source);
            if (result.getSystemId() != null) {
                this.f100478k.setBaseOutputURI(result.getSystemId());
            }
            Destination m54398b = m54398b(result);
            if (m54398b == null) {
                transform(source, getConfiguration().getSerializerFactory().getReceiver(result, new SerializationProperties(getLocalOutputProperties()), getConfiguration().makePipelineConfiguration()));
                return;
            }
            this.f100478k.setDestination(m54398b);
            this.f100478k.transform();
            if ((m54398b instanceof Serializer) && ((Serializer) m54398b).isMustCloseAfterUse()) {
                m54398b.close();
            }
        } catch (SaxonApiException e) {
            throw XPathException.makeXPathException(e);
        }
    }

    @Override // com.sunia.HTREnginev2.AbstractC13810h5
    public XsltController getUnderlyingController() {
        return this.f100478k.getUnderlyingController();
    }
}
