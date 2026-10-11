package com.onyx.android.sdk.universal.editor.request;

import android.graphics.Matrix;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.data.VirtualDocViewInfo;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\"\u0010\u0013\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/ScaleRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "Landroid/graphics/Matrix;", C6997f.f39671c, "Landroid/graphics/Matrix;", "getGestureDeltaMatrix", "()Landroid/graphics/Matrix;", "gestureDeltaMatrix", "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", "getVirtualDocViewInfo", "()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", "setVirtualDocViewInfo", "(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V", "virtualDocViewInfo", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Landroid/graphics/Matrix;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ScaleRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Matrix gestureDeltaMatrix;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public VirtualDocViewInfo virtualDocViewInfo;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScaleRequest(@NotNull WorkBundle workBundle, @NotNull Matrix gestureDeltaMatrix) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(gestureDeltaMatrix, "gestureDeltaMatrix");
        this.gestureDeltaMatrix = gestureDeltaMatrix;
        this.virtualDocViewInfo = new VirtualDocViewInfo();
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(workBundle);
        Matrix matrix = this.gestureDeltaMatrix;
        Range<Float> scaleRange = WorkBundleKt.scaleRange(workBundle);
        Intrinsics.checkNotNullExpressionValue(scaleRange, "scaleRange(...)");
        obtainBoxManager.applyMatrix(matrix, scaleRange);
        this.virtualDocViewInfo = WorkBundleKt.collectVirtualDocViewInfo(workBundle);
    }

    @NotNull
    public final Matrix getGestureDeltaMatrix() {
        return this.gestureDeltaMatrix;
    }

    @NotNull
    public final VirtualDocViewInfo getVirtualDocViewInfo() {
        return this.virtualDocViewInfo;
    }

    public final void setVirtualDocViewInfo(@NotNull VirtualDocViewInfo virtualDocViewInfo) {
        Intrinsics.checkNotNullParameter(virtualDocViewInfo, "<set-?>");
        this.virtualDocViewInfo = virtualDocViewInfo;
    }
}
