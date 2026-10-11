package com.onyx.android.sdk.reader.cbox.page;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.engine.sdk.PageRange;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0013\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b+\u0010,R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010\u001d\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\"\u0010\"\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\u001c\u001a\u0004\b\"\u0010\u001e\"\u0004\b#\u0010 R\"\u0010%\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u001c\u001a\u0004\b%\u0010\u001e\"\u0004\b&\u0010 R\"\u0010*\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010\u001c\u001a\u0004\b(\u0010\u001e\"\u0004\b)\u0010 ¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;", "", "", "a", Constants.STRING_SIG, "getChapterID", "()Ljava/lang/String;", "setChapterID", "(Ljava/lang/String;)V", "chapterID", "Lcom/onyx/engine/sdk/PageRange;", "b", "Lcom/onyx/engine/sdk/PageRange;", "getPageRange", "()Lcom/onyx/engine/sdk/PageRange;", "setPageRange", "(Lcom/onyx/engine/sdk/PageRange;)V", "pageRange", "", "c", "I", "getProgress", "()I", "setProgress", "(I)V", "progress", "", "d", Constants.HASIDCALL_INDEX_SIG, "isPaginationComplete", Constants.BOOLEAN_VALUE_SIG, "setPaginationComplete", "(Z)V", "e", "isFirstChapter", "setFirstChapter", C6997f.f39671c, "isLastChapter", "setLastChapter", C6998g.f39679a, "getUpdateReaderPageInfo", "setUpdateReaderPageInfo", "updateReaderPageInfo", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PaginationInfo {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String chapterID;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public PageRange pageRange;

    /* renamed from: c, reason: from kotlin metadata */
    public int progress;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean isPaginationComplete;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean isFirstChapter;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean isLastChapter;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean updateReaderPageInfo;

    @Nullable
    public final String getChapterID() {
        return this.chapterID;
    }

    @Nullable
    public final PageRange getPageRange() {
        return this.pageRange;
    }

    public final int getProgress() {
        return this.progress;
    }

    public final boolean getUpdateReaderPageInfo() {
        return this.updateReaderPageInfo;
    }

    /* renamed from: isFirstChapter, reason: from getter */
    public final boolean getIsFirstChapter() {
        return this.isFirstChapter;
    }

    /* renamed from: isLastChapter, reason: from getter */
    public final boolean getIsLastChapter() {
        return this.isLastChapter;
    }

    /* renamed from: isPaginationComplete, reason: from getter */
    public final boolean getIsPaginationComplete() {
        return this.isPaginationComplete;
    }

    public final void setChapterID(@Nullable String str) {
        this.chapterID = str;
    }

    public final void setFirstChapter(boolean z) {
        this.isFirstChapter = z;
    }

    public final void setLastChapter(boolean z) {
        this.isLastChapter = z;
    }

    public final void setPageRange(@Nullable PageRange pageRange) {
        this.pageRange = pageRange;
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
}
