package com.onyx.android.sdk.note.common.data.selection;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0005R\u0011\u0010\u0006\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0005j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/selection/SelectionMode;", "", "(Ljava/lang/String;I)V", "isSelectionMode", "", Constants.BOOLEAN_VALUE_SIG, "isTransformMode", "SELECTION", "TRANSFORM", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SelectionMode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SelectionMode[] $VALUES;
    public static final SelectionMode SELECTION = new SelectionMode("SELECTION", 0);
    public static final SelectionMode TRANSFORM = new SelectionMode("TRANSFORM", 1);

    private static final /* synthetic */ SelectionMode[] $values() {
        return new SelectionMode[]{SELECTION, TRANSFORM};
    }

    static {
        SelectionMode[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private SelectionMode(String str, int i) {
    }

    @NotNull
    public static EnumEntries<SelectionMode> getEntries() {
        return $ENTRIES;
    }

    public static SelectionMode valueOf(String str) {
        return (SelectionMode) Enum.valueOf(SelectionMode.class, str);
    }

    public static SelectionMode[] values() {
        return (SelectionMode[]) $VALUES.clone();
    }

    public final boolean isSelectionMode() {
        return this == SELECTION;
    }

    public final boolean isTransformMode() {
        return this == TRANSFORM;
    }
}
