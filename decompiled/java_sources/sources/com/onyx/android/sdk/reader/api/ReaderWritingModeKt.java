package com.onyx.android.sdk.reader.api;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002¨\u0006\u0003"}, m61528d2 = {"isVertical", "", "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;", "sdk-readercore_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ReaderWritingModeKt {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ReaderWritingMode.values().length];
            try {
                iArr[ReaderWritingMode.VERTICAL_LR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReaderWritingMode.VERTICAL_RL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ReaderWritingMode.HORIZONTAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final boolean isVertical(@Nullable ReaderWritingMode readerWritingMode) {
        int i = readerWritingMode == null ? -1 : WhenMappings.$EnumSwitchMapping$0[readerWritingMode.ordinal()];
        return i == 1 || i == 2;
    }
}
