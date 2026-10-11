package com.onyx.android.sdk.universal.editor.eventhandler;

import androidx.annotation.CallSuper;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.app.EditorCreatedEvent;
import com.onyx.android.sdk.universal.editor.events.app.EditorPauseEvent;
import com.onyx.android.sdk.universal.editor.events.app.EditorResumeEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\f¢\u0006\u0004\b\u0014\u0010\u0012J\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0017J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\bH\u0017J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\nH\u0017R\"\u0010\u0013\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;", "", "init", "destroy", "Lcom/onyx/android/sdk/universal/editor/events/app/EditorCreatedEvent;", NotificationCompat.CATEGORY_EVENT, "onEditorCreatedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/EditorPauseEvent;", "onEditorPauseEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/EditorResumeEvent;", "onEditorResumeEvent", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "e", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "editorBundle", Constants.CONSTRUCTOR_NAME, "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class BaseEventHandler implements EventHandler {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public EditorBundle editorBundle;

    public BaseEventHandler(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        init();
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    @CallSuper
    public void destroy() {
        EditorBundleKt.unregister(this.editorBundle, this);
        Debug.INSTANCE.m32035d(getClass(), "destroy", new Object[0]);
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public final void init() {
        EditorBundleKt.register(this.editorBundle, this);
        Debug.INSTANCE.m32035d(getClass(), BaiduYunConstant.CREATE, new Object[0]);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEditorCreatedEvent(@NotNull EditorCreatedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEditorPauseEvent(@NotNull EditorPauseEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEditorResumeEvent(@NotNull EditorResumeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.editorBundle = editorBundle;
    }
}
