package com.onyx.android.sdk.reader.api;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.reader.impl.ReaderPositionImpl;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b6\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0013\u001a\u00020\n\u0012\b\b\u0002\u0010\u0014\u001a\u00020\n\u0012\b\b\u0002\u0010\u0015\u001a\u00020\n¢\u0006\u0004\b>\u0010?J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J\t\u0010\t\u001a\u00020\u0007HÆ\u0003J\t\u0010\u000b\u001a\u00020\nHÆ\u0003J\t\u0010\f\u001a\u00020\nHÆ\u0003J\t\u0010\r\u001a\u00020\nHÆ\u0003JY\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u00042\b\b\u0002\u0010\u0011\u001a\u00020\u00072\b\b\u0002\u0010\u0012\u001a\u00020\u00072\b\b\u0002\u0010\u0013\u001a\u00020\n2\b\b\u0002\u0010\u0014\u001a\u00020\n2\b\b\u0002\u0010\u0015\u001a\u00020\nHÆ\u0001J\t\u0010\u0017\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\u001a\u001a\u00020\n2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u000e\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\"\u0010\u000f\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\"\u0010\u0010\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010\"\u001a\u0004\b(\u0010$\"\u0004\b)\u0010&R\"\u0010\u0011\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u0010\u0012\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u0010+\u001a\u0004\b1\u0010-\"\u0004\b2\u0010/R\"\u0010\u0013\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\"\u0010\u0014\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u00104\u001a\u0004\b\u0014\u00106\"\u0004\b:\u00108R\"\u0010\u0015\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u00104\u001a\u0004\b<\u00106\"\u0004\b=\u00108¨\u0006@"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;", "", "", "component1", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "component2", "component3", "", "component4", "component5", "", "component6", "component7", "component8", "chapterId", "pageStartPosition", "pageEndPosition", "chapterSizeInBytes", "progress", "updateReaderPageInfo", "isPaginationComplete", "currentChapter", "copy", "toString", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getChapterId", "()Ljava/lang/String;", "setChapterId", "(Ljava/lang/String;)V", "b", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "getPageStartPosition", "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "setPageStartPosition", "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V", "c", "getPageEndPosition", "setPageEndPosition", "d", "I", "getChapterSizeInBytes", "()I", "setChapterSizeInBytes", "(I)V", "e", "getProgress", "setProgress", C6997f.f39671c, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getUpdateReaderPageInfo", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setUpdateReaderPageInfo", "(Z)V", C6998g.f39679a, "setPaginationComplete", C6999h.f39688c, "getCurrentChapter", "setCurrentChapter", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;IIZZZ)V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class PaginationChapterInfo {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public String chapterId;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public ReaderPosition pageStartPosition;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public ReaderPosition pageEndPosition;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    public int chapterSizeInBytes;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    public int progress;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    public boolean updateReaderPageInfo;

    /* renamed from: g, reason: from kotlin metadata and from toString */
    public boolean isPaginationComplete;

    /* renamed from: h, reason: from kotlin metadata and from toString */
    public boolean currentChapter;

    public PaginationChapterInfo() {
        this(null, null, null, 0, 0, false, false, false, 255, null);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getChapterId() {
        return this.chapterId;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final ReaderPosition getPageStartPosition() {
        return this.pageStartPosition;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final ReaderPosition getPageEndPosition() {
        return this.pageEndPosition;
    }

    /* renamed from: component4, reason: from getter */
    public final int getChapterSizeInBytes() {
        return this.chapterSizeInBytes;
    }

    /* renamed from: component5, reason: from getter */
    public final int getProgress() {
        return this.progress;
    }

    /* renamed from: component6, reason: from getter */
    public final boolean getUpdateReaderPageInfo() {
        return this.updateReaderPageInfo;
    }

    /* renamed from: component7, reason: from getter */
    public final boolean getIsPaginationComplete() {
        return this.isPaginationComplete;
    }

    /* renamed from: component8, reason: from getter */
    public final boolean getCurrentChapter() {
        return this.currentChapter;
    }

    @NotNull
    public final PaginationChapterInfo copy(@NotNull String chapterId, @NotNull ReaderPosition pageStartPosition, @NotNull ReaderPosition pageEndPosition, int chapterSizeInBytes, int progress, boolean updateReaderPageInfo, boolean isPaginationComplete, boolean currentChapter) {
        Intrinsics.checkNotNullParameter(chapterId, "chapterId");
        Intrinsics.checkNotNullParameter(pageStartPosition, "pageStartPosition");
        Intrinsics.checkNotNullParameter(pageEndPosition, "pageEndPosition");
        return new PaginationChapterInfo(chapterId, pageStartPosition, pageEndPosition, chapterSizeInBytes, progress, updateReaderPageInfo, isPaginationComplete, currentChapter);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PaginationChapterInfo)) {
            return false;
        }
        PaginationChapterInfo paginationChapterInfo = (PaginationChapterInfo) other;
        return Intrinsics.areEqual(this.chapterId, paginationChapterInfo.chapterId) && Intrinsics.areEqual(this.pageStartPosition, paginationChapterInfo.pageStartPosition) && Intrinsics.areEqual(this.pageEndPosition, paginationChapterInfo.pageEndPosition) && this.chapterSizeInBytes == paginationChapterInfo.chapterSizeInBytes && this.progress == paginationChapterInfo.progress && this.updateReaderPageInfo == paginationChapterInfo.updateReaderPageInfo && this.isPaginationComplete == paginationChapterInfo.isPaginationComplete && this.currentChapter == paginationChapterInfo.currentChapter;
    }

    @NotNull
    public final String getChapterId() {
        return this.chapterId;
    }

    public final int getChapterSizeInBytes() {
        return this.chapterSizeInBytes;
    }

    public final boolean getCurrentChapter() {
        return this.currentChapter;
    }

    @NotNull
    public final ReaderPosition getPageEndPosition() {
        return this.pageEndPosition;
    }

    @NotNull
    public final ReaderPosition getPageStartPosition() {
        return this.pageStartPosition;
    }

    public final int getProgress() {
        return this.progress;
    }

    public final boolean getUpdateReaderPageInfo() {
        return this.updateReaderPageInfo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((((this.chapterId.hashCode() * 31) + this.pageStartPosition.hashCode()) * 31) + this.pageEndPosition.hashCode()) * 31) + Integer.hashCode(this.chapterSizeInBytes)) * 31) + Integer.hashCode(this.progress)) * 31;
        boolean z = this.updateReaderPageInfo;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.isPaginationComplete;
        int i3 = z2;
        if (z2 != 0) {
            i3 = 1;
        }
        int i4 = (i2 + i3) * 31;
        boolean z3 = this.currentChapter;
        return i4 + (z3 ? 1 : z3 ? 1 : 0);
    }

    public final boolean isPaginationComplete() {
        return this.isPaginationComplete;
    }

    public final void setChapterId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.chapterId = str;
    }

    public final void setChapterSizeInBytes(int i) {
        this.chapterSizeInBytes = i;
    }

    public final void setCurrentChapter(boolean z) {
        this.currentChapter = z;
    }

    public final void setPageEndPosition(@NotNull ReaderPosition readerPosition) {
        Intrinsics.checkNotNullParameter(readerPosition, "<set-?>");
        this.pageEndPosition = readerPosition;
    }

    public final void setPageStartPosition(@NotNull ReaderPosition readerPosition) {
        Intrinsics.checkNotNullParameter(readerPosition, "<set-?>");
        this.pageStartPosition = readerPosition;
    }

    public final void setPaginationComplete(boolean z) {
        this.isPaginationComplete = z;
    }

    public final void setProgress(int i) {
        this.progress = i;
    }

    public final void setUpdateReaderPageInfo(boolean z) {
        this.updateReaderPageInfo = z;
    }

    @NotNull
    public String toString() {
        return "PaginationChapterInfo(chapterId=" + this.chapterId + ", pageStartPosition=" + this.pageStartPosition + ", pageEndPosition=" + this.pageEndPosition + ", chapterSizeInBytes=" + this.chapterSizeInBytes + ", progress=" + this.progress + ", updateReaderPageInfo=" + this.updateReaderPageInfo + ", isPaginationComplete=" + this.isPaginationComplete + ", currentChapter=" + this.currentChapter + ')';
    }

    public PaginationChapterInfo(@NotNull String chapterId, @NotNull ReaderPosition pageStartPosition, @NotNull ReaderPosition pageEndPosition, int i, int i2, boolean z, boolean z2, boolean z3) {
        Intrinsics.checkNotNullParameter(chapterId, "chapterId");
        Intrinsics.checkNotNullParameter(pageStartPosition, "pageStartPosition");
        Intrinsics.checkNotNullParameter(pageEndPosition, "pageEndPosition");
        this.chapterId = chapterId;
        this.pageStartPosition = pageStartPosition;
        this.pageEndPosition = pageEndPosition;
        this.chapterSizeInBytes = i;
        this.progress = i2;
        this.updateReaderPageInfo = z;
        this.isPaginationComplete = z2;
        this.currentChapter = z3;
    }

    public /* synthetic */ PaginationChapterInfo(String str, ReaderPosition readerPosition, ReaderPosition readerPosition2, int i, int i2, boolean z, boolean z2, boolean z3, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? "" : str, (i3 & 2) != 0 ? ReaderPositionImpl.INSTANCE.getDummy() : readerPosition, (i3 & 4) != 0 ? ReaderPositionImpl.INSTANCE.getDummy() : readerPosition2, (i3 & 8) != 0 ? 0 : i, (i3 & 16) != 0 ? 0 : i2, (i3 & 32) != 0 ? false : z, (i3 & 64) != 0 ? false : z2, (i3 & 128) == 0 ? z3 : false);
    }
}
