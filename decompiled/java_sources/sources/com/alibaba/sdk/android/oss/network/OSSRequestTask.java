package com.alibaba.sdk.android.oss.network;

import com.alibaba.sdk.android.oss.common.HttpMethod;
import com.alibaba.sdk.android.oss.internal.OSSRetryHandler;
import com.alibaba.sdk.android.oss.internal.RequestMessage;
import com.alibaba.sdk.android.oss.internal.ResponseMessage;
import com.alibaba.sdk.android.oss.internal.ResponseParser;
import com.alibaba.sdk.android.oss.model.OSSResult;
import java.util.HashMap;
import java.util.concurrent.Callable;
import okhttp3.Headers;
import okhttp3.OkHttpClient;
import okhttp3.Response;

/* loaded from: classes3.dex */
public class OSSRequestTask<T extends OSSResult> implements Callable<T> {

    /* renamed from: e */
    public ResponseParser<T> f13342e;

    /* renamed from: f */
    public RequestMessage f13343f;

    /* renamed from: g */
    public ExecutionContext f13344g;

    /* renamed from: h */
    public OkHttpClient f13345h;

    /* renamed from: i */
    public OSSRetryHandler f13346i;

    /* renamed from: j */
    public int f13347j = 0;

    /* renamed from: com.alibaba.sdk.android.oss.network.OSSRequestTask$a */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C1779a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f13348a;

        static {
            int[] iArr = new int[HttpMethod.values().length];
            f13348a = iArr;
            try {
                iArr[HttpMethod.POST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13348a[HttpMethod.PUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13348a[HttpMethod.GET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13348a[HttpMethod.HEAD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f13348a[HttpMethod.DELETE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public OSSRequestTask(RequestMessage requestMessage, ResponseParser responseParser, ExecutionContext executionContext, int i) {
        this.f13342e = responseParser;
        this.f13343f = requestMessage;
        this.f13344g = executionContext;
        this.f13345h = executionContext.getClient();
        this.f13346i = new OSSRetryHandler(i);
    }

    /* renamed from: a */
    public final ResponseMessage m7735a(RequestMessage requestMessage, Response response) {
        ResponseMessage responseMessage = new ResponseMessage();
        responseMessage.setRequest(requestMessage);
        responseMessage.setResponse(response);
        HashMap hashMap = new HashMap();
        Headers headers = response.headers();
        for (int i = 0; i < headers.size(); i++) {
            hashMap.put(headers.name(i), headers.value(i));
        }
        responseMessage.setHeaders(hashMap);
        responseMessage.setStatusCode(response.code());
        responseMessage.setContentLength(response.body().getContentLength());
        responseMessage.setContent(response.body().byteStream());
        return responseMessage;
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x0194 A[Catch: Exception -> 0x02ca, TryCatch #4 {Exception -> 0x02ca, blocks: (B:3:0x0004, B:5:0x000c, B:6:0x0019, B:8:0x003a, B:10:0x0043, B:11:0x0050, B:12:0x0062, B:14:0x0068, B:16:0x007f, B:27:0x01f9, B:112:0x00c6, B:113:0x00cc, B:114:0x00d2, B:117:0x00dd, B:119:0x00ea, B:123:0x0194, B:125:0x019c, B:126:0x01a7, B:128:0x01c8, B:129:0x01e5, B:130:0x0101, B:132:0x010b, B:135:0x0127, B:136:0x012e, B:137:0x012f, B:139:0x0137, B:144:0x0165, B:149:0x016f, B:150:0x0172, B:154:0x0173, B:156:0x017b, B:157:0x0189, B:159:0x004a, B:160:0x02c2, B:161:0x02c9), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0385  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x031b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.util.concurrent.Callable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public T call() throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 1095
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.sdk.android.oss.network.OSSRequestTask.call():com.alibaba.sdk.android.oss.model.OSSResult");
    }
}
