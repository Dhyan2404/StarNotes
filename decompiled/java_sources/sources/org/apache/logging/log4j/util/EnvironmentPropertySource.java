package org.apache.logging.log4j.util;

import com.sunia.HTREnginev2.c6j;
import java.util.Map;
import org.apache.xmlbeans.impl.common.NameUtil;

/* loaded from: classes12.dex */
public class EnvironmentPropertySource implements PropertySource {

    /* renamed from: a */
    public static final String f111263a = "LOG4J_";

    /* renamed from: b */
    public static final int f111264b = -100;

    @Override // org.apache.logging.log4j.util.PropertySource
    public void forEach(final BiConsumer<String, String> action) {
        try {
            for (Map.Entry<String, String> entry : System.getenv().entrySet()) {
                String key = entry.getKey();
                if (key.startsWith(f111263a)) {
                    action.accept(key.substring(6), entry.getValue());
                }
            }
        } catch (SecurityException e) {
            c6j.m53395b("The system environment variables are not available to Log4j due to security restrictions: " + e, e);
        }
    }

    @Override // org.apache.logging.log4j.util.PropertySource
    public CharSequence getNormalForm(final Iterable<? extends CharSequence> tokens) {
        StringBuilder sb = new StringBuilder("LOG4J");
        for (CharSequence charSequence : tokens) {
            sb.append(NameUtil.USCORE);
            for (int i = 0; i < charSequence.length(); i++) {
                sb.append(Character.toUpperCase(charSequence.charAt(i)));
            }
        }
        return sb.toString();
    }

    @Override // org.apache.logging.log4j.util.PropertySource
    public int getPriority() {
        return -100;
    }
}
