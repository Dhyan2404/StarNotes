package com.onyx.android.sdk.reader.api;

import android.graphics.RectF;
import com.onyx.android.sdk.hwr.data.constant.HwrRecognizerConstant;
import com.onyx.android.sdk.reader.utils.ReaderSelectionUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;", "", "(Ljava/lang/String;I)V", HwrRecognizerConstant.RECOGNIZER_UNKNOWN, "HORIZONTAL", "VERTICAL_RL", "VERTICAL_LR", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ReaderWritingMode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ReaderWritingMode[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final ReaderWritingMode UNKNOWN = new ReaderWritingMode(HwrRecognizerConstant.RECOGNIZER_UNKNOWN, 0);
    public static final ReaderWritingMode HORIZONTAL = new ReaderWritingMode("HORIZONTAL", 1);
    public static final ReaderWritingMode VERTICAL_RL = new ReaderWritingMode("VERTICAL_RL", 2);
    public static final ReaderWritingMode VERTICAL_LR = new ReaderWritingMode("VERTICAL_LR", 3);

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\u0014\u0010\b\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderWritingMode$Companion;", "", "()V", "analysePageWritingModeByBlockRect", "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;", "list", "", "Landroid/graphics/RectF;", "analysePageWritingModeByCharRect", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ReaderWritingMode analysePageWritingModeByBlockRect(@NotNull List<? extends RectF> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            return ReaderSelectionUtils.INSTANCE.analysePageWritingModeByBlockRect(list);
        }

        @NotNull
        public final ReaderWritingMode analysePageWritingModeByCharRect(@NotNull List<? extends RectF> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            return ReaderSelectionUtils.INSTANCE.analysePageWritingModeByCharRect(list);
        }

        public Companion() {
        }
    }

    private static final /* synthetic */ ReaderWritingMode[] $values() {
        return new ReaderWritingMode[]{UNKNOWN, HORIZONTAL, VERTICAL_RL, VERTICAL_LR};
    }

    static {
        ReaderWritingMode[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private ReaderWritingMode(String str, int i) {
    }

    @NotNull
    public static EnumEntries<ReaderWritingMode> getEntries() {
        return $ENTRIES;
    }

    public static ReaderWritingMode valueOf(String str) {
        return (ReaderWritingMode) Enum.valueOf(ReaderWritingMode.class, str);
    }

    public static ReaderWritingMode[] values() {
        return (ReaderWritingMode[]) $VALUES.clone();
    }
}
