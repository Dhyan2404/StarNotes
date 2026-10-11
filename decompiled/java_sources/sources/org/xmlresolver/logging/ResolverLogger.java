package org.xmlresolver.logging;

/* loaded from: classes16.dex */
public interface ResolverLogger {
    void debug(String str);

    String getCategory(String str);

    void info(String str);

    void log(String str, String str2, Object... objArr);

    void setCategory(String str, String str2);

    void warn(String str);
}
