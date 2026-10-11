package org.apache.http.config;

import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;

@Contract(threading = ThreadingBehavior.SAFE)
/* loaded from: classes12.dex */
public final class Registry<I> implements Lookup<I> {

    /* renamed from: a */
    public final Map<String, I> f110263a;

    public Registry(Map<String, I> map) {
        this.f110263a = new ConcurrentHashMap(map);
    }

    @Override // org.apache.http.config.Lookup
    public I lookup(String str) {
        if (str == null) {
            return null;
        }
        return this.f110263a.get(str.toLowerCase(Locale.ROOT));
    }

    public String toString() {
        return this.f110263a.toString();
    }
}
