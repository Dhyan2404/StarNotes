package com.onyx.android.sdk.cloudstorage.provider.dropbox.request;

import com.alibaba.fastjson2.TypeReference;
import com.dropbox.core.p006v2.DbxClientV2;
import com.dropbox.core.p006v2.files.RelocationResult;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxRenameFileRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/dropbox/core/v2/files/Metadata;", "execute", "Lcom/dropbox/core/v2/DbxClientV2;", "a", "Lcom/dropbox/core/v2/DbxClientV2;", Constant.CLIENT, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "fileOperation", Constants.CONSTRUCTOR_NAME, "(Lcom/dropbox/core/v2/DbxClientV2;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class DropBoxRenameFileRequest extends RxBaseRequest<com.dropbox.core.p006v2.files.Metadata> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final DbxClientV2 client;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileOperation fileOperation;

    public DropBoxRenameFileRequest(@NotNull DbxClientV2 client, @NotNull CloudFileOperation fileOperation) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(fileOperation, "fileOperation");
        this.client = client;
        this.fileOperation = fileOperation;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @Nullable
    public com.dropbox.core.p006v2.files.Metadata execute() {
        Object first;
        boolean startsWith$default;
        Object parseObject = JSONUtils.INSTANCE.parseObject(this.fileOperation.getDataJson(), new TypeReference<List<? extends CloudFileOperation.OperationData>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.dropbox.request.DropBoxRenameFileRequest$execute$operationData$1
        });
        Intrinsics.checkNotNull(parseObject);
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) parseObject);
        CloudFileOperation.OperationData operationData = (CloudFileOperation.OperationData) first;
        FileUtils fileUtils = FileUtils.INSTANCE;
        Intrinsics.checkNotNull(operationData);
        String concat = FilenameUtils.concat(fileUtils.getParent(operationData.getPath()), operationData.getNewName());
        Intrinsics.checkNotNull(concat);
        String separator = File.separator;
        Intrinsics.checkNotNullExpressionValue(separator, "separator");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(concat, separator, false, 2, null);
        if (!startsWith$default) {
            concat = separator + concat;
        }
        Debug debug = Debug.INSTANCE;
        debug.m32035d(DropBoxRenameFileRequest.class, operationData.getPath() + " rename to " + concat, new Object[0]);
        RelocationResult moveV2 = this.client.files().moveV2(operationData.getPath(), concat);
        debug.m32035d(DropBoxRenameFileRequest.class, "rename result:" + moveV2, new Object[0]);
        return moveV2.getMetadata();
    }
}
