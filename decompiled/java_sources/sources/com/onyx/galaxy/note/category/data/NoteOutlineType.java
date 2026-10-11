package com.onyx.galaxy.note.category.data;

import com.onyx.galaxy.note.C10651R;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/NoteOutlineType;", "", "titleResId", "", "iconResId", "(Ljava/lang/String;III)V", "getIconResId", "()I", "getTitleResId", "DocOverview", "TOC", "PageBookmark", "Excerpt", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteOutlineType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NoteOutlineType[] $VALUES;
    private final int iconResId;
    private final int titleResId;
    public static final NoteOutlineType DocOverview = new NoteOutlineType("DocOverview", 0, C10651R.string.document_overview, C10651R.drawable.ic_doc_overview);
    public static final NoteOutlineType TOC = new NoteOutlineType("TOC", 1, C10651R.string.toc, C10651R.drawable.ic_toc);
    public static final NoteOutlineType PageBookmark = new NoteOutlineType("PageBookmark", 2, C10651R.string.page_bookmark, C10651R.drawable.ic_bookmark);
    public static final NoteOutlineType Excerpt = new NoteOutlineType("Excerpt", 3, C10651R.string.excerpt, C10651R.drawable.ic_excerpt);

    private static final /* synthetic */ NoteOutlineType[] $values() {
        return new NoteOutlineType[]{DocOverview, TOC, PageBookmark, Excerpt};
    }

    static {
        NoteOutlineType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private NoteOutlineType(String str, int i, int i2, int i3) {
        this.titleResId = i2;
        this.iconResId = i3;
    }

    @NotNull
    public static EnumEntries<NoteOutlineType> getEntries() {
        return $ENTRIES;
    }

    public static NoteOutlineType valueOf(String str) {
        return (NoteOutlineType) Enum.valueOf(NoteOutlineType.class, str);
    }

    public static NoteOutlineType[] values() {
        return (NoteOutlineType[]) $VALUES.clone();
    }

    public final int getIconResId() {
        return this.iconResId;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }
}
