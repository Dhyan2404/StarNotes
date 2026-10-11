package org.scribe.builder.api;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.scribe.model.Token;

/* loaded from: classes16.dex */
public class LinkedInApi extends DefaultApi10a {

    /* renamed from: b */
    public static final String f115867b = "https://api.linkedin.com/uas/oauth/authenticate?oauth_token=%s";

    /* renamed from: c */
    public static final String f115868c = "https://api.linkedin.com/uas/oauth/requestToken";

    /* renamed from: a */
    public final Set<String> f115869a;

    public LinkedInApi() {
        this.f115869a = Collections.emptySet();
    }

    public static LinkedInApi withScopes(String... strArr) {
        return new LinkedInApi(new HashSet(Arrays.asList(strArr)));
    }

    /* renamed from: a */
    public final String m71869a() {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it2 = this.f115869a.iterator();
        while (it2.hasNext()) {
            sb.append("+" + it2.next());
        }
        return sb.substring(1);
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return "https://api.linkedin.com/uas/oauth/accessToken";
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format(f115867b, token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        if (this.f115869a.isEmpty()) {
            return f115868c;
        }
        return "https://api.linkedin.com/uas/oauth/requestToken?scope=" + m71869a();
    }

    public LinkedInApi(Set<String> set) {
        this.f115869a = Collections.unmodifiableSet(set);
    }
}
