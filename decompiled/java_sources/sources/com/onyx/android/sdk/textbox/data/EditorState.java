package com.onyx.android.sdk.textbox.data;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0005R\u0011\u0010\u0006\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0005R\u0011\u0010\u0007\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005R\u0011\u0010\b\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\b\u0010\u0005R\u0011\u0010\t\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\t\u0010\u0005j\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/data/EditorState;", "", "(Ljava/lang/String;I)V", "isEditing", "", Constants.BOOLEAN_VALUE_SIG, "isIdleState", "isPrepared", "isReadOnly", "isRendering", "IDLE", "PREPARE", "READ_ONLY", "EDITING", "RENDER", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class EditorState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ EditorState[] $VALUES;
    public static final EditorState IDLE = new EditorState("IDLE", 0);
    public static final EditorState PREPARE = new EditorState("PREPARE", 1);
    public static final EditorState READ_ONLY = new EditorState("READ_ONLY", 2);
    public static final EditorState EDITING = new EditorState("EDITING", 3);
    public static final EditorState RENDER = new EditorState("RENDER", 4);

    private static final /* synthetic */ EditorState[] $values() {
        return new EditorState[]{IDLE, PREPARE, READ_ONLY, EDITING, RENDER};
    }

    static {
        EditorState[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private EditorState(String str, int i) {
    }

    @NotNull
    public static EnumEntries<EditorState> getEntries() {
        return $ENTRIES;
    }

    public static EditorState valueOf(String str) {
        return (EditorState) Enum.valueOf(EditorState.class, str);
    }

    public static EditorState[] values() {
        return (EditorState[]) $VALUES.clone();
    }

    public final boolean isEditing() {
        return this == EDITING;
    }

    public final boolean isIdleState() {
        return this == IDLE;
    }

    public final boolean isPrepared() {
        return this == PREPARE;
    }

    public final boolean isReadOnly() {
        return this == READ_ONLY;
    }

    public final boolean isRendering() {
        return this == RENDER;
    }
}
