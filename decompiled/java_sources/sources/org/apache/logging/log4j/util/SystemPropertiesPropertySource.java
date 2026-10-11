package org.apache.logging.log4j.util;

import java.util.Objects;
import java.util.Properties;
import org.apache.logging.log4j.util.PropertySource;

/* loaded from: classes12.dex */
public class SystemPropertiesPropertySource implements PropertySource {

    /* renamed from: a */
    public static final int f111298a = 100;

    /* renamed from: b */
    public static final String f111299b = "log4j2.";

    @Override // org.apache.logging.log4j.util.PropertySource
    public void forEach(final BiConsumer<String, String> action) {
        Object[] array;
        try {
            Properties properties = System.getProperties();
            synchronized (properties) {
                array = properties.keySet().toArray();
            }
            for (Object obj : array) {
                String objects = Objects.toString(obj, null);
                action.accept(objects, properties.getProperty(objects));
            }
        } catch (SecurityException unused) {
        }
    }

    @Override // org.apache.logging.log4j.util.PropertySource
    public CharSequence getNormalForm(final Iterable<? extends CharSequence> tokens) {
        return "log4j2." + ((Object) PropertySource.Util.joinAsCamelCase(tokens));
    }

    @Override // org.apache.logging.log4j.util.PropertySource
    public int getPriority() {
        return 100;
    }
}
