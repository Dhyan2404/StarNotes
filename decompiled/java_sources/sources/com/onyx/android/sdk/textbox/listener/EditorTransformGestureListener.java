package com.onyx.android.sdk.textbox.listener;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.textbox.data.TransformType;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0011\u001a\u00020\r\u0012\u0006\u0010\u0017\u001a\u00020\u0012¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J*\u0010\f\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016R\u0017\u0010\u0011\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0017\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001a\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/listener/EditorTransformGestureListener;", "Landroid/view/GestureDetector$SimpleOnGestureListener;", "Landroid/view/MotionEvent;", "e", "", "onSingleTapUp", "onDown", "e1", "e2", "", "dx", "dy", "onScroll", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "getTextBox", "()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "textBox", "Landroid/view/View;", C6997f.f39671c, "Landroid/view/View;", "getTarget", "()Landroid/view/View;", "target", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "supportMovingWhenEditing", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;)V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class EditorTransformGestureListener extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final TextBoxView textBox;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final View target;

    /* renamed from: g, reason: from kotlin metadata */
    public final boolean supportMovingWhenEditing;

    public EditorTransformGestureListener(@NotNull TextBoxView textBox, @NotNull View target) {
        Intrinsics.checkNotNullParameter(textBox, "textBox");
        Intrinsics.checkNotNullParameter(target, "target");
        this.textBox = textBox;
        this.target = target;
    }

    @NotNull
    public final View getTarget() {
        return this.target;
    }

    @NotNull
    public final TextBoxView getTextBox() {
        return this.textBox;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(@NotNull MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        this.textBox.handleTouch(this.target, e, TransformType.TRANSLATE);
        return super.onDown(e);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(@Nullable MotionEvent e1, @NotNull MotionEvent e2, float dx, float dy) {
        Intrinsics.checkNotNullParameter(e2, "e2");
        boolean z = true;
        if (!this.textBox.isReadOnly() && (!this.textBox.isEditing() || !MotionEventKt.isFingerTouch(e2) || !this.supportMovingWhenEditing)) {
            z = false;
        }
        if (z) {
            this.textBox.handleTouch(this.target, e2, TransformType.TRANSLATE);
        }
        return z;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(@NotNull MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        if (!this.textBox.isReadOnly()) {
            return false;
        }
        this.textBox.enterEditingMode();
        return false;
    }
}
