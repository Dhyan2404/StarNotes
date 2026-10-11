package com.onyx.android.sdk.universal.editor.data;

import android.graphics.RectF;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\b0\u0007\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0002\u0010\rJ\u000f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0015\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J\u000f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u000b0\nHÆ\u0003J\u000f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u000b0\nHÆ\u0003J_\u0010\u001b\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\b0\u00072\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nHÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\t\u0010!\u001a\u00020\u000bHÖ\u0001R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000fR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0011¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;", "", "animateBoxList", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "visibleBoxList", "moveList", "", "Landroid/graphics/RectF;", "addList", "", "", "removeList", "(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V", "getAddList", "()Ljava/util/Set;", "getAnimateBoxList", "()Ljava/util/List;", "getMoveList", "()Ljava/util/Map;", "getRemoveList", "getVisibleBoxList", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class AnimateBoxArgs {

    @NotNull
    private final Set<String> addList;

    @NotNull
    private final List<BoxInfo> animateBoxList;

    @NotNull
    private final Map<BoxInfo, RectF> moveList;

    @NotNull
    private final Set<String> removeList;

    @NotNull
    private final List<BoxInfo> visibleBoxList;

    /* JADX WARN: Multi-variable type inference failed */
    public AnimateBoxArgs(@NotNull List<BoxInfo> animateBoxList, @NotNull List<BoxInfo> visibleBoxList, @NotNull Map<BoxInfo, ? extends RectF> moveList, @NotNull Set<String> addList, @NotNull Set<String> removeList) {
        Intrinsics.checkNotNullParameter(animateBoxList, "animateBoxList");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        Intrinsics.checkNotNullParameter(moveList, "moveList");
        Intrinsics.checkNotNullParameter(addList, "addList");
        Intrinsics.checkNotNullParameter(removeList, "removeList");
        this.animateBoxList = animateBoxList;
        this.visibleBoxList = visibleBoxList;
        this.moveList = moveList;
        this.addList = addList;
        this.removeList = removeList;
    }

    public static /* synthetic */ AnimateBoxArgs copy$default(AnimateBoxArgs animateBoxArgs, List list, List list2, Map map, Set set, Set set2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = animateBoxArgs.animateBoxList;
        }
        if ((i & 2) != 0) {
            list2 = animateBoxArgs.visibleBoxList;
        }
        List list3 = list2;
        if ((i & 4) != 0) {
            map = animateBoxArgs.moveList;
        }
        Map map2 = map;
        if ((i & 8) != 0) {
            set = animateBoxArgs.addList;
        }
        Set set3 = set;
        if ((i & 16) != 0) {
            set2 = animateBoxArgs.removeList;
        }
        return animateBoxArgs.copy(list, list3, map2, set3, set2);
    }

    @NotNull
    public final List<BoxInfo> component1() {
        return this.animateBoxList;
    }

    @NotNull
    public final List<BoxInfo> component2() {
        return this.visibleBoxList;
    }

    @NotNull
    public final Map<BoxInfo, RectF> component3() {
        return this.moveList;
    }

    @NotNull
    public final Set<String> component4() {
        return this.addList;
    }

    @NotNull
    public final Set<String> component5() {
        return this.removeList;
    }

    @NotNull
    public final AnimateBoxArgs copy(@NotNull List<BoxInfo> animateBoxList, @NotNull List<BoxInfo> visibleBoxList, @NotNull Map<BoxInfo, ? extends RectF> moveList, @NotNull Set<String> addList, @NotNull Set<String> removeList) {
        Intrinsics.checkNotNullParameter(animateBoxList, "animateBoxList");
        Intrinsics.checkNotNullParameter(visibleBoxList, "visibleBoxList");
        Intrinsics.checkNotNullParameter(moveList, "moveList");
        Intrinsics.checkNotNullParameter(addList, "addList");
        Intrinsics.checkNotNullParameter(removeList, "removeList");
        return new AnimateBoxArgs(animateBoxList, visibleBoxList, moveList, addList, removeList);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AnimateBoxArgs)) {
            return false;
        }
        AnimateBoxArgs animateBoxArgs = (AnimateBoxArgs) other;
        return Intrinsics.areEqual(this.animateBoxList, animateBoxArgs.animateBoxList) && Intrinsics.areEqual(this.visibleBoxList, animateBoxArgs.visibleBoxList) && Intrinsics.areEqual(this.moveList, animateBoxArgs.moveList) && Intrinsics.areEqual(this.addList, animateBoxArgs.addList) && Intrinsics.areEqual(this.removeList, animateBoxArgs.removeList);
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

    public int hashCode() {
        return (((((((this.animateBoxList.hashCode() * 31) + this.visibleBoxList.hashCode()) * 31) + this.moveList.hashCode()) * 31) + this.addList.hashCode()) * 31) + this.removeList.hashCode();
    }

    @NotNull
    public String toString() {
        return "AnimateBoxArgs(animateBoxList=" + this.animateBoxList + ", visibleBoxList=" + this.visibleBoxList + ", moveList=" + this.moveList + ", addList=" + this.addList + ", removeList=" + this.removeList + ')';
    }

    public /* synthetic */ AnimateBoxArgs(List list, List list2, Map map, Set set, Set set2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, list2, (i & 4) != 0 ? MapsKt__MapsKt.emptyMap() : map, (i & 8) != 0 ? SetsKt__SetsKt.emptySet() : set, (i & 16) != 0 ? SetsKt__SetsKt.emptySet() : set2);
    }
}
