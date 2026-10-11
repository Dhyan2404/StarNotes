package net.p110sf.saxon.lib;

import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.Objects;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.trans.XPathException;
import org.xml.sax.InputSource;

/* loaded from: classes11.dex */
public class ResourceResolverWrappingURIResolver implements ResourceResolver {

    /* renamed from: e */
    public final URIResolver f100543e;

    public ResourceResolverWrappingURIResolver(URIResolver uRIResolver) {
        Objects.requireNonNull(uRIResolver);
        this.f100543e = uRIResolver;
    }

    public static StreamSource convertToStreamSource(SAXSource sAXSource) {
        InputSource inputSource = sAXSource.getInputSource();
        StreamSource streamSource = new StreamSource();
        streamSource.setInputStream(inputSource.getByteStream());
        streamSource.setReader(inputSource.getCharacterStream());
        streamSource.setSystemId(inputSource.getSystemId());
        streamSource.setPublicId(inputSource.getPublicId());
        if (inputSource.getEncoding() != null && inputSource.getByteStream() != null && inputSource.getCharacterStream() == null) {
            try {
                streamSource.setReader(new InputStreamReader(inputSource.getByteStream(), inputSource.getEncoding()));
            } catch (UnsupportedEncodingException unused) {
            }
        }
        return streamSource;
    }

    public URIResolver getWrappedURIResolver() {
        return this.f100543e;
    }

    @Override // net.p110sf.saxon.lib.ResourceResolver
    public Source resolve(ResourceRequest resourceRequest) throws XPathException {
        String str = resourceRequest.relativeUri;
        if ((str == null || resourceRequest.baseUri == null) && (str = resourceRequest.uri) == null) {
            return null;
        }
        try {
            Source resolve = this.f100543e.resolve(str, resourceRequest.baseUri);
            return (ResourceRequest.TEXT_NATURE.equals(resourceRequest.nature) && (resolve instanceof SAXSource) && ((SAXSource) resolve).getInputSource() != null) ? convertToStreamSource((SAXSource) resolve) : resolve;
        } catch (TransformerException e) {
            throw XPathException.makeXPathException(e);
        }
    }
}
