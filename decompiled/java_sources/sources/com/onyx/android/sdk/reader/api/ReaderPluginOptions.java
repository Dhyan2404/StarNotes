package com.onyx.android.sdk.reader.api;

import android.content.Context;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.neopdf.NeoPdfNative;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.nio.file.Path;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\b\u0086\b\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB'\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003J\u000f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J)\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\t\u0010\u000b\u001a\u00020\u0003HÖ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\u0013\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R(\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0012\u001a\u0004\b\u0016\u0010\u0014\"\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;", "", "", "", "component1", "", "Ljava/nio/file/Path;", "component2", "fontDirectories", "resDirs", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Ljava/util/List;", "getFontDirectories", "()Ljava/util/List;", "b", "getResDirs", "setResDirs", "(Ljava/util/List;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Ljava/util/List;)V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ReaderPluginOptions {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: c */
    @NotNull
    public static final ReaderPluginOptions f44478c = new ReaderPluginOptions(0 == true ? 1 : 0, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<String> fontDirectories;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public List<Path> resDirs;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions$Companion;", "", "()V", "dummy", "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;", "getDummy", "()Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;", BaiduYunConstant.CREATE, "context", "Landroid/content/Context;", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @NotNull
        public final ReaderPluginOptions create(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new ReaderPluginOptions(NeoPdfNative.INSTANCE.defaultFontDirs(), null, 2, 0 == true ? 1 : 0);
        }

        @NotNull
        public final ReaderPluginOptions getDummy() {
            return ReaderPluginOptions.f44478c;
        }

        public Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ReaderPluginOptions() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ReaderPluginOptions copy$default(ReaderPluginOptions readerPluginOptions, List list, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = readerPluginOptions.fontDirectories;
        }
        if ((i & 2) != 0) {
            list2 = readerPluginOptions.resDirs;
        }
        return readerPluginOptions.copy(list, list2);
    }

    @NotNull
    public final List<String> component1() {
        return this.fontDirectories;
    }

    @NotNull
    public final List<Path> component2() {
        return this.resDirs;
    }

    @NotNull
    public final ReaderPluginOptions copy(@NotNull List<String> fontDirectories, @NotNull List<Path> resDirs) {
        Intrinsics.checkNotNullParameter(fontDirectories, "fontDirectories");
        Intrinsics.checkNotNullParameter(resDirs, "resDirs");
        return new ReaderPluginOptions(fontDirectories, resDirs);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ReaderPluginOptions)) {
            return false;
        }
        ReaderPluginOptions readerPluginOptions = (ReaderPluginOptions) other;
        return Intrinsics.areEqual(this.fontDirectories, readerPluginOptions.fontDirectories) && Intrinsics.areEqual(this.resDirs, readerPluginOptions.resDirs);
    }

    @NotNull
    public final List<String> getFontDirectories() {
        return this.fontDirectories;
    }

    @NotNull
    public final List<Path> getResDirs() {
        return this.resDirs;
    }

    public int hashCode() {
        return (this.fontDirectories.hashCode() * 31) + this.resDirs.hashCode();
    }

    public final void setResDirs(@NotNull List<Path> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.resDirs = list;
    }

    @NotNull
    public String toString() {
        return "ReaderPluginOptions(fontDirectories=" + this.fontDirectories + ", resDirs=" + this.resDirs + ')';
    }

    public ReaderPluginOptions(@NotNull List<String> fontDirectories, @NotNull List<Path> resDirs) {
        Intrinsics.checkNotNullParameter(fontDirectories, "fontDirectories");
        Intrinsics.checkNotNullParameter(resDirs, "resDirs");
        this.fontDirectories = fontDirectories;
        this.resDirs = resDirs;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ ReaderPluginOptions(java.util.List r2, java.util.List r3, int r4, kotlin.jvm.internal.DefaultConstructorMarker r5) {
        /*
            r1 = this;
            r5 = r4 & 1
            if (r5 == 0) goto L8
            java.util.List r2 = kotlin.collections.CollectionsKt.emptyList()
        L8:
            r4 = r4 & 2
            if (r4 == 0) goto L23
            r3 = 1
            java.nio.file.Path[] r3 = new java.nio.file.Path[r3]
            java.lang.String r4 = ""
            r5 = 0
            java.lang.String[] r0 = new java.lang.String[r5]
            java.nio.file.Path r4 = java.nio.file.Paths.get(r4, r0)
            java.lang.String r0 = "get(path)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r0)
            r3[r5] = r4
            java.util.List r3 = kotlin.collections.CollectionsKt.mutableListOf(r3)
        L23:
            r1.<init>(r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.reader.api.ReaderPluginOptions.<init>(java.util.List, java.util.List, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
