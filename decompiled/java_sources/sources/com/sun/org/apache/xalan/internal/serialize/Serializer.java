package com.sun.org.apache.xalan.internal.serialize;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.util.Properties;
import org.xml.sax.ContentHandler;

/* loaded from: classes10.dex */
public interface Serializer {
    ContentHandler asContentHandler() throws IOException;

    DOMSerializer asDOMSerializer() throws IOException;

    Properties getOutputFormat();

    OutputStream getOutputStream();

    Writer getWriter();

    boolean reset();

    void setOutputFormat(Properties properties);

    void setOutputStream(OutputStream outputStream);

    void setWriter(Writer writer);
}
