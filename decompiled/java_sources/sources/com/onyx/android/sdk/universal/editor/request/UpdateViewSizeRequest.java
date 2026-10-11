package com.onyx.android.sdk.universal.editor.request;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\f¢\u0006\u0004\b#\u0010$J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0002J\b\u0010\u000b\u001a\u00020\nH\u0002R\u0014\u0010\u000e\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\rR\"\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u001b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\u001e\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\u0016\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001aR\"\u0010!\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\u0016\u001a\u0004\b\u001f\u0010\u0018\"\u0004\b \u0010\u001aR\u0016\u0010\"\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u0016¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/UpdateViewSizeRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", C6998g.f39679a, C6999h.f39688c, "i", "j", "", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/base/data/Size;", "size", "Lcom/onyx/android/sdk/base/data/Size;", "getSize", "()Lcom/onyx/android/sdk/base/data/Size;", "setSize", "(Lcom/onyx/android/sdk/base/data/Size;)V", Constants.HASIDCALL_INDEX_SIG, "getCalculateBoxManager", Constants.BOOLEAN_VALUE_SIG, "setCalculateBoxManager", "(Z)V", "calculateBoxManager", "getLockScaleByUser", "setLockScaleByUser", "lockScaleByUser", "getRotationChanged", "setRotationChanged", "rotationChanged", "updateScaleByRotationChanged", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UpdateViewSizeRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean calculateBoxManager;

    /* renamed from: h, reason: from kotlin metadata */
    public boolean lockScaleByUser;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean rotationChanged;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean updateScaleByRotationChanged;
    public Size size;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateViewSizeRequest(@NotNull EditorBundle editorBundle) {
        super(editorBundle.getWorkBundle());
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        this.calculateBoxManager = true;
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        if (!workBundle.isOpen()) {
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "doc not open", new Object[0]);
        } else {
            m41420g();
            m41421h(workBundle);
        }
    }

    /* renamed from: f */
    public final boolean m41419f() {
        if (WorkBundleKt.getWorkFeature(getWorkBundle()).supportAutoScaleToViewport() && !this.lockScaleByUser && this.editorBundle.getUiBundle().getEnableUpdateScaleOnRotation()) {
            return this.rotationChanged;
        }
        return false;
    }

    /* renamed from: g */
    public final void m41420g() {
        int rotation = getWorkBundle().getRotation();
        ResManager resManager = ResManager.INSTANCE;
        int rotation2 = resManager.getRotation();
        getWorkBundle().setRotation(rotation2);
        this.updateScaleByRotationChanged = resManager.isLandscapeRotation(rotation) && resManager.isPortraitRotation(rotation2);
        this.rotationChanged = rotation != rotation2;
    }

    public final boolean getCalculateBoxManager() {
        return this.calculateBoxManager;
    }

    public final boolean getLockScaleByUser() {
        return this.lockScaleByUser;
    }

    public final boolean getRotationChanged() {
        return this.rotationChanged;
    }

    @NotNull
    public final Size getSize() {
        Size size = this.size;
        if (size != null) {
            return size;
        }
        Intrinsics.throwUninitializedPropertyAccessException("size");
        return null;
    }

    /* renamed from: h */
    public final void m41421h(WorkBundle workBundle) {
        workBundle.getOpenDocArgs().setViewSize(Size.copy$default(getSize(), 0, 0, 3, null));
        boolean m41419f = m41419f();
        Debug.INSTANCE.m32062w(AnyKt.toSimpleNameString(this), AnyKt.toSimpleNameString(this.editorBundle) + " updateScale:" + m41419f, new Object[0]);
        if (m41419f) {
            m41422i();
        } else {
            m41423j();
        }
    }

    /* renamed from: i */
    public final void m41422i() {
        BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(getWorkBundle());
        BoxInfo copyCurrentOrFirstVisibleBoxInfo = obtainBoxManager.copyCurrentOrFirstVisibleBoxInfo();
        if (copyCurrentOrFirstVisibleBoxInfo == null) {
            return;
        }
        obtainBoxManager.setViewport(getSize().toRectF());
        BoxInfo.scaleToViewportWithAspectScaleCheck$default(copyCurrentOrFirstVisibleBoxInfo, getSize().toRectF(), false, 2, null);
        obtainBoxManager.updateCurrentMinScale(copyCurrentOrFirstVisibleBoxInfo.getId());
        obtainBoxManager.initScale(copyCurrentOrFirstVisibleBoxInfo.getActualScale());
        obtainBoxManager.scrollTo(copyCurrentOrFirstVisibleBoxInfo.getId(), 0.0f, 0.0f);
        obtainBoxManager.alignCenter();
    }

    /* renamed from: j */
    public final void m41423j() {
        WorkBundleKt.obtainBoxManager(getWorkBundle()).updateViewportSize(getSize(), this.calculateBoxManager);
    }

    public final void setCalculateBoxManager(boolean z) {
        this.calculateBoxManager = z;
    }

    public final void setLockScaleByUser(boolean z) {
        this.lockScaleByUser = z;
    }

    public final void setRotationChanged(boolean z) {
        this.rotationChanged = z;
    }

    public final void setSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "<set-?>");
        this.size = size;
    }
}
