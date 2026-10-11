package com.jakewharton.rxbinding4.widget;

import android.view.KeyEvent;
import android.widget.TextView;
import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u001e\u0010\u001fJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0003J)\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\t\u0010\u000e\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0019\u0010\n\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006 "}, m61528d2 = {"Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;", "", "Landroid/widget/TextView;", "component1", "", "component2", "Landroid/view/KeyEvent;", "component3", "view", "actionId", "keyEvent", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Landroid/widget/TextView;", "getView", "()Landroid/widget/TextView;", "b", "I", "getActionId", "()I", "c", "Landroid/view/KeyEvent;", "getKeyEvent", "()Landroid/view/KeyEvent;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/widget/TextView;ILandroid/view/KeyEvent;)V", "rxbinding_release"}, m61529k = 1, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final /* data */ class TextViewEditorActionEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final TextView view;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final int actionId;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @Nullable
    public final KeyEvent keyEvent;

    public TextViewEditorActionEvent(@NotNull TextView view, int i, @Nullable KeyEvent keyEvent) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = view;
        this.actionId = i;
        this.keyEvent = keyEvent;
    }

    public static /* synthetic */ TextViewEditorActionEvent copy$default(TextViewEditorActionEvent textViewEditorActionEvent, TextView textView, int i, KeyEvent keyEvent, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            textView = textViewEditorActionEvent.view;
        }
        if ((i2 & 2) != 0) {
            i = textViewEditorActionEvent.actionId;
        }
        if ((i2 & 4) != 0) {
            keyEvent = textViewEditorActionEvent.keyEvent;
        }
        return textViewEditorActionEvent.copy(textView, i, keyEvent);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final TextView getView() {
        return this.view;
    }

    /* renamed from: component2, reason: from getter */
    public final int getActionId() {
        return this.actionId;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final KeyEvent getKeyEvent() {
        return this.keyEvent;
    }

    @NotNull
    public final TextViewEditorActionEvent copy(@NotNull TextView view, int actionId, @Nullable KeyEvent keyEvent) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        return new TextViewEditorActionEvent(view, actionId, keyEvent);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TextViewEditorActionEvent)) {
            return false;
        }
        TextViewEditorActionEvent textViewEditorActionEvent = (TextViewEditorActionEvent) other;
        return Intrinsics.areEqual(this.view, textViewEditorActionEvent.view) && this.actionId == textViewEditorActionEvent.actionId && Intrinsics.areEqual(this.keyEvent, textViewEditorActionEvent.keyEvent);
    }

    public final int getActionId() {
        return this.actionId;
    }

    @Nullable
    public final KeyEvent getKeyEvent() {
        return this.keyEvent;
    }

    @NotNull
    public final TextView getView() {
        return this.view;
    }

    public int hashCode() {
        TextView textView = this.view;
        int hashCode = (((textView != null ? textView.hashCode() : 0) * 31) + Integer.hashCode(this.actionId)) * 31;
        KeyEvent keyEvent = this.keyEvent;
        return hashCode + (keyEvent != null ? keyEvent.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "TextViewEditorActionEvent(view=" + this.view + ", actionId=" + this.actionId + ", keyEvent=" + this.keyEvent + MotionUtils.f31762d;
    }
}
