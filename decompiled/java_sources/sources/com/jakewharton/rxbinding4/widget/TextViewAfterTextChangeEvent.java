package com.jakewharton.rxbinding4.widget;

import android.text.Editable;
import android.widget.TextView;
import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0018\u0010\u0019J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u001f\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, m61528d2 = {"Lcom/jakewharton/rxbinding4/widget/TextViewAfterTextChangeEvent;", "", "Landroid/widget/TextView;", "component1", "Landroid/text/Editable;", "component2", "view", "editable", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Landroid/widget/TextView;", "getView", "()Landroid/widget/TextView;", "b", "Landroid/text/Editable;", "getEditable", "()Landroid/text/Editable;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/widget/TextView;Landroid/text/Editable;)V", "rxbinding_release"}, m61529k = 1, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final /* data */ class TextViewAfterTextChangeEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final TextView view;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @Nullable
    public final Editable editable;

    public TextViewAfterTextChangeEvent(@NotNull TextView view, @Nullable Editable editable) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = view;
        this.editable = editable;
    }

    public static /* synthetic */ TextViewAfterTextChangeEvent copy$default(TextViewAfterTextChangeEvent textViewAfterTextChangeEvent, TextView textView, Editable editable, int i, Object obj) {
        if ((i & 1) != 0) {
            textView = textViewAfterTextChangeEvent.view;
        }
        if ((i & 2) != 0) {
            editable = textViewAfterTextChangeEvent.editable;
        }
        return textViewAfterTextChangeEvent.copy(textView, editable);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final TextView getView() {
        return this.view;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final Editable getEditable() {
        return this.editable;
    }

    @NotNull
    public final TextViewAfterTextChangeEvent copy(@NotNull TextView view, @Nullable Editable editable) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        return new TextViewAfterTextChangeEvent(view, editable);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TextViewAfterTextChangeEvent)) {
            return false;
        }
        TextViewAfterTextChangeEvent textViewAfterTextChangeEvent = (TextViewAfterTextChangeEvent) other;
        return Intrinsics.areEqual(this.view, textViewAfterTextChangeEvent.view) && Intrinsics.areEqual(this.editable, textViewAfterTextChangeEvent.editable);
    }

    @Nullable
    public final Editable getEditable() {
        return this.editable;
    }

    @NotNull
    public final TextView getView() {
        return this.view;
    }

    public int hashCode() {
        TextView textView = this.view;
        int hashCode = (textView != null ? textView.hashCode() : 0) * 31;
        Editable editable = this.editable;
        return hashCode + (editable != null ? editable.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "TextViewAfterTextChangeEvent(view=" + this.view + ", editable=" + ((Object) this.editable) + MotionUtils.f31762d;
    }
}
