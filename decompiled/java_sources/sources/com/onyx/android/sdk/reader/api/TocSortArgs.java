package com.onyx.android.sdk.reader.api;

import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0013\b\u0016\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000f\u0010\u0010B#\b\u0016\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0004¢\u0006\u0004\b\u000f\u0010\u0011J\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\f\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\u000e\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000b¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/TocSortArgs;", "", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", "getToc", "", "getStartSortId", "getEndSortId", "a", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", SyncConstant.LOCAL_TOC_DIR_NAME, "b", "I", "startSortId", "c", "endSortId", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V", "(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;II)V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TocSortArgs {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public ReaderDocumentTableOfContent toc;

    /* renamed from: b, reason: from kotlin metadata */
    public int startSortId;

    /* renamed from: c, reason: from kotlin metadata */
    public int endSortId;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bJ.\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/TocSortArgs$Companion;", "", "()V", "createTocSortArgs", "Lcom/onyx/android/sdk/reader/api/TocSortArgs;", SyncConstant.LOCAL_TOC_DIR_NAME, "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", "positionInt", "", CouchFieldKey.KEY_PAGE_NUMBER, "startPositionInt", "endPositionInt", "startPageNumber", "endPageNumber", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final TocSortArgs createTocSortArgs(@NotNull ReaderDocumentTableOfContent toc, int positionInt, int pageNumber) {
            Intrinsics.checkNotNullParameter(toc, "toc");
            if (toc.isEmpty()) {
                return new TocSortArgs(toc);
            }
            if (toc.getRootEntry().isPageIndexValid()) {
                return new TocSortArgs(toc, pageNumber, pageNumber);
            }
            return new TocSortArgs(toc, positionInt, positionInt);
        }

        public Companion() {
        }

        @NotNull
        public final TocSortArgs createTocSortArgs(@NotNull ReaderDocumentTableOfContent toc, int startPositionInt, int endPositionInt, int startPageNumber, int endPageNumber) {
            Intrinsics.checkNotNullParameter(toc, "toc");
            if (toc.isEmpty()) {
                return new TocSortArgs(toc);
            }
            if (toc.getRootEntry().getSortByPageIndex()) {
                return new TocSortArgs(toc, startPageNumber, endPageNumber);
            }
            return new TocSortArgs(toc, startPositionInt, endPositionInt);
        }
    }

    public TocSortArgs(@Nullable ReaderDocumentTableOfContent readerDocumentTableOfContent) {
        this.toc = readerDocumentTableOfContent;
    }

    public final int getEndSortId() {
        return this.endSortId;
    }

    public final int getStartSortId() {
        return this.startSortId;
    }

    @Nullable
    public final ReaderDocumentTableOfContent getToc() {
        return this.toc;
    }

    public TocSortArgs(@Nullable ReaderDocumentTableOfContent readerDocumentTableOfContent, int i, int i2) {
        this.toc = readerDocumentTableOfContent;
        this.startSortId = i;
        this.endSortId = i2;
    }
}
