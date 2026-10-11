package com.onyx.android.sdk.universal.editor.extension;

import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.reader.api.ReaderWritingMode;
import com.onyx.android.sdk.replicator.note.data.annotation.WritingMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0003¨\u0006\u0004"}, m61528d2 = {"toAnnotationWritingMode", "Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;", "sdk-universal_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ReaderWritingModeKt {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ReaderWritingMode.values().length];
            try {
                iArr[ReaderWritingMode.UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReaderWritingMode.HORIZONTAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ReaderWritingMode.VERTICAL_LR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ReaderWritingMode.VERTICAL_RL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @NotNull
    public static final WritingMode toAnnotationWritingMode(@NotNull ReaderWritingMode readerWritingMode) {
        Intrinsics.checkNotNullParameter(readerWritingMode, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$0[readerWritingMode.ordinal()];
        if (i == 1) {
            return WritingMode.UNKNOWN;
        }
        if (i == 2) {
            return WritingMode.HORIZONTAL;
        }
        if (i == 3) {
            return WritingMode.VERTICAL_LR;
        }
        if (i == 4) {
            return WritingMode.VERTICAL_RL;
        }
        throw new NoWhenBranchMatchedException();
    }

    @NotNull
    public static final WritingMode toAnnotationWritingMode(@NotNull ReaderSelection readerSelection) {
        Intrinsics.checkNotNullParameter(readerSelection, "<this>");
        return toAnnotationWritingMode(readerSelection.writingMode());
    }
}
