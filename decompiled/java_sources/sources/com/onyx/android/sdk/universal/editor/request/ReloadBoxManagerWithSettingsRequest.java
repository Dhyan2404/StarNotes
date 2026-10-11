package com.onyx.android.sdk.universal.editor.request;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/ReloadBoxManagerWithSettingsRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", C6997f.f39671c, Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ReloadBoxManagerWithSettingsRequest extends RxBaseAppRequest {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReloadBoxManagerWithSettingsRequest(@NotNull WorkBundle workBundle) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        m41415f(workBundle);
    }

    /* renamed from: f */
    public final void m41415f(WorkBundle workBundle) {
        RectF rectF;
        String id;
        BoxInfo copy = WorkBundleKt.obtainBoxManager(workBundle).getViewport().copy();
        BoxInfo copyCurrentOrFirstVisibleBoxInfo = WorkBundleKt.obtainBoxManager(workBundle).copyCurrentOrFirstVisibleBoxInfo();
        if (copyCurrentOrFirstVisibleBoxInfo == null || (rectF = copyCurrentOrFirstVisibleBoxInfo.getVisibleRect()) == null) {
            rectF = new RectF();
        }
        BoxManager initBoxManagerBySettings = WorkBundleKt.initBoxManagerBySettings(workBundle);
        initBoxManagerBySettings.setViewport(copy.getBox());
        initBoxManagerBySettings.setData(workBundle.getVirtualPolicy().boxInfoSnapshot());
        if (copyCurrentOrFirstVisibleBoxInfo == null || (id = copyCurrentOrFirstVisibleBoxInfo.getId()) == null) {
            id = copy.getId();
        }
        initBoxManagerBySettings.updateCurrentMinScale(id);
        if (initBoxManagerBySettings.isEnabledContinuousScroll()) {
            initBoxManagerBySettings.alignCenter();
            initBoxManagerBySettings.initScale(copy.getActualScale());
            initBoxManagerBySettings.scrollTo(id, -rectF.left, -rectF.top);
        } else {
            initBoxManagerBySettings.initScale(initBoxManagerBySettings.getCurrentMinScale());
            BoxManager.scrollTo$default(initBoxManagerBySettings, id, 0.0f, 0.0f, 6, null);
            initBoxManagerBySettings.alignCenter();
        }
        WorkBundleKt.postVirtualDocViewInfo(workBundle, id);
    }
}
