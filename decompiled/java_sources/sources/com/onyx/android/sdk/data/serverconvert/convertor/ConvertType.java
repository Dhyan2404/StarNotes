package com.onyx.android.sdk.data.serverconvert.convertor;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;", "", "platform", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getPlatform", "()Ljava/lang/String;", "OSS", "COS", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ConvertType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ConvertType[] $VALUES;

    @NotNull
    private final String platform;
    public static final ConvertType OSS = new ConvertType("OSS", 0, "oss");
    public static final ConvertType COS = new ConvertType("COS", 1, "cos");

    private static final /* synthetic */ ConvertType[] $values() {
        return new ConvertType[]{OSS, COS};
    }

    static {
        ConvertType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private ConvertType(String str, int i, String str2) {
        this.platform = str2;
    }

    @NotNull
    public static EnumEntries<ConvertType> getEntries() {
        return $ENTRIES;
    }

    public static ConvertType valueOf(String str) {
        return (ConvertType) Enum.valueOf(ConvertType.class, str);
    }

    public static ConvertType[] values() {
        return (ConvertType[]) $VALUES.clone();
    }

    @NotNull
    public final String getPlatform() {
        return this.platform;
    }
}
