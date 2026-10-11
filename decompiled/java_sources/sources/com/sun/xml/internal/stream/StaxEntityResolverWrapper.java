package com.sun.xml.internal.stream;

import com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.stream.XMLEventReader;
import javax.xml.stream.XMLResolver;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;

/* loaded from: classes10.dex */
public class StaxEntityResolverWrapper {
    XMLResolver fStaxResolver;

    public StaxEntityResolverWrapper(XMLResolver xMLResolver) {
        this.fStaxResolver = xMLResolver;
    }

    public XMLResolver getStaxEntityResolver() {
        return this.fStaxResolver;
    }

    public StaxXMLInputSource getStaxInputSource(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof InputStream) {
            return new StaxXMLInputSource(new XMLInputSource((String) null, (String) null, (String) null, (InputStream) obj, (String) null));
        }
        if (obj instanceof XMLStreamReader) {
            return new StaxXMLInputSource((XMLStreamReader) obj);
        }
        if (obj instanceof XMLEventReader) {
            return new StaxXMLInputSource((XMLEventReader) obj);
        }
        return null;
    }

    public StaxXMLInputSource resolveEntity(XMLResourceIdentifier xMLResourceIdentifier) throws XNIException, IOException {
        try {
            return getStaxInputSource(this.fStaxResolver.resolveEntity(xMLResourceIdentifier.getPublicId(), xMLResourceIdentifier.getLiteralSystemId(), xMLResourceIdentifier.getBaseSystemId(), null));
        } catch (XMLStreamException e) {
            throw new XNIException(e);
        }
    }

    public void setStaxEntityResolver(XMLResolver xMLResolver) {
        this.fStaxResolver = xMLResolver;
    }
}
