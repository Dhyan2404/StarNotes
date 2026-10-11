package com.thegrizzlylabs.sardineandroid.impl.handler;

import com.thegrizzlylabs.sardineandroid.impl.SardineException;
import com.thegrizzlylabs.sardineandroid.model.Multistatus;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* loaded from: classes10.dex */
public class MultiStatusResponseHandler extends ValidatingResponseHandler<Multistatus> {
    public Multistatus getMultistatus(InputStream inputStream) throws IOException {
        return (Multistatus) SardineUtil.unmarshal(Multistatus.class, inputStream);
    }

    @Override // com.thegrizzlylabs.sardineandroid.impl.handler.ResponseHandler
    public Multistatus handleResponse(Response response) throws IOException {
        super.validateResponse(response);
        ResponseBody body = response.body();
        if (body != null) {
            return getMultistatus(body.byteStream());
        }
        throw new SardineException("No entity found in response", response.code(), response.message());
    }
}
