package net.p110sf.saxon.lib;

import java.net.URISyntaxException;
import java.util.ArrayList;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.functions.ResolveURI;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class StandardModuleURIResolver implements ModuleURIResolver {

    /* renamed from: a */
    public Configuration f100578a;

    public StandardModuleURIResolver() {
        this.f100578a = null;
    }

    /* renamed from: a */
    public final StreamSource m63283a(Source source) throws XPathException {
        if (source instanceof StreamSource) {
            return (StreamSource) source;
        }
        if (source instanceof SAXSource) {
            return ResourceResolverWrappingURIResolver.convertToStreamSource((SAXSource) source);
        }
        XPathException xPathException = new XPathException("Resource resolver returned non-StreamSource for XQuery module", "XQST0059");
        xPathException.setIsStaticError(true);
        throw xPathException;
    }

    @Override // net.p110sf.saxon.lib.ModuleURIResolver
    public StreamSource[] resolve(String str, String str2, String[] strArr) throws XPathException {
        if (this.f100578a == null) {
            throw new NullPointerException("No Configuration available in StandardModuleResolver");
        }
        StreamSource resolveModuleURI = resolveModuleURI(str, str2);
        if (resolveModuleURI != null) {
            return new StreamSource[]{resolveModuleURI};
        }
        if (strArr.length == 0) {
            XPathException xPathException = new XPathException("Cannot locate module for namespace " + str);
            xPathException.setErrorCode("XQST0059");
            xPathException.setIsStaticError(true);
            throw xPathException;
        }
        ArrayList arrayList = new ArrayList();
        for (String str3 : strArr) {
            StreamSource resolveLocationHint = resolveLocationHint(str2, str3);
            if (resolveLocationHint != null) {
                arrayList.add(resolveLocationHint);
            }
        }
        return (StreamSource[]) arrayList.toArray(new StreamSource[0]);
    }

    public StreamSource resolveLocationHint(String str, String str2) throws XPathException {
        ResourceRequest resourceRequest = new ResourceRequest();
        resourceRequest.baseUri = str;
        resourceRequest.relativeUri = str2;
        resourceRequest.nature = ResourceRequest.XQUERY_NATURE;
        try {
            resourceRequest.uri = ResolveURI.makeAbsolute(str2, str).toString();
            Source resolve = resourceRequest.resolve(this.f100578a.getResourceResolver(), new DirectResourceResolver(this.f100578a));
            if (resolve == null) {
                return null;
            }
            return m63283a(resolve);
        } catch (URISyntaxException e) {
            XPathException xPathException = new XPathException("Cannot resolve relative URI " + resourceRequest.relativeUri, e);
            xPathException.setErrorCode("XQST0059");
            xPathException.setIsStaticError(true);
            throw xPathException;
        }
    }

    public StreamSource resolveModuleURI(String str, String str2) {
        Source source;
        try {
            if (this.f100578a != null) {
                ResourceRequest resourceRequest = new ResourceRequest();
                resourceRequest.uri = str;
                resourceRequest.uriIsNamespace = true;
                resourceRequest.baseUri = str2;
                resourceRequest.nature = ResourceRequest.XQUERY_NATURE;
                source = this.f100578a.getResourceResolver().resolve(resourceRequest);
            } else {
                source = null;
            }
            if (source != null) {
                return m63283a(source);
            }
        } catch (TransformerException unused) {
        }
        return null;
    }

    public void setConfiguration(Configuration configuration) {
        if (this.f100578a == null) {
            this.f100578a = configuration;
        }
    }

    public StandardModuleURIResolver(Configuration configuration) {
        this.f100578a = configuration;
    }
}
