package com.evernote.client.android.asyncclient;

import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* loaded from: classes4.dex */
public class EvernoteHtmlHelper extends EvernoteAsyncClient {

    /* renamed from: d */
    public final String f20875d;

    /* renamed from: e */
    public final String f20876e;
    protected final String mAuthToken;
    protected final String mHost;
    protected final OkHttpClient mHttpClient;

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteHtmlHelper$a */
    /* loaded from: classes4.dex */
    public class CallableC4472a implements Callable<Response> {

        /* renamed from: e */
        public final /* synthetic */ String f20877e;

        public CallableC4472a(String str) {
            this.f20877e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Response call() throws Exception {
            return EvernoteHtmlHelper.this.downloadNote(this.f20877e);
        }
    }

    public EvernoteHtmlHelper(@NonNull OkHttpClient okHttpClient, @NonNull String str, @NonNull String str2, @NonNull ExecutorService executorService) {
        super(executorService);
        this.mHttpClient = okHttpClient;
        this.mHost = str;
        this.mAuthToken = str2;
        this.f20875d = "auth=" + str2;
        this.f20876e = createBaseUrl();
    }

    public String createBaseUrl() {
        return new Uri.Builder().scheme("https").authority(this.mHost).path("/note").build().toString();
    }

    public Response downloadNote(@NonNull String str) throws IOException {
        return fetchEvernoteUrl(this.f20876e + '/' + str);
    }

    public Future<Response> downloadNoteAsync(@NonNull String str, @Nullable EvernoteCallback<Response> evernoteCallback) throws IOException {
        return submitTask(new CallableC4472a(str), evernoteCallback);
    }

    public Response fetchEvernoteUrl(String str) throws IOException {
        return this.mHttpClient.newCall(new Request.Builder().url(str).addHeader("Cookie", this.f20875d).get().build()).execute();
    }

    public String parseBody(@NonNull Response response) throws IOException {
        if (response.code() == 200) {
            return response.body().string();
        }
        return null;
    }
}
