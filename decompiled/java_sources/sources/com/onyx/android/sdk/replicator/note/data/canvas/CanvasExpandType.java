package com.onyx.android.sdk.replicator.note.data.canvas;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\fB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;", "", "(Ljava/lang/String;I)V", "isCustomCanvasExpandType", "", "isDefaultCanvasExpandType", "DEFAULT", "HEIGHT_EXPAND", "WIDTH_EXPAND", "WIDTH_HEIGHT_EXPAND", "CUSTOM", "CLIP", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class CanvasExpandType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CanvasExpandType[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final CanvasExpandType DEFAULT = new CanvasExpandType("DEFAULT", 0);
    public static final CanvasExpandType HEIGHT_EXPAND = new CanvasExpandType("HEIGHT_EXPAND", 1);
    public static final CanvasExpandType WIDTH_EXPAND = new CanvasExpandType("WIDTH_EXPAND", 2);
    public static final CanvasExpandType WIDTH_HEIGHT_EXPAND = new CanvasExpandType("WIDTH_HEIGHT_EXPAND", 3);
    public static final CanvasExpandType CUSTOM = new CanvasExpandType("CUSTOM", 4);
    public static final CanvasExpandType CLIP = new CanvasExpandType("CLIP", 5);

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType$Companion;", "", "()V", "getMaxExpandMultiple", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int getMaxExpandMultiple() {
            return 2;
        }

        private Companion() {
        }
    }

    private static final /* synthetic */ CanvasExpandType[] $values() {
        return new CanvasExpandType[]{DEFAULT, HEIGHT_EXPAND, WIDTH_EXPAND, WIDTH_HEIGHT_EXPAND, CUSTOM, CLIP};
    }

    static {
        CanvasExpandType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private CanvasExpandType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<CanvasExpandType> getEntries() {
        return $ENTRIES;
    }

    public static CanvasExpandType valueOf(String str) {
        return (CanvasExpandType) Enum.valueOf(CanvasExpandType.class, str);
    }

    public static CanvasExpandType[] values() {
        return (CanvasExpandType[]) $VALUES.clone();
    }

    public boolean isCustomCanvasExpandType() {
        return this == CUSTOM;
    }

    public boolean isDefaultCanvasExpandType() {
        return this == DEFAULT;
    }
}
