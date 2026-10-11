package com.thegrizzlylabs.sardineandroid.impl.handler;

import com.thegrizzlylabs.sardineandroid.impl.SardineException;
import java.io.IOException;
import okhttp3.Response;

/* loaded from: classes10.dex */
public class UploadResponseHandler extends ValidatingResponseHandler<Boolean> {
    public static final int SC_LOCKED = 423;

    @Override // com.thegrizzlylabs.sardineandroid.impl.handler.ResponseHandler
    public Boolean handleResponse(Response response) throws SardineException, IOException {
        if (response.code() == 423) {
            return Boolean.FALSE;
        }
        validateResponse(response);
        return Boolean.TRUE;
    }
}
