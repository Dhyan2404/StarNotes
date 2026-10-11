package com.thegrizzlylabs.sardineandroid.impl.handler;

import com.thegrizzlylabs.sardineandroid.impl.SardineException;
import com.thegrizzlylabs.sardineandroid.model.Prop;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* loaded from: classes10.dex */
public class LockResponseHandler extends ValidatingResponseHandler<String> {
    public String getToken(InputStream inputStream) throws IOException {
        return ((Prop) SardineUtil.unmarshal(Prop.class, inputStream)).getLockdiscovery().getActivelock().iterator().next().getLocktoken().getHref();
    }

    @Override // com.thegrizzlylabs.sardineandroid.impl.handler.ResponseHandler
    public String handleResponse(Response response) throws IOException {
        validateResponse(response);
        ResponseBody body = response.body();
        if (body != null) {
            return getToken(body.byteStream());
        }
        throw new SardineException("No entity found in response", response.code(), response.message());
    }
}
