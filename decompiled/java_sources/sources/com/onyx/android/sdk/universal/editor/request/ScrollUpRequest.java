package com.onyx.android.sdk.universal.editor.request;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.data.ScrollInfo;
import com.onyx.android.sdk.universal.editor.data.VirtualDocViewInfo;
import com.onyx.android.sdk.universal.editor.events.app.VirtualDocViewInfoEvent;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/ScrollUpRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;", "scrollInfo", "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", "virtualDocViewInfo", "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", "getVirtualDocViewInfo", "()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", "setVirtualDocViewInfo", "(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ScrollUpRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final ScrollInfo scrollInfo;
    public VirtualDocViewInfo virtualDocViewInfo;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollUpRequest(@NotNull WorkBundle workBundle, @NotNull ScrollInfo scrollInfo) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(scrollInfo, "scrollInfo");
        this.scrollInfo = scrollInfo;
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        int roundToInt;
        int roundToInt2;
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(workBundle);
        RectF box = obtainBoxManager.getViewport().getBox();
        roundToInt = MathKt__MathJVMKt.roundToInt(box.width());
        roundToInt2 = MathKt__MathJVMKt.roundToInt(box.height() - this.scrollInfo.getHeight());
        obtainBoxManager.updateViewportSize(new Size(roundToInt, roundToInt2), false);
        obtainBoxManager.scrollBy(0.0f, -this.scrollInfo.getOffsetY());
        setVirtualDocViewInfo(WorkBundleKt.collectVirtualDocViewInfo(workBundle));
        WorkBundleKt.postEvent(workBundle, new VirtualDocViewInfoEvent(getVirtualDocViewInfo(), false, 2, null));
    }

    @NotNull
    public final VirtualDocViewInfo getVirtualDocViewInfo() {
        VirtualDocViewInfo virtualDocViewInfo = this.virtualDocViewInfo;
        if (virtualDocViewInfo != null) {
            return virtualDocViewInfo;
        }
        Intrinsics.throwUninitializedPropertyAccessException("virtualDocViewInfo");
        return null;
    }

    public final void setVirtualDocViewInfo(@NotNull VirtualDocViewInfo virtualDocViewInfo) {
        Intrinsics.checkNotNullParameter(virtualDocViewInfo, "<set-?>");
        this.virtualDocViewInfo = virtualDocViewInfo;
    }
}
