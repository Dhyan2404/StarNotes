package org.apache.xml.serialize;

import java.io.OutputStream;
import java.io.Writer;

/* loaded from: classes13.dex */
public class XHTMLSerializer extends HTMLSerializer {
    public XHTMLSerializer() {
        super(true, new OutputFormat("xhtml", (String) null, false));
    }

    @Override // org.apache.xml.serialize.HTMLSerializer, org.apache.xml.serialize.BaseMarkupSerializer, org.apache.xml.serialize.Serializer
    public void setOutputFormat(OutputFormat outputFormat) {
        if (outputFormat == null) {
            outputFormat = new OutputFormat("xhtml", (String) null, false);
        }
        super.setOutputFormat(outputFormat);
    }

    public XHTMLSerializer(OutputStream outputStream, OutputFormat outputFormat) {
        super(true, outputFormat == null ? new OutputFormat("xhtml", (String) null, false) : outputFormat);
        setOutputByteStream(outputStream);
    }

    public XHTMLSerializer(Writer writer, OutputFormat outputFormat) {
        super(true, outputFormat == null ? new OutputFormat("xhtml", (String) null, false) : outputFormat);
        setOutputCharStream(writer);
    }

    public XHTMLSerializer(OutputFormat outputFormat) {
        super(true, outputFormat == null ? new OutputFormat("xhtml", (String) null, false) : outputFormat);
    }
}
