package com.onyx.galaxy.note.editor.data;

import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0010\b\n\u0002\b\u000f\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0006\u0010\b\u001a\u00020\u0007J\u0016\u0010\u000b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0007J\u0016\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0007J\u0013\u0010\u000f\u001a\u00020\u00072\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u0096\u0002R\u001d\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001d\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0013\u001a\u0004\b\u0018\u0010\u0015R\u001d\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u0013\u001a\u0004\b\u001b\u0010\u0015¨\u0006 "}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;", "", "", "Lcom/onyx/galaxy/note/editor/data/ShortcutType;", "getLeftSideShortcutTypes", "getRightSideShortcutTypes", "getCandidateShortcutTypes", "", "isExceedShortcutLimitCount", "type", "isLayoutDirectionRtl", "isLeftSideShortcut", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "getHorizontalDockType", Constants.ATTRVAL_OTHER, "equals", "", "", "a", "Ljava/util/List;", "getLeftSideList", "()Ljava/util/List;", "leftSideList", "b", "getRightSideList", "rightSideList", "c", "getCandidateList", "candidateList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShortcutBarData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortcutBarData.kt\ncom/onyx/galaxy/note/editor/data/ShortcutBarData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,118:1\n1603#2,9:119\n1855#2:128\n1856#2:130\n1612#2:131\n1603#2,9:132\n1855#2:141\n1856#2:143\n1612#2:144\n1603#2,9:145\n1855#2:154\n1856#2:156\n1612#2:157\n766#2:158\n857#2,2:159\n766#2:161\n857#2,2:162\n1#3:129\n1#3:142\n1#3:155\n*S KotlinDebug\n*F\n+ 1 ShortcutBarData.kt\ncom/onyx/galaxy/note/editor/data/ShortcutBarData\n*L\n74#1:119,9\n74#1:128\n74#1:130\n74#1:131\n78#1:132,9\n78#1:141\n78#1:143\n78#1:144\n82#1:145,9\n82#1:154\n82#1:156\n82#1:157\n86#1:158\n86#1:159,2\n87#1:161\n87#1:162,2\n74#1:129\n78#1:142\n82#1:155\n*E\n"})
/* loaded from: classes9.dex */
public final class ShortcutBarData {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: d */
    public static final int f58561d = 10;

    /* renamed from: e */
    @NotNull
    public static final List<Integer> f58562e;

    /* renamed from: f */
    @NotNull
    public static final List<Integer> f58563f;

    /* renamed from: g */
    @NotNull
    public static final List<Integer> f58564g;

    /* renamed from: h */
    @NotNull
    public static final List<Integer> f58565h;

    /* renamed from: i */
    @NotNull
    public static final List<ShortcutType> f58566i;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final List<Integer> leftSideList = new ArrayList();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<Integer> rightSideList = new ArrayList();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final List<Integer> candidateList = new ArrayList();

