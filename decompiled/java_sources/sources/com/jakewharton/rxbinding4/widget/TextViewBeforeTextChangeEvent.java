package com.jakewharton.rxbinding4.widget;

import android.widget.TextView;
import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0014\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u000e\u001a\u00020\u0006¢\u0006\u0004\b&\u0010'J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\t\u0010\b\u001a\u00020\u0006HÆ\u0003J\t\u0010\t\u001a\u00020\u0006HÆ\u0003J;\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u000e\u001a\u00020\u0006HÆ\u0001J\t\u0010\u0011\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0006HÖ\u0001J\u0013\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010\u000b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0017\u0010\f\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0017\u0010\r\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\"\u0010\u001f\u001a\u0004\b#\u0010!R\u0017\u0010\u000e\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b$\u0010\u001f\u001a\u0004\b%\u0010!¨\u0006("}, m61528d2 = {"Lcom/jakewharton/rxbinding4/widget/TextViewBeforeTextChangeEvent;", "", "Landroid/widget/TextView;", "component1", "", "component2", "", "component3", "component4", "component5", "view", "text", gon.f71290o0, "count", gon.f71277d0, "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Landroid/widget/TextView;", "getView", "()Landroid/widget/TextView;", "b", "Ljava/lang/CharSequence;", "getText", "()Ljava/lang/CharSequence;", "c", "I", "getStart", "()I", "d", "getCount", "e", "getAfter", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V", "rxbinding_release"}, m61529k = 1, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final /* data */ class TextViewBeforeTextChangeEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final TextView view;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final CharSequence text;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public final int start;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    public final int count;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    public final int after;

    public TextViewBeforeTextChangeEvent(@NotNull TextView view, @NotNull CharSequence text, int i, int i2, int i3) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(text, "text");
        this.view = view;
        this.text = text;
        this.start = i;
        this.count = i2;
        this.after = i3;
    }

    public static /* synthetic */ TextViewBeforeTextChangeEvent copy$default(TextViewBeforeTextChangeEvent textViewBeforeTextChangeEvent, TextView textView, CharSequence charSequence, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            textView = textViewBeforeTextChangeEvent.view;
        }
        if ((i4 & 2) != 0) {
            charSequence = textViewBeforeTextChangeEvent.text;
        }
        CharSequence charSequence2 = charSequence;
        if ((i4 & 4) != 0) {
            i = textViewBeforeTextChangeEvent.start;
        }
        int i5 = i;
        if ((i4 & 8) != 0) {
            i2 = textViewBeforeTextChangeEvent.count;
        }
        int i6 = i2;
        if ((i4 & 16) != 0) {
            i3 = textViewBeforeTextChangeEvent.after;
        }
        return textViewBeforeTextChangeEvent.copy(textView, charSequence2, i5, i6, i3);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final TextView getView() {
        return this.view;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final CharSequence getText() {
        return this.text;
    }

    /* renamed from: component3, reason: from getter */
    public final int getStart() {
        return this.start;
    }

    /* renamed from: component4, reason: from getter */
    public final int getCount() {
        return this.count;
    }

    /* renamed from: component5, reason: from getter */
    public final int getAfter() {
        return this.after;
    }

    @NotNull
    public final TextViewBeforeTextChangeEvent copy(@NotNull TextView view, @NotNull CharSequence text, int start, int count, int after) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(text, "text");
        return new TextViewBeforeTextChangeEvent(view, text, start, count, after);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TextViewBeforeTextChangeEvent)) {
            return false;
        }
        TextViewBeforeTextChangeEvent textViewBeforeTextChangeEvent = (TextViewBeforeTextChangeEvent) other;
        return Intrinsics.areEqual(this.view, textViewBeforeTextChangeEvent.view) && Intrinsics.areEqual(this.text, textViewBeforeTextChangeEvent.text) && this.start == textViewBeforeTextChangeEvent.start && this.count == textViewBeforeTextChangeEvent.count && this.after == textViewBeforeTextChangeEvent.after;
    }

    public final int getAfter() {
        return this.after;
    }

    public final int getCount() {
        return this.count;
    }

    public final int getStart() {
        return this.start;
    }

    @NotNull
    public final CharSequence getText() {
        return this.text;
    }

    @NotNull
    public final TextView getView() {
        return this.view;
    }

    public int hashCode() {
        TextView textView = this.view;
        int hashCode = (textView != null ? textView.hashCode() : 0) * 31;
        CharSequence charSequence = this.text;
        return ((((((hashCode + (charSequence != null ? charSequence.hashCode() : 0)) * 31) + Integer.hashCode(this.start)) * 31) + Integer.hashCode(this.count)) * 31) + Integer.hashCode(this.after);
    }

    @NotNull
    public String toString() {
        return "TextViewBeforeTextChangeEvent(view=" + this.view + ", text=" + this.text + ", start=" + this.start + ", count=" + this.count + ", after=" + this.after + MotionUtils.f31762d;
    }
}
