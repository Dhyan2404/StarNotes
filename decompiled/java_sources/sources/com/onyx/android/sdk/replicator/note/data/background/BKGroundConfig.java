package com.onyx.android.sdk.replicator.note.data.background;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0018\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0007HÆ\u0003J1\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u00032\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u0007HÖ\u0001J\u0010\u0010\u001d\u001a\u00020\u00032\b\u0010\u001e\u001a\u0004\u0018\u00010\u0000J\t\u0010\u001f\u001a\u00020 HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\fR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\n\"\u0004\b\u0010\u0010\fR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;", "", "asDefault", "", "applyAllPage", "canvasAutoExpand", "scaleType", "", "(ZZZI)V", "getApplyAllPage", Constants.BOOLEAN_VALUE_SIG, "setApplyAllPage", "(Z)V", "getAsDefault", "setAsDefault", "getCanvasAutoExpand", "setCanvasAutoExpand", "getScaleType", "()I", "setScaleType", "(I)V", "component1", "component2", "component3", "component4", "copy", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "sameWith", AbstractLogger.CONFIG, "toString", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class BKGroundConfig {
    private boolean applyAllPage;
    private boolean asDefault;
    private boolean canvasAutoExpand;
    private int scaleType;

    public BKGroundConfig() {
        this(false, false, false, 0, 15, null);
    }

    public static /* synthetic */ BKGroundConfig copy$default(BKGroundConfig bKGroundConfig, boolean z, boolean z2, boolean z3, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = bKGroundConfig.asDefault;
        }
        if ((i2 & 2) != 0) {
            z2 = bKGroundConfig.applyAllPage;
        }
        if ((i2 & 4) != 0) {
            z3 = bKGroundConfig.canvasAutoExpand;
        }
        if ((i2 & 8) != 0) {
            i = bKGroundConfig.scaleType;
        }
        return bKGroundConfig.copy(z, z2, z3, i);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getAsDefault() {
        return this.asDefault;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getApplyAllPage() {
        return this.applyAllPage;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getCanvasAutoExpand() {
        return this.canvasAutoExpand;
    }

    /* renamed from: component4, reason: from getter */
    public final int getScaleType() {
        return this.scaleType;
    }

    @NotNull
    public final BKGroundConfig copy(boolean asDefault, boolean applyAllPage, boolean canvasAutoExpand, int scaleType) {
        return new BKGroundConfig(asDefault, applyAllPage, canvasAutoExpand, scaleType);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BKGroundConfig)) {
            return false;
        }
        BKGroundConfig bKGroundConfig = (BKGroundConfig) other;
        return this.asDefault == bKGroundConfig.asDefault && this.applyAllPage == bKGroundConfig.applyAllPage && this.canvasAutoExpand == bKGroundConfig.canvasAutoExpand && this.scaleType == bKGroundConfig.scaleType;
    }

    public final boolean getApplyAllPage() {
        return this.applyAllPage;
    }

    public final boolean getAsDefault() {
        return this.asDefault;
    }

    public final boolean getCanvasAutoExpand() {
        return this.canvasAutoExpand;
    }

    public final int getScaleType() {
        return this.scaleType;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    public int hashCode() {
        boolean z = this.asDefault;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        ?? r2 = this.applyAllPage;
        int i2 = r2;
        if (r2 != 0) {
            i2 = 1;
        }
        int i3 = (i + i2) * 31;
        boolean z2 = this.canvasAutoExpand;
        return ((i3 + (z2 ? 1 : z2 ? 1 : 0)) * 31) + Integer.hashCode(this.scaleType);
    }

    public final boolean sameWith(@Nullable BKGroundConfig config) {
        return Intrinsics.areEqual(this, config);
    }

    public final void setApplyAllPage(boolean z) {
        this.applyAllPage = z;
    }

    public final void setAsDefault(boolean z) {
        this.asDefault = z;
    }

    public final void setCanvasAutoExpand(boolean z) {
        this.canvasAutoExpand = z;
    }

    public final void setScaleType(int i) {
        this.scaleType = i;
    }

    @NotNull
    public String toString() {
        return "BKGroundConfig(asDefault=" + this.asDefault + ", applyAllPage=" + this.applyAllPage + ", canvasAutoExpand=" + this.canvasAutoExpand + ", scaleType=" + this.scaleType + ')';
    }

    public BKGroundConfig(boolean z, boolean z2, boolean z3, int i) {
        this.asDefault = z;
        this.applyAllPage = z2;
        this.canvasAutoExpand = z3;
        this.scaleType = i;
    }

    public /* synthetic */ BKGroundConfig(boolean z, boolean z2, boolean z3, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? true : z, (i2 & 2) != 0 ? true : z2, (i2 & 4) != 0 ? false : z3, (i2 & 8) != 0 ? 1 : i);
    }
}
