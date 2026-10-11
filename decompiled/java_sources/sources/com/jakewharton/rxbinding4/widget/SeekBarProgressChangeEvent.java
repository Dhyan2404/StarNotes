package com.jakewharton.rxbinding4.widget;

import android.widget.SeekBar;
import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0011\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u001e\u0010\u001fJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J'\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u0006HÆ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\t\u0010\u000e\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fHÖ\u0003R\u001a\u0010\b\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010\n\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006 "}, m61528d2 = {"Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;", "Lcom/jakewharton/rxbinding4/widget/SeekBarChangeEvent;", "Landroid/widget/SeekBar;", "component1", "", "component2", "", "component3", "view", "progress", "fromUser", "copy", "", "toString", "hashCode", "", Constants.ATTRVAL_OTHER, "equals", "a", "Landroid/widget/SeekBar;", "getView", "()Landroid/widget/SeekBar;", "b", "I", "getProgress", "()I", "c", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getFromUser", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/widget/SeekBar;IZ)V", "rxbinding_release"}, m61529k = 1, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final /* data */ class SeekBarProgressChangeEvent extends SeekBarChangeEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final SeekBar view;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final int progress;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public final boolean fromUser;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SeekBarProgressChangeEvent(@NotNull SeekBar view, int i, boolean z) {
        super(null);
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = view;
        this.progress = i;
        this.fromUser = z;
    }

    public static /* synthetic */ SeekBarProgressChangeEvent copy$default(SeekBarProgressChangeEvent seekBarProgressChangeEvent, SeekBar seekBar, int i, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            seekBar = seekBarProgressChangeEvent.getView();
        }
        if ((i2 & 2) != 0) {
            i = seekBarProgressChangeEvent.progress;
        }
        if ((i2 & 4) != 0) {
            z = seekBarProgressChangeEvent.fromUser;
        }
        return seekBarProgressChangeEvent.copy(seekBar, i, z);
    }

    @NotNull
    public final SeekBar component1() {
        return getView();
    }

    /* renamed from: component2, reason: from getter */
    public final int getProgress() {
        return this.progress;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getFromUser() {
        return this.fromUser;
    }

    @NotNull
    public final SeekBarProgressChangeEvent copy(@NotNull SeekBar view, int progress, boolean fromUser) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        return new SeekBarProgressChangeEvent(view, progress, fromUser);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SeekBarProgressChangeEvent)) {
            return false;
        }
        SeekBarProgressChangeEvent seekBarProgressChangeEvent = (SeekBarProgressChangeEvent) other;
        return Intrinsics.areEqual(getView(), seekBarProgressChangeEvent.getView()) && this.progress == seekBarProgressChangeEvent.progress && this.fromUser == seekBarProgressChangeEvent.fromUser;
    }

    public final boolean getFromUser() {
        return this.fromUser;
    }

    public final int getProgress() {
        return this.progress;
    }

    @Override // com.jakewharton.rxbinding4.widget.SeekBarChangeEvent
    @NotNull
    public SeekBar getView() {
        return this.view;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        SeekBar view = getView();
        int hashCode = (((view != null ? view.hashCode() : 0) * 31) + Integer.hashCode(this.progress)) * 31;
        boolean z = this.fromUser;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    @NotNull
    public String toString() {
        return "SeekBarProgressChangeEvent(view=" + getView() + ", progress=" + this.progress + ", fromUser=" + this.fromUser + MotionUtils.f31762d;
    }
}
