package com.thegrizzlylabs.sardineandroid.impl.handler;

import java.io.IOException;
import okhttp3.Response;

/* loaded from: classes10.dex */
public interface ResponseHandler<T> {
    T handleResponse(Response response) throws IOException;
}
