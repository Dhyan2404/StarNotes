package com.onyx.android.sdk.data;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.statistics.C7998R;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/InsertPageTo;", "", "desc", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getDesc", "()Ljava/lang/String;", "BEFORE", "AFTER", "LAST", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class InsertPageTo {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ InsertPageTo[] $VALUES;
    public static final InsertPageTo AFTER;
    public static final InsertPageTo BEFORE;
    public static final InsertPageTo LAST;

    @Nullable
    private final String desc;

    private static final /* synthetic */ InsertPageTo[] $values() {
        return new InsertPageTo[]{BEFORE, AFTER, LAST};
    }

    static {
        ResManager resManager = ResManager.INSTANCE;
        BEFORE = new InsertPageTo("BEFORE", 0, resManager.getString(C7998R.string.insert_to_before));
        AFTER = new InsertPageTo("AFTER", 1, resManager.getString(C7998R.string.insert_to_after));
        LAST = new InsertPageTo("LAST", 2, resManager.getString(C7998R.string.insert_to_last));
        InsertPageTo[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private InsertPageTo(String str, int i, String str2) {
        this.desc = str2;
    }

    @NotNull
    public static EnumEntries<InsertPageTo> getEntries() {
        return $ENTRIES;
    }

    public static InsertPageTo valueOf(String str) {
        return (InsertPageTo) Enum.valueOf(InsertPageTo.class, str);
    }

    public static InsertPageTo[] values() {
        return (InsertPageTo[]) $VALUES.clone();
    }

    @Nullable
    public final String getDesc() {
        return this.desc;
    }
}
