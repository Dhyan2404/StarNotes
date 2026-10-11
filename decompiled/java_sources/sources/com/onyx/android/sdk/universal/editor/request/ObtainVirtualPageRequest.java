package com.onyx.android.sdk.universal.editor.request;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0006¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR$\u0010\u0015\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/ObtainVirtualPageRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C6997f.f39671c, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "boxInfo", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "getVirtualPage", "()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "setVirtualPage", "(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V", "virtualPage", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ObtainVirtualPageRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public BoxInfo boxInfo;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public VirtualPage virtualPage;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ObtainVirtualPageRequest(@NotNull WorkBundle workBundle, @NotNull BoxInfo boxInfo) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        this.boxInfo = boxInfo;
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        VirtualPage obtainVirtualPage = workBundle.getVirtualPolicy().obtainVirtualPage(this.boxInfo);
        if (obtainVirtualPage != null) {
            VirtualPage copy = obtainVirtualPage.copy();
            copy.setBox(this.boxInfo);
            this.virtualPage = copy;
        }
    }

    @NotNull
    public final BoxInfo getBoxInfo() {
        return this.boxInfo;
    }

    @Nullable
    public final VirtualPage getVirtualPage() {
        return this.virtualPage;
    }

    public final void setBoxInfo(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<set-?>");
        this.boxInfo = boxInfo;
    }

    public final void setVirtualPage(@Nullable VirtualPage virtualPage) {
        this.virtualPage = virtualPage;
    }
}
