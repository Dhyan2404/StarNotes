package com.onyx.android.sdk.base.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0012\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/SortBy;", "", "(Ljava/lang/String;I)V", "None", "Name", "FileType", "Size", "CreationTime", "BookTitle", "Author", "Publisher", "RecentlyRead", "Total", "StartTime", "LastOpenTime", "InstallTime", "Ordinal", "UpdateAt", "Manual", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SortBy {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SortBy[] $VALUES;
    public static final SortBy None = new SortBy("None", 0);
    public static final SortBy Name = new SortBy("Name", 1);
    public static final SortBy FileType = new SortBy("FileType", 2);
    public static final SortBy Size = new SortBy("Size", 3);
    public static final SortBy CreationTime = new SortBy("CreationTime", 4);
    public static final SortBy BookTitle = new SortBy("BookTitle", 5);
    public static final SortBy Author = new SortBy("Author", 6);
    public static final SortBy Publisher = new SortBy("Publisher", 7);
    public static final SortBy RecentlyRead = new SortBy("RecentlyRead", 8);
    public static final SortBy Total = new SortBy("Total", 9);
    public static final SortBy StartTime = new SortBy("StartTime", 10);
    public static final SortBy LastOpenTime = new SortBy("LastOpenTime", 11);
    public static final SortBy InstallTime = new SortBy("InstallTime", 12);
    public static final SortBy Ordinal = new SortBy("Ordinal", 13);
    public static final SortBy UpdateAt = new SortBy("UpdateAt", 14);
    public static final SortBy Manual = new SortBy("Manual", 15);

    private static final /* synthetic */ SortBy[] $values() {
        return new SortBy[]{None, Name, FileType, Size, CreationTime, BookTitle, Author, Publisher, RecentlyRead, Total, StartTime, LastOpenTime, InstallTime, Ordinal, UpdateAt, Manual};
    }

    static {
        SortBy[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private SortBy(String str, int i) {
    }

    @NotNull
    public static EnumEntries<SortBy> getEntries() {
        return $ENTRIES;
    }

    public static SortBy valueOf(String str) {
        return (SortBy) Enum.valueOf(SortBy.class, str);
    }

    public static SortBy[] values() {
        return (SortBy[]) $VALUES.clone();
    }
}
