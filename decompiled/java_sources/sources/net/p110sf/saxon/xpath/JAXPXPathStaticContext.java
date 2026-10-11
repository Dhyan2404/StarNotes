package net.p110sf.saxon.xpath;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import javax.xml.namespace.NamespaceContext;
import javax.xml.transform.Source;
import javax.xml.xpath.XPathFunctionResolver;
import javax.xml.xpath.XPathVariableResolver;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.sxpath.AbstractStaticContext;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaException;

/* loaded from: classes11.dex */
public class JAXPXPathStaticContext extends AbstractStaticContext implements NamespaceResolver {

    /* renamed from: r */
    public final SlotManager f102956r;

    /* renamed from: s */
    public final XPathFunctionLibrary f102957s;

    /* renamed from: t */
    public NamespaceContext f102958t = new C18582b();

    /* renamed from: u */
    public XPathVariableResolver f102959u;

    /* renamed from: net.sf.saxon.xpath.JAXPXPathStaticContext$b */
    /* loaded from: classes11.dex */
    public static class C18582b implements NamespaceContext, NamespaceResolver {
        public C18582b() {
        }

        @Override // javax.xml.namespace.NamespaceContext
        public String getNamespaceURI(String str) {
            if (str == null) {
                throw new IllegalArgumentException(RequestParameters.PREFIX);
            }
            if (str.equals("")) {
                return "";
            }
            if (str.equals("xml")) {
                return "http://www.w3.org/XML/1998/namespace";
            }
            if (str.equals("xs")) {
                return "http://www.w3.org/2001/XMLSchema";
            }
            if (str.equals("xsi")) {
                return "http://www.w3.org/2001/XMLSchema-instance";
            }
            if (str.equals("saxon")) {
                return NamespaceConstant.SAXON;
            }
            return null;
        }

        @Override // javax.xml.namespace.NamespaceContext
        public String getPrefix(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // javax.xml.namespace.NamespaceContext
        public Iterator getPrefixes(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // net.p110sf.saxon.om.NamespaceResolver
        public String getURIForPrefix(String str, boolean z) {
            return getNamespaceURI(str);
        }

        @Override // net.p110sf.saxon.om.NamespaceResolver
        public Iterator<String> iteratePrefixes() {
            return Arrays.asList("", "xml", "xs", "xsi", "saxon").iterator();
        }
    }

    public JAXPXPathStaticContext(Configuration configuration) {
        setConfiguration(configuration);
        this.f102956r = configuration.makeSlotManager();
        setDefaultFunctionLibrary(31);
        XPathFunctionLibrary xPathFunctionLibrary = new XPathFunctionLibrary();
        this.f102957s = xPathFunctionLibrary;
        addFunctionLibrary(xPathFunctionLibrary);
        setPackageData(new PackageData(getConfiguration()));
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public final Expression bindVariable(StructuredQName structuredQName) throws XPathException {
        if (this.f102959u != null) {
            return new JAXPVariableReference(structuredQName, this.f102959u);
        }
        throw new XPathException("Variable is used in XPath expression, but no JAXP VariableResolver is available");
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public Set<String> getImportedSchemaNamespaces() {
        return getConfiguration().getImportedNamespaces();
    }

    public NamespaceContext getNamespaceContext() {
        return this.f102958t;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public NamespaceResolver getNamespaceResolver() {
        return this;
    }

    public SlotManager getStackFrameMap() {
        return this.f102956r;
    }

    @Override // net.p110sf.saxon.om.NamespaceResolver
    public String getURIForPrefix(String str, boolean z) {
        return str.isEmpty() ? z ? getDefaultElementNamespace() : "" : this.f102958t.getNamespaceURI(str);
    }

    public XPathFunctionResolver getXPathFunctionResolver() {
        XPathFunctionLibrary xPathFunctionLibrary = this.f102957s;
        if (xPathFunctionLibrary != null) {
            return xPathFunctionLibrary.getXPathFunctionResolver();
        }
        return null;
    }

    public XPathVariableResolver getXPathVariableResolver() {
        return this.f102959u;
    }

    public void importSchema(Source source) throws SchemaException {
        getConfiguration().addSchemaSource(source, getConfiguration().makeErrorReporter());
        setSchemaAware(true);
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public boolean isImportedSchema(String str) {
        return getConfiguration().isSchemaAvailable(str);
    }

    @Override // net.p110sf.saxon.om.NamespaceResolver
    public Iterator<String> iteratePrefixes() {
        NamespaceContext namespaceContext = this.f102958t;
        if (namespaceContext instanceof NamespaceResolver) {
            return ((NamespaceResolver) namespaceContext).iteratePrefixes();
        }
        throw new UnsupportedOperationException();
    }

    public void setNamespaceContext(NamespaceContext namespaceContext) {
        this.f102958t = namespaceContext;
    }

    public void setXPathFunctionResolver(XPathFunctionResolver xPathFunctionResolver) {
        XPathFunctionLibrary xPathFunctionLibrary = this.f102957s;
        if (xPathFunctionLibrary != null) {
            xPathFunctionLibrary.setXPathFunctionResolver(xPathFunctionResolver);
        }
    }

    public void setXPathVariableResolver(XPathVariableResolver xPathVariableResolver) {
        this.f102959u = xPathVariableResolver;
    }
}
