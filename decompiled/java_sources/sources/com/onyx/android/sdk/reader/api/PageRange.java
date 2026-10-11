package com.onyx.android.sdk.reader.api;

import com.onyx.android.sdk.reader.impl.ReaderPositionImpl;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u001b\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0006\u0010\u0002\u001a\u00020\u0000R\"\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\u000e\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u0005\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\t¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/PageRange;", "", "copy", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "a", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "getStartPosition", "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "setStartPosition", "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V", "startPosition", "b", "getEndPosition", "setEndPosition", "endPosition", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PageRange {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: c */
    @NotNull
    public static final PageRange f44407c = new PageRange(0 == true ? 1 : 0, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public ReaderPosition startPosition;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public ReaderPosition endPosition;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tJ\u0016\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\tR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/PageRange$Companion;", "", "()V", "dummy", "Lcom/onyx/android/sdk/reader/api/PageRange;", "getDummy", "()Lcom/onyx/android/sdk/reader/api/PageRange;", "createFixedPageRange", "pageIndex", "", "createSelectionRange", "startPositionInt", "endPositionInt", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PageRange createFixedPageRange(int pageIndex) {
            return new PageRange(new ReaderPositionImpl().fromPageIndex(pageIndex), new ReaderPositionImpl().fromPageIndex(pageIndex));
        }

        @NotNull
        public final PageRange createSelectionRange(int startPositionInt, int endPositionInt) {
            return new PageRange(new ReaderPositionImpl().fromInteger(startPositionInt).fromString(String.valueOf(startPositionInt)), new ReaderPositionImpl().fromInteger(endPositionInt).fromString(String.valueOf(startPositionInt)));
        }

        @NotNull
        public final PageRange getDummy() {
            return PageRange.f44407c;
        }

        public Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PageRange() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final PageRange copy() {
        PageRange pageRange = new PageRange(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        pageRange.startPosition = this.startPosition.copy();
        pageRange.endPosition = this.endPosition.copy();
        return pageRange;
    }

    @NotNull
    public final ReaderPosition getEndPosition() {
        return this.endPosition;
    }

    @NotNull
    public final ReaderPosition getStartPosition() {
        return this.startPosition;
    }

    public final void setEndPosition(@NotNull ReaderPosition readerPosition) {
        Intrinsics.checkNotNullParameter(readerPosition, "<set-?>");
        this.endPosition = readerPosition;
    }

    public final void setStartPosition(@NotNull ReaderPosition readerPosition) {
        Intrinsics.checkNotNullParameter(readerPosition, "<set-?>");
        this.startPosition = readerPosition;
    }

    public PageRange(@NotNull ReaderPosition startPosition, @NotNull ReaderPosition endPosition) {
        Intrinsics.checkNotNullParameter(startPosition, "startPosition");
        Intrinsics.checkNotNullParameter(endPosition, "endPosition");
        this.startPosition = startPosition;
        this.endPosition = endPosition;
    }

    public /* synthetic */ PageRange(ReaderPosition readerPosition, ReaderPosition readerPosition2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ReaderPositionImpl.INSTANCE.getDummy() : readerPosition, (i & 2) != 0 ? ReaderPositionImpl.INSTANCE.getDummy() : readerPosition2);
    }
}
