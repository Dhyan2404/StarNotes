package com.onyx.galaxy.note.category.data;

import com.onyx.galaxy.note.C10651R;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;", "", "titleResId", "", "(Ljava/lang/String;II)V", "getTitleResId", "()I", "setTitleResId", "(I)V", "COVER", "PAPER", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class TemplateDisplayType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TemplateDisplayType[] $VALUES;
    public static final TemplateDisplayType COVER = new TemplateDisplayType("COVER", 0, C10651R.string.cover_template);
    public static final TemplateDisplayType PAPER = new TemplateDisplayType("PAPER", 1, C10651R.string.paper_template);
    private int titleResId;

    private static final /* synthetic */ TemplateDisplayType[] $values() {
        return new TemplateDisplayType[]{COVER, PAPER};
    }

    static {
        TemplateDisplayType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private TemplateDisplayType(String str, int i, int i2) {
        this.titleResId = i2;
    }

    @NotNull
    public static EnumEntries<TemplateDisplayType> getEntries() {
        return $ENTRIES;
    }

    public static TemplateDisplayType valueOf(String str) {
        return (TemplateDisplayType) Enum.valueOf(TemplateDisplayType.class, str);
    }

    public static TemplateDisplayType[] values() {
        return (TemplateDisplayType[]) $VALUES.clone();
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    public final void setTitleResId(int i) {
        this.titleResId = i;
    }
}
