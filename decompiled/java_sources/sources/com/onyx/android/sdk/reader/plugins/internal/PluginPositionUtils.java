package com.onyx.android.sdk.reader.plugins.internal;

import com.onyx.android.sdk.reader.api.PageRange;
import com.onyx.android.sdk.reader.api.ReaderPosition;
import com.onyx.android.sdk.reader.impl.ReaderPositionImpl;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\b\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\t\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002J\u000e\u0010\f\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002J\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u0002R\u0017\u0010\u0016\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;", "", "", "pageIndex", "", "getDefaultPositionByPageIndex", "getDefaultPositionIntByPageIndex", "position", "getDefaultPositionInt", "getDefaultPageIndexByPosition", "positionInt", "getDefaultPosition", "getDefaultPageIndexByPositionInt", "Lcom/onyx/android/sdk/reader/api/PageRange;", "createDefaultPageRangeByPageIndex", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "getPositionByPageIndex", "getPosition", "a", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "getINVALID_POSITION", "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "INVALID_POSITION", Constants.CONSTRUCTOR_NAME, "()V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PluginPositionUtils {

    @NotNull
    public static final PluginPositionUtils INSTANCE = new PluginPositionUtils();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final ReaderPosition INVALID_POSITION = ReaderPositionImpl.INSTANCE.getDummy();

    @NotNull
    public final PageRange createDefaultPageRangeByPageIndex(int pageIndex) {
        String defaultPositionByPageIndex = getDefaultPositionByPageIndex(pageIndex);
        PageRange pageRange = new PageRange(null, null, 3, null);
        pageRange.setStartPosition(new ReaderPositionImpl().fromString(defaultPositionByPageIndex));
        pageRange.setEndPosition(new ReaderPositionImpl().fromString(defaultPositionByPageIndex));
        return pageRange;
    }

    public final int getDefaultPageIndexByPosition(@Nullable String position) {
        if (position != null) {
            return Integer.parseInt(position);
        }
        return 0;
    }

    public final int getDefaultPageIndexByPositionInt(int positionInt) {
        return positionInt;
    }

    @NotNull
    public final String getDefaultPosition(int positionInt) {
        return String.valueOf(positionInt);
    }

    @NotNull
    public final String getDefaultPositionByPageIndex(int pageIndex) {
        return String.valueOf(pageIndex);
    }

    public final int getDefaultPositionInt(@Nullable String position) {
        if (position != null) {
            return Integer.parseInt(position);
        }
        return 0;
    }

    public final int getDefaultPositionIntByPageIndex(int pageIndex) {
        return pageIndex;
    }

    @NotNull
    public final ReaderPosition getINVALID_POSITION() {
        return INVALID_POSITION;
    }

    @NotNull
    public final ReaderPosition getPosition(int positionInt) {
        return new ReaderPositionImpl().fromInteger(positionInt).fromString(String.valueOf(positionInt));
    }

    @NotNull
    public final ReaderPosition getPositionByPageIndex(int pageIndex) {
        return new ReaderPositionImpl().fromInteger(pageIndex).fromPageIndex(pageIndex).fromString(String.valueOf(pageIndex));
    }
}
