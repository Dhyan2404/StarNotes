package com.onyx.android.sdk.reader.api;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u001c\u0010\u001dJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J'\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001J\t\u0010\u000b\u001a\u00020\u0002HÖ\u0001J\t\u0010\f\u001a\u00020\u0005HÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0011\u001a\u0004\b\u0015\u0010\u0013R\"\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ConvertArgs;", "", "", "component1", "component2", "", "component3", "outputPath", "imageCachePath", "savePDFPageCount", "copy", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getOutputPath", "()Ljava/lang/String;", "b", "getImageCachePath", "c", "I", "getSavePDFPageCount", "()I", "setSavePDFPageCount", "(I)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;I)V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ConvertArgs {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String outputPath;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final String imageCachePath;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public int savePDFPageCount;

    public ConvertArgs(@NotNull String outputPath, @NotNull String imageCachePath, int i) {
        Intrinsics.checkNotNullParameter(outputPath, "outputPath");
        Intrinsics.checkNotNullParameter(imageCachePath, "imageCachePath");
        this.outputPath = outputPath;
        this.imageCachePath = imageCachePath;
        this.savePDFPageCount = i;
    }

    public static /* synthetic */ ConvertArgs copy$default(ConvertArgs convertArgs, String str, String str2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = convertArgs.outputPath;
        }
        if ((i2 & 2) != 0) {
            str2 = convertArgs.imageCachePath;
        }
        if ((i2 & 4) != 0) {
            i = convertArgs.savePDFPageCount;
        }
        return convertArgs.copy(str, str2, i);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getOutputPath() {
        return this.outputPath;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getImageCachePath() {
        return this.imageCachePath;
    }

    /* renamed from: component3, reason: from getter */
    public final int getSavePDFPageCount() {
        return this.savePDFPageCount;
    }

    @NotNull
    public final ConvertArgs copy(@NotNull String outputPath, @NotNull String imageCachePath, int savePDFPageCount) {
        Intrinsics.checkNotNullParameter(outputPath, "outputPath");
        Intrinsics.checkNotNullParameter(imageCachePath, "imageCachePath");
        return new ConvertArgs(outputPath, imageCachePath, savePDFPageCount);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConvertArgs)) {
            return false;
        }
        ConvertArgs convertArgs = (ConvertArgs) other;
        return Intrinsics.areEqual(this.outputPath, convertArgs.outputPath) && Intrinsics.areEqual(this.imageCachePath, convertArgs.imageCachePath) && this.savePDFPageCount == convertArgs.savePDFPageCount;
    }

    @NotNull
    public final String getImageCachePath() {
        return this.imageCachePath;
    }

    @NotNull
    public final String getOutputPath() {
        return this.outputPath;
    }

    public final int getSavePDFPageCount() {
        return this.savePDFPageCount;
    }

    public int hashCode() {
        return (((this.outputPath.hashCode() * 31) + this.imageCachePath.hashCode()) * 31) + Integer.hashCode(this.savePDFPageCount);
    }

    public final void setSavePDFPageCount(int i) {
        this.savePDFPageCount = i;
    }

    @NotNull
    public String toString() {
        return "ConvertArgs(outputPath=" + this.outputPath + ", imageCachePath=" + this.imageCachePath + ", savePDFPageCount=" + this.savePDFPageCount + ')';
    }

    public /* synthetic */ ConvertArgs(String str, String str2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? 100 : i);
    }
}
