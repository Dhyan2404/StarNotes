package net.p110sf.saxon.s9api;

import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import javax.xml.transform.URIResolver;
import net.p110sf.saxon.lib.ErrorReporter;
import net.p110sf.saxon.lib.ResourceResolver;
import net.p110sf.saxon.lib.ResourceResolverWrappingURIResolver;
import net.p110sf.saxon.lib.UnparsedTextURIResolver;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.streams.XdmStream;
import net.p110sf.saxon.sxpath.XPathDynamicContext;
import net.p110sf.saxon.sxpath.XPathExpression;
import net.p110sf.saxon.sxpath.XPathVariable;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class XPathSelector implements Iterable<XdmItem> {

    /* renamed from: e */
    public final XPathExpression f101386e;

    /* renamed from: f */
    public final XPathDynamicContext f101387f;

    /* renamed from: g */
    public final Map<StructuredQName, XPathVariable> f101388g;

    public XPathSelector(XPathExpression xPathExpression, Map<StructuredQName, XPathVariable> map) {
        this.f101386e = xPathExpression;
        this.f101388g = map;
        this.f101387f = xPathExpression.createDynamicContext();
    }

    public boolean effectiveBooleanValue() throws SaxonApiException {
        try {
            return this.f101386e.effectiveBooleanValue(this.f101387f);
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    public XdmValue evaluate() throws SaxonApiException {
        try {
            return XdmValue.wrap(SequenceTool.toGroundedValue(this.f101386e.iterate(this.f101387f)));
        } catch (UncheckedXPathException e) {
            throw new SaxonApiException(e);
        } catch (XPathException e2) {
            throw new SaxonApiException(e2);
        }
    }

    public XdmItem evaluateSingle() throws SaxonApiException {
        try {
            Item evaluateSingle = this.f101386e.evaluateSingle(this.f101387f);
            if (evaluateSingle == null) {
                return null;
            }
            return (XdmItem) XdmValue.wrap(evaluateSingle);
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    public XdmItem getContextItem() {
        return XdmItem.wrapItem(this.f101387f.getContextItem());
    }

    public ResourceResolver getResourceResolver() {
        return this.f101387f.getResourceResolver();
    }

    public URIResolver getURIResolver() {
        if (this.f101387f.getResourceResolver() instanceof ResourceResolverWrappingURIResolver) {
            return ((ResourceResolverWrappingURIResolver) this.f101387f.getResourceResolver()).getWrappedURIResolver();
        }
        return null;
    }

    public XPathDynamicContext getUnderlyingXPathContext() {
        return this.f101387f;
    }

    public UnparsedTextURIResolver getUnparsedTextURIResolver() {
        return this.f101387f.getUnparsedTextURIResolver();
    }

    public void setContextItem(XdmItem xdmItem) throws SaxonApiException {
        if (xdmItem == null) {
            throw new NullPointerException("contextItem");
        }
        if (!this.f101386e.getInternalExpression().getPackageData().isSchemaAware()) {
            Item head = xdmItem.getUnderlyingValue().head();
            if ((head instanceof NodeInfo) && ((NodeInfo) head).getTreeInfo().isTyped()) {
                throw new SaxonApiException("The supplied node has been schema-validated, but the XPath expression was compiled without schema-awareness");
            }
        }
        try {
            this.f101387f.setContextItem(xdmItem.getUnderlyingValue());
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    public void setErrorReporter(ErrorReporter errorReporter) {
        this.f101387f.setErrorReporter(errorReporter);
    }

    public void setResourceResolver(ResourceResolver resourceResolver) {
        this.f101387f.setResourceResolver(resourceResolver);
    }

    public void setURIResolver(URIResolver uRIResolver) {
        this.f101387f.setResourceResolver(new ResourceResolverWrappingURIResolver(uRIResolver));
    }

    public void setUnparsedTextResolver(UnparsedTextURIResolver unparsedTextURIResolver) {
        this.f101387f.setUnparsedTextURIResolver(unparsedTextURIResolver);
    }

    public void setVariable(QName qName, XdmValue xdmValue) throws SaxonApiException {
        Objects.requireNonNull(qName, "name");
        Objects.requireNonNull(xdmValue, "value");
        XPathVariable xPathVariable = this.f101388g.get(qName.getStructuredQName());
        if (xPathVariable != null) {
            try {
                this.f101387f.setVariable(xPathVariable, xdmValue.getUnderlyingValue());
            } catch (UncheckedXPathException | XPathException e) {
                throw new SaxonApiException(e);
            }
        } else {
            throw new SaxonApiException(new XPathException("Variable has not been declared: " + qName));
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [net.sf.saxon.s9api.XdmSequenceIterator] */
    public XdmStream<XdmItem> stream() throws SaxonApiUncheckedException {
        return iterator().stream();
    }

    @Override // java.lang.Iterable
    public Iterator<XdmItem> iterator() throws SaxonApiUncheckedException {
        try {
            return new XdmSequenceIterator(this.f101386e.iterate(this.f101387f));
        } catch (XPathException e) {
            throw new SaxonApiUncheckedException(e);
        }
    }
}
