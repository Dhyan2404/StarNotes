package com.sun.org.apache.xerces.internal.util;

import com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription;
import com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSResourceResolver;

/* loaded from: classes10.dex */
public class DOMEntityResolverWrapper implements XMLEntityResolver {
    private static final String XML_TYPE = "http://www.w3.org/TR/REC-xml";
    private static final String XSD_TYPE = "http://www.w3.org/2001/XMLSchema";
    protected LSResourceResolver fEntityResolver;

    public DOMEntityResolverWrapper() {
    }

    private String getType(XMLResourceIdentifier xMLResourceIdentifier) {
        return ((xMLResourceIdentifier instanceof XMLGrammarDescription) && "http://www.w3.org/2001/XMLSchema".equals(((XMLGrammarDescription) xMLResourceIdentifier).getGrammarType())) ? "http://www.w3.org/2001/XMLSchema" : "http://www.w3.org/TR/REC-xml";
    }

    public LSResourceResolver getEntityResolver() {
        return this.fEntityResolver;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver
    public XMLInputSource resolveEntity(XMLResourceIdentifier xMLResourceIdentifier) throws XNIException, IOException {
        String type;
        String namespace;
        String publicId;
        String literalSystemId;
        String baseSystemId;
        LSResourceResolver lSResourceResolver = this.fEntityResolver;
        if (lSResourceResolver == null) {
            return null;
        }
        if (xMLResourceIdentifier == null) {
            type = null;
            namespace = null;
            publicId = null;
            literalSystemId = null;
            baseSystemId = null;
        } else {
            type = getType(xMLResourceIdentifier);
            namespace = xMLResourceIdentifier.getNamespace();
            publicId = xMLResourceIdentifier.getPublicId();
            literalSystemId = xMLResourceIdentifier.getLiteralSystemId();
            baseSystemId = xMLResourceIdentifier.getBaseSystemId();
        }
        LSInput resolveResource = lSResourceResolver.resolveResource(type, namespace, publicId, literalSystemId, baseSystemId);
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
