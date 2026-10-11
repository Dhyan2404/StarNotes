package com.onyx.android.sdk.neopdf;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00052\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\b\"\u0004\b\u000b\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfOpenResult;", "Ljava/io/Serializable;", "openCode", "", "isLinearized", "", "isXrefValid", "(IZZ)V", Constants.BOOLEAN_VALUE_SIG, "setLinearized", "(Z)V", "setXrefValid", "getOpenCode", "()I", "setOpenCode", "(I)V", "component1", "component2", "component3", "copy", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "hashCode", "toString", "", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class PdfOpenResult implements Serializable {
    private boolean isLinearized;
    private boolean isXrefValid;
    private int openCode;

    public PdfOpenResult() {
        this(0, false, false, 7, null);
    }

    public static /* synthetic */ PdfOpenResult copy$default(PdfOpenResult pdfOpenResult, int i, boolean z, boolean z2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = pdfOpenResult.openCode;
        }
        if ((i2 & 2) != 0) {
            z = pdfOpenResult.isLinearized;
        }
        if ((i2 & 4) != 0) {
            z2 = pdfOpenResult.isXrefValid;
        }
        return pdfOpenResult.copy(i, z, z2);
    }

    /* renamed from: component1, reason: from getter */
    public final int getOpenCode() {
        return this.openCode;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getIsLinearized() {
        return this.isLinearized;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getIsXrefValid() {
        return this.isXrefValid;
    }

    @NotNull
    public final PdfOpenResult copy(int openCode, boolean isLinearized, boolean isXrefValid) {
        return new PdfOpenResult(openCode, isLinearized, isXrefValid);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PdfOpenResult)) {
            return false;
        }
        PdfOpenResult pdfOpenResult = (PdfOpenResult) other;
        return this.openCode == pdfOpenResult.openCode && this.isLinearized == pdfOpenResult.isLinearized && this.isXrefValid == pdfOpenResult.isXrefValid;
    }

    public final int getOpenCode() {
        return this.openCode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = Integer.hashCode(this.openCode) * 31;
        boolean z = this.isLinearized;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.isXrefValid;
        return i2 + (z2 ? 1 : z2 ? 1 : 0);
    }

    public final boolean isLinearized() {
        return this.isLinearized;
    }

    public final boolean isXrefValid() {
        return this.isXrefValid;
    }

    public final void setLinearized(boolean z) {
        this.isLinearized = z;
    }

    public final void setOpenCode(int i) {
        this.openCode = i;
    }

    public final void setXrefValid(boolean z) {
        this.isXrefValid = z;
    }

    @NotNull
    public String toString() {
        return "PdfOpenResult(openCode=" + this.openCode + ", isLinearized=" + this.isLinearized + ", isXrefValid=" + this.isXrefValid + ')';
    }

    public PdfOpenResult(int i, boolean z, boolean z2) {
        this.openCode = i;
        this.isLinearized = z;
        this.isXrefValid = z2;
    }

    public /* synthetic */ PdfOpenResult(int i, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2);
    }
}
