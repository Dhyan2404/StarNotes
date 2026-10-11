package org.apache.logging.log4j.util;

import java.util.Map;
import java.util.Properties;
import org.apache.logging.log4j.util.PropertySource;

/* loaded from: classes12.dex */
public class PropertiesPropertySource implements PropertySource {

    /* renamed from: b */
    public static final String f111274b = "log4j2.";

    /* renamed from: a */
    public final Properties f111275a;

    public PropertiesPropertySource(final Properties properties) {
        this.f111275a = properties;
    }

    @Override // org.apache.logging.log4j.util.PropertySource
    public void forEach(final BiConsumer<String, String> action) {
        for (Map.Entry entry : this.f111275a.entrySet()) {
            action.accept((String) entry.getKey(), (String) entry.getValue());
        }
    }

    @Override // org.apache.logging.log4j.util.PropertySource
    public CharSequence getNormalForm(final Iterable<? extends CharSequence> tokens) {
        return "log4j2." + ((Object) PropertySource.Util.joinAsCamelCase(tokens));
    }

    @Override // org.apache.logging.log4j.util.PropertySource
    public int getPriority() {
        return 0;
    }
}
