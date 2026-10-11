package com.onyx.android.sdk.base.data.font;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jsoup.nodes.DocumentType;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \b2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/font/FontType;", "", "(Ljava/lang/String;I)V", "CJK", "ENGLISH", "ALL", "CUSTOMIZE", DocumentType.SYSTEM_KEY, "Companion", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FontType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FontType[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final FontType CJK = new FontType("CJK", 0);
    public static final FontType ENGLISH = new FontType("ENGLISH", 1);
    public static final FontType ALL = new FontType("ALL", 2);
    public static final FontType CUSTOMIZE = new FontType("CUSTOMIZE", 3);
    public static final FontType SYSTEM = new FontType(DocumentType.SYSTEM_KEY, 4);

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/font/FontType$Companion;", "", "()V", "isCustom", "", "fontType", "Lcom/onyx/android/sdk/base/data/font/FontType;", "isEnglishCharSet", "charSet", "", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean isCustom(@NotNull FontType fontType) {
            Intrinsics.checkNotNullParameter(fontType, "fontType");
            return fontType == FontType.CUSTOMIZE;
        }

        public final boolean isEnglishCharSet(@Nullable String charSet) {
            try {
                Intrinsics.checkNotNull(charSet);
                return FontType.valueOf(charSet) == FontType.ENGLISH;
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
                return false;
            }
        }

        private Companion() {
        }
    }

    private static final /* synthetic */ FontType[] $values() {
        return new FontType[]{CJK, ENGLISH, ALL, CUSTOMIZE, SYSTEM};
    }

    static {
        FontType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private FontType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<FontType> getEntries() {
        return $ENTRIES;
    }

    public static FontType valueOf(String str) {
        return (FontType) Enum.valueOf(FontType.class, str);
    }

    public static FontType[] values() {
        return (FontType[]) $VALUES.clone();
    }
}
