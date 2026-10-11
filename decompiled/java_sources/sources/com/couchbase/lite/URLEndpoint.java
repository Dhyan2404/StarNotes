package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.utils.Preconditions;
import java.net.URI;

/* loaded from: classes4.dex */
public final class URLEndpoint implements Endpoint {
    static final String SCHEME_STD = "ws";
    static final String SCHEME_TLS = "wss";

    @NonNull
    private final URI url;

    public URLEndpoint(@NonNull URI uri) {
        Preconditions.assertNotNull(uri, "url");
        String scheme = uri.getScheme();
        if (!"ws".equals(scheme) && !"wss".equals(scheme)) {
            throw new IllegalArgumentException(com.couchbase.lite.internal.logging.Log.formatStandardMessage("InvalidSchemeURLEndpoint", uri.toString()));
        }
        if (uri.getUserInfo() != null) {
            throw new IllegalArgumentException(com.couchbase.lite.internal.logging.Log.lookupStandardMessage("InvalidEmbeddedCredentialsInURL"));
        }
        this.url = uri;
    }

    @NonNull
    public URI getURL() {
        return this.url;
    }

    @NonNull
    public String toString() {
        return "URLEndpoint{url=" + this.url + '}';
    }
}
