package com.onyx.android.sdk.universal.editor;

import android.graphics.Point;
import android.view.View;
import com.onyx.android.sdk.base.data.WindowLocation;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.scheduler.RequestManager;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.universal.editor.data.VirtualDocViewInfo;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\u0007¢\u0006\u0004\b.\u0010/J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR.\u0010\u0015\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\"\u0010-\u001a\u00020&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,¨\u00060"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/DisplayBundle;", "", "Landroid/graphics/Point;", "getActivityOffset", "", "onDocumentClosed", "destroy", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Landroid/view/View;", "value", "b", "Landroid/view/View;", "getView", "()Landroid/view/View;", "setView", "(Landroid/view/View;)V", "view", "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", "c", "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", "getVirtualDocViewInfo", "()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", "setVirtualDocViewInfo", "(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V", "virtualDocViewInfo", "Lcom/onyx/android/sdk/universal/editor/display/RenderManager;", "d", "Lcom/onyx/android/sdk/universal/editor/display/RenderManager;", "getRenderManager", "()Lcom/onyx/android/sdk/universal/editor/display/RenderManager;", "setRenderManager", "(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;)V", "renderManager", "Lcom/onyx/android/sdk/base/scheduler/RequestManager;", "e", "Lcom/onyx/android/sdk/base/scheduler/RequestManager;", "getRequestManager", "()Lcom/onyx/android/sdk/base/scheduler/RequestManager;", "setRequestManager", "(Lcom/onyx/android/sdk/base/scheduler/RequestManager;)V", "requestManager", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DisplayBundle {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public View view;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public VirtualDocViewInfo virtualDocViewInfo;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public RenderManager renderManager;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public RequestManager requestManager;

    public DisplayBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        this.virtualDocViewInfo = new VirtualDocViewInfo();
        this.renderManager = new RenderManager();
        this.requestManager = new RequestManager();
    }

    public final void destroy() {
        setView(null);
        this.renderManager.destroy();
    }

    @NotNull
    public final Point getActivityOffset() {
        View view = this.view;
        if (view == null) {
            return new Point();
        }
        WindowLocation locationInActivity = ViewLocator.INSTANCE.locationInActivity(view);
        return new Point(locationInActivity.getX(), locationInActivity.getY());
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final RenderManager getRenderManager() {
        return this.renderManager;
    }

    @NotNull
    public final RequestManager getRequestManager() {
        return this.requestManager;
    }

    @Nullable
    public final View getView() {
        return this.view;
    }

    @NotNull
    public final VirtualDocViewInfo getVirtualDocViewInfo() {
        return this.virtualDocViewInfo;
    }

    public final void onDocumentClosed() {
        Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "onDocumentClosed", new Object[0]);
        this.virtualDocViewInfo = new VirtualDocViewInfo();
    }

    public final void setRenderManager(@NotNull RenderManager renderManager) {
        Intrinsics.checkNotNullParameter(renderManager, "<set-?>");
        this.renderManager = renderManager;
    }

    public final void setRequestManager(@NotNull RequestManager requestManager) {
        Intrinsics.checkNotNullParameter(requestManager, "<set-?>");
        this.requestManager = requestManager;
    }

    public final void setView(@Nullable View view) {
        this.view = view;
        this.renderManager.updateEditorView(view, EditorBundleKt.appEventBus(this.editorBundle));
    }

    public final void setVirtualDocViewInfo(@NotNull VirtualDocViewInfo virtualDocViewInfo) {
        Intrinsics.checkNotNullParameter(virtualDocViewInfo, "<set-?>");
        this.virtualDocViewInfo = virtualDocViewInfo;
    }
}
