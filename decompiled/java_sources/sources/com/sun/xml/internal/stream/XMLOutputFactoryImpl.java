package com.sun.xml.internal.stream;

import com.sun.org.apache.xerces.internal.impl.Constants;
import com.sun.org.apache.xerces.internal.impl.PropertyManager;
import com.sun.xml.internal.stream.writers.XMLDOMWriterImpl;
import com.sun.xml.internal.stream.writers.XMLEventWriterImpl;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import javax.xml.stream.XMLEventWriter;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamWriter;
import javax.xml.transform.Result;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.stax.StAXResult;
import javax.xml.transform.stream.StreamResult;

/* loaded from: classes10.dex */
public class XMLOutputFactoryImpl extends XMLOutputFactory {
    private static final boolean DEBUG = false;
    private boolean fPropertyChanged;
    private PropertyManager fPropertyManager = new PropertyManager(2);
    private XMLStreamWriterImpl fStreamWriter = null;
    private StreamResult fStreamResult = new StreamResult();
    boolean fReuseInstance = false;

    @Override // javax.xml.stream.XMLOutputFactory
    public XMLEventWriter createXMLEventWriter(OutputStream outputStream) throws XMLStreamException {
        return createXMLEventWriter(outputStream, null);
    }

    @Override // javax.xml.stream.XMLOutputFactory
    public XMLStreamWriter createXMLStreamWriter(Result result) throws XMLStreamException {
        if (result instanceof StreamResult) {
            return createXMLStreamWriter((StreamResult) result, (String) null);
        }
        if (result instanceof DOMResult) {
            return new XMLDOMWriterImpl((DOMResult) result);
        }
        if (result instanceof StAXResult) {
            StAXResult stAXResult = (StAXResult) result;
            if (stAXResult.getXMLStreamWriter() != null) {
                return stAXResult.getXMLStreamWriter();
            }
        } else if (result instanceof Result) {
            return createXMLStreamWriter(new StreamResult(result.getSystemId()));
        }
        throw new UnsupportedOperationException("result of type " + result + " is not supported");
    }

    @Override // javax.xml.stream.XMLOutputFactory
    public Object getProperty(String str) throws IllegalArgumentException {
        if (str == null) {
            throw new IllegalArgumentException("Property not supported");
        }
        if (this.fPropertyManager.containsProperty(str)) {
            return this.fPropertyManager.getProperty(str);
        }
        throw new IllegalArgumentException("Property not supported");
    }

    public PropertyManager getPropertyManager() {
        if (this.fPropertyChanged) {
            return this.fPropertyManager;
        }
        return null;
    }

    public StreamResult getStreamResult(OutputStream outputStream, Writer writer, String str) {
        this.fStreamResult.setOutputStream(outputStream);
        this.fStreamResult.setWriter(writer);
        this.fStreamResult.setSystemId(str);
        return this.fStreamResult;
    }

    @Override // javax.xml.stream.XMLOutputFactory
    public boolean isPropertySupported(String str) {
        if (str == null) {
            return false;
        }
        return this.fPropertyManager.containsProperty(str);
    }

    @Override // javax.xml.stream.XMLOutputFactory
    public void setProperty(String str, Object obj) throws IllegalArgumentException {
        if (str == null || obj == null || !this.fPropertyManager.containsProperty(str)) {
            throw new IllegalArgumentException("Property " + str + "is not supported");
        }
        if (str == Constants.REUSE_INSTANCE || str.equals(Constants.REUSE_INSTANCE)) {
            boolean booleanValue = ((Boolean) obj).booleanValue();
            this.fReuseInstance = booleanValue;
            if (booleanValue) {
                throw new IllegalArgumentException("Property " + str + " is not supported: XMLStreamWriters are not Thread safe");
            }
        } else {
            this.fPropertyChanged = true;
        }
        this.fPropertyManager.setProperty(str, obj);
    }

    @Override // javax.xml.stream.XMLOutputFactory
    public XMLEventWriter createXMLEventWriter(OutputStream outputStream, String str) throws XMLStreamException {
        return new XMLEventWriterImpl(createXMLStreamWriter(outputStream, str));
    }

    @Override // javax.xml.stream.XMLOutputFactory
    public XMLEventWriter createXMLEventWriter(Result result) throws XMLStreamException {
        if (result instanceof StAXResult) {
            StAXResult stAXResult = (StAXResult) result;
            if (stAXResult.getXMLEventWriter() != null) {
                return stAXResult.getXMLEventWriter();
            }
        }
        return new XMLEventWriterImpl(createXMLStreamWriter(result));
    }

    @Override // javax.xml.stream.XMLOutputFactory
    public XMLEventWriter createXMLEventWriter(Writer writer) throws XMLStreamException {
        return new XMLEventWriterImpl(createXMLStreamWriter(writer));
    }

    @Override // javax.xml.stream.XMLOutputFactory
    public XMLStreamWriter createXMLStreamWriter(Writer writer) throws XMLStreamException {
        return createXMLStreamWriter(getStreamResult(null, writer, null), (String) null);
    }

    @Override // javax.xml.stream.XMLOutputFactory
    public XMLStreamWriter createXMLStreamWriter(OutputStream outputStream) throws XMLStreamException {
        return createXMLStreamWriter(outputStream, (String) null);
    }

    @Override // javax.xml.stream.XMLOutputFactory
    public XMLStreamWriter createXMLStreamWriter(OutputStream outputStream, String str) throws XMLStreamException {
        return createXMLStreamWriter(getStreamResult(outputStream, null, null), str);
    }

    public XMLStreamWriter createXMLStreamWriter(StreamResult streamResult, String str) throws XMLStreamException {
        XMLStreamWriterImpl xMLStreamWriterImpl;
        try {
            if (this.fReuseInstance && (xMLStreamWriterImpl = this.fStreamWriter) != null && xMLStreamWriterImpl.canReuse() && !this.fPropertyChanged) {
                this.fStreamWriter.reset();
                this.fStreamWriter.setOutput(streamResult, str);
                return this.fStreamWriter;
            }
            XMLStreamWriterImpl xMLStreamWriterImpl2 = new XMLStreamWriterImpl(streamResult, str, getPropertyManager());
            this.fStreamWriter = xMLStreamWriterImpl2;
            return xMLStreamWriterImpl2;
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }
}
