package com.onyx.android.sdk.hwr.request;

import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.utils.ZipUtils;
import com.onyx.android.sdk.hwr.data.bean.HWRResource;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u0017\u0010\n\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/request/HWRResourceUnzipRequest;", "Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;", "", "execute", "()Ljava/lang/Boolean;", "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "b", "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "getResource", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "resource", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRResourceUnzipRequest extends HWRBaseRequest<Boolean> {

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final HWRResource resource;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HWRResourceUnzipRequest(@NotNull HWRResource resource) {
        super(HWRBundle.INSTANCE.getEmpty());
        Intrinsics.checkNotNullParameter(resource, "resource");
        this.resource = resource;
    }

    @NotNull
    public final HWRResource getResource() {
        return this.resource;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public Boolean execute() {
        new File(this.resource.getUnzipFile()).mkdirs();
        ZipUtils zipUtils = ZipUtils.INSTANCE;
        String zipFile = this.resource.getZipFile();
        Intrinsics.checkNotNull(zipFile);
        String unzipFile = this.resource.getUnzipFile();
        Intrinsics.checkNotNull(unzipFile);
        zipUtils.decompressV2(zipFile, unzipFile);
        FileUtils.INSTANCE.deleteFile(this.resource.getZipFile());
        return Boolean.TRUE;
    }
}
