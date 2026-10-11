package com.onyx.galaxy.note.editor.data;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0086\u0081\u0002\u0018\u0000 \u00142\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0014B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;", "", "speed", "", "text", "", "(Ljava/lang/String;IFLjava/lang/String;)V", "getSpeed", "()F", "setSpeed", "(F)V", "getText", "()Ljava/lang/String;", "setText", "(Ljava/lang/String;)V", "ZERO_POINT_SEVEN_FIVE", "ONE", "ONE_POINT_TWO_FIVE", "ONE_POINT_FIVE", "TWO", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class PlaySpeedType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PlaySpeedType[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    private float speed;

    @NotNull
    private String text;
    public static final PlaySpeedType ZERO_POINT_SEVEN_FIVE = new PlaySpeedType("ZERO_POINT_SEVEN_FIVE", 0, 0.75f, "0.75X");
    public static final PlaySpeedType ONE = new PlaySpeedType("ONE", 1, 1.0f, "1.0X");
    public static final PlaySpeedType ONE_POINT_TWO_FIVE = new PlaySpeedType("ONE_POINT_TWO_FIVE", 2, 1.25f, "1.25X");
    public static final PlaySpeedType ONE_POINT_FIVE = new PlaySpeedType("ONE_POINT_FIVE", 3, 1.5f, "1.5X");
    public static final PlaySpeedType TWO = new PlaySpeedType("TWO", 4, 2.0f, "2.0X");

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/PlaySpeedType$Companion;", "", "()V", "toggleSpeedType", "Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;", "type", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @NotNull
        public final PlaySpeedType toggleSpeedType(@Nullable PlaySpeedType type) {
            int indexOf;
            indexOf = CollectionsKt___CollectionsKt.indexOf((List<? extends PlaySpeedType>) ((List<? extends Object>) PlaySpeedType.getEntries()), type);
            int i = indexOf + 1;
            if (i >= PlaySpeedType.getEntries().size()) {
                i = 0;
            }
            return (PlaySpeedType) PlaySpeedType.getEntries().get(i);
        }

        public Companion() {
        }
    }

    private static final /* synthetic */ PlaySpeedType[] $values() {
        return new PlaySpeedType[]{ZERO_POINT_SEVEN_FIVE, ONE, ONE_POINT_TWO_FIVE, ONE_POINT_FIVE, TWO};
    }

    static {
        PlaySpeedType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private PlaySpeedType(String str, int i, float f, String str2) {
        this.speed = f;
        this.text = str2;
    }

    @NotNull
    public static EnumEntries<PlaySpeedType> getEntries() {
        return $ENTRIES;
    }

    public static PlaySpeedType valueOf(String str) {
        return (PlaySpeedType) Enum.valueOf(PlaySpeedType.class, str);
    }

    public static PlaySpeedType[] values() {
        return (PlaySpeedType[]) $VALUES.clone();
    }

    public final float getSpeed() {
        return this.speed;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    public final void setSpeed(float f) {
        this.speed = f;
    }

    public final void setText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.text = str;
    }
}
