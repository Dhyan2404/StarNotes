package com.onyx.android.sdk.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/data/LoginTriggerFrom;", "", "(Ljava/lang/String;I)V", "HOME_AVATAR", "HOME_PROGUIDE", "MATERIAL_DOWNLOAD", "NOTES_LIMIT", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LoginTriggerFrom {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LoginTriggerFrom[] $VALUES;
    public static final LoginTriggerFrom HOME_AVATAR = new LoginTriggerFrom("HOME_AVATAR", 0);
    public static final LoginTriggerFrom HOME_PROGUIDE = new LoginTriggerFrom("HOME_PROGUIDE", 1);
    public static final LoginTriggerFrom MATERIAL_DOWNLOAD = new LoginTriggerFrom("MATERIAL_DOWNLOAD", 2);
    public static final LoginTriggerFrom NOTES_LIMIT = new LoginTriggerFrom("NOTES_LIMIT", 3);

    private static final /* synthetic */ LoginTriggerFrom[] $values() {
        return new LoginTriggerFrom[]{HOME_AVATAR, HOME_PROGUIDE, MATERIAL_DOWNLOAD, NOTES_LIMIT};
    }

    static {
        LoginTriggerFrom[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private LoginTriggerFrom(String str, int i) {
    }

    @NotNull
    public static EnumEntries<LoginTriggerFrom> getEntries() {
        return $ENTRIES;
    }

    public static LoginTriggerFrom valueOf(String str) {
        return (LoginTriggerFrom) Enum.valueOf(LoginTriggerFrom.class, str);
    }

    public static LoginTriggerFrom[] values() {
        return (LoginTriggerFrom[]) $VALUES.clone();
    }
}
