package com.onyx.android.sdk.universal.editor.config;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/config/DocumentState;", "", "(Ljava/lang/String;I)V", "PENDING", "OPENING", "OPENED", "DEACTIVATED", "OPEN_FAILED", "OPEN_ABORTED", "CLOSING", "CLOSED", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class DocumentState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DocumentState[] $VALUES;
    public static final DocumentState PENDING = new DocumentState("PENDING", 0);
    public static final DocumentState OPENING = new DocumentState("OPENING", 1);
    public static final DocumentState OPENED = new DocumentState("OPENED", 2);
    public static final DocumentState DEACTIVATED = new DocumentState("DEACTIVATED", 3);
    public static final DocumentState OPEN_FAILED = new DocumentState("OPEN_FAILED", 4);
    public static final DocumentState OPEN_ABORTED = new DocumentState("OPEN_ABORTED", 5);
    public static final DocumentState CLOSING = new DocumentState("CLOSING", 6);
    public static final DocumentState CLOSED = new DocumentState("CLOSED", 7);

    private static final /* synthetic */ DocumentState[] $values() {
        return new DocumentState[]{PENDING, OPENING, OPENED, DEACTIVATED, OPEN_FAILED, OPEN_ABORTED, CLOSING, CLOSED};
    }

    static {
        DocumentState[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private DocumentState(String str, int i) {
    }

    @NotNull
    public static EnumEntries<DocumentState> getEntries() {
        return $ENTRIES;
    }

    public static DocumentState valueOf(String str) {
        return (DocumentState) Enum.valueOf(DocumentState.class, str);
    }

    public static DocumentState[] values() {
        return (DocumentState[]) $VALUES.clone();
    }
}
