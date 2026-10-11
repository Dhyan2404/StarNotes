package com.onyx.android.sdk.universal.editor.api;

import androidx.annotation.CallSuper;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0017J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;", "", "()V", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "destroy", "", "init", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public abstract class BaseApiSubscriber {
    public EditorBundle editorBundle;

    @CallSuper
    public void destroy() {
        EditorBundleKt.unregister(getEditorBundle(), this);
        Debug.INSTANCE.m32035d(getClass(), "destroy", new Object[0]);
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            return editorBundle;
        }
        Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        return null;
    }

    public final void init(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        setEditorBundle(editorBundle);
        EditorBundleKt.register(editorBundle, this);
        Debug.INSTANCE.m32035d(getClass(), "init", new Object[0]);
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.editorBundle = editorBundle;
    }
}
