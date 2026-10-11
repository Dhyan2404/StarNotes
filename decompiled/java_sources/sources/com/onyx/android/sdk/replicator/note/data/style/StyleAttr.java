package com.onyx.android.sdk.replicator.note.data.style;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\u0000H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;", "", "()V", "color", "", "getColor", "()I", "setColor", "(I)V", "clone", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class StyleAttr implements Cloneable {
    private int color = -16777216;

    public final int getColor() {
        return this.color;
    }

    public final void setColor(int i) {
        this.color = i;
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public StyleAttr m72375clone() {
        Object clone = super.clone();
        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.style.StyleAttr");
        return (StyleAttr) clone;
    }
}
