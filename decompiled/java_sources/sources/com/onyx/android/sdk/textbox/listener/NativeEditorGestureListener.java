package com.onyx.android.sdk.textbox.listener;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.widget.EditText;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0011\u0012\u0006\u0010\u001b\u001a\u00020\r¢\u0006\u0004\b&\u0010'J*\u0010\t\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0016J\u000e\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002J\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0002R\u0017\u0010\u0016\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u001b\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\"\u0010%\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;", "Landroid/view/GestureDetector$SimpleOnGestureListener;", "Landroid/view/MotionEvent;", "e1", "e2", "", "dx", "dy", "", "onScroll", NotificationCompat.CATEGORY_EVENT, "", "onUp", "Landroid/widget/EditText;", "editText", "", "a", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "e", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "getTextBox", "()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "textBox", C6997f.f39671c, "Landroid/widget/EditText;", "getEditor", "()Landroid/widget/EditText;", "editor", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "supportMovingWhenEditing", C6999h.f39688c, "I", "getSelectionStart", "()I", "setSelectionStart", "(I)V", "selectionStart", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/widget/EditText;)V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NativeEditorGestureListener extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final TextBoxView textBox;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final EditText editor;

    /* renamed from: g, reason: from kotlin metadata */
    public final boolean supportMovingWhenEditing;

    /* renamed from: h, reason: from kotlin metadata */
    public int selectionStart;

    public NativeEditorGestureListener(@NotNull TextBoxView textBox, @NotNull EditText editor) {
        Intrinsics.checkNotNullParameter(textBox, "textBox");
        Intrinsics.checkNotNullParameter(editor, "editor");
        this.textBox = textBox;
        this.editor = editor;
    }

    /* renamed from: a */
    public final int m36154a(EditText editText, MotionEvent event) {
        editText.getLocationOnScreen(new int[2]);
        return editText.getOffsetForPosition((((event.getRawX() - r0[0]) - editText.getTotalPaddingLeft()) + editText.getScrollX()) / this.textBox.getScaleX(), (((event.getRawY() - r0[1]) - editText.getTotalPaddingTop()) + editText.getScrollY()) / this.textBox.getScaleY());
    }

    @NotNull
    public final EditText getEditor() {
        return this.editor;
    }

    public final int getSelectionStart() {
        return this.selectionStart;
    }

    @NotNull
    public final TextBoxView getTextBox() {
        return this.textBox;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(@Nullable MotionEvent e1, @NotNull MotionEvent e2, float dx, float dy) {
        Intrinsics.checkNotNullParameter(e2, "e2");
        boolean z = true;
        if (!this.textBox.isReadOnly() && (!this.textBox.isEditing() || !MotionEventKt.isFingerTouch(e2) || !this.supportMovingWhenEditing)) {
            z = false;
        }
        if (z) {
            if (this.textBox.isTextBoxMoved()) {
                this.editor.setTextIsSelectable(false);
            } else {
                this.selectionStart = this.editor.getSelectionStart();
            }
        }
        return z;
    }

    public final void onUp(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!this.textBox.isEditing() || !this.textBox.isTextBoxMoved()) {
            this.selectionStart = m36154a(this.editor, event);
            return;
        }
        int i = this.selectionStart;
        if (i < 0 || i > this.editor.getText().length()) {
            this.selectionStart = this.editor.getText().length();
        }
        this.editor.setTextIsSelectable(true);
        this.editor.setSelection(this.selectionStart);
        this.editor.requestFocus();
    }

    public final void setSelectionStart(int i) {
        this.selectionStart = i;
    }
}
