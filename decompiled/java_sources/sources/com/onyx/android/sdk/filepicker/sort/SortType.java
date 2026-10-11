package com.onyx.android.sdk.filepicker.sort;

import com.onyx.android.sdk.filepicker.DocumentBean;
import java.util.Comparator;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B#\b\u0002\u0012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u0005¢\u0006\u0002\u0010\u0006R%\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/filepicker/sort/SortType;", "", "comparator", "Ljava/util/Comparator;", "Lcom/onyx/android/sdk/filepicker/DocumentBean;", "Lkotlin/Comparator;", "(Ljava/lang/String;ILjava/util/Comparator;)V", "getComparator", "()Ljava/util/Comparator;", "NAME", "SIZE", "TIME", "NONE", "sdk-imagepicker_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SortType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SortType[] $VALUES;

    @Nullable
    private final Comparator<DocumentBean> comparator;
    public static final SortType NAME = new SortType("NAME", 0, new Comparator<DocumentBean>() { // from class: com.onyx.android.sdk.filepicker.sort.NameComparator
        @Override // java.util.Comparator
        public int compare(@NotNull DocumentBean o1, @NotNull DocumentBean o2) {
            Intrinsics.checkNotNullParameter(o1, "o1");
            Intrinsics.checkNotNullParameter(o2, "o2");
            String name = o1.getName();
            Locale locale = Locale.ROOT;
            String lowerCase = name.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            String lowerCase2 = o2.getName().toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            return lowerCase.compareTo(lowerCase2);
        }
    });
    public static final SortType SIZE = new SortType("SIZE", 1, new Comparator<DocumentBean>() { // from class: com.onyx.android.sdk.filepicker.sort.SizeComparator
        @Override // java.util.Comparator
        public int compare(@NotNull DocumentBean o1, @NotNull DocumentBean o2) {
            Intrinsics.checkNotNullParameter(o1, "o1");
            Intrinsics.checkNotNullParameter(o2, "o2");
            return o1.getSize().compareTo(o2.getSize());
        }
    });
    public static final SortType TIME = new SortType("TIME", 2, new Comparator<DocumentBean>() { // from class: com.onyx.android.sdk.filepicker.sort.TimeComparator
        @Override // java.util.Comparator
        public int compare(@NotNull DocumentBean o1, @NotNull DocumentBean o2) {
            Intrinsics.checkNotNullParameter(o1, "o1");
            Intrinsics.checkNotNullParameter(o2, "o2");
            return o1.getTime().compareTo(o2.getTime());
        }
    });
    public static final SortType NONE = new SortType("NONE", 3, null);

    private static final /* synthetic */ SortType[] $values() {
        return new SortType[]{NAME, SIZE, TIME, NONE};
    }

    static {
        SortType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private SortType(String str, int i, Comparator comparator) {
        this.comparator = comparator;
    }

    @NotNull
    public static EnumEntries<SortType> getEntries() {
        return $ENTRIES;
    }

    public static SortType valueOf(String str) {
        return (SortType) Enum.valueOf(SortType.class, str);
    }

    public static SortType[] values() {
        return (SortType[]) $VALUES.clone();
    }

    @Nullable
    public final Comparator<DocumentBean> getComparator() {
        return this.comparator;
    }
}
