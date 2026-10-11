package com.onyx.galaxy.note.common.keyboard;

import android.graphics.Rect;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u0013\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R$\u0010\u001b\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/keyboard/WindowInsetsBean;", "", "", "toString", "", "a", Constants.HASIDCALL_INDEX_SIG, "getImeVisible", Constants.BOOLEAN_VALUE_SIG, "setImeVisible", "(Z)V", "imeVisible", "", "b", "I", "getImeHeight", "()I", "setImeHeight", "(I)V", "imeHeight", "Landroid/graphics/Rect;", "c", "Landroid/graphics/Rect;", "getImeRect", "()Landroid/graphics/Rect;", "setImeRect", "(Landroid/graphics/Rect;)V", "imeRect", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class WindowInsetsBean {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public boolean imeVisible;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public int imeHeight;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @Nullable
    public Rect imeRect;

    public final int getImeHeight() {
        return this.imeHeight;
    }

    @Nullable
    public final Rect getImeRect() {
        return this.imeRect;
    }

    public final boolean getImeVisible() {
        return this.imeVisible;
    }

    public final void setImeHeight(int i) {
        this.imeHeight = i;
    }

    public final void setImeRect(@Nullable Rect rect) {
        this.imeRect = rect;
    }

    public final void setImeVisible(boolean z) {
        this.imeVisible = z;
    }

    @NotNull
    public String toString() {
        return "WindowInsetsBean(imeVisible=" + this.imeVisible + ", imeHeight=" + this.imeHeight + ", imeRect=" + this.imeRect + ')';
    }
}
