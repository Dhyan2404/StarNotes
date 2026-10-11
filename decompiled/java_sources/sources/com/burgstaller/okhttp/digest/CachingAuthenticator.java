package com.burgstaller.okhttp.digest;

import java.io.IOException;
import okhttp3.Authenticator;
import okhttp3.Request;
import okhttp3.Route;

/* loaded from: classes3.dex */
public interface CachingAuthenticator extends Authenticator {
    Request authenticateWithState(Route route, Request request) throws IOException;
}
