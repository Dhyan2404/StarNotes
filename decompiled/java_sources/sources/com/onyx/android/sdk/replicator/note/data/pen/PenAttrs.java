package com.onyx.android.sdk.replicator.note.data.pen;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\b\u001a\u00020\u0000H\u0014J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0003H\u0016J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;", "", "texture", "", "(I)V", "getTexture", "()I", "setTexture", "clone", "component1", "copy", "equals", "", Constants.ATTRVAL_OTHER, "", "hashCode", "toString", "", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class PenAttrs implements Cloneable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private int texture;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs$Companion;", "", "()V", "copy", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;", "attrs", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PenAttrs copy(@NotNull PenAttrs attrs) {
            Intrinsics.checkNotNullParameter(attrs, "attrs");
            try {
                return attrs.m72359clone();
            } catch (CloneNotSupportedException e) {
                e.printStackTrace();
                return new PenAttrs(0, 1, null);
            }
        }

        private Companion() {
        }
    }

    public PenAttrs() {
        this(0, 1, null);
    }

    public static /* synthetic */ PenAttrs copy$default(PenAttrs penAttrs, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = penAttrs.texture;
        }
        return penAttrs.copy(i);
    }

    /* renamed from: component1, reason: from getter */
    public final int getTexture() {
        return this.texture;
    }

    @NotNull
    public final PenAttrs copy(int texture) {
        return new PenAttrs(texture);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.areEqual(PenAttrs.class, other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(other, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.pen.PenAttrs");
        return this.texture == ((PenAttrs) other).texture;
    }

    public final int getTexture() {
        return this.texture;
    }

    public int hashCode() {
        return this.texture;
    }

    public final void setTexture(int i) {
        this.texture = i;
    }

    @NotNull
    public String toString() {
        return "PenAttrs(texture=" + this.texture + ')';
    }

    public PenAttrs(int i) {
        this.texture = i;
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public PenAttrs m72359clone() throws CloneNotSupportedException {
        Object clone = super.clone();
        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.pen.PenAttrs");
        return (PenAttrs) clone;
    }

    public /* synthetic */ PenAttrs(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i);
    }
}
