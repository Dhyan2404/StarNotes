package com.onyx.android.sdk.universal.editor.request.page;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\r\u001a\u0004\u0018\u00010\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/page/GetPageBoxInfoRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "", C6997f.f39671c, "I", "pageIndex", "", C6998g.f39679a, "Ljava/lang/Float;", "scale", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;ILjava/lang/Float;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GetPageBoxInfoRequest extends RxBaseAppRequest {
    public BoxInfo boxInfo;

    /* renamed from: f, reason: from kotlin metadata */
    public final int pageIndex;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public final Float scale;

    public /* synthetic */ GetPageBoxInfoRequest(WorkBundle workBundle, int i, Float f, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(workBundle, i, (i2 & 4) != 0 ? null : f);
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        VirtualPage virtualPage = workBundle.getVirtualPolicy().getVirtualPage(this.pageIndex);
        Intrinsics.checkNotNull(virtualPage);
        setBoxInfo(virtualPage.getBox().copy());
        BoxInfo boxInfo = getBoxInfo();
        Float f = this.scale;
        boxInfo.setScale(f != null ? f.floatValue() : WorkBundleKt.obtainBoxManager(workBundle).getViewport().getActualScale());
    }

    @NotNull
    public final BoxInfo getBoxInfo() {
        BoxInfo boxInfo = this.boxInfo;
        if (boxInfo != null) {
            return boxInfo;
        }
        Intrinsics.throwUninitializedPropertyAccessException("boxInfo");
        return null;
    }

    public final void setBoxInfo(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<set-?>");
        this.boxInfo = boxInfo;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetPageBoxInfoRequest(@NotNull WorkBundle workBundle, int i, @Nullable Float f) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        this.pageIndex = i;
        this.scale = f;
    }
}
