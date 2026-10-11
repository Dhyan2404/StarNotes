package org.apache.xerces.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLEntityResolver;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* loaded from: classes13.dex */
public class EntityResolverWrapper implements XMLEntityResolver {
    protected EntityResolver fEntityResolver;

    public EntityResolverWrapper() {
    }

    public EntityResolver getEntityResolver() {
        return this.fEntityResolver;
    }

    @Override // org.apache.xerces.xni.parser.XMLEntityResolver
    public XMLInputSource resolveEntity(XMLResourceIdentifier xMLResourceIdentifier) throws XNIException, IOException {
        EntityResolver entityResolver;
        String publicId = xMLResourceIdentifier.getPublicId();
        String expandedSystemId = xMLResourceIdentifier.getExpandedSystemId();
        if ((publicId != null || expandedSystemId != null) && (entityResolver = this.fEntityResolver) != null) {
            try {
                InputSource resolveEntity = entityResolver.resolveEntity(publicId, expandedSystemId);
                if (resolveEntity != null) {
                    String publicId2 = resolveEntity.getPublicId();
                    String systemId = resolveEntity.getSystemId();
                    String baseSystemId = xMLResourceIdentifier.getBaseSystemId();
                    InputStream byteStream = resolveEntity.getByteStream();
                    Reader characterStream = resolveEntity.getCharacterStream();
                    String encoding = resolveEntity.getEncoding();
                    XMLInputSource xMLInputSource = new XMLInputSource(publicId2, systemId, baseSystemId);
                    xMLInputSource.setByteStream(byteStream);
                    xMLInputSource.setCharacterStream(characterStream);
                    xMLInputSource.setEncoding(encoding);
                    return xMLInputSource;
                }
            } catch (SAXException e) {
                e = e;
                Exception exception = e.getException();
                if (exception != null) {
                    e = exception;
                }
                throw new XNIException(e);
            }
        }
        return null;
    }

    public void setEntityResolver(EntityResolver entityResolver) {
        this.fEntityResolver = entityResolver;
    }

    public EntityResolverWrapper(EntityResolver entityResolver) {
        setEntityResolver(entityResolver);
    }
}
