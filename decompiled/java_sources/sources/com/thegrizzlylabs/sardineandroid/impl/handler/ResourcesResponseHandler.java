package com.thegrizzlylabs.sardineandroid.impl.handler;

import android.util.Log;
import com.thegrizzlylabs.sardineandroid.DavResource;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;
import okhttp3.Response;

/* loaded from: classes10.dex */
public class ResourcesResponseHandler implements ResponseHandler<List<DavResource>> {

    /* renamed from: a */
    public static final String f93859a = "ResourcesResponseHandler";

    @Override // com.thegrizzlylabs.sardineandroid.impl.handler.ResponseHandler
    public List<DavResource> handleResponse(Response response) throws IOException {
        List<com.thegrizzlylabs.sardineandroid.model.Response> response2 = new MultiStatusResponseHandler().handleResponse(response).getResponse();
        ArrayList arrayList = new ArrayList(response2.size());
        for (com.thegrizzlylabs.sardineandroid.model.Response response3 : response2) {
            try {
                arrayList.add(new DavResource(response3));
            } catch (URISyntaxException unused) {
                Log.w(f93859a, String.format("Ignore resource with invalid URI %s", response3.getHref()));
            }
        }
        return arrayList;
    }
}
