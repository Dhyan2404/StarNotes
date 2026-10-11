package com.thegrizzlylabs.sardineandroid.impl.handler;

import java.io.IOException;
import okhttp3.Response;

/* loaded from: classes10.dex */
public class VoidResponseHandler extends ValidatingResponseHandler<Void> {
    @Override // com.thegrizzlylabs.sardineandroid.impl.handler.ResponseHandler
    public Void handleResponse(Response response) throws IOException {
        validateResponse(response);
        return null;
    }
}
