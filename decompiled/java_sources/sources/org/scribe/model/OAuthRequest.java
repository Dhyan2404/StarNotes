package org.scribe.model;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes16.dex */
public class OAuthRequest extends Request {

    /* renamed from: s */
    public static final String f115944s = "oauth_";

    /* renamed from: q */
    public Map<String, String> f115945q;

    /* renamed from: r */
    public String f115946r;

    public OAuthRequest(Verb verb, String str) {
        super(verb, str);
        this.f115945q = new HashMap();
    }

    public void addOAuthParameter(String str, String str2) {
        this.f115945q.put(m71874g(str), str2);
    }

    /* renamed from: g */
    public final String m71874g(String str) {
        if (str.startsWith("oauth_") || str.equals("scope")) {
            return str;
        }
        throw new IllegalArgumentException(String.format("OAuth parameters must either be '%s' or start with '%s'", "scope", "oauth_"));
    }

    public Map<String, String> getOauthParameters() {
        return this.f115945q;
    }

    public String getRealm() {
        return this.f115946r;
    }

    public void setRealm(String str) {
        this.f115946r = str;
    }

    @Override // org.scribe.model.Request
    public String toString() {
        return String.format("@OAuthRequest(%s, %s)", getVerb(), getUrl());
    }
}
