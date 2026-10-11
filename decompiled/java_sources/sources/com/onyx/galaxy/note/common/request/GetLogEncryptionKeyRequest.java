package com.onyx.galaxy.note.common.request;

import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R(\u0010\n\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR(\u0010\r\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u000b\u0010\u0007\u001a\u0004\b\f\u0010\t¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/request/GetLogEncryptionKeyRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "", "execute", "", "<set-?>", "a", Constants.STRING_SIG, "getId", "()Ljava/lang/String;", "id", "b", "getEncryptionKey", "encryptionKey", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class GetLogEncryptionKeyRequest extends BaseCloudRequest {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String id;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String encryptionKey;

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72420execute();
        return Unit.INSTANCE;
    }

    @Nullable
    public final String getEncryptionKey() {
        return this.encryptionKey;
    }

    @Nullable
    public final String getId() {
        return this.id;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0050 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0051  */
    /* renamed from: execute, reason: collision with other method in class */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m72420execute() throws java.lang.Exception {
        /*
            r2 = this;
            com.onyx.android.sdk.data.common.cloud.v1.ServiceFactory r0 = com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory.INSTANCE
            java.lang.Class<com.onyx.android.sdk.data.common.cloud.v2.OnyxLogService> r1 = com.onyx.android.sdk.data.common.cloud.p026v2.OnyxLogService.class
            java.lang.Object r0 = r0.getOnyxApiV1Service(r1)
            com.onyx.android.sdk.data.common.cloud.v2.OnyxLogService r0 = (com.onyx.android.sdk.data.common.cloud.p026v2.OnyxLogService) r0
            com.onyx.android.sdk.data.utils.RetrofitUtils r1 = com.onyx.android.sdk.data.utils.RetrofitUtils.INSTANCE
            retrofit2.Call r0 = r0.getEncryptionKey()
            retrofit2.Response r0 = r1.executeCall(r0)
            boolean r1 = r0.isSuccessful()
            if (r1 == 0) goto L40
            java.lang.Object r0 = r0.body()
            com.onyx.android.sdk.data.common.data.ResponeData r0 = (com.onyx.android.sdk.data.common.data.ResponeData) r0
            java.lang.Object r0 = r0.getData()
            java.util.Map r0 = (java.util.Map) r0
            if (r0 == 0) goto L40
            java.lang.String r1 = "key"
            java.lang.Object r1 = r0.get(r1)
            java.lang.String r1 = java.lang.String.valueOf(r1)
            r2.encryptionKey = r1
            java.lang.String r1 = "_id"
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r2.id = r0
        L40:
            java.lang.String r2 = r2.encryptionKey
            if (r2 == 0) goto L4d
            boolean r2 = kotlin.text.StringsKt.isBlank(r2)
            if (r2 == 0) goto L4b
            goto L4d
        L4b:
            r2 = 0
            goto L4e
        L4d:
            r2 = 1
        L4e:
            if (r2 != 0) goto L51
            return
        L51:
            java.lang.Exception r2 = new java.lang.Exception
            java.lang.String r0 = "encryptionKey detect null"
            r2.<init>(r0)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.common.request.GetLogEncryptionKeyRequest.m72420execute():void");
    }
}
