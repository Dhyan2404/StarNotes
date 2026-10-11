package org.apache.xerces.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.grammars.XMLGrammarDescription;
import org.apache.xerces.xni.parser.XMLEntityResolver;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSResourceResolver;

/* loaded from: classes13.dex */
public class DOMEntityResolverWrapper implements XMLEntityResolver {

    /* renamed from: e */
    public static final String f113483e = "http://www.w3.org/TR/REC-xml";

    /* renamed from: f */
    public static final String f113484f = "http://www.w3.org/2001/XMLSchema";
    protected LSResourceResolver fEntityResolver;

    public DOMEntityResolverWrapper() {
    }

    /* renamed from: a */
    public final String m70566a(XMLResourceIdentifier xMLResourceIdentifier) {
        return ((xMLResourceIdentifier instanceof XMLGrammarDescription) && "http://www.w3.org/2001/XMLSchema".equals(((XMLGrammarDescription) xMLResourceIdentifier).getGrammarType())) ? "http://www.w3.org/2001/XMLSchema" : "http://www.w3.org/TR/REC-xml";
    }

    public LSResourceResolver getEntityResolver() {
        return this.fEntityResolver;
    }

    @Override // org.apache.xerces.xni.parser.XMLEntityResolver
    public XMLInputSource resolveEntity(XMLResourceIdentifier xMLResourceIdentifier) throws XNIException, IOException {
        String m70566a;
        String namespace;
        String publicId;
        String literalSystemId;
        String baseSystemId;
        LSResourceResolver lSResourceResolver = this.fEntityResolver;
        if (lSResourceResolver == null) {
            return null;
        }
        if (xMLResourceIdentifier == null) {
            m70566a = null;
            namespace = null;
            publicId = null;
            literalSystemId = null;
            baseSystemId = null;
        } else {
            m70566a = m70566a(xMLResourceIdentifier);
            namespace = xMLResourceIdentifier.getNamespace();
            publicId = xMLResourceIdentifier.getPublicId();
            literalSystemId = xMLResourceIdentifier.getLiteralSystemId();
            baseSystemId = xMLResourceIdentifier.getBaseSystemId();
        }
        LSInput resolveResource = lSResourceResolver.resolveResource(m70566a, namespace, publicId, literalSystemId, baseSystemId);
        if (resolveResource == null) {
            return null;
        }
        String publicId2 = resolveResource.getPublicId();
        String systemId = resolveResource.getSystemId();
        String baseURI = resolveResource.getBaseURI();
        InputStream byteStream = resolveResource.getByteStream();
        Reader characterStream = resolveResource.getCharacterStream();
        String encoding = resolveResource.getEncoding();
        String stringData = resolveResource.getStringData();
        XMLInputSource xMLInputSource = new XMLInputSource(publicId2, systemId, baseURI);
        if (characterStream != null) {
            xMLInputSource.setCharacterStream(characterStream);
        } else if (byteStream != null) {
            xMLInputSource.setByteStream(byteStream);
        } else if (stringData != null && stringData.length() != 0) {
            xMLInputSource.setCharacterStream(new StringReader(stringData));
        }
        xMLInputSource.setEncoding(encoding);
        return xMLInputSource;
    }

    public void setEntityResolver(LSResourceResolver lSResourceResolver) {
        this.fEntityResolver = lSResourceResolver;
    }

    public DOMEntityResolverWrapper(LSResourceResolver lSResourceResolver) {
        setEntityResolver(lSResourceResolver);
    }
}
