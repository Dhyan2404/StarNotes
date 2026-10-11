package org.apache.xml.serialize;

import com.sunia.HTREnginev2.bdm;
import com.sunia.HTREnginev2.fhm;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.Hashtable;
import java.util.StringTokenizer;

/* loaded from: classes13.dex */
public abstract class SerializerFactory {
    public static final String FactoriesProperty = "org.apache.xml.serialize.factories";

    /* renamed from: a */
    public static Hashtable f113713a = new Hashtable();

    /* renamed from: b */
    public static /* synthetic */ Class f113714b;

    static {
        registerSerializerFactory(new fhm("xml"));
        registerSerializerFactory(new fhm("html"));
        registerSerializerFactory(new fhm("xhtml"));
        registerSerializerFactory(new fhm("text"));
        String m53244h = bdm.m53244h(FactoriesProperty);
        if (m53244h != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(m53244h, " ;,:");
            while (stringTokenizer.hasMoreTokens()) {
                String nextToken = stringTokenizer.nextToken();
                try {
                    Class cls = f113714b;
                    if (cls == null) {
                        cls = class$("org.apache.xml.serialize.SerializerFactory");
                        f113714b = cls;
                    }
                    SerializerFactory serializerFactory = (SerializerFactory) ObjectFactory.m70693h(nextToken, cls.getClassLoader(), true);
                    if (f113713a.containsKey(serializerFactory.getSupportedMethod())) {
                        f113713a.put(serializerFactory.getSupportedMethod(), serializerFactory);
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    public static SerializerFactory getSerializerFactory(String str) {
        return (SerializerFactory) f113713a.get(str);
    }

    public static void registerSerializerFactory(SerializerFactory serializerFactory) {
        synchronized (f113713a) {
            f113713a.put(serializerFactory.getSupportedMethod(), serializerFactory);
        }
    }

    public abstract String getSupportedMethod();

    public abstract Serializer makeSerializer(OutputStream outputStream, OutputFormat outputFormat) throws UnsupportedEncodingException;

    public abstract Serializer makeSerializer(Writer writer, OutputFormat outputFormat);

    public abstract Serializer makeSerializer(OutputFormat outputFormat);
}
