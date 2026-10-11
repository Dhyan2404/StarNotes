package com.onyx.android.sdk.data.serverconvert.request;

import android.content.Context;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.oss.RxOSSManager;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertEntry;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\t\u001a\u00020\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/request/UploadDocToOssRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "appContext", "Landroid/content/Context;", "rxOSSManager", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "convertEntry", "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;", "(Landroid/content/Context;Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)V", "execute", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class UploadDocToOssRequest extends BaseCloudRequest {

    @NotNull
    private final Context appContext;

    @NotNull
    private final ConvertEntry convertEntry;

    @NotNull
    private final RxOSSManager rxOSSManager;

    public UploadDocToOssRequest(@NotNull Context appContext, @NotNull RxOSSManager rxOSSManager, @NotNull ConvertEntry convertEntry) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(rxOSSManager, "rxOSSManager");
        Intrinsics.checkNotNullParameter(convertEntry, "convertEntry");
        this.appContext = appContext;
        this.rxOSSManager = rxOSSManager;
        this.convertEntry = convertEntry;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0028 A[Catch: Exception -> 0x0039, TRY_LEAVE, TryCatch #0 {Exception -> 0x0039, blocks: (B:2:0x0000, B:4:0x0019, B:9:0x0025, B:12:0x0028), top: B:1:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025 A[Catch: Exception -> 0x0039, TryCatch #0 {Exception -> 0x0039, blocks: (B:2:0x0000, B:4:0x0019, B:9:0x0025, B:12:0x0028), top: B:1:0x0000 }] */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object execute() {
        /*
            r4 = this;
            com.onyx.android.sdk.data.common.oss.RxOSSManager r0 = r4.rxOSSManager     // Catch: java.lang.Exception -> L39
            android.content.Context r1 = r4.appContext     // Catch: java.lang.Exception -> L39
            com.onyx.android.sdk.data.serverconvert.bean.ConvertEntry r2 = r4.convertEntry     // Catch: java.lang.Exception -> L39
            java.io.File r2 = r2.getFile()     // Catch: java.lang.Exception -> L39
            java.lang.String r2 = r2.getAbsolutePath()     // Catch: java.lang.Exception -> L39
            java.lang.String r3 = "getAbsolutePath(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)     // Catch: java.lang.Exception -> L39
            java.lang.String r0 = r0.syncUploadFile(r1, r2)     // Catch: java.lang.Exception -> L39
            if (r0 == 0) goto L22
            boolean r1 = kotlin.text.StringsKt.isBlank(r0)     // Catch: java.lang.Exception -> L39
            if (r1 == 0) goto L20
            goto L22
        L20:
            r1 = 0
            goto L23
        L22:
            r1 = 1
        L23:
            if (r1 == 0) goto L28
            com.onyx.android.sdk.data.serverconvert.bean.ConvertEntry r4 = r4.convertEntry     // Catch: java.lang.Exception -> L39
            return r4
        L28:
            com.onyx.android.sdk.data.serverconvert.bean.ConvertEntry r1 = r4.convertEntry     // Catch: java.lang.Exception -> L39
            r1.setOssUploadKey(r0)     // Catch: java.lang.Exception -> L39
            com.onyx.android.sdk.data.serverconvert.bean.ConvertEntry r1 = r4.convertEntry     // Catch: java.lang.Exception -> L39
            com.onyx.android.sdk.data.common.oss.RxOSSManager r2 = r4.rxOSSManager     // Catch: java.lang.Exception -> L39
            java.lang.String r0 = r2.getOssUrl(r0)     // Catch: java.lang.Exception -> L39
            r1.setOssUploadUrl(r0)     // Catch: java.lang.Exception -> L39
            goto L60
        L39:
            com.onyx.android.sdk.base.utils.Debug r0 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "upload failed! path:"
            r1.append(r2)
            com.onyx.android.sdk.data.serverconvert.bean.ConvertEntry r2 = r4.convertEntry
            java.io.File r2 = r2.getFile()
            java.lang.String r2 = r2.getAbsolutePath()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.m32037d(r1)
            com.onyx.android.sdk.data.serverconvert.bean.ConvertEntry r0 = r4.convertEntry
            com.onyx.android.sdk.data.serverconvert.bean.ConvertResultType r1 = com.onyx.android.sdk.data.serverconvert.bean.ConvertResultType.RESULT_FAILED
            r0.setStatus(r1)
        L60:
            com.onyx.android.sdk.data.serverconvert.bean.ConvertEntry r4 = r4.convertEntry
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.data.serverconvert.request.UploadDocToOssRequest.execute():com.onyx.android.sdk.data.serverconvert.bean.ConvertEntry");
    }
}
