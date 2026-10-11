package net.p110sf.saxon.expr.parser;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Iterator;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Version;
import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.trans.DecimalFormatManager;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class RetainedStaticContext implements NamespaceResolver {

    /* renamed from: e */
    public final Configuration f99954e;

    /* renamed from: f */
    public PackageData f99955f;

    /* renamed from: g */
    public URI f99956g;

    /* renamed from: h */
    public String f99957h;

    /* renamed from: i */
    public String f99958i;

    /* renamed from: j */
    public NamespaceResolver f99959j;

    /* renamed from: k */
    public String f99960k;

    /* renamed from: l */
    public String f99961l;

    /* renamed from: m */
    public DecimalFormatManager f99962m;

    /* renamed from: n */
    public boolean f99963n;

    public RetainedStaticContext(Configuration configuration) {
        this.f99960k = "http://www.w3.org/2005/xpath-functions";
        this.f99954e = configuration;
        this.f99955f = new PackageData(configuration);
        this.f99959j = NamespaceMap.emptyMap();
        this.f99958i = NamespaceConstant.CODEPOINT_COLLATION_URI;
    }

    public void declareNamespace(String str, String str2) {
        NamespaceResolver namespaceResolver = this.f99959j;
        if (!(namespaceResolver instanceof NamespaceMap)) {
            throw new UnsupportedOperationException();
        }
        this.f99959j = ((NamespaceMap) namespaceResolver).put(str, str2);
    }

    public boolean declaresSameNamespaces(RetainedStaticContext retainedStaticContext) {
        return this.f99959j.equals(retainedStaticContext.f99959j);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof RetainedStaticContext)) {
            return false;
        }
        RetainedStaticContext retainedStaticContext = (RetainedStaticContext) obj;
        return ExpressionTool.equalOrNull(this.f99957h, retainedStaticContext.f99957h) && this.f99958i.equals(retainedStaticContext.f99958i) && this.f99960k.equals(retainedStaticContext.f99960k) && this.f99959j.equals(retainedStaticContext.f99959j);
    }

    public Configuration getConfiguration() {
        return this.f99954e;
    }

    public DecimalFormatManager getDecimalFormatManager() {
        return this.f99962m;
    }

    public String getDefaultCollationName() {
        return this.f99958i;
    }

    public String getDefaultElementNamespace() {
        String str = this.f99961l;
        return str == null ? "" : str;
    }

    public String getDefaultFunctionNamespace() {
        return this.f99960k;
    }

    public PackageData getPackageData() {
        return this.f99955f;
    }

    public URI getStaticBaseUri() throws XPathException {
        URI uri = this.f99956g;
        if (uri != null) {
            return uri;
        }
        String str = this.f99957h;
        if (str == null || str.isEmpty()) {
            return null;
        }
        throw new XPathException("Supplied static base URI " + this.f99957h + " is not a valid URI");
    }

    public String getStaticBaseUriString() {
        return this.f99957h;
    }

    @Override // net.p110sf.saxon.om.NamespaceResolver
    public String getURIForPrefix(String str, boolean z) {
        return this.f99959j.getURIForPrefix(str, z);
    }

    public int hashCode() {
        String str = this.f99957h;
        return this.f99959j.hashCode() ^ ((this.f99958i.hashCode() ^ (str != null ? 609733582 ^ str.hashCode() : 609733582)) ^ this.f99960k.hashCode());
    }

    public boolean isBackwardsCompatibility() {
        return this.f99963n;
    }

    @Override // net.p110sf.saxon.om.NamespaceResolver
    public Iterator<String> iteratePrefixes() {
        return this.f99959j.iteratePrefixes();
    }

    public void setBackwardsCompatibility(boolean z) {
        this.f99963n = z;
    }

    public void setDecimalFormatManager(DecimalFormatManager decimalFormatManager) {
        this.f99962m = decimalFormatManager;
    }

    public void setDefaultCollationName(String str) {
        this.f99958i = str;
    }

    public void setDefaultElementNamespace(String str) {
        this.f99961l = str;
    }

    public void setDefaultFunctionNamespace(String str) {
        this.f99960k = str;
    }

    public void setNamespaces(NamespaceResolver namespaceResolver) {
        this.f99959j = namespaceResolver;
    }

    public void setPackageData(PackageData packageData) {
        this.f99955f = packageData;
    }

    public void setStaticBaseUriString(String str) {
        if (str != null) {
            this.f99957h = str;
            try {
                this.f99956g = new URI(str);
            } catch (URISyntaxException unused) {
                this.f99956g = null;
            }
        }
    }

    public RetainedStaticContext(StaticContext staticContext) {
        this.f99960k = "http://www.w3.org/2005/xpath-functions";
        this.f99954e = staticContext.getConfiguration();
        this.f99955f = staticContext.getPackageData();
        if (staticContext.getStaticBaseURI() != null) {
            this.f99957h = staticContext.getStaticBaseURI();
            try {
                this.f99956g = ExpressionTool.getBaseURI(staticContext, null, true);
            } catch (XPathException unused) {
                this.f99956g = null;
            }
        }
        this.f99958i = staticContext.getDefaultCollationName();
        this.f99962m = staticContext.getDecimalFormatManager();
        this.f99961l = staticContext.getDefaultElementNamespace();
        this.f99960k = staticContext.getDefaultFunctionNamespace();
        this.f99963n = staticContext.isInBackwardsCompatibleMode();
        if (Version.platform.JAXPStaticContextCheck(this, staticContext)) {
            return;
        }
        NamespaceResolver namespaceResolver = staticContext.getNamespaceResolver();
        if (namespaceResolver instanceof NamespaceMap) {
            this.f99959j = namespaceResolver;
            return;
        }
        NamespaceMap emptyMap = NamespaceMap.emptyMap();
        Iterator<String> iteratePrefixes = namespaceResolver.iteratePrefixes();
        while (iteratePrefixes.hasNext()) {
            String next = iteratePrefixes.next();
            if (!next.equals("xml")) {
                emptyMap = emptyMap.put(next, namespaceResolver.getURIForPrefix(next, true));
            }
        }
        this.f99959j = emptyMap;
    }
}