    @Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0012\u001a\u00020\u0010J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0014\u001a\u00020\u0005R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/ShortcutBarData$Companion;", "", "()V", "DEFAULT_CANDIDATE_LIST", "", "", "DEFAULT_LEFT_SIDE_LIST", "DEFAULT_RIGHT_SIDE_LIST", "", "FILTER_READING_MOD_SHORTCUT_LIST", "Lcom/onyx/galaxy/note/editor/data/ShortcutType;", "getFILTER_READING_MOD_SHORTCUT_LIST", "()Ljava/util/List;", "SHORTCUT_LIMIT_COUNT", "UN_REMOVABLE_SHORTCUT_LIST", "copy", "Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;", Constants.ATTRVAL_OTHER, "createDefaultShortcutBarData", "getShortcutType", "shortcutType", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nShortcutBarData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortcutBarData.kt\ncom/onyx/galaxy/note/editor/data/ShortcutBarData$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,118:1\n288#2,2:119\n*S KotlinDebug\n*F\n+ 1 ShortcutBarData.kt\ncom/onyx/galaxy/note/editor/data/ShortcutBarData$Companion\n*L\n65#1:119,2\n*E\n"})
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ShortcutBarData copy(@NotNull ShortcutBarData other) {
            Intrinsics.checkNotNullParameter(other, "other");
            ShortcutBarData shortcutBarData = new ShortcutBarData();
            shortcutBarData.getLeftSideList().addAll(other.getLeftSideList());
            shortcutBarData.getRightSideList().addAll(other.getRightSideList());
            shortcutBarData.getCandidateList().addAll(other.getCandidateList());
            return shortcutBarData;
        }

        @NotNull
        public final ShortcutBarData createDefaultShortcutBarData() {
            if (!NoteConfigManager.INSTANCE.isInkBeautifyFeatureEnabled()) {
                ShortcutBarData.f58563f.remove(Integer.valueOf(ShortcutType.SHORTCUT_REALTIME_BEAUTIFY.getShortcutType()));
            }
            ShortcutBarData shortcutBarData = new ShortcutBarData();
            shortcutBarData.getLeftSideList().addAll(ShortcutBarData.f58562e);
            shortcutBarData.getRightSideList().addAll(ShortcutBarData.f58563f);
            shortcutBarData.getCandidateList().addAll(ShortcutBarData.f58564g);
            return shortcutBarData;
        }

        @NotNull
        public final List<ShortcutType> getFILTER_READING_MOD_SHORTCUT_LIST() {
            return ShortcutBarData.f58566i;
        }

        @Nullable
        public final ShortcutType getShortcutType(int shortcutType) {
            Object obj;
            Iterator<E> it2 = ShortcutType.getEntries().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                if (((ShortcutType) obj).getShortcutType() == shortcutType) {
                    break;
                }
            }
            return (ShortcutType) obj;
        }

        public Companion() {
        }
    }

    static {
        List<Integer> listOf;
        List<Integer> mutableListOf;
        List<Integer> listOf2;
        List<Integer> listOf3;
        List<ShortcutType> listOf4;
        ShortcutType shortcutType = ShortcutType.SHORTCUT_CAMERA;
        ShortcutType shortcutType2 = ShortcutType.SHORTCUT_SCREEN_SHOT;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(shortcutType.getShortcutType()), Integer.valueOf(shortcutType2.getShortcutType()), Integer.valueOf(ShortcutType.SHORTCUT_AUDIO.getShortcutType()), Integer.valueOf(ShortcutType.SHORTCUT_AUDIO_SET.getShortcutType())});
        f58562e = listOf;
        ShortcutType shortcutType3 = ShortcutType.SHORTCUT_REALTIME_BEAUTIFY;
        ShortcutType shortcutType4 = ShortcutType.SHORTCUT_WRITING_MODE;
        ShortcutType shortcutType5 = ShortcutType.SHORTCUT_DOC_OVERVIEW;
        ShortcutType shortcutType6 = ShortcutType.SHORTCUT_OTHER_SETTINGS;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(Integer.valueOf(shortcutType3.getShortcutType()), Integer.valueOf(ShortcutType.SHORTCUT_READING_MODE.getShortcutType()), Integer.valueOf(shortcutType4.getShortcutType()), Integer.valueOf(ShortcutType.SHORTCUT_LAYER.getShortcutType()), Integer.valueOf(ShortcutType.SHORTCUT_ADD_PAGE.getShortcutType()), Integer.valueOf(shortcutType5.getShortcutType()), Integer.valueOf(shortcutType6.getShortcutType()));
        f58563f = mutableListOf;
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(ShortcutType.SHORTCUT_FULL_SCREEN.getShortcutType()), Integer.valueOf(ShortcutType.SHORTCUT_PAGE_WHITESPACE_ADJUSTMENT.getShortcutType()), Integer.valueOf(ShortcutType.SHORTCUT_DOC_OVERVIEW_FULL.getShortcutType()), Integer.valueOf(ShortcutType.SHORTCUT_EXPORT_DOC.getShortcutType()), Integer.valueOf(ShortcutType.SHORTCUT_COUNTER.getShortcutType()), Integer.valueOf(ShortcutType.SHORTCUT_ENCRYPTION.getShortcutType()), Integer.valueOf(ShortcutType.SHORTCUT_NOTE_OVERVIEW.getShortcutType())});
        f58564g = listOf2;
        listOf3 = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(shortcutType5.getShortcutType()), Integer.valueOf(shortcutType6.getShortcutType())});
        f58565h = listOf3;
        listOf4 = CollectionsKt__CollectionsKt.listOf((Object[]) new ShortcutType[]{shortcutType4, shortcutType, shortcutType2, shortcutType3});
        f58566i = listOf4;
    }

    public boolean equals(@Nullable Object other) {
        if (other == this) {
            return true;
        }
        if (other == null || !(other instanceof ShortcutBarData)) {
            return false;
        }
        ShortcutBarData shortcutBarData = (ShortcutBarData) other;
        return Intrinsics.areEqual(this.leftSideList, shortcutBarData.leftSideList) && Intrinsics.areEqual(this.rightSideList, shortcutBarData.rightSideList) && Intrinsics.areEqual(this.candidateList, shortcutBarData.candidateList);
    }

    @NotNull
    public final List<Integer> getCandidateList() {
        return this.candidateList;
    }

    @NotNull
    public final List<ShortcutType> getCandidateShortcutTypes() {
        List<Integer> list = this.candidateList;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            ShortcutType shortcutType = INSTANCE.getShortcutType(((Number) it2.next()).intValue());
            if (shortcutType != null) {
                arrayList.add(shortcutType);
            }
        }
        return arrayList;
    }

    @NotNull
    public final DockType getHorizontalDockType(@NotNull ShortcutType type, boolean isLayoutDirectionRtl) {
        Intrinsics.checkNotNullParameter(type, "type");
        return isLeftSideShortcut(type, isLayoutDirectionRtl) ? DockType.RIGHT : DockType.LEFT;
    }

    @NotNull
    public final List<Integer> getLeftSideList() {
        return this.leftSideList;
    }

    @NotNull
    public final List<ShortcutType> getLeftSideShortcutTypes() {
        List<Integer> list = this.leftSideList;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            ShortcutType shortcutType = INSTANCE.getShortcutType(((Number) it2.next()).intValue());
            if (shortcutType != null) {
                arrayList.add(shortcutType);
            }
        }
        return arrayList;
    }

    @NotNull
    public final List<Integer> getRightSideList() {
        return this.rightSideList;
    }

    @NotNull
    public final List<ShortcutType> getRightSideShortcutTypes() {
        List<Integer> list = this.rightSideList;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            ShortcutType shortcutType = INSTANCE.getShortcutType(((Number) it2.next()).intValue());
            if (shortcutType != null) {
                arrayList.add(shortcutType);
            }
        }
        return arrayList;
    }

    public final boolean isExceedShortcutLimitCount() {
        List<Integer> list = this.leftSideList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (true ^ f58565h.contains(Integer.valueOf(((Number) obj).intValue()))) {
                arrayList.add(obj);
            }
        }
        int size = arrayList.size();
        List<Integer> list2 = this.rightSideList;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list2) {
            if (!f58565h.contains(Integer.valueOf(((Number) obj2).intValue()))) {
                arrayList2.add(obj2);
            }
        }
        return size + arrayList2.size() >= 10;
    }

    public final boolean isLeftSideShortcut(@NotNull ShortcutType type, boolean isLayoutDirectionRtl) {
        Intrinsics.checkNotNullParameter(type, "type");
        boolean contains = this.leftSideList.contains(Integer.valueOf(type.getShortcutType()));
        return isLayoutDirectionRtl ? !contains : contains;
    }
}
