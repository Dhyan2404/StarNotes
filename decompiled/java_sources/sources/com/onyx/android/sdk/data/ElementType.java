package com.onyx.android.sdk.data;

import com.onyx.galaxy.note.datarepository.constants.Constants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/data/ElementType;", "", "(Ljava/lang/String;I)V", "HANDWRITING", "PHOTO", Constants.RESOURCE_TYPE_STICKER, "TEXT", "GRAPH", "PAGE", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ElementType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ElementType[] $VALUES;
    public static final ElementType HANDWRITING = new ElementType("HANDWRITING", 0);
    public static final ElementType PHOTO = new ElementType("PHOTO", 1);
    public static final ElementType STICKER = new ElementType(Constants.RESOURCE_TYPE_STICKER, 2);
    public static final ElementType TEXT = new ElementType("TEXT", 3);
    public static final ElementType GRAPH = new ElementType("GRAPH", 4);
    public static final ElementType PAGE = new ElementType("PAGE", 5);

    private static final /* synthetic */ ElementType[] $values() {
        return new ElementType[]{HANDWRITING, PHOTO, STICKER, TEXT, GRAPH, PAGE};
    }

    static {
        ElementType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private ElementType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<ElementType> getEntries() {
        return $ENTRIES;
    }

    public static ElementType valueOf(String str) {
        return (ElementType) Enum.valueOf(ElementType.class, str);
    }

    public static ElementType[] values() {
        return (ElementType[]) $VALUES.clone();
    }
}
