package com.onyx.android.sdk.hwr.request;

import com.onyx.android.sdk.hwr.data.bean.HWRResource;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.data.bundle.HWRFactory;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\f\u001a\u00020\u0005¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0004\u001a\u00020\u0003H\u0016R\"\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/request/HWRResourceDeleteRequest;", "Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;", "", "", "execute", "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "b", "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "getResource", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "setResource", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V", "resource", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "bundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRResourceDeleteRequest extends HWRBaseRequest<Object> {

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public HWRResource resource;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HWRResourceDeleteRequest(@NotNull HWRBundle bundle, @NotNull HWRResource resource) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(resource, "resource");
        this.resource = resource;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72275execute();
        return Unit.INSTANCE;
    }

    @NotNull
    public final HWRResource getResource() {
        return this.resource;
    }

    public final void setResource(@NotNull HWRResource hWRResource) {
        Intrinsics.checkNotNullParameter(hWRResource, "<set-?>");
        this.resource = hWRResource;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72275execute() {
        HWRFactory.INSTANCE.getResourceDownloaderFactory().invoke(this.resource.getEngineType()).delete(this.resource);
    }
}
