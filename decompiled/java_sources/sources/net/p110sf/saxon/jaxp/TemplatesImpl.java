package net.p110sf.saxon.jaxp;

import java.util.Properties;
import javax.xml.transform.Templates;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import net.p110sf.saxon.s9api.XsltExecutable;

/* loaded from: classes11.dex */
public class TemplatesImpl implements Templates {

    /* renamed from: e */
    public final TransformerFactory f100469e;

    /* renamed from: f */
    public final XsltExecutable f100470f;

    /* renamed from: g */
    public boolean f100471g;

    public TemplatesImpl(TransformerFactory transformerFactory, XsltExecutable xsltExecutable) {
        this.f100469e = transformerFactory;
        this.f100470f = xsltExecutable;
    }

    public XsltExecutable getImplementation() {
        return this.f100470f;
    }

    @Override // javax.xml.transform.Templates
    public Properties getOutputProperties() {
        return new Properties(this.f100470f.getUnderlyingCompiledStylesheet().getPrimarySerializationProperties().getProperties());
    }

    public boolean isForceStreaming() {
        return this.f100471g;
    }

    @Override // javax.xml.transform.Templates
    public Transformer newTransformer() {
        Transformer transformerImpl;
        if (this.f100471g) {
            XsltExecutable xsltExecutable = this.f100470f;
            transformerImpl = new StreamingTransformerImpl(xsltExecutable, xsltExecutable.load30());
        } else {
            XsltExecutable xsltExecutable2 = this.f100470f;
            transformerImpl = new TransformerImpl(xsltExecutable2, xsltExecutable2.load());
        }
        if (this.f100469e.getURIResolver() != null) {
            transformerImpl.setURIResolver(this.f100469e.getURIResolver());
        }
        return transformerImpl;
    }

    public void setForceStreaming(boolean z) {
        this.f100471g = z;
    }
}
