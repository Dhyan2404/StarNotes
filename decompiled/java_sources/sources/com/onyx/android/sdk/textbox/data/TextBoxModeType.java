package com.onyx.android.sdk.textbox.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/data/TextBoxModeType;", "", "(Ljava/lang/String;I)V", "isAdaptive", "", "isFixed", "isSemiAdaptive", "ADAPTIVE", "SEMI_ADAPTIVE", "FIXED", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class TextBoxModeType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TextBoxModeType[] $VALUES;
    public static final TextBoxModeType ADAPTIVE = new TextBoxModeType("ADAPTIVE", 0);
    public static final TextBoxModeType SEMI_ADAPTIVE = new TextBoxModeType("SEMI_ADAPTIVE", 1);
    public static final TextBoxModeType FIXED = new TextBoxModeType("FIXED", 2);

    private static final /* synthetic */ TextBoxModeType[] $values() {
        return new TextBoxModeType[]{ADAPTIVE, SEMI_ADAPTIVE, FIXED};
    }

    static {
        TextBoxModeType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private TextBoxModeType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<TextBoxModeType> getEntries() {
        return $ENTRIES;
    }

    public static TextBoxModeType valueOf(String str) {
        return (TextBoxModeType) Enum.valueOf(TextBoxModeType.class, str);
    }

    public static TextBoxModeType[] values() {
        return (TextBoxModeType[]) $VALUES.clone();
    }

    public final boolean isAdaptive() {
        return this == ADAPTIVE;
    }

    public final boolean isFixed() {
        return this == FIXED;
    }

    public final boolean isSemiAdaptive() {
        return this == SEMI_ADAPTIVE;
    }
}
