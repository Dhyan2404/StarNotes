package com.onyx.android.sdk.universal.editor.data;

import android.graphics.RectF;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DocOptionsActionsKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0001*B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\"\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\n2\u0006\u0010$\u001a\u00020%H\u0002J\u0018\u0010&\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\n2\u0006\u0010$\u001a\u00020%H\u0002J\u0016\u0010'\u001a\u00020(2\u0006\u0010$\u001a\u00020%2\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010)\u001a\u00020(2\u0006\u0010$\u001a\u00020%R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R \u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001d\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00170\u0016¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0007R \u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\f\"\u0004\b\u001e\u0010\u000eR \u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\f\"\u0004\b!\u0010\u000e¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;", "", "()V", "addList", "", "", "getAddList", "()Ljava/util/Set;", "animateBoxList", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getAnimateBoxList", "()Ljava/util/List;", "setAnimateBoxList", "(Ljava/util/List;)V", "animationType", "Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext$AnimationType;", "getAnimationType", "()Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext$AnimationType;", "setAnimationType", "(Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext$AnimationType;)V", "moveList", "", "Landroid/graphics/RectF;", "getMoveList", "()Ljava/util/Map;", "removeList", "getRemoveList", "visibleBoxList", "getVisibleBoxList", "setVisibleBoxList", "visibleBoxListSnapshot", "getVisibleBoxListSnapshot", "setVisibleBoxListSnapshot", "guessEnterOutsideBoxByOrientation", "box", "workBundle", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "guessLeaveOutsideBoxByOrientation", "prepare", "", "updateCurrent", "AnimationType", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nEditorAnimatorContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorAnimatorContext.kt\ncom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,105:1\n1655#2,8:106\n1549#2:114\n1620#2,3:115\n1855#2,2:118\n*S KotlinDebug\n*F\n+ 1 EditorAnimatorContext.kt\ncom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext\n*L\n46#1:106,8\n47#1:114\n47#1:115,3\n50#1:118,2\n*E\n"})
/* loaded from: classes8.dex */
public final class EditorAnimatorContext {

    @NotNull
    private final Set<String> addList;

    @NotNull
    private List<BoxInfo> animateBoxList;

    @NotNull
    private AnimationType animationType;

    @NotNull
    private final Map<BoxInfo, RectF> moveList;

    @NotNull
    private final Set<String> removeList;

    @NotNull
    private List<BoxInfo> visibleBoxList;

    @NotNull
    private List<BoxInfo> visibleBoxListSnapshot;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext$AnimationType;", "", "(Ljava/lang/String;I)V", "APPEND", "REMOVE", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class AnimationType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ AnimationType[] $VALUES;
        public static final AnimationType APPEND = new AnimationType("APPEND", 0);
        public static final AnimationType REMOVE = new AnimationType("REMOVE", 1);

        private static final /* synthetic */ AnimationType[] $values() {
            return new AnimationType[]{APPEND, REMOVE};
        }

