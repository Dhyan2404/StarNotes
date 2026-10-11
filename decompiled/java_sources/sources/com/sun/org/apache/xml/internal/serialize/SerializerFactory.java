package com.sun.org.apache.xml.internal.serialize;

import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.Hashtable;
import java.util.StringTokenizer;

/* loaded from: classes10.dex */
public abstract class SerializerFactory {
    public static final String FactoriesProperty = "com.sun.org.apache.xml.internal.serialize.factories";
    private static Hashtable _factories = new Hashtable();

    static {
        registerSerializerFactory(new SerializerFactoryImpl("xml"));
        registerSerializerFactory(new SerializerFactoryImpl("html"));
        registerSerializerFactory(new SerializerFactoryImpl("xhtml"));
        registerSerializerFactory(new SerializerFactoryImpl("text"));
        String property = System.getProperty(FactoriesProperty);
        if (property != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(property, " ;,:");
            while (stringTokenizer.hasMoreTokens()) {
                try {
                    SerializerFactory serializerFactory = (SerializerFactory) ObjectFactory.newInstance(stringTokenizer.nextToken(), SerializerFactory.class.getClassLoader(), true);
                    if (_factories.containsKey(serializerFactory.getSupportedMethod())) {
                        _factories.put(serializerFactory.getSupportedMethod(), serializerFactory);
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    public static SerializerFactory getSerializerFactory(String str) {
        return (SerializerFactory) _factories.get(str);
    }

    public static void registerSerializerFactory(SerializerFactory serializerFactory) {
        synchronized (_factories) {
            _factories.put(serializerFactory.getSupportedMethod(), serializerFactory);
        }
    }

    public abstract String getSupportedMethod();

    public abstract Serializer makeSerializer(OutputFormat outputFormat);

    public abstract Serializer makeSerializer(OutputStream outputStream, OutputFormat outputFormat) throws UnsupportedEncodingException;

    public abstract Serializer makeSerializer(Writer writer, OutputFormat outputFormat);
}
