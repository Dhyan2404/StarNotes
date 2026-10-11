package com.onyx.android.sdk.universal.editor.data;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0006HÆ\u0003J'\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000f¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;", "", "srcIndex", "", "dstIndex", "doAnimation", "", "(IIZ)V", "getDoAnimation", Constants.BOOLEAN_VALUE_SIG, "setDoAnimation", "(Z)V", "getDstIndex", "()I", "setDstIndex", "(I)V", "getSrcIndex", "setSrcIndex", "component1", "component2", "component3", "copy", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "toString", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class CopyPageArgs {
    private boolean doAnimation;
    private int dstIndex;
    private int srcIndex;

    public CopyPageArgs() {
        this(0, 0, false, 7, null);
    }

    public static /* synthetic */ CopyPageArgs copy$default(CopyPageArgs copyPageArgs, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = copyPageArgs.srcIndex;
        }
        if ((i3 & 2) != 0) {
            i2 = copyPageArgs.dstIndex;
        }
        if ((i3 & 4) != 0) {
            z = copyPageArgs.doAnimation;
        }
        return copyPageArgs.copy(i, i2, z);
    }

    /* renamed from: component1, reason: from getter */
    public final int getSrcIndex() {
        return this.srcIndex;
    }

    /* renamed from: component2, reason: from getter */
    public final int getDstIndex() {
        return this.dstIndex;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getDoAnimation() {
        return this.doAnimation;
    }

    @NotNull
    public final CopyPageArgs copy(int srcIndex, int dstIndex, boolean doAnimation) {
        return new CopyPageArgs(srcIndex, dstIndex, doAnimation);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CopyPageArgs)) {
            return false;
        }
        CopyPageArgs copyPageArgs = (CopyPageArgs) other;
        return this.srcIndex == copyPageArgs.srcIndex && this.dstIndex == copyPageArgs.dstIndex && this.doAnimation == copyPageArgs.doAnimation;
    }

    public final boolean getDoAnimation() {
        return this.doAnimation;
    }

    public final int getDstIndex() {
        return this.dstIndex;
    }

    public final int getSrcIndex() {
        return this.srcIndex;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((Integer.hashCode(this.srcIndex) * 31) + Integer.hashCode(this.dstIndex)) * 31;
        boolean z = this.doAnimation;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public final void setDoAnimation(boolean z) {
        this.doAnimation = z;
    }

    public final void setDstIndex(int i) {
        this.dstIndex = i;
    }

    public final void setSrcIndex(int i) {
        this.srcIndex = i;
    }

    @NotNull
    public String toString() {
        return "CopyPageArgs(srcIndex=" + this.srcIndex + ", dstIndex=" + this.dstIndex + ", doAnimation=" + this.doAnimation + ')';
    }

    public CopyPageArgs(int i, int i2, boolean z) {
        this.srcIndex = i;
        this.dstIndex = i2;
        this.doAnimation = z;
    }

    public /* synthetic */ CopyPageArgs(int i, int i2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2, (i3 & 4) != 0 ? false : z);
    }
}
