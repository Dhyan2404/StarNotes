package com.onyx.android.sdk.cloudstorage.provider.onxy.request;

import com.alibaba.sdk.android.oss.model.ObjectMetadata;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudUtils;
import com.onyx.android.sdk.data.common.oss.GetObjectBean;
import com.onyx.android.sdk.data.common.oss.RxOSSManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FileExistsException;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxCreateFolderRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;", "execute", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "a", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "rxOSSManager", "", "b", Constants.STRING_SIG, "path", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OnyxCreateFolderRequest extends RxBaseRequest<ObjectMetadata> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final RxOSSManager rxOSSManager;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final String path;

    public OnyxCreateFolderRequest(@NotNull RxOSSManager rxOSSManager, @NotNull String path) {
        Intrinsics.checkNotNullParameter(rxOSSManager, "rxOSSManager");
        Intrinsics.checkNotNullParameter(path, "path");
        this.rxOSSManager = rxOSSManager;
        this.path = path;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public ObjectMetadata execute() throws Exception {
        StringBuilder sb = new StringBuilder();
        OnyxCloudUtils onyxCloudUtils = OnyxCloudUtils.INSTANCE;
        sb.append(onyxCloudUtils.getCompleteCloudPrefix(this.path));
        sb.append(File.separator);
        String sb2 = sb.toString();
        Debug.INSTANCE.m32035d(OnyxCreateFolderRequest.class, "create folder key:" + sb2, new Object[0]);
        if (!this.rxOSSManager.doesObjectExist(sb2)) {
            this.rxOSSManager.createFolder(sb2);
            ObjectMetadata metadata = this.rxOSSManager.syncHeadObject(new GetObjectBean(sb2, null, 2, null)).getMetadata();
            Intrinsics.checkNotNull(metadata);
            return onyxCloudUtils.setCloudPath(metadata, sb2);
        }
        throw new FileExistsException();
    }
}
