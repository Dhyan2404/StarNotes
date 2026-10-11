package org.apache.xerces.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import org.apache.xerces.impl.ExternalSubsetResolver;
import org.apache.xerces.impl.XMLEntityDescription;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.grammars.XMLDTDDescription;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.ext.EntityResolver2;

/* loaded from: classes13.dex */
public class EntityResolver2Wrapper implements ExternalSubsetResolver {
    protected EntityResolver2 fEntityResolver;

    public EntityResolver2Wrapper() {
    }

    /* renamed from: a */
    public final XMLInputSource m70573a(InputSource inputSource, String str) {
        String publicId = inputSource.getPublicId();
        String systemId = inputSource.getSystemId();
        InputStream byteStream = inputSource.getByteStream();
        Reader characterStream = inputSource.getCharacterStream();
        String encoding = inputSource.getEncoding();
        XMLInputSource xMLInputSource = new XMLInputSource(publicId, systemId, str);
        xMLInputSource.setByteStream(byteStream);
        xMLInputSource.setCharacterStream(characterStream);
        xMLInputSource.setEncoding(encoding);
        return xMLInputSource;
    }

    public EntityResolver2 getEntityResolver() {
        return this.fEntityResolver;
    }

    @Override // org.apache.xerces.impl.ExternalSubsetResolver
    public XMLInputSource getExternalSubset(XMLDTDDescription xMLDTDDescription) throws XNIException, IOException {
        if (this.fEntityResolver == null) {
            return null;
        }
        String rootName = xMLDTDDescription.getRootName();
        String baseSystemId = xMLDTDDescription.getBaseSystemId();
        try {
            InputSource externalSubset = this.fEntityResolver.getExternalSubset(rootName, baseSystemId);
            if (externalSubset != null) {
                return m70573a(externalSubset, baseSystemId);
            }
            return null;
        } catch (SAXException e) {
            e = e;
            Exception exception = e.getException();
            if (exception != null) {
                e = exception;
            }
            throw new XNIException(e);
        }
    }

    @Override // org.apache.xerces.xni.parser.XMLEntityResolver
    public XMLInputSource resolveEntity(XMLResourceIdentifier xMLResourceIdentifier) throws XNIException, IOException {
        if (this.fEntityResolver == null) {
            return null;
        }
        String publicId = xMLResourceIdentifier.getPublicId();
        String literalSystemId = xMLResourceIdentifier.getLiteralSystemId();
        String baseSystemId = xMLResourceIdentifier.getBaseSystemId();
        String entityName = xMLResourceIdentifier instanceof XMLDTDDescription ? "[dtd]" : xMLResourceIdentifier instanceof XMLEntityDescription ? ((XMLEntityDescription) xMLResourceIdentifier).getEntityName() : null;
        if (publicId == null && literalSystemId == null) {
            return null;
        }
        try {
            InputSource resolveEntity = this.fEntityResolver.resolveEntity(entityName, publicId, baseSystemId, literalSystemId);
            if (resolveEntity != null) {
                return m70573a(resolveEntity, baseSystemId);
            }
            return null;
        } catch (SAXException e) {
            e = e;
            Exception exception = e.getException();
            if (exception != null) {
                e = exception;
            }
            throw new XNIException(e);
        }
    }

    public void setEntityResolver(EntityResolver2 entityResolver2) {
        this.fEntityResolver = entityResolver2;
    }

    public EntityResolver2Wrapper(EntityResolver2 entityResolver2) {
        setEntityResolver(entityResolver2);
    }
}
