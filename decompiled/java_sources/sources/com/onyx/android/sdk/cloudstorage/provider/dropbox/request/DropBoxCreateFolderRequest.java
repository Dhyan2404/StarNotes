package com.onyx.android.sdk.cloudstorage.provider.dropbox.request;

import com.dropbox.core.p006v2.DbxClientV2;
import com.dropbox.core.p006v2.files.FolderMetadata;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxCreateFolderRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/dropbox/core/v2/files/FolderMetadata;", "execute", "Lcom/dropbox/core/v2/DbxClientV2;", "a", "Lcom/dropbox/core/v2/DbxClientV2;", Constant.CLIENT, "", "b", Constants.STRING_SIG, "path", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/dropbox/core/v2/DbxClientV2;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class DropBoxCreateFolderRequest extends RxBaseRequest<FolderMetadata> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final DbxClientV2 client;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final String path;

    public DropBoxCreateFolderRequest(@NotNull DbxClientV2 client, @NotNull String path) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(path, "path");
        this.client = client;
        this.path = path;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public FolderMetadata execute() {
        FolderMetadata metadata = this.client.files().createFolderV2(this.path).getMetadata();
        Intrinsics.checkNotNullExpressionValue(metadata, "getMetadata(...)");
        return metadata;
    }
}
