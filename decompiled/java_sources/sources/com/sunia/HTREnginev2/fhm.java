package com.sunia.HTREnginev2;

import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import org.apache.xerces.dom.DOMMessageFormatter;
import org.apache.xml.serialize.HTMLSerializer;
import org.apache.xml.serialize.OutputFormat;
import org.apache.xml.serialize.Serializer;
import org.apache.xml.serialize.SerializerFactory;
import org.apache.xml.serialize.TextSerializer;
import org.apache.xml.serialize.XHTMLSerializer;
import org.apache.xml.serialize.XMLSerializer;

/* loaded from: classes13.dex */
public final class fhm extends SerializerFactory {

    /* renamed from: c */
    public String f70014c;

    public fhm(String str) {
        this.f70014c = str;
        if (!str.equals("xml") && !this.f70014c.equals("html") && !this.f70014c.equals("xhtml") && !this.f70014c.equals("text")) {
            throw new IllegalArgumentException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "MethodNotSupported", new Object[]{str}));
        }
    }

    /* renamed from: a */
    public final Serializer m54110a(OutputFormat outputFormat) {
        if (this.f70014c.equals("xml")) {
            return new XMLSerializer(outputFormat);
        }
        if (this.f70014c.equals("html")) {
            return new HTMLSerializer(outputFormat);
        }
        if (this.f70014c.equals("xhtml")) {
            return new XHTMLSerializer(outputFormat);
        }
        if (this.f70014c.equals("text")) {
            return new TextSerializer();
        }
        throw new IllegalStateException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "MethodNotSupported", new Object[]{this.f70014c}));
    }

    @Override // org.apache.xml.serialize.SerializerFactory
    public String getSupportedMethod() {
        return this.f70014c;
    }

    @Override // org.apache.xml.serialize.SerializerFactory
    public Serializer makeSerializer(OutputStream outputStream, OutputFormat outputFormat) throws UnsupportedEncodingException {
        Serializer m54110a = m54110a(outputFormat);
        m54110a.setOutputByteStream(outputStream);
        return m54110a;
    }

    @Override // org.apache.xml.serialize.SerializerFactory
    public Serializer makeSerializer(Writer writer, OutputFormat outputFormat) {
        Serializer m54110a = m54110a(outputFormat);
        m54110a.setOutputCharStream(writer);
        return m54110a;
    }

    @Override // org.apache.xml.serialize.SerializerFactory
    public Serializer makeSerializer(OutputFormat outputFormat) {
        Serializer m54110a = m54110a(outputFormat);
        m54110a.setOutputFormat(outputFormat);
        return m54110a;
    }
}
