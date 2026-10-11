package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.data.TextContentType;
import com.onyx.android.sdk.universal.C8045R;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u0000 \b2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;", "", "(Ljava/lang/String;I)V", "toString", "", "ALL", "HANDWRITING", "TEXT", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class TextSearchType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TextSearchType[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final TextSearchType ALL = new TextSearchType("ALL", 0);
    public static final TextSearchType HANDWRITING = new TextSearchType("HANDWRITING", 1);
    public static final TextSearchType TEXT = new TextSearchType("TEXT", 2);

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004*\b\u0012\u0004\u0012\u00020\u00070\u0006¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/TextSearchType$Companion;", "", "()V", "getContentTypes", "", "Lcom/onyx/android/sdk/data/common/data/TextContentType;", "", "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<TextContentType> getContentTypes(@NotNull List<? extends TextSearchType> list) {
            Intrinsics.checkNotNullParameter(list, "<this>");
            ArrayList arrayList = new ArrayList();
            if (list.contains(TextSearchType.HANDWRITING)) {
                arrayList.add(TextContentType.HANDWRITING);
                arrayList.add(TextContentType.HWR_FONT_TEXT);
            }
            if (list.contains(TextSearchType.TEXT)) {
                arrayList.add(TextContentType.PDF);
                arrayList.add(TextContentType.TEXT_BOX);
            }
            return arrayList;
        }

        private Companion() {
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TextSearchType.values().length];
            try {
                iArr[TextSearchType.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TextSearchType.HANDWRITING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TextSearchType.TEXT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final /* synthetic */ TextSearchType[] $values() {
        return new TextSearchType[]{ALL, HANDWRITING, TEXT};
    }

    static {
        TextSearchType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private TextSearchType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<TextSearchType> getEntries() {
        return $ENTRIES;
    }

    public static TextSearchType valueOf(String str) {
        return (TextSearchType) Enum.valueOf(TextSearchType.class, str);
    }

    public static TextSearchType[] values() {
        return (TextSearchType[]) $VALUES.clone();
    }

    @Override // java.lang.Enum
    @NotNull
    public String toString() {
        String string;
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1) {
            string = ResManager.INSTANCE.getString(C8045R.string.search_all);
        } else if (i == 2) {
            string = ResManager.INSTANCE.getString(C8045R.string.search_handwriting);
        } else {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            string = ResManager.INSTANCE.getString(C8045R.string.search_text);
        }
        return string == null ? "" : string;
    }
}
