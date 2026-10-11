package com.thegrizzlylabs.sardineandroid.impl.handler;

import java.io.IOException;
import java.io.InputStream;
import okhttp3.Response;

/* loaded from: classes10.dex */
public class InputStreamResponseHandler extends ValidatingResponseHandler<InputStream> {
    @Override // com.thegrizzlylabs.sardineandroid.impl.handler.ResponseHandler
    public InputStream handleResponse(Response response) throws IOException {
        validateResponse(response);
        return response.body().byteStream();
    }
}
