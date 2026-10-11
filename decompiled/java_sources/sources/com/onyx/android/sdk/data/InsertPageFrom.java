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
@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/data/InsertPageFrom;", "", "desc", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getDesc", "()Ljava/lang/String;", "RECENT_TEMPLATE", "MORE_TEMPLATE", "OTHER_NOTE", "IMPORT_FILE", "IMPORT_PICTURE", "TAKE_PICTURE", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class InsertPageFrom {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ InsertPageFrom[] $VALUES;
    public static final InsertPageFrom IMPORT_FILE;
    public static final InsertPageFrom IMPORT_PICTURE;
    public static final InsertPageFrom MORE_TEMPLATE;
    public static final InsertPageFrom OTHER_NOTE;
    public static final InsertPageFrom RECENT_TEMPLATE;
    public static final InsertPageFrom TAKE_PICTURE;

    @Nullable
    private final String desc;

    private static final /* synthetic */ InsertPageFrom[] $values() {
        return new InsertPageFrom[]{RECENT_TEMPLATE, MORE_TEMPLATE, OTHER_NOTE, IMPORT_FILE, IMPORT_PICTURE, TAKE_PICTURE};
    }

    static {
        ResManager resManager = ResManager.INSTANCE;
        RECENT_TEMPLATE = new InsertPageFrom("RECENT_TEMPLATE", 0, resManager.getString(C7998R.string.insert_from_recent_template));
        MORE_TEMPLATE = new InsertPageFrom("MORE_TEMPLATE", 1, resManager.getString(C7998R.string.insert_from_more_template));
        OTHER_NOTE = new InsertPageFrom("OTHER_NOTE", 2, resManager.getString(C7998R.string.insert_from_other_note));
        IMPORT_FILE = new InsertPageFrom("IMPORT_FILE", 3, resManager.getString(C7998R.string.insert_from_import_file));
        IMPORT_PICTURE = new InsertPageFrom("IMPORT_PICTURE", 4, resManager.getString(C7998R.string.insert_from_import_picture));
        TAKE_PICTURE = new InsertPageFrom("TAKE_PICTURE", 5, resManager.getString(C7998R.string.insert_from_take_picture));
        InsertPageFrom[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private InsertPageFrom(String str, int i, String str2) {
        this.desc = str2;
    }

    @NotNull
    public static EnumEntries<InsertPageFrom> getEntries() {
        return $ENTRIES;
    }

    public static InsertPageFrom valueOf(String str) {
        return (InsertPageFrom) Enum.valueOf(InsertPageFrom.class, str);
    }

    public static InsertPageFrom[] values() {
        return (InsertPageFrom[]) $VALUES.clone();
    }

    @Nullable
    public final String getDesc() {
        return this.desc;
    }
}
