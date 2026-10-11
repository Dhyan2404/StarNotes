package net.p110sf.saxon.jaxp;

import java.io.IOException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.sax.SAXSource;
import net.p110sf.saxon.Version;
import net.p110sf.saxon.event.ContentHandlerProxy;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.ext.LexicalHandler;

/* loaded from: classes11.dex */
public class FilterImpl extends AbstractXMLFilter {

    /* renamed from: h */
    public final TransformerImpl f100444h;

    public FilterImpl(TransformerImpl transformerImpl) {
        this.f100444h = transformerImpl;
    }

    public Transformer getTransformer() {
        return this.f100444h;
    }

    @Override // org.xml.sax.XMLReader
    public void parse(InputSource inputSource) throws IOException, SAXException {
        if (this.f100441e == null) {
            try {
                this.f100441e = Version.platform.loadParser();
            } catch (Exception e) {
                throw new SAXException(e);
            }
        }
        SAXSource sAXSource = new SAXSource();
        sAXSource.setInputSource(inputSource);
        sAXSource.setXMLReader(this.f100441e);
        ContentHandlerProxy contentHandlerProxy = new ContentHandlerProxy();
        contentHandlerProxy.setPipelineConfiguration(this.f100444h.getConfiguration().makePipelineConfiguration());
        contentHandlerProxy.setUnderlyingContentHandler(this.f100442f);
        LexicalHandler lexicalHandler = this.f100443g;
        if (lexicalHandler != null) {
            contentHandlerProxy.setLexicalHandler(lexicalHandler);
        }
        try {
            contentHandlerProxy.setOutputProperties(this.f100444h.getOutputProperties());
            this.f100444h.transform(sAXSource, contentHandlerProxy);
        } catch (TransformerException e2) {
            Throwable exception = e2.getException();
            if (exception != null && (exception instanceof SAXException)) {
                throw ((SAXException) exception);
            }
            if (exception != null && (exception instanceof IOException)) {
                throw ((IOException) exception);
            }
            throw new SAXException(e2);
        }
    }
}
