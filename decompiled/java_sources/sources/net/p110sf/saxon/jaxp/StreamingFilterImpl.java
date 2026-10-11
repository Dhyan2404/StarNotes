package net.p110sf.saxon.jaxp;

import java.io.IOException;
import javax.xml.transform.sax.SAXSource;
import net.p110sf.saxon.Version;
import net.p110sf.saxon.s9api.SAXDestination;
import net.p110sf.saxon.s9api.SaxonApiException;
import net.p110sf.saxon.s9api.Xslt30Transformer;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.ext.LexicalHandler;

/* loaded from: classes11.dex */
public class StreamingFilterImpl extends AbstractXMLFilter {

    /* renamed from: h */
    public final Xslt30Transformer f100456h;

    public StreamingFilterImpl(Xslt30Transformer xslt30Transformer) {
        this.f100456h = xslt30Transformer;
    }

    public Xslt30Transformer getTransformer() {
        return this.f100456h;
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
        LexicalHandler lexicalHandler = this.f100443g;
        if (lexicalHandler != null && lexicalHandler != this.f100442f) {
            throw new IllegalStateException("ContentHandler and LexicalHandler must be the same object");
        }
        SAXSource sAXSource = new SAXSource();
        sAXSource.setInputSource(inputSource);
        sAXSource.setXMLReader(this.f100441e);
        try {
            this.f100456h.applyTemplates(sAXSource, new SAXDestination(this.f100442f));
        } catch (SaxonApiException e2) {
            throw new SAXException(e2);
        }
    }
}
