package net.p110sf.saxon.lib;

import java.net.URISyntaxException;
import javax.xml.transform.Source;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class ResourceRequest {
    public static final String DTD_NATURE = "https://www.iana.org/assignments/media-types/application/xml-dtd";
    public static final String EXTERNAL_ENTITY_NATURE = "https://www.iana.org/assignments/media-types/application/xml-external-parsed-entity";
    public static final String TEXT_NATURE = "https://www.iana.org/assignments/media-types/text/plain";
    public static final String XML_NATURE = "https://www.iana.org/assignments/media-types/application/xml";
    public static final String XQUERY_NATURE = "https://www.iana.org/assignments/media-types/application/xquery";
    public static final String XSD_NATURE = "http://www.w3.org/2001/XMLSchema";
    public static final String XSLT_NATURE = "http://www.w3.org/1999/XSL/Transform";
    public String baseUri;
    public String entityName;
    public String nature;
    public String publicId;
    public String purpose;
    public String relativeUri;
    public boolean streamable;
    public String uri;
    public boolean uriIsNamespace;

    public ResourceRequest copy() {
        ResourceRequest resourceRequest = new ResourceRequest();
        resourceRequest.relativeUri = this.relativeUri;
        resourceRequest.baseUri = this.baseUri;
        resourceRequest.uri = this.uri;
        resourceRequest.uriIsNamespace = this.uriIsNamespace;
        resourceRequest.publicId = this.publicId;
        resourceRequest.purpose = this.purpose;
        resourceRequest.nature = this.nature;
        resourceRequest.entityName = this.entityName;
        resourceRequest.streamable = this.streamable;
        return resourceRequest;
    }

    public Source resolve(ResourceResolver... resourceResolverArr) throws XPathException {
        int length = resourceResolverArr.length;
        int i = 0;
        while (true) {
            Source source = null;
            if (i >= length) {
                return null;
            }
            ResourceResolver resourceResolver = resourceResolverArr[i];
            if (resourceResolver != null) {
                try {
                    source = resourceResolver.resolve(this);
                } catch (XPathException e) {
                    Throwable cause = e.getCause();
                    if (!(cause instanceof IllegalArgumentException)) {
                        throw e;
                    }
                    IllegalArgumentException illegalArgumentException = (IllegalArgumentException) cause;
                    if (illegalArgumentException.getCause() instanceof URISyntaxException) {
                        throw new XPathException("Invalid URI " + this.uri, illegalArgumentException.getCause());
                    }
                }
                if (source != null) {
                    return source;
                }
            }
            i++;
        }
    }
}