        static {
            AnimationType[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private AnimationType(String str, int i) {
        }

        @NotNull
        public static EnumEntries<AnimationType> getEntries() {
            return $ENTRIES;
        }

        public static AnimationType valueOf(String str) {
            return (AnimationType) Enum.valueOf(AnimationType.class, str);
        }

        public static AnimationType[] values() {
            return (AnimationType[]) $VALUES.clone();
        }
    }

    public EditorAnimatorContext() {
        List<BoxInfo> emptyList;
        List<BoxInfo> emptyList2;
        List<BoxInfo> emptyList3;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.visibleBoxList = emptyList;
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        this.visibleBoxListSnapshot = emptyList2;
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        this.animateBoxList = emptyList3;
        this.removeList = new LinkedHashSet();
        this.addList = new LinkedHashSet();
        this.moveList = new LinkedHashMap();
        this.animationType = AnimationType.APPEND;
    }

    private final RectF guessEnterOutsideBoxByOrientation(BoxInfo box, WorkBundle workBundle) {
        RectF rectF = new RectF(box.getVisibleRect());
        if (DocOptionsActionsKt.getLayoutType(workBundle) == 0) {
            rectF.offset(box.getVisibleRect().width(), 0.0f);
        } else {
            rectF.offset(0.0f, box.getVisibleRect().height());
        }
        return rectF;
    }

    private final RectF guessLeaveOutsideBoxByOrientation(BoxInfo box, WorkBundle workBundle) {
        RectF rectF = new RectF(box.getVisibleRect());
        if (DocOptionsActionsKt.getLayoutType(workBundle) == 0) {
            rectF.offset(-box.getVisibleRect().width(), 0.0f);
        } else {
            rectF.offset(0.0f, -box.getVisibleRect().height());
        }
        return rectF;
    }

    @NotNull
    public final Set<String> getAddList() {
        return this.addList;
    }

    @NotNull
    public final List<BoxInfo> getAnimateBoxList() {
        return this.animateBoxList;
    }

    @NotNull
    public final AnimationType getAnimationType() {
        return this.animationType;
    }

    @NotNull
    public final Map<BoxInfo, RectF> getMoveList() {
        return this.moveList;
    }

    @NotNull
    public final Set<String> getRemoveList() {
        return this.removeList;
    }

    @NotNull
    public final List<BoxInfo> getVisibleBoxList() {
        return this.visibleBoxList;
    }

    @NotNull
    public final List<BoxInfo> getVisibleBoxListSnapshot() {
        return this.visibleBoxListSnapshot;
    }

    public final void prepare(@NotNull WorkBundle workBundle, @NotNull AnimationType animationType) {
        Sequence asSequence;
        Sequence map;
        List<BoxInfo> list;
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(animationType, "animationType");
        this.animationType = animationType;
        asSequence = CollectionsKt___CollectionsKt.asSequence(WorkBundleKt.obtainBoxManager(workBundle).visibleBoxes());
        map = SequencesKt___SequencesKt.map(asSequence, new Function1<BoxInfo, BoxInfo>() { // from class: com.onyx.android.sdk.universal.editor.data.EditorAnimatorContext$prepare$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final BoxInfo invoke(@NotNull BoxInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.copy();
            }
        });
        list = SequencesKt___SequencesKt.toList(map);
        this.visibleBoxListSnapshot = list;
    }

    public final void setAnimateBoxList(@NotNull List<BoxInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.animateBoxList = list;
    }

    public final void setAnimationType(@NotNull AnimationType animationType) {
        Intrinsics.checkNotNullParameter(animationType, "<set-?>");
        this.animationType = animationType;
    }

    public final void setVisibleBoxList(@NotNull List<BoxInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.visibleBoxList = list;
    }

    public final void setVisibleBoxListSnapshot(@NotNull List<BoxInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.visibleBoxListSnapshot = list;
    }

    public final void updateCurrent(@NotNull WorkBundle workBundle) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(workBundle);
        List<BoxInfo> visibleBoxes = obtainBoxManager.visibleBoxes();
        this.visibleBoxList = visibleBoxes;
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(visibleBoxes);
        arrayList.addAll(this.visibleBoxListSnapshot);
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (hashSet.add(((BoxInfo) obj).getId())) {
                arrayList2.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList3.add(((BoxInfo) it2.next()).copy());
        }
        this.animateBoxList = arrayList3;
        obtainBoxManager.convertToVisibleBoxList(arrayList3);
        Map map = CollectionKt.toMap(this.visibleBoxListSnapshot, new Function1<BoxInfo, String>() { // from class: com.onyx.android.sdk.universal.editor.data.EditorAnimatorContext$updateCurrent$snapshotMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull BoxInfo it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return it3.getId();
            }
        });
        for (BoxInfo boxInfo : this.animateBoxList) {
            BoxInfo boxInfo2 = (BoxInfo) map.get(boxInfo.getId());
            if (boxInfo2 != null) {
                if (obtainBoxManager.findBoxInfoByPageId(boxInfo.getId()) == null) {
                    this.removeList.add(boxInfo.getId());
                } else {
                    this.moveList.put(boxInfo2, RectFKt.copy(boxInfo.getVisibleRect()));
                }
            } else if (obtainBoxManager.indexOf(boxInfo.getId()) == obtainBoxManager.pageCount() - 1) {
                BoxInfo copy = boxInfo.copy();
                copy.setVisibleRect(this.animationType == AnimationType.APPEND ? guessEnterOutsideBoxByOrientation(boxInfo, workBundle) : guessLeaveOutsideBoxByOrientation(boxInfo, workBundle));
                this.moveList.put(copy, RectFKt.copy(boxInfo.getVisibleRect()));
            } else if (this.animationType == AnimationType.REMOVE) {
                BoxInfo copy2 = boxInfo.copy();
                copy2.setVisibleRect(guessLeaveOutsideBoxByOrientation(boxInfo, workBundle));
                this.moveList.put(copy2, RectFKt.copy(boxInfo.getVisibleRect()));
            } else {
                this.addList.add(boxInfo.getId());
            }
        }
    }
}
