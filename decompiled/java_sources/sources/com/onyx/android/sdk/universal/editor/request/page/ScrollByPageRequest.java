package com.onyx.android.sdk.universal.editor.request.page;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\f\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u000b¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/page/ScrollByPageRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;", "boxManager", C6998g.f39679a, C6997f.f39671c, "", "F", "dx", "dy", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;FF)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ScrollByPageRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    public final float dx;

    /* renamed from: g, reason: from kotlin metadata */
    public final float dy;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollByPageRequest(@NotNull WorkBundle workBundle, float f, float f2) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        this.dx = f;
        this.dy = f2;
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        BoxManager boxManager = workBundle.getBoxManager();
        if (boxManager == null) {
            return;
        }
        m41481g(boxManager);
    }

    /* renamed from: f */
    public final void m41480f(BoxManager boxManager) {
        if (boxManager.isEnabledContinuousScroll()) {
            return;
        }
        boxManager.visibleBoxes();
        BoxManager.scrollTo$default(boxManager, boxManager.getCurrentBoxId(), 0.0f, 0.0f, 6, null);
    }

    /* renamed from: g */
    public final void m41481g(BoxManager boxManager) {
        boxManager.scrollBy(this.dx, this.dy);
        m41480f(boxManager);
        Debug.INSTANCE.m32035d(ScrollByPageRequest.class, "dx = " + this.dx + ", dy = " + this.dy, new Object[0]);
    }
}
