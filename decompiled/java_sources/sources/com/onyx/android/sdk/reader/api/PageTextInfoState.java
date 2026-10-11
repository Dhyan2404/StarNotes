package com.onyx.android.sdk.reader.api;

import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkType;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/PageTextInfoState;", "", "(Ljava/lang/String;I)V", ShapeLinkType.LINK_DOCUMENT, "DOCUMENT_NOTHING", "OCR", "OCR_NOTHING", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PageTextInfoState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PageTextInfoState[] $VALUES;
    public static final PageTextInfoState DOCUMENT = new PageTextInfoState(ShapeLinkType.LINK_DOCUMENT, 0);
    public static final PageTextInfoState DOCUMENT_NOTHING = new PageTextInfoState("DOCUMENT_NOTHING", 1);
    public static final PageTextInfoState OCR = new PageTextInfoState("OCR", 2);
    public static final PageTextInfoState OCR_NOTHING = new PageTextInfoState("OCR_NOTHING", 3);

    private static final /* synthetic */ PageTextInfoState[] $values() {
        return new PageTextInfoState[]{DOCUMENT, DOCUMENT_NOTHING, OCR, OCR_NOTHING};
    }

    static {
        PageTextInfoState[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private PageTextInfoState(String str, int i) {
    }

    @NotNull
    public static EnumEntries<PageTextInfoState> getEntries() {
        return $ENTRIES;
    }

    public static PageTextInfoState valueOf(String str) {
        return (PageTextInfoState) Enum.valueOf(PageTextInfoState.class, str);
    }

    public static PageTextInfoState[] values() {
        return (PageTextInfoState[]) $VALUES.clone();
    }
}
