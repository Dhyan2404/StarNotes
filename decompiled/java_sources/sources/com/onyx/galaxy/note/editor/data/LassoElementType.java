package com.onyx.galaxy.note.editor.data;

import androidx.annotation.StringRes;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkType;
import com.onyx.galaxy.note.C10651R;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\tj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/LassoElementType;", "", "type", "", "title", "(Ljava/lang/String;III)V", "getTitle", "()I", "setTitle", "(I)V", "getType", "setType", "GRAPH", ShapeLinkType.LINK_IMAGE, "TAPE", "TEXT", "HAND_WRITING", "MARK_PEN", "LINK", "TAG", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class LassoElementType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LassoElementType[] $VALUES;
    private int title;
    private int type;
    public static final LassoElementType GRAPH = new LassoElementType("GRAPH", 0, 1, C10651R.string.graph);
    public static final LassoElementType IMAGE = new LassoElementType(ShapeLinkType.LINK_IMAGE, 1, 19, C10651R.string.picture_and_sticker);
    public static final LassoElementType TAPE = new LassoElementType("TAPE", 2, 39, C10651R.string.tape);
    public static final LassoElementType TEXT = new LassoElementType("TEXT", 3, 16, C10651R.string.text);
    public static final LassoElementType HAND_WRITING = new LassoElementType("HAND_WRITING", 4, 5, C10651R.string.hand_writing);
    public static final LassoElementType MARK_PEN = new LassoElementType("MARK_PEN", 5, 15, C10651R.string.marker_pen);
    public static final LassoElementType LINK = new LassoElementType("LINK", 6, 33, C10651R.string.link);
    public static final LassoElementType TAG = new LassoElementType("TAG", 7, 45, C10651R.string.tag);

    private static final /* synthetic */ LassoElementType[] $values() {
        return new LassoElementType[]{GRAPH, IMAGE, TAPE, TEXT, HAND_WRITING, MARK_PEN, LINK, TAG};
    }

    static {
        LassoElementType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private LassoElementType(String str, @StringRes int i, int i2, int i3) {
        this.type = i2;
        this.title = i3;
    }

    @NotNull
    public static EnumEntries<LassoElementType> getEntries() {
        return $ENTRIES;
    }

    public static LassoElementType valueOf(String str) {
        return (LassoElementType) Enum.valueOf(LassoElementType.class, str);
    }

    public static LassoElementType[] values() {
        return (LassoElementType[]) $VALUES.clone();
    }

    public final int getTitle() {
        return this.title;
    }

    public final int getType() {
        return this.type;
    }

    public final void setTitle(int i) {
        this.title = i;
    }

    public final void setType(int i) {
        this.type = i;
    }
}
