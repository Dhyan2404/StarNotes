package com.onyx.android.sdk.note.common.data.selection;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u0000 \u00052\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0005B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/selection/SelectionHandleType;", "", "(Ljava/lang/String;I)V", "ROTATE", "QUICK_COPY", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SelectionHandleType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SelectionHandleType[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final SelectionHandleType ROTATE = new SelectionHandleType("ROTATE", 0);
    public static final SelectionHandleType QUICK_COPY = new SelectionHandleType("QUICK_COPY", 1);

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0016\u0010\b\u001a\u00020\u00072\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/selection/SelectionHandleType$Companion;", "", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "Lcom/onyx/android/sdk/note/common/data/selection/SelectionHandleType;", "getSelectionHandleTypes", "", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final boolean m33664a(List<? extends Shape> shapes) {
            return !CollectionKt.contains(shapes, new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.note.common.data.selection.SelectionHandleType$Companion$isEnableQuickCopy$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull Shape it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(ShapeTypes.INSTANCE.isLinkAudioType(it2));
                }
            });
        }

        @NotNull
        public final List<SelectionHandleType> getSelectionHandleTypes(@NotNull List<? extends Shape> shapes) {
            List<SelectionHandleType> mutableListOf;
            Intrinsics.checkNotNullParameter(shapes, "shapes");
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(SelectionHandleType.ROTATE);
            if (m33664a(shapes)) {
                mutableListOf.add(SelectionHandleType.QUICK_COPY);
            }
            return mutableListOf;
        }

        public Companion() {
        }
    }

    private static final /* synthetic */ SelectionHandleType[] $values() {
        return new SelectionHandleType[]{ROTATE, QUICK_COPY};
    }

    static {
        SelectionHandleType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private SelectionHandleType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<SelectionHandleType> getEntries() {
        return $ENTRIES;
    }

    public static SelectionHandleType valueOf(String str) {
        return (SelectionHandleType) Enum.valueOf(SelectionHandleType.class, str);
    }

    public static SelectionHandleType[] values() {
        return (SelectionHandleType[]) $VALUES.clone();
    }
}
