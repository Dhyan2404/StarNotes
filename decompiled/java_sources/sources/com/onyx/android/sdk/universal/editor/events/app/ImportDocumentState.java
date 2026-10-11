package com.onyx.android.sdk.universal.editor.events.app;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;", "", "(Ljava/lang/String;I)V", "IMPORTING", "ERROR", "SUCCESS", "COMPLETE", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ImportDocumentState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ImportDocumentState[] $VALUES;
    public static final ImportDocumentState IMPORTING = new ImportDocumentState("IMPORTING", 0);
    public static final ImportDocumentState ERROR = new ImportDocumentState("ERROR", 1);
    public static final ImportDocumentState SUCCESS = new ImportDocumentState("SUCCESS", 2);
    public static final ImportDocumentState COMPLETE = new ImportDocumentState("COMPLETE", 3);

    private static final /* synthetic */ ImportDocumentState[] $values() {
        return new ImportDocumentState[]{IMPORTING, ERROR, SUCCESS, COMPLETE};
    }

    static {
        ImportDocumentState[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private ImportDocumentState(String str, int i) {
    }

    @NotNull
    public static EnumEntries<ImportDocumentState> getEntries() {
        return $ENTRIES;
    }

    public static ImportDocumentState valueOf(String str) {
        return (ImportDocumentState) Enum.valueOf(ImportDocumentState.class, str);
    }

    public static ImportDocumentState[] values() {
        return (ImportDocumentState[]) $VALUES.clone();
    }
}
