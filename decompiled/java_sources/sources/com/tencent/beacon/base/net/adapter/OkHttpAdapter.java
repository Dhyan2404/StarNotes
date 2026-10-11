package com.tencent.beacon.base.net.adapter;

import androidx.annotation.Nullable;
import com.tencent.beacon.base.net.BResponse;
import com.tencent.beacon.base.net.BodyType;
import com.tencent.beacon.base.net.call.Callback;
import com.tencent.beacon.base.net.call.HttpRequestEntity;
import com.tencent.beacon.base.net.call.JceRequestEntity;
import com.tencent.beacon.base.net.p066b.C14935d;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;

/* loaded from: classes10.dex */
public class OkHttpAdapter extends AbstractNetAdapter {
    private OkHttpClient client;
    private int failCount;

    private OkHttpAdapter(OkHttpClient okHttpClient) {
        this.client = okHttpClient;
    }

    public static /* synthetic */ int access$008(OkHttpAdapter okHttpAdapter) {
        int i = okHttpAdapter.failCount;
        okHttpAdapter.failCount = i + 1;
        return i;
    }

    private RequestBody buildBody(HttpRequestEntity httpRequestEntity) {
        BodyType bodyType = httpRequestEntity.bodyType();
        int i = C14915e.f92672a[bodyType.ordinal()];
        if (i == 1) {
            return RequestBody.create(MediaType.parse(bodyType.httpType), C14935d.m59300b(httpRequestEntity.formParams()));
        }
        if (i == 2) {
            return RequestBody.create(MediaType.parse(bodyType.httpType), httpRequestEntity.json());
        }
        if (i != 3) {
            return null;
        }
        return RequestBody.create(MediaType.parse("multipart/form-data"), httpRequestEntity.content());
    }

    public static AbstractNetAdapter create(@Nullable OkHttpClient okHttpClient) {
        return okHttpClient != null ? new OkHttpAdapter(okHttpClient) : new OkHttpAdapter();
    }

    private Headers mapToHeaders(Map<String, String> map) {
        Headers.Builder builder = new Headers.Builder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (entry.getValue() != null) {
                builder.add(entry.getKey(), entry.getValue());
            }
        }
        return builder.build();
    }

    @Override // com.tencent.beacon.base.net.adapter.AbstractNetAdapter
    public void request(JceRequestEntity jceRequestEntity, Callback<byte[]> callback) {
        RequestBody create = RequestBody.create(MediaType.parse("jce"), jceRequestEntity.getContent());
        Headers mapToHeaders = mapToHeaders(jceRequestEntity.getHeader());
        String name = jceRequestEntity.getType().name();
        this.client.newCall(new Request.Builder().url(jceRequestEntity.getUrl()).tag(name).post(create).headers(mapToHeaders).build()).enqueue(new C14913c(this, callback, name));
    }

    private OkHttpAdapter() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        this.client = builder.connectTimeout(30000L, timeUnit).readTimeout(10000L, timeUnit).build();
    }

    @Override // com.tencent.beacon.base.net.adapter.AbstractNetAdapter
    public void request(HttpRequestEntity httpRequestEntity, Callback<BResponse> callback) {
        String tag = httpRequestEntity.tag();
        this.client.newCall(new Request.Builder().url(httpRequestEntity.url()).method(httpRequestEntity.method().name(), buildBody(httpRequestEntity)).headers(mapToHeaders(httpRequestEntity.headers())).tag(tag == null ? "beacon" : tag).build()).enqueue(new C14914d(this, callback, tag));
    }
}
