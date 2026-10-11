package com.sun.org.apache.xerces.internal.util;

import com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class EntityResolverWrapper implements XMLEntityResolver {
    protected EntityResolver fEntityResolver;

    public EntityResolverWrapper() {
    }

    public EntityResolver getEntityResolver() {
        return this.fEntityResolver;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver
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
