package com.onyx.galaxy.note.editor.view.magnifier;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.universal.editor.view.EditorViewDownListener;
import com.onyx.galaxy.note.databinding.LayoutMagnifierViewPortBinding;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bB\u001b\b\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b\u001a\u0010\u001eB#\b\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b\u001a\u0010!J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0003R\u0016\u0010\u000b\u001a\u00020\b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\t\u0010\nR$\u0010\u0013\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0017\u001a\u00020\u00148F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;", "Landroid/widget/FrameLayout;", "Landroid/view/MotionEvent;", "ev", "", "dispatchTouchEvent", "", "a", "Lcom/onyx/galaxy/note/databinding/LayoutMagnifierViewPortBinding;", "e", "Lcom/onyx/galaxy/note/databinding/LayoutMagnifierViewPortBinding;", "binding", "Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;", "getDownListener", "()Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;", "setDownListener", "(Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;)V", "downListener", "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;", "getViewportView", "()Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;", "viewportView", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class MagnifierViewportContainer extends FrameLayout {

    /* renamed from: e, reason: from kotlin metadata */
    public LayoutMagnifierViewPortBinding binding;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public EditorViewDownListener downListener;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MagnifierViewportContainer(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: a */
    public final void m48438a() {
        LayoutMagnifierViewPortBinding inflate = LayoutMagnifierViewPortBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(@NotNull MotionEvent ev) {
        EditorViewDownListener editorViewDownListener;
        Intrinsics.checkNotNullParameter(ev, "ev");
        if (MotionEventKt.isDownAction(ev) && (editorViewDownListener = this.downListener) != null) {
            editorViewDownListener.onDown("");
        }
        return super.dispatchTouchEvent(ev);
    }

    @Nullable
    public final EditorViewDownListener getDownListener() {
        return this.downListener;
    }

    @NotNull
    public final MagnifierViewportView getViewportView() {
        LayoutMagnifierViewPortBinding layoutMagnifierViewPortBinding = this.binding;
        if (layoutMagnifierViewPortBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutMagnifierViewPortBinding = null;
        }
        MagnifierViewportView viewportView = layoutMagnifierViewPortBinding.viewportView;
        Intrinsics.checkNotNullExpressionValue(viewportView, "viewportView");
        return viewportView;
    }

    public final void setDownListener(@Nullable EditorViewDownListener editorViewDownListener) {
        this.downListener = editorViewDownListener;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MagnifierViewportContainer(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MagnifierViewportContainer(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        m48438a();
    }
}
