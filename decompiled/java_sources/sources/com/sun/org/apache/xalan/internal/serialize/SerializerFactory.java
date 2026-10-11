package com.sun.org.apache.xalan.internal.serialize;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.util.Properties;
import org.w3c.dom.Node;
import org.xml.sax.ContentHandler;

/* loaded from: classes10.dex */
public abstract class SerializerFactory {

    /* loaded from: classes10.dex */
    public static class DOMSerializerWrapper implements DOMSerializer {
        private final com.sun.org.apache.xml.internal.serializer.DOMSerializer m_dom;

        public DOMSerializerWrapper(com.sun.org.apache.xml.internal.serializer.DOMSerializer dOMSerializer) {
            this.m_dom = dOMSerializer;
        }

        @Override // com.sun.org.apache.xml.internal.serializer.DOMSerializer
        public void serialize(Node node) throws IOException {
            this.m_dom.serialize(node);
        }
    }

    /* loaded from: classes10.dex */
    public static class SerializerWrapper implements Serializer {
        private DOMSerializer m_old_DOMSerializer;
        private final com.sun.org.apache.xml.internal.serializer.Serializer m_serializer;

        public SerializerWrapper(com.sun.org.apache.xml.internal.serializer.Serializer serializer) {
            this.m_serializer = serializer;
        }

        @Override // com.sun.org.apache.xalan.internal.serialize.Serializer
        public ContentHandler asContentHandler() throws IOException {
            return this.m_serializer.asContentHandler();
        }

        @Override // com.sun.org.apache.xalan.internal.serialize.Serializer
        public DOMSerializer asDOMSerializer() throws IOException {
            if (this.m_old_DOMSerializer == null) {
                this.m_old_DOMSerializer = new DOMSerializerWrapper(this.m_serializer.asDOMSerializer());
            }
            return this.m_old_DOMSerializer;
        }

        @Override // com.sun.org.apache.xalan.internal.serialize.Serializer
        public Properties getOutputFormat() {
            return this.m_serializer.getOutputFormat();
        }

        @Override // com.sun.org.apache.xalan.internal.serialize.Serializer
        public OutputStream getOutputStream() {
            return this.m_serializer.getOutputStream();
        }

        @Override // com.sun.org.apache.xalan.internal.serialize.Serializer
        public Writer getWriter() {
            return this.m_serializer.getWriter();
        }

        @Override // com.sun.org.apache.xalan.internal.serialize.Serializer
        public boolean reset() {
            return this.m_serializer.reset();
        }

        @Override // com.sun.org.apache.xalan.internal.serialize.Serializer
        public void setOutputFormat(Properties properties) {
            this.m_serializer.setOutputFormat(properties);
        }

        @Override // com.sun.org.apache.xalan.internal.serialize.Serializer
        public void setOutputStream(OutputStream outputStream) {
            this.m_serializer.setOutputStream(outputStream);
        }

        @Override // com.sun.org.apache.xalan.internal.serialize.Serializer
        public void setWriter(Writer writer) {
            this.m_serializer.setWriter(writer);
        }
    }

    private SerializerFactory() {
    }

    public static Serializer getSerializer(Properties properties) {
        return new SerializerWrapper(com.sun.org.apache.xml.internal.serializer.SerializerFactory.getSerializer(properties));
    }
}
