package com.thegrizzlylabs.sardineandroid.impl.handler;

import com.thegrizzlylabs.sardineandroid.impl.SardineException;
import java.io.IOException;
import okhttp3.Response;

/* loaded from: classes10.dex */
public abstract class ValidatingResponseHandler<T> implements ResponseHandler<T> {
    public void validateResponse(Response response) throws SardineException, IOException {
        if (response.isSuccessful()) {
            return;
        }
        throw new SardineException("Error contacting " + response.request().url(), response.code(), response.body() == null ? response.message() : response.body().string());
    }
}
