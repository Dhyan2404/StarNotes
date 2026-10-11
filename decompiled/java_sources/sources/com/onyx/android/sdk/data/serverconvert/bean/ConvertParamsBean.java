package com.onyx.android.sdk.data.serverconvert.bean;

import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\n¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertParamsBean;", "", "fileLoc", "", Constants.ATTRNAME_FORMAT, BreakpointSQLiteKey.FILENAME, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getFileLoc", "()Ljava/lang/String;", "setFileLoc", "(Ljava/lang/String;)V", "getFilename", "setFilename", "getFormat", "setFormat", "component1", "component2", "component3", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class ConvertParamsBean {

    @NotNull
    private String fileLoc;

    @NotNull
    private String filename;

    @NotNull
    private String format;

    public ConvertParamsBean() {
        this(null, null, null, 7, null);
    }

    public static /* synthetic */ ConvertParamsBean copy$default(ConvertParamsBean convertParamsBean, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = convertParamsBean.fileLoc;
        }
        if ((i & 2) != 0) {
            str2 = convertParamsBean.format;
        }
        if ((i & 4) != 0) {
            str3 = convertParamsBean.filename;
        }
        return convertParamsBean.copy(str, str2, str3);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getFileLoc() {
        return this.fileLoc;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getFormat() {
        return this.format;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getFilename() {
        return this.filename;
    }

    @NotNull
    public final ConvertParamsBean copy(@NotNull String fileLoc, @NotNull String format, @NotNull String filename) {
        Intrinsics.checkNotNullParameter(fileLoc, "fileLoc");
        Intrinsics.checkNotNullParameter(format, "format");
        Intrinsics.checkNotNullParameter(filename, "filename");
        return new ConvertParamsBean(fileLoc, format, filename);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConvertParamsBean)) {
            return false;
        }
        ConvertParamsBean convertParamsBean = (ConvertParamsBean) other;
        return Intrinsics.areEqual(this.fileLoc, convertParamsBean.fileLoc) && Intrinsics.areEqual(this.format, convertParamsBean.format) && Intrinsics.areEqual(this.filename, convertParamsBean.filename);
    }

    @NotNull
    public final String getFileLoc() {
        return this.fileLoc;
    }

    @NotNull
    public final String getFilename() {
        return this.filename;
    }

    @NotNull
    public final String getFormat() {
        return this.format;
    }

    public int hashCode() {
        return (((this.fileLoc.hashCode() * 31) + this.format.hashCode()) * 31) + this.filename.hashCode();
    }

    public final void setFileLoc(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.fileLoc = str;
    }

    public final void setFilename(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.filename = str;
    }

    public final void setFormat(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.format = str;
    }

    @NotNull
    public String toString() {
        return "ConvertParamsBean(fileLoc=" + this.fileLoc + ", format=" + this.format + ", filename=" + this.filename + ')';
    }

    public ConvertParamsBean(@NotNull String fileLoc, @NotNull String format, @NotNull String filename) {
        Intrinsics.checkNotNullParameter(fileLoc, "fileLoc");
        Intrinsics.checkNotNullParameter(format, "format");
        Intrinsics.checkNotNullParameter(filename, "filename");
        this.fileLoc = fileLoc;
        this.format = format;
        this.filename = filename;
    }

    public /* synthetic */ ConvertParamsBean(String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3);
    }
}
