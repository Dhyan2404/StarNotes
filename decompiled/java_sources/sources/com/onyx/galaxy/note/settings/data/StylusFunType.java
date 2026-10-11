package com.onyx.galaxy.note.settings.data;

import androidx.annotation.StringRes;
import com.onyx.galaxy.note.C10651R;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0015\b\u0086\u0081\u0002\u0018\u0000 \u00172\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0017B\u0019\b\u0002\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\tj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/data/StylusFunType;", "", "title", "", "type", "(Ljava/lang/String;III)V", "getTitle", "()I", "setTitle", "(I)V", "getType", "setType", "CLOSE", "SWITCH_ERASER", "SWITCH_PEN_BRUSH", "SWITCH_TAPE_PEN", "SWITCH_LAST_TOOL", "SWITCH_COLOR", "SWITCH_LASSO", "SCREEN_SHOT", "PAPER_ADAPTIVE", "UN_DO", "RE_DO", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class StylusFunType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ StylusFunType[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    private int title;
    private int type;
    public static final StylusFunType CLOSE = new StylusFunType("CLOSE", 0, C10651R.string.closed, -1);
    public static final StylusFunType SWITCH_ERASER = new StylusFunType("SWITCH_ERASER", 1, C10651R.string.switch_eraser, 0);
    public static final StylusFunType SWITCH_PEN_BRUSH = new StylusFunType("SWITCH_PEN_BRUSH", 2, C10651R.string.switch_brush, 1);
    public static final StylusFunType SWITCH_TAPE_PEN = new StylusFunType("SWITCH_TAPE_PEN", 3, C10651R.string.switch_tape_pen, 2);
    public static final StylusFunType SWITCH_LAST_TOOL = new StylusFunType("SWITCH_LAST_TOOL", 4, C10651R.string.switch_last_tool, 3);
    public static final StylusFunType SWITCH_COLOR = new StylusFunType("SWITCH_COLOR", 5, C10651R.string.switch_color, 4);
    public static final StylusFunType SWITCH_LASSO = new StylusFunType("SWITCH_LASSO", 6, C10651R.string.switch_lasso, 5);
    public static final StylusFunType SCREEN_SHOT = new StylusFunType("SCREEN_SHOT", 7, C10651R.string.screen_shot, 6);
    public static final StylusFunType PAPER_ADAPTIVE = new StylusFunType("PAPER_ADAPTIVE", 8, C10651R.string.paper_adaptive, 9);
    public static final StylusFunType UN_DO = new StylusFunType("UN_DO", 9, C10651R.string.undo, 7);
    public static final StylusFunType RE_DO = new StylusFunType("RE_DO", 10, C10651R.string.redo, 8);

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/data/StylusFunType$Companion;", "", "()V", "getLongPressList", "", "Lcom/onyx/galaxy/note/settings/data/StylusFunType;", "getStylusList", "getSwitchList", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nStylusFunType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StylusFunType.kt\ncom/onyx/galaxy/note/settings/data/StylusFunType$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,41:1\n3792#2:42\n4307#2,2:43\n*S KotlinDebug\n*F\n+ 1 StylusFunType.kt\ncom/onyx/galaxy/note/settings/data/StylusFunType$Companion\n*L\n22#1:42\n22#1:43,2\n*E\n"})
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<StylusFunType> getLongPressList() {
            List<StylusFunType> listOf;
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new StylusFunType[]{StylusFunType.CLOSE, StylusFunType.SWITCH_ERASER});
            return listOf;
        }

        @NotNull
        public final List<StylusFunType> getStylusList() {
            List<StylusFunType> list;
            StylusFunType[] values = StylusFunType.values();
            ArrayList arrayList = new ArrayList();
            for (StylusFunType stylusFunType : values) {
                if (stylusFunType.getType() != 9) {
                    arrayList.add(stylusFunType);
                }
            }
            list = CollectionsKt___CollectionsKt.toList(arrayList);
            return list;
        }

        @NotNull
        public final List<StylusFunType> getSwitchList() {
            List<StylusFunType> listOf;
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new StylusFunType[]{StylusFunType.CLOSE, StylusFunType.SWITCH_ERASER, StylusFunType.SWITCH_PEN_BRUSH, StylusFunType.SWITCH_TAPE_PEN, StylusFunType.SWITCH_LAST_TOOL, StylusFunType.SWITCH_COLOR, StylusFunType.SWITCH_LASSO});
            return listOf;
        }

        public Companion() {
        }
    }

    private static final /* synthetic */ StylusFunType[] $values() {
        return new StylusFunType[]{CLOSE, SWITCH_ERASER, SWITCH_PEN_BRUSH, SWITCH_TAPE_PEN, SWITCH_LAST_TOOL, SWITCH_COLOR, SWITCH_LASSO, SCREEN_SHOT, PAPER_ADAPTIVE, UN_DO, RE_DO};
    }

    static {
        StylusFunType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private StylusFunType(@StringRes String str, int i, int i2, int i3) {
        this.title = i2;
        this.type = i3;
    }

    @NotNull
    public static EnumEntries<StylusFunType> getEntries() {
        return $ENTRIES;
    }

    public static StylusFunType valueOf(String str) {
        return (StylusFunType) Enum.valueOf(StylusFunType.class, str);
    }

    public static StylusFunType[] values() {
        return (StylusFunType[]) $VALUES.clone();
    }

    public final int getTitle() {
        return this.title;
    }

    public final int getType() {
        return this.type;
    }

    public final void setTitle(int i) {
        this.title = i;
    }

    public final void setType(int i) {
        this.type = i;
    }
}
