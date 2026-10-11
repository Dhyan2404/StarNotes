package com.onyx.android.sdk.reader.extension;

import com.onyx.android.sdk.reader.api.ReaderPosition;
import com.onyx.android.sdk.reader.impl.ReaderPositionImpl;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0019\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u0002H\u0002¢\u0006\u0002\u0010\u0004\u001a,\u0010\u0005\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u0004\u0018\u0001H\u0002\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0000\u001a\u0004\b\u0003\u0010\u0000¢\u0006\u0002\u0010\u0004\u001a,\u0010\u0006\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u0004\u0018\u0001H\u0002\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0000\u001a\u0004\b\u0003\u0010\u0000¢\u0006\u0002\u0010\u0004¨\u0006\u0007"}, m61528d2 = {"isDummy", "", "T", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z", "isInvalid", "isValid", "sdk-readercore_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ReaderPositionImplKt {
    public static final <T extends ReaderPosition> boolean isDummy(@NotNull T t) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        return Intrinsics.areEqual(ReaderPositionImpl.INSTANCE.getDummy(), t);
    }

    public static final <T extends ReaderPosition> boolean isInvalid(@Nullable T t) {
        return t == null || isDummy(t);
    }

    public static final <T extends ReaderPosition> boolean isValid(@Nullable T t) {
        return (t == null || isDummy(t)) ? false : true;
    }
}
