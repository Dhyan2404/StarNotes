package com.burgstaller.okhttp;

import com.burgstaller.okhttp.digest.CachingAuthenticator;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import okhttp3.Authenticator;
import okhttp3.Challenge;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;

/* loaded from: classes3.dex */
public class DispatchingAuthenticator implements CachingAuthenticator {

    /* renamed from: a */
    public final Map<String, Authenticator> f15521a;

    /* renamed from: b */
    public final Map<String, CachingAuthenticator> f15522b;

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a */
        public Map<String, Authenticator> f15523a = new LinkedHashMap();

        public DispatchingAuthenticator build() {
            return new DispatchingAuthenticator(this.f15523a);
        }

        public Builder with(String str, Authenticator authenticator) {
            this.f15523a.put(str.toLowerCase(Locale.getDefault()), authenticator);
            return this;
        }
    }

    @Override // okhttp3.Authenticator
    public Request authenticate(Route route, Response response) throws IOException {
        List<Challenge> challenges = response.challenges();
        if (!challenges.isEmpty()) {
            Iterator<Challenge> it2 = challenges.iterator();
            while (it2.hasNext()) {
                String scheme = it2.next().scheme();
                Authenticator authenticator = scheme != null ? this.f15521a.get(scheme.toLowerCase(Locale.getDefault())) : null;
                if (authenticator != null) {
                    return authenticator.authenticate(route, response);
                }
            }
        }
        return null;
    }

    @Override // com.burgstaller.okhttp.digest.CachingAuthenticator
    public Request authenticateWithState(Route route, Request request) throws IOException {
        Iterator<Map.Entry<String, CachingAuthenticator>> it2 = this.f15522b.entrySet().iterator();
        while (it2.hasNext()) {
            Request authenticateWithState = it2.next().getValue().authenticateWithState(route, request);
            if (authenticateWithState != null) {
                return authenticateWithState;
            }
        }
        return null;
    }

    public DispatchingAuthenticator(Map<String, Authenticator> map) {
        this.f15521a = map;
        this.f15522b = new LinkedHashMap();
        for (Map.Entry<String, Authenticator> entry : map.entrySet()) {
            if (entry.getValue() instanceof CachingAuthenticator) {
                this.f15522b.put(entry.getKey(), (CachingAuthenticator) entry.getValue());
            }
        }
    }
}
