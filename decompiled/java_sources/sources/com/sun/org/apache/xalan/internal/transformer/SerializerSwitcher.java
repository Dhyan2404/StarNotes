package com.sun.org.apache.xalan.internal.transformer;

import com.sun.org.apache.xalan.internal.templates.OutputProperties;
import com.sun.org.apache.xml.internal.serializer.Serializer;
import com.sun.org.apache.xml.internal.serializer.SerializerFactory;
import java.io.OutputStream;
import java.io.Writer;
import java.util.Properties;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class SerializerSwitcher {
    private static String getOutputPropertyNoDefault(String str, Properties properties) throws IllegalArgumentException {
        return (String) properties.get(str);
    }

    public static void switchSerializerIfHTML(TransformerImpl transformerImpl, String str, String str2) throws TransformerException {
        if (transformerImpl == null) {
            return;
        }
        if ((str == null || str.length() == 0) && str2.equalsIgnoreCase("html") && transformerImpl.getOutputPropertyNoDefault("method") == null) {
            Properties properties = transformerImpl.getOutputFormat().getProperties();
            OutputProperties outputProperties = new OutputProperties("html");
            outputProperties.copyFrom(properties, true);
            outputProperties.getProperties();
        }
    }

    public static Serializer switchSerializerIfHTML(String str, String str2, Properties properties, Serializer serializer) throws TransformerException {
        if ((str != null && str.length() != 0) || !str2.equalsIgnoreCase("html") || getOutputPropertyNoDefault("method", properties) != null) {
            return serializer;
        }
        OutputProperties outputProperties = new OutputProperties("html");
        outputProperties.copyFrom(properties, true);
        Properties properties2 = outputProperties.getProperties();
        if (serializer == null) {
            return serializer;
        }
        Serializer serializer2 = SerializerFactory.getSerializer(properties2);
        Writer writer = serializer.getWriter();
        if (writer != null) {
            serializer2.setWriter(writer);
        } else {
            OutputStream outputStream = serializer2.getOutputStream();
            if (outputStream != null) {
                serializer2.setOutputStream(outputStream);
            }
        }
        return serializer2;
    }
}
