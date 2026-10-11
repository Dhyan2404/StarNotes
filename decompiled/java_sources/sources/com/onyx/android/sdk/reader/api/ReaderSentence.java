package com.onyx.android.sdk.reader.api;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u001b\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\f\u001a\u00020\u0006¢\u0006\u0004\b)\u0010*J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\t\u0010\b\u001a\u00020\u0006HÆ\u0003J1\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\u0006HÆ\u0001J\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\t\u0010\u0011\u001a\u00020\u0010HÖ\u0001J\u0013\u0010\u0013\u001a\u00020\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\n\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\"\u0010\u000b\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010\f\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010!\u001a\u0004\b'\u0010#\"\u0004\b(\u0010%¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderSentence;", "", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "component1", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "component2", "", "component3", "component4", "readerSelection", "nextPosition", "endOfScreen", "endOfDocument", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "getReaderSelection", "()Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "setReaderSelection", "(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V", "b", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "getNextPosition", "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "setNextPosition", "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V", "c", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getEndOfScreen", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setEndOfScreen", "(Z)V", "d", "getEndOfDocument", "setEndOfDocument", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/reader/api/ReaderSelection;Lcom/onyx/android/sdk/reader/api/ReaderPosition;ZZ)V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ReaderSentence {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public ReaderSelection readerSelection;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public ReaderPosition nextPosition;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public boolean endOfScreen;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    public boolean endOfDocument;

    public ReaderSentence(@NotNull ReaderSelection readerSelection, @NotNull ReaderPosition nextPosition, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(readerSelection, "readerSelection");
        Intrinsics.checkNotNullParameter(nextPosition, "nextPosition");
        this.readerSelection = readerSelection;
        this.nextPosition = nextPosition;
        this.endOfScreen = z;
        this.endOfDocument = z2;
    }

    public static /* synthetic */ ReaderSentence copy$default(ReaderSentence readerSentence, ReaderSelection readerSelection, ReaderPosition readerPosition, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            readerSelection = readerSentence.readerSelection;
        }
        if ((i & 2) != 0) {
            readerPosition = readerSentence.nextPosition;
        }
        if ((i & 4) != 0) {
            z = readerSentence.endOfScreen;
        }
        if ((i & 8) != 0) {
            z2 = readerSentence.endOfDocument;
        }
        return readerSentence.copy(readerSelection, readerPosition, z, z2);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final ReaderSelection getReaderSelection() {
        return this.readerSelection;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final ReaderPosition getNextPosition() {
        return this.nextPosition;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getEndOfScreen() {
        return this.endOfScreen;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getEndOfDocument() {
        return this.endOfDocument;
    }

    @NotNull
    public final ReaderSentence copy(@NotNull ReaderSelection readerSelection, @NotNull ReaderPosition nextPosition, boolean endOfScreen, boolean endOfDocument) {
        Intrinsics.checkNotNullParameter(readerSelection, "readerSelection");
        Intrinsics.checkNotNullParameter(nextPosition, "nextPosition");
        return new ReaderSentence(readerSelection, nextPosition, endOfScreen, endOfDocument);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ReaderSentence)) {
            return false;
        }
        ReaderSentence readerSentence = (ReaderSentence) other;
        return Intrinsics.areEqual(this.readerSelection, readerSentence.readerSelection) && Intrinsics.areEqual(this.nextPosition, readerSentence.nextPosition) && this.endOfScreen == readerSentence.endOfScreen && this.endOfDocument == readerSentence.endOfDocument;
    }

    public final boolean getEndOfDocument() {
        return this.endOfDocument;
    }

    public final boolean getEndOfScreen() {
        return this.endOfScreen;
    }

    @NotNull
    public final ReaderPosition getNextPosition() {
        return this.nextPosition;
    }

    @NotNull
    public final ReaderSelection getReaderSelection() {
        return this.readerSelection;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.readerSelection.hashCode() * 31) + this.nextPosition.hashCode()) * 31;
        boolean z = this.endOfScreen;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.endOfDocument;
        return i2 + (z2 ? 1 : z2 ? 1 : 0);
    }

    public final void setEndOfDocument(boolean z) {
        this.endOfDocument = z;
    }

    public final void setEndOfScreen(boolean z) {
        this.endOfScreen = z;
    }

    public final void setNextPosition(@NotNull ReaderPosition readerPosition) {
        Intrinsics.checkNotNullParameter(readerPosition, "<set-?>");
        this.nextPosition = readerPosition;
    }

    public final void setReaderSelection(@NotNull ReaderSelection readerSelection) {
        Intrinsics.checkNotNullParameter(readerSelection, "<set-?>");
        this.readerSelection = readerSelection;
    }

    @NotNull
    public String toString() {
        return "ReaderSentence(readerSelection=" + this.readerSelection + ", nextPosition=" + this.nextPosition + ", endOfScreen=" + this.endOfScreen + ", endOfDocument=" + this.endOfDocument + ')';
    }

    public /* synthetic */ ReaderSentence(ReaderSelection readerSelection, ReaderPosition readerPosition, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(readerSelection, readerPosition, (i & 4) != 0 ? false : z, (i & 8) != 0 ? false : z2);
    }
}
