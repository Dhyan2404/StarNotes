package net.p110sf.saxon.lib;

import java.io.IOException;
import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.trans.XPathException;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.ext.EntityResolver2;

/* loaded from: classes11.dex */
public class EntityResolverWrappingResourceResolver implements EntityResolver2 {

    /* renamed from: e */
    public final ResourceResolver f100496e;

    public EntityResolverWrappingResourceResolver(ResourceResolver resourceResolver) {
        this.f100496e = resourceResolver;
    }

    @Override // org.xml.sax.ext.EntityResolver2
    public InputSource getExternalSubset(String str, String str2) throws SAXException {
        return null;
    }

    @Override // org.xml.sax.ext.EntityResolver2
    public InputSource resolveEntity(String str, String str2, String str3, String str4) throws SAXException, IOException {
        ResourceResolver resourceResolver = this.f100496e;
        if (resourceResolver instanceof EntityResolver2) {
            return ((EntityResolver2) resourceResolver).resolveEntity(str, str2, str3, str4);
        }
        ResourceRequest resourceRequest = new ResourceRequest();
        resourceRequest.baseUri = str3;
        resourceRequest.entityName = str;
        resourceRequest.publicId = str2;
        resourceRequest.uri = str4;
        resourceRequest.nature = ResourceRequest.EXTERNAL_ENTITY_NATURE;
        resourceRequest.purpose = "resolveEntity()";
        try {
            Source resolve = this.f100496e.resolve(resourceRequest);
            if (resolve == null) {
                return null;
            }
            if (resolve instanceof StreamSource) {
                InputSource inputSource = new InputSource(resolve.getSystemId());
                StreamSource streamSource = (StreamSource) resolve;
                if (streamSource.getInputStream() != null) {
                    inputSource.setByteStream(streamSource.getInputStream());
                }
                if (streamSource.getReader() != null) {
                    inputSource.setCharacterStream(streamSource.getReader());
                }
                return inputSource;
            }
            throw new SAXException("Unexpected Source type in resolveEntity()");
        } catch (XPathException e) {
            throw new SAXException(e);
        }
    }

    @Override // org.xml.sax.EntityResolver
    public InputSource resolveEntity(String str, String str2) throws SAXException, IOException {
        return resolveEntity(null, str, null, str2);
    }
}
