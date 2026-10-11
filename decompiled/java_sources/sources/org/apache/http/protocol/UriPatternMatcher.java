package org.apache.http.protocol;

import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.SAFE)
/* loaded from: classes12.dex */
public class UriPatternMatcher<T> {

    /* renamed from: a */
    public final Map<String, T> f111147a = new LinkedHashMap();

    public synchronized Set<Map.Entry<String, T>> entrySet() {
        return new HashSet(this.f111147a.entrySet());
    }

    @Deprecated
    public synchronized Map<String, T> getObjects() {
        return this.f111147a;
    }

    public synchronized T lookup(String str) {
        T t;
        Args.notNull(str, "Request path");
        t = this.f111147a.get(str);
        if (t == null) {
            String str2 = null;
            for (String str3 : this.f111147a.keySet()) {
                if (matchUriRequestPattern(str3, str) && (str2 == null || str2.length() < str3.length() || (str2.length() == str3.length() && str3.endsWith("*")))) {
                    t = this.f111147a.get(str3);
                    str2 = str3;
                }
            }
        }
        return t;
    }

    public boolean matchUriRequestPattern(String str, String str2) {
        if (str.equals("*")) {
            return true;
        }
        if (str.endsWith("*") && str2.startsWith(str.substring(0, str.length() - 1))) {
            return true;
        }
        return str.startsWith("*") && str2.endsWith(str.substring(1, str.length()));
    }

    public synchronized void register(String str, T t) {
        Args.notNull(str, "URI request pattern");
        this.f111147a.put(str, t);
    }

    @Deprecated
    public synchronized void setHandlers(Map<String, T> map) {
        Args.notNull(map, "Map of handlers");
        this.f111147a.clear();
        this.f111147a.putAll(map);
    }

    @Deprecated
    public synchronized void setObjects(Map<String, T> map) {
        Args.notNull(map, "Map of handlers");
        this.f111147a.clear();
        this.f111147a.putAll(map);
    }

    public String toString() {
        return this.f111147a.toString();
    }

    public synchronized void unregister(String str) {
        if (str == null) {
            return;
        }
        this.f111147a.remove(str);
    }
}
