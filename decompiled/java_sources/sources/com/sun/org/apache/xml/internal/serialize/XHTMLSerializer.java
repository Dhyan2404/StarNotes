package com.sun.org.apache.xml.internal.serialize;

import java.io.OutputStream;
import java.io.Writer;

/* loaded from: classes10.dex */
public class XHTMLSerializer extends HTMLSerializer {
    public XHTMLSerializer() {
        super(true, new OutputFormat("xhtml", (String) null, false));
    }

    @Override // com.sun.org.apache.xml.internal.serialize.HTMLSerializer, com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer, com.sun.org.apache.xml.internal.serialize.Serializer
    public void setOutputFormat(OutputFormat outputFormat) {
        if (outputFormat == null) {
            outputFormat = new OutputFormat("xhtml", (String) null, false);
        }
        super.setOutputFormat(outputFormat);
    }

    public XHTMLSerializer(OutputFormat outputFormat) {
        super(true, outputFormat == null ? new OutputFormat("xhtml", (String) null, false) : outputFormat);
    }

    public XHTMLSerializer(Writer writer, OutputFormat outputFormat) {
        super(true, outputFormat == null ? new OutputFormat("xhtml", (String) null, false) : outputFormat);
        setOutputCharStream(writer);
    }

    public XHTMLSerializer(OutputStream outputStream, OutputFormat outputFormat) {
        super(true, outputFormat == null ? new OutputFormat("xhtml", (String) null, false) : outputFormat);
        setOutputByteStream(outputStream);
    }
}
