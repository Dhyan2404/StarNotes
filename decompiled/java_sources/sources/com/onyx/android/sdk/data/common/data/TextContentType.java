package com.onyx.android.sdk.data.common.data;

import com.onyx.android.sdk.base.data.annotation.NoProguard;
import com.onyx.android.sdk.base.extension.CollectionKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u0007\b\u0002¢\u0006\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/TextContentType;", "", "Lcom/onyx/android/sdk/base/data/annotation/NoProguard;", "(Ljava/lang/String;I)V", "UNDEFINED", "DOC_TITLE", "PDF", "TEXT_BOX", "HANDWRITING", "HWR_FONT_TEXT", "OCR_TEXT", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TextContentType implements NoProguard {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TextContentType[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final TextContentType UNDEFINED = new TextContentType("UNDEFINED", 0);
    public static final TextContentType DOC_TITLE = new TextContentType("DOC_TITLE", 1);
    public static final TextContentType PDF = new TextContentType("PDF", 2);
    public static final TextContentType TEXT_BOX = new TextContentType("TEXT_BOX", 3);
    public static final TextContentType HANDWRITING = new TextContentType("HANDWRITING", 4);
    public static final TextContentType HWR_FONT_TEXT = new TextContentType("HWR_FONT_TEXT", 5);
    public static final TextContentType OCR_TEXT = new TextContentType("OCR_TEXT", 6);

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u000e\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u000b*\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0010\u0010\f\u001a\u00020\u000b*\b\u0012\u0004\u0012\u00020\u00050\u0004¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/TextContentType$Companion;", "", "()V", "allPageContentTypes", "", "Lcom/onyx/android/sdk/data/common/data/TextContentType;", "editablePageContentTypes", "fromString", "name", "", "containsHwrContent", "", "containsOcrContent", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nTextContentType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextContentType.kt\ncom/onyx/android/sdk/data/common/data/TextContentType$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,33:1\n1282#2,2:34\n*S KotlinDebug\n*F\n+ 1 TextContentType.kt\ncom/onyx/android/sdk/data/common/data/TextContentType$Companion\n*L\n22#1:34,2\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<TextContentType> allPageContentTypes() {
            List<TextContentType> listOf;
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TextContentType[]{TextContentType.PDF, TextContentType.TEXT_BOX, TextContentType.HANDWRITING, TextContentType.HWR_FONT_TEXT});
            return listOf;
        }

        public final boolean containsHwrContent(@NotNull List<? extends TextContentType> list) {
            Intrinsics.checkNotNullParameter(list, "<this>");
            return CollectionKt.containsAnyElement(list, TextContentType.HANDWRITING, TextContentType.HWR_FONT_TEXT);
        }

        public final boolean containsOcrContent(@NotNull List<? extends TextContentType> list) {
            Intrinsics.checkNotNullParameter(list, "<this>");
            return CollectionKt.containsAnyElement(list, TextContentType.HANDWRITING, TextContentType.OCR_TEXT);
        }

        @NotNull
        public final List<TextContentType> editablePageContentTypes() {
            List<TextContentType> listOf;
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TextContentType[]{TextContentType.TEXT_BOX, TextContentType.HANDWRITING, TextContentType.HWR_FONT_TEXT});
            return listOf;
        }

        @NotNull
        public final TextContentType fromString(@NotNull String name) {
            TextContentType textContentType;
            Intrinsics.checkNotNullParameter(name, "name");
            TextContentType[] values = TextContentType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    textContentType = null;
                    break;
                }
                textContentType = values[i];
                if (Intrinsics.areEqual(textContentType.name(), name)) {
                    break;
                }
                i++;
            }
            return textContentType == null ? TextContentType.UNDEFINED : textContentType;
        }

        private Companion() {
        }
    }

    private static final /* synthetic */ TextContentType[] $values() {
        return new TextContentType[]{UNDEFINED, DOC_TITLE, PDF, TEXT_BOX, HANDWRITING, HWR_FONT_TEXT, OCR_TEXT};
    }

    static {
        TextContentType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private TextContentType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<TextContentType> getEntries() {
        return $ENTRIES;
    }

    public static TextContentType valueOf(String str) {
        return (TextContentType) Enum.valueOf(TextContentType.class, str);
    }

    public static TextContentType[] values() {
        return (TextContentType[]) $VALUES.clone();
    }
}
