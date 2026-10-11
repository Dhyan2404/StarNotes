package com.thegrizzlylabs.sardineandroid.impl.handler;

import com.thegrizzlylabs.sardineandroid.impl.SardineException;
import java.io.IOException;
import okhttp3.Response;

/* loaded from: classes10.dex */
public class ExistsResponseHandler extends ValidatingResponseHandler<Boolean> {
    @Override // com.thegrizzlylabs.sardineandroid.impl.handler.ResponseHandler
    public Boolean handleResponse(Response response) throws SardineException, IOException {
        if (!response.isSuccessful() && response.code() == 404) {
            return Boolean.FALSE;
        }
        validateResponse(response);
        return Boolean.TRUE;
    }
}
