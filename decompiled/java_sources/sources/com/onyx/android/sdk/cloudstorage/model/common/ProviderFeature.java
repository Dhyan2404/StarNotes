package com.onyx.android.sdk.cloudstorage.model.common;

import java.util.List;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u0000 \u00052\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0005B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;", "", "(Ljava/lang/String;I)V", "Note", "Document", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ProviderFeature {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ProviderFeature[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final ProviderFeature Note = new ProviderFeature("Note", 0);
    public static final ProviderFeature Document = new ProviderFeature("Document", 1);

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006J\u0016\u0010\b\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006J\u0016\u0010\t\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature$Companion;", "", "()V", "supportDocumentFeature", "", "list", "", "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;", "supportDocumentOrNoteFeature", "supportNoteFeature", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean supportDocumentFeature(@NotNull List<? extends ProviderFeature> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            return list.contains(ProviderFeature.Document);
        }

        public final boolean supportDocumentOrNoteFeature(@NotNull List<? extends ProviderFeature> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            return list.contains(ProviderFeature.Note) || list.contains(ProviderFeature.Document);
        }

        public final boolean supportNoteFeature(@NotNull List<? extends ProviderFeature> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            return list.contains(ProviderFeature.Note);
        }

        public Companion() {
        }
    }

    private static final /* synthetic */ ProviderFeature[] $values() {
        return new ProviderFeature[]{Note, Document};
    }

    static {
        ProviderFeature[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private ProviderFeature(String str, int i) {
    }

    @NotNull
    public static EnumEntries<ProviderFeature> getEntries() {
        return $ENTRIES;
    }

    public static ProviderFeature valueOf(String str) {
        return (ProviderFeature) Enum.valueOf(ProviderFeature.class, str);
    }

    public static ProviderFeature[] values() {
        return (ProviderFeature[]) $VALUES.clone();
    }
}
