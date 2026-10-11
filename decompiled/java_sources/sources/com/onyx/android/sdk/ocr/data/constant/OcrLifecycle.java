package com.onyx.android.sdk.ocr.data.constant;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlinx.coroutines.debug.internal.DebugCoroutineInfoImplKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;", "", "(Ljava/lang/String;I)V", DebugCoroutineInfoImplKt.CREATED, "OPENED", "PROCESSING", "IDLE", "CLOSED", "sdk-ocr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class OcrLifecycle {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ OcrLifecycle[] $VALUES;
    public static final OcrLifecycle CREATED = new OcrLifecycle(DebugCoroutineInfoImplKt.CREATED, 0);
    public static final OcrLifecycle OPENED = new OcrLifecycle("OPENED", 1);
    public static final OcrLifecycle PROCESSING = new OcrLifecycle("PROCESSING", 2);
    public static final OcrLifecycle IDLE = new OcrLifecycle("IDLE", 3);
    public static final OcrLifecycle CLOSED = new OcrLifecycle("CLOSED", 4);

    private static final /* synthetic */ OcrLifecycle[] $values() {
        return new OcrLifecycle[]{CREATED, OPENED, PROCESSING, IDLE, CLOSED};
    }

    static {
        OcrLifecycle[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private OcrLifecycle(String str, int i) {
    }

    @NotNull
    public static EnumEntries<OcrLifecycle> getEntries() {
        return $ENTRIES;
    }

    public static OcrLifecycle valueOf(String str) {
        return (OcrLifecycle) Enum.valueOf(OcrLifecycle.class, str);
    }

    public static OcrLifecycle[] values() {
        return (OcrLifecycle[]) $VALUES.clone();
    }
}
