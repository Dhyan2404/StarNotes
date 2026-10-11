package com.onyx.galaxy.note.editor.view.ruler;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;", "", "radix", "", "millimeter", "", "(Ljava/lang/String;IIF)V", "getMillimeter", "()F", "getRadix", "()I", "CM", "IN", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class RulerUnitsType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RulerUnitsType[] $VALUES;

    /* renamed from: CM */
    public static final RulerUnitsType f60706CM = new RulerUnitsType("CM", 0, 10, 10.0f);

    /* renamed from: IN */
    public static final RulerUnitsType f60707IN = new RulerUnitsType("IN", 1, 16, 25.4f);
    private final float millimeter;
    private final int radix;

    private static final /* synthetic */ RulerUnitsType[] $values() {
        return new RulerUnitsType[]{f60706CM, f60707IN};
    }

    static {
        RulerUnitsType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private RulerUnitsType(String str, int i, int i2, float f) {
        this.radix = i2;
        this.millimeter = f;
    }

    @NotNull
    public static EnumEntries<RulerUnitsType> getEntries() {
        return $ENTRIES;
    }

    public static RulerUnitsType valueOf(String str) {
        return (RulerUnitsType) Enum.valueOf(RulerUnitsType.class, str);
    }

    public static RulerUnitsType[] values() {
        return (RulerUnitsType[]) $VALUES.clone();
    }

    public final float getMillimeter() {
        return this.millimeter;
    }

    public final int getRadix() {
        return this.radix;
    }
}
