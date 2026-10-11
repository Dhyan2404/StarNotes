package com.alibaba.sdk.android.oss.network;

import android.content.Context;
import com.alibaba.sdk.android.oss.callback.OSSCompletedCallback;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.callback.OSSRetryCallback;
import com.alibaba.sdk.android.oss.model.OSSRequest;
import com.alibaba.sdk.android.oss.model.OSSResult;
import okhttp3.OkHttpClient;

/* loaded from: classes3.dex */
public class ExecutionContext<Request extends OSSRequest, Result extends OSSResult> {

    /* renamed from: a */
    public Request f13334a;

    /* renamed from: b */
    public OkHttpClient f13335b;

    /* renamed from: c */
    public CancellationHandler f13336c;

    /* renamed from: d */
    public Context f13337d;

    /* renamed from: e */
    public OSSCompletedCallback f13338e;

    /* renamed from: f */
    public OSSProgressCallback f13339f;

    /* renamed from: g */
    public OSSRetryCallback f13340g;

    public ExecutionContext(OkHttpClient okHttpClient, Request request) {
        this(okHttpClient, request, null);
    }

    public Context getApplicationContext() {
        return this.f13337d;
    }

    public CancellationHandler getCancellationHandler() {
        return this.f13336c;
    }

    public OkHttpClient getClient() {
        return this.f13335b;
    }

    public OSSCompletedCallback<Request, Result> getCompletedCallback() {
        return this.f13338e;
    }

    public OSSProgressCallback getProgressCallback() {
        return this.f13339f;
    }

    public Request getRequest() {
        return this.f13334a;
    }

    public OSSRetryCallback getRetryCallback() {
        return this.f13340g;
    }

    public void setClient(OkHttpClient okHttpClient) {
        this.f13335b = okHttpClient;
    }

    public void setCompletedCallback(OSSCompletedCallback<Request, Result> oSSCompletedCallback) {
        this.f13338e = oSSCompletedCallback;
    }

    public void setProgressCallback(OSSProgressCallback oSSProgressCallback) {
        this.f13339f = oSSProgressCallback;
    }

    public void setRequest(Request request) {
        this.f13334a = request;
    }

    public void setRetryCallback(OSSRetryCallback oSSRetryCallback) {
        this.f13340g = oSSRetryCallback;
    }

    public ExecutionContext(OkHttpClient okHttpClient, Request request, Context context) {
        this.f13336c = new CancellationHandler();
        setClient(okHttpClient);
        setRequest(request);
        this.f13337d = context;
    }
}
