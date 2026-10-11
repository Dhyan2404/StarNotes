package com.onyx.android.sdk.reader.impl;

import androidx.core.graphics.drawable.IconCompat;
import com.onyx.android.sdk.base.extension.IntKt;
import com.onyx.android.sdk.reader.api.ReaderPosition;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0016\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\b\u0010\n\u001a\u00020\tH\u0016J\u0010\u0010\f\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\tH\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0001H\u0016J\u0013\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0001H\u0016R\u0016\u0010\u0004\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0017\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0015¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "", "getPageIndex", "pageIndex", "fromPageIndex", "asInteger", "value", "fromInteger", "", "asString", "string", "fromString", "otherPosition", "compare", "", IconCompat.f5434l, "", "equals", "copy", "a", "I", "b", "intPosition", "c", Constants.STRING_SIG, "strPosition", "d", "positionType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public class ReaderPositionImpl implements ReaderPosition {
    public static final int POSITION_TYPE_INT = 1;
    public static final int POSITION_TYPE_PAGE_INDEX = 4;
    public static final int POSITION_TYPE_STRING = 2;
    public static final int POSITION_TYPE_UNKNOWN = 0;

    /* renamed from: a, reason: from kotlin metadata */
    public int pageIndex = -1;

    /* renamed from: b, reason: from kotlin metadata */
    public int intPosition = -1;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String strPosition = "";

    /* renamed from: d, reason: from kotlin metadata */
    public int positionType;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: e */
    @NotNull
    public static final ReaderPosition f44874e = new ReaderPositionImpl() { // from class: com.onyx.android.sdk.reader.impl.ReaderPositionImpl$Companion$dummy$1
        @Override // com.onyx.android.sdk.reader.impl.ReaderPositionImpl, com.onyx.android.sdk.reader.api.ReaderPosition
        /* renamed from: asInteger */
        public int getIntPosition() {
            return -1;
        }

        @Override // com.onyx.android.sdk.reader.impl.ReaderPositionImpl, com.onyx.android.sdk.reader.api.ReaderPosition
        @NotNull
        /* renamed from: asString */
        public String getStrPosition() {
            return "";
        }

        @Override // com.onyx.android.sdk.reader.impl.ReaderPositionImpl, com.onyx.android.sdk.reader.api.ReaderPosition
        public int compare(@NotNull ReaderPosition otherPosition) {
            Intrinsics.checkNotNullParameter(otherPosition, "otherPosition");
            return -1;
        }

        @Override // com.onyx.android.sdk.reader.impl.ReaderPositionImpl, com.onyx.android.sdk.reader.api.ReaderPosition
        @NotNull
        public ReaderPosition copy() {
            return this;
        }

        @Override // com.onyx.android.sdk.reader.impl.ReaderPositionImpl, com.onyx.android.sdk.reader.api.ReaderPosition
        @NotNull
        public ReaderPosition fromInteger(int value) {
            throw new UnsupportedOperationException();
        }

        @Override // com.onyx.android.sdk.reader.impl.ReaderPositionImpl, com.onyx.android.sdk.reader.api.ReaderPosition
        @NotNull
        public ReaderPosition fromPageIndex(int pageIndex) {
            throw new UnsupportedOperationException();
        }

        @Override // com.onyx.android.sdk.reader.impl.ReaderPositionImpl, com.onyx.android.sdk.reader.api.ReaderPosition
        @NotNull
        public ReaderPosition fromString(@NotNull String string) {
            Intrinsics.checkNotNullParameter(string, "string");
            throw new UnsupportedOperationException();
        }

        @Override // com.onyx.android.sdk.reader.impl.ReaderPositionImpl, com.onyx.android.sdk.reader.api.ReaderPosition
        public int getPageIndex() {
            return -1;
        }
    };

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;", "", "()V", "POSITION_TYPE_INT", "", "POSITION_TYPE_PAGE_INDEX", "POSITION_TYPE_STRING", "POSITION_TYPE_UNKNOWN", "dummy", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "getDummy", "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ReaderPosition getDummy() {
            return ReaderPositionImpl.f44874e;
        }

        public Companion() {
        }
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPosition
    /* renamed from: asInteger, reason: from getter */
    public int getIntPosition() {
        return this.intPosition;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPosition
    @NotNull
    /* renamed from: asString, reason: from getter */
    public String getStrPosition() {
        return this.strPosition;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPosition
    public int compare(@NotNull ReaderPosition otherPosition) {
        Intrinsics.checkNotNullParameter(otherPosition, "otherPosition");
        if (IntKt.hasFlag(this.positionType, 4)) {
            int compare = Intrinsics.compare(this.pageIndex, otherPosition.getPageIndex());
            return (compare == 0 && IntKt.hasFlag(this.positionType, 1)) ? Intrinsics.compare(this.intPosition, otherPosition.getIntPosition()) : compare;
        }
        if (IntKt.hasFlag(this.positionType, 1)) {
            return Intrinsics.compare(this.intPosition, otherPosition.getIntPosition());
        }
        if (IntKt.hasFlag(this.positionType, 2)) {
            return this.strPosition.compareTo(otherPosition.getStrPosition());
        }
        return 0;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPosition
    @NotNull
    public ReaderPosition copy() {
        ReaderPositionImpl readerPositionImpl = new ReaderPositionImpl();
        readerPositionImpl.pageIndex = this.pageIndex;
        readerPositionImpl.intPosition = this.intPosition;
        readerPositionImpl.strPosition = this.strPosition;
        readerPositionImpl.positionType = this.positionType;
        return readerPositionImpl;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReaderPosition)) {
            return false;
        }
        ReaderPosition readerPosition = (ReaderPosition) obj;
        return getIntPosition() == readerPosition.getIntPosition() && getPageIndex() == readerPosition.getPageIndex() && Intrinsics.areEqual(getStrPosition(), readerPosition.getStrPosition());
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPosition
    @NotNull
    public ReaderPosition fromInteger(int value) {
        this.positionType |= 1;
        this.intPosition = value;
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPosition
    @NotNull
    public ReaderPosition fromPageIndex(int pageIndex) {
        this.positionType |= 4;
        this.pageIndex = pageIndex;
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPosition
    @NotNull
    public ReaderPosition fromString(@NotNull String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        this.positionType |= 2;
        this.strPosition = string;
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPosition
    public int getPageIndex() {
        return this.pageIndex;
    }
}
