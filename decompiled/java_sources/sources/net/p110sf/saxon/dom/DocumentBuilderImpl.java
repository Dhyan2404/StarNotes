package net.p110sf.saxon.dom;

import java.io.File;
import java.util.Objects;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.transform.sax.SAXSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Sender;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.om.AllElementsSpaceStrippingRule;
import net.p110sf.saxon.om.IgnorableSpaceStrippingRule;
import net.p110sf.saxon.om.NoElementsSpaceStrippingRule;
import net.p110sf.saxon.om.SpaceStrippingRule;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.tiny.TinyBuilder;
import net.p110sf.saxon.tree.tiny.TinyDocumentImpl;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* loaded from: classes11.dex */
public class DocumentBuilderImpl extends DocumentBuilder {

    /* renamed from: e */
    public Configuration f98915e;

    /* renamed from: f */
    public ParseOptions f98916f = new ParseOptions();

    public Configuration getConfiguration() {
        if (this.f98915e == null) {
            this.f98915e = new Configuration();
        }
        return this.f98915e;
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public DOMImplementation getDOMImplementation() {
        return newDocument().getImplementation();
    }

    public ParseOptions getParseOptions() {
        return this.f98916f;
    }

    @Deprecated
    public int getStripSpace() {
        SpaceStrippingRule spaceStrippingRule = this.f98916f.getSpaceStrippingRule();
        if (spaceStrippingRule == AllElementsSpaceStrippingRule.getInstance()) {
            return 2;
        }
        if (spaceStrippingRule == NoElementsSpaceStrippingRule.getInstance()) {
            return 0;
        }
        return (spaceStrippingRule == IgnorableSpaceStrippingRule.getInstance() || spaceStrippingRule == null) ? 1 : 4;
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public boolean isNamespaceAware() {
        return true;
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public boolean isValidating() {
        return this.f98916f.getDTDValidationMode() == 1;
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public boolean isXIncludeAware() {
        return this.f98916f.isXIncludeAware();
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public Document newDocument() {
        throw new UnsupportedOperationException("The only way to build a document using this DocumentBuilder is with the parse() method");
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public Document parse(InputSource inputSource) throws SAXException {
        try {
            if (this.f98915e == null) {
                this.f98915e = new Configuration();
            }
            TinyBuilder tinyBuilder = new TinyBuilder(this.f98915e.makePipelineConfiguration());
            tinyBuilder.setStatistics(this.f98915e.getTreeStatistics().SOURCE_DOCUMENT_STATISTICS);
            SAXSource sAXSource = new SAXSource(inputSource);
            sAXSource.setSystemId(inputSource.getSystemId());
            Sender.send(sAXSource, tinyBuilder, this.f98916f);
            TinyDocumentImpl tinyDocumentImpl = (TinyDocumentImpl) tinyBuilder.getCurrentRoot();
            tinyBuilder.reset();
            return (Document) NodeOverNodeInfo.wrap(tinyDocumentImpl);
        } catch (XPathException e) {
            throw new SAXException(e);
        }
    }

    public void setConfiguration(Configuration configuration) {
        this.f98915e = configuration;
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public void setEntityResolver(EntityResolver entityResolver) {
        this.f98916f.setEntityResolver(entityResolver);
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public void setErrorHandler(ErrorHandler errorHandler) {
        this.f98916f.setErrorHandler(errorHandler);
    }

    public void setParseOptions(ParseOptions parseOptions) {
        this.f98916f = parseOptions;
    }

    @Deprecated
    public void setStripSpace(int i) {
        if (i == 0) {
            this.f98916f.setSpaceStrippingRule(NoElementsSpaceStrippingRule.getInstance());
            return;
        }
        if (i == 1) {
            this.f98916f.setSpaceStrippingRule(IgnorableSpaceStrippingRule.getInstance());
        } else if (i == 2) {
            this.f98916f.setSpaceStrippingRule(AllElementsSpaceStrippingRule.getInstance());
        } else {
            if (i != 3) {
                throw new IllegalArgumentException();
            }
            this.f98916f.setSpaceStrippingRule(null);
        }
    }

    public void setValidating(boolean z) {
        this.f98916f.setDTDValidationMode(z ? 1 : 4);
    }

    public void setXIncludeAware(boolean z) {
        this.f98916f.setXIncludeAware(z);
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public Document parse(File file) throws SAXException {
        Objects.requireNonNull(file);
        return parse(new InputSource(file.toURI().toString()));
    }
}
