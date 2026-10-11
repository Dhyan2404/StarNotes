package com.sun.org.apache.xml.internal.serialize;

import com.sun.org.apache.xerces.internal.dom.DOMMessageFormatter;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.io.Writer;

/* loaded from: classes10.dex */
final class SerializerFactoryImpl extends SerializerFactory {
    private String _method;

    public SerializerFactoryImpl(String str) {
        this._method = str;
        if (!str.equals("xml") && !this._method.equals("html") && !this._method.equals("xhtml") && !this._method.equals("text")) {
            throw new IllegalArgumentException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "MethodNotSupported", new Object[]{str}));
        }
    }

    private Serializer getSerializer(OutputFormat outputFormat) {
        if (this._method.equals("xml")) {
            return new XMLSerializer(outputFormat);
        }
        if (this._method.equals("html")) {
            return new HTMLSerializer(outputFormat);
        }
        if (this._method.equals("xhtml")) {
            return new XHTMLSerializer(outputFormat);
        }
        if (this._method.equals("text")) {
            return new TextSerializer();
        }
        throw new IllegalStateException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "MethodNotSupported", new Object[]{this._method}));
    }

    @Override // com.sun.org.apache.xml.internal.serialize.SerializerFactory
    public String getSupportedMethod() {
        return this._method;
    }

    @Override // com.sun.org.apache.xml.internal.serialize.SerializerFactory
    public Serializer makeSerializer(OutputFormat outputFormat) {
        Serializer serializer = getSerializer(outputFormat);
        serializer.setOutputFormat(outputFormat);
        return serializer;
    }

    @Override // com.sun.org.apache.xml.internal.serialize.SerializerFactory
    public Serializer makeSerializer(Writer writer, OutputFormat outputFormat) {
        Serializer serializer = getSerializer(outputFormat);
        serializer.setOutputCharStream(writer);
        return serializer;
    }

    @Override // com.sun.org.apache.xml.internal.serialize.SerializerFactory
    public Serializer makeSerializer(OutputStream outputStream, OutputFormat outputFormat) throws UnsupportedEncodingException {
        Serializer serializer = getSerializer(outputFormat);
        serializer.setOutputByteStream(outputStream);
        return serializer;
    }
}
