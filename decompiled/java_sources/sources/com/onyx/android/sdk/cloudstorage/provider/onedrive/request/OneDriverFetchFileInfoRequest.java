package com.onyx.android.sdk.cloudstorage.provider.onedrive.request;

import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveClient;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveService;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverErrorBody;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.utils.OneDriverUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0014\u0010\u0015J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R$\u0010\u000f\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u0013\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\n\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000e¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileInfoRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;", "execute", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;", "oneDriveClient", "", "b", Constants.STRING_SIG, "getPath", "()Ljava/lang/String;", "setPath", "(Ljava/lang/String;)V", "path", "c", "getId", "setId", "id", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OneDriverFetchFileInfoRequest extends RxBaseRequest<OneDriverFileInfo> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final OneDriveClient oneDriveClient;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String path;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String id;

    public OneDriverFetchFileInfoRequest(@NotNull OneDriveClient oneDriveClient) {
        Intrinsics.checkNotNullParameter(oneDriveClient, "oneDriveClient");
        this.oneDriveClient = oneDriveClient;
    }

    @Nullable
    public final String getId() {
        return this.id;
    }

    @Nullable
    public final String getPath() {
        return this.path;
    }

    public final void setId(@Nullable String str) {
        this.id = str;
    }

    public final void setPath(@Nullable String str) {
        this.path = str;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public OneDriverFileInfo execute() {
        Response<OneDriverFileInfo> execute;
        OneDriveService oneDriveService = this.oneDriveClient.getOneDriveService();
        if (StringKt.isNotBlank(this.id)) {
            execute = oneDriveService.fetchFileById(this.id).execute();
            Intrinsics.checkNotNullExpressionValue(execute, "execute(...)");
        } else {
            execute = oneDriveService.fetchFileByPath(OneDriverUtils.INSTANCE.parsePath(this.path, false)).execute();
            Intrinsics.checkNotNullExpressionValue(execute, "execute(...)");
        }
        if (execute.isSuccessful()) {
            OneDriverFileInfo body = execute.body();
            Intrinsics.checkNotNullExpressionValue(body, "body(...)");
            return body;
        }
        throw OneDriverErrorBody.INSTANCE.parseError(execute);
    }
}
