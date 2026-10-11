package net.p110sf.saxon.jaxp;

import java.util.Properties;
import javax.xml.transform.Result;
import javax.xml.transform.Transformer;
import javax.xml.transform.sax.TransformerHandler;
import javax.xml.transform.stream.StreamResult;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.ReceivingContentHandler;
import net.p110sf.saxon.event.Stripper;
import net.p110sf.saxon.om.AllElementsSpaceStrippingRule;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.trans.XPathException;
import org.xml.sax.SAXException;

/* loaded from: classes11.dex */
public class IdentityTransformerHandler extends ReceivingContentHandler implements TransformerHandler {

    /* renamed from: x */
    public Result f100449x;

    /* renamed from: y */
    public String f100450y;

    /* renamed from: z */
    public final IdentityTransformer f100451z;

    public IdentityTransformerHandler(IdentityTransformer identityTransformer) {
        this.f100451z = identityTransformer;
        setPipelineConfiguration(identityTransformer.getConfiguration().makePipelineConfiguration());
    }

    public Result getResult() {
        return this.f100449x;
    }

    @Override // javax.xml.transform.sax.TransformerHandler
    public String getSystemId() {
        return this.f100450y;
    }

    @Override // javax.xml.transform.sax.TransformerHandler
    public Transformer getTransformer() {
        return this.f100451z;
    }

    @Override // javax.xml.transform.sax.TransformerHandler
    public void setResult(Result result) {
        if (result == null) {
            throw new IllegalArgumentException("Result must not be null");
        }
        this.f100449x = result;
    }

    @Override // javax.xml.transform.sax.TransformerHandler
    public void setSystemId(String str) {
        this.f100450y = str;
    }

    @Override // net.p110sf.saxon.event.ReceivingContentHandler, org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
        if (this.f100449x == null) {
            this.f100449x = new StreamResult(System.out);
        }
        try {
            Properties outputProperties = this.f100451z.getOutputProperties();
            Configuration configuration = getConfiguration();
            Receiver receiver = configuration.getSerializerFactory().getReceiver(this.f100449x, new SerializationProperties(outputProperties));
            setPipelineConfiguration(receiver.getPipelineConfiguration());
            if (configuration.isStripsAllWhiteSpace()) {
                receiver = new Stripper(AllElementsSpaceStrippingRule.getInstance(), receiver);
            }
            setReceiver(receiver);
            super.startDocument();
        } catch (XPathException e) {
            throw new SAXException(e);
        }
    }
}
