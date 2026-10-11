package com.onyx.android.sdk.note.common.data.command;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010#\n\u0002\b\u0019\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bH\u0010IJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\f\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007J.\u0010\u0010\u001a*\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u000e0\rj\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u000e`\u000fJ\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u0011J\u0014\u0010\u0014\u001a\u00020\u00002\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00070\u0011J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0015J\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00070\u0011J\u0014\u0010\u001a\u001a\u00020\u00002\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00070\u0011J\u0014\u0010\u001c\u001a\u00020\u00002\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0011J\u0006\u0010\u001d\u001a\u00020\u0002J\u0006\u0010\u001f\u001a\u00020\u001eR<\u0010\"\u001a*\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u000e0\rj\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u000e`\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u001c\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00070\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u001c\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00070\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010$R(\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010$\u001a\u0004\b'\u0010(\"\u0004\b\u001c\u0010)R#\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020+0*8\u0006¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R(\u00108\u001a\b\u0012\u0004\u0012\u00020\u0005018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R(\u0010<\u001a\b\u0012\u0004\u0012\u00020\u0005018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u00103\u001a\u0004\b:\u00105\"\u0004\b;\u00107R(\u0010@\u001a\b\u0012\u0004\u0012\u00020\u0005018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u00103\u001a\u0004\b>\u00105\"\u0004\b?\u00107R$\u0010D\u001a\u00020\u00022\u0006\u0010A\u001a\u00020\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bB\u0010C\u001a\u0004\bD\u0010ER\u001c\u0010G\u001a\b\u0012\u0004\u0012\u00020\u0015018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u00103¨\u0006J"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;", "", "", "applyAllLayer", "setApplyAllLayer", "", CouchFieldKey.KEY_TOC_PAGE_ID, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "", "addChangedShape", "unionPageChangeRect", "unionReferenceShapePageChangeRect", "Ljava/util/LinkedHashMap;", "", "Lkotlin/collections/LinkedHashMap;", "getChangedShapeMap", "", "getRemoveShapeList", "removeShapeList", "setRemoveShapeList", "", "id", "addLayerId", "getAddShapeList", "addShapeList", "setAddShapeList", "transformShapeList", "setTransformShapeList", "isEmpty", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "toChangedShapeBean", "a", "Ljava/util/LinkedHashMap;", "changedShapeMap", "b", "Ljava/util/List;", "c", "d", "getTransformShapeList", "()Ljava/util/List;", "(Ljava/util/List;)V", "", "Landroid/graphics/RectF;", "e", "Ljava/util/Map;", "getPageChangeRectMap", "()Ljava/util/Map;", "pageChangeRectMap", "", C6997f.f39671c, "Ljava/util/Set;", "getEnableTagList", "()Ljava/util/Set;", "setEnableTagList", "(Ljava/util/Set;)V", "enableTagList", C6998g.f39679a, "getRemoveTagList", "setRemoveTagList", "removeTagList", C6999h.f39688c, "getUpdateLinkList", "setUpdateLinkList", "updateLinkList", "<set-?>", "i", Constants.HASIDCALL_INDEX_SIG, "isApplyAllLayer", Constants.BOOLEAN_VALUE_SIG, "j", "layerSet", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUndoRedoArgs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UndoRedoArgs.kt\ncom/onyx/android/sdk/note/common/data/command/UndoRedoArgs\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,95:1\n372#2,7:96\n*S KotlinDebug\n*F\n+ 1 UndoRedoArgs.kt\ncom/onyx/android/sdk/note/common/data/command/UndoRedoArgs\n*L\n41#1:96,7\n*E\n"})
/* loaded from: classes8.dex */
public final class UndoRedoArgs {

    /* renamed from: i, reason: from kotlin metadata */
    public boolean isApplyAllLayer;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final LinkedHashMap<String, List<Shape>> changedShapeMap = new LinkedHashMap<>();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public List<? extends Shape> removeShapeList = new ArrayList();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public List<? extends Shape> addShapeList = new ArrayList();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public List<? extends Shape> transformShapeList = new ArrayList();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Map<String, RectF> pageChangeRectMap = new LinkedHashMap();

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public Set<String> enableTagList = new HashSet();

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public Set<String> removeTagList = new HashSet();

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public Set<String> updateLinkList = new HashSet();

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public Set<Integer> layerSet = new LinkedHashSet();

    public final void addChangedShape(@NotNull String pageId, @NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(shape, "shape");
        CollectionKt.ensureList(this.changedShapeMap, pageId).add(shape);
    }

    @NotNull
    public final UndoRedoArgs addLayerId(int id) {
        this.layerSet.add(Integer.valueOf(id));
        return this;
    }

    @NotNull
    public final List<Shape> getAddShapeList() {
        return this.addShapeList;
    }

    @NotNull
    public final LinkedHashMap<String, List<Shape>> getChangedShapeMap() {
        return this.changedShapeMap;
    }

    @NotNull
    public final Set<String> getEnableTagList() {
        return this.enableTagList;
    }

    @NotNull
    public final Map<String, RectF> getPageChangeRectMap() {
        return this.pageChangeRectMap;
    }

    @NotNull
    public final List<Shape> getRemoveShapeList() {
        return this.removeShapeList;
    }

    @NotNull
    public final Set<String> getRemoveTagList() {
        return this.removeTagList;
    }

    @NotNull
    public final List<Shape> getTransformShapeList() {
        return this.transformShapeList;
    }

    @NotNull
    public final Set<String> getUpdateLinkList() {
        return this.updateLinkList;
    }

    /* renamed from: isApplyAllLayer, reason: from getter */
    public final boolean getIsApplyAllLayer() {
        return this.isApplyAllLayer;
    }

    public final boolean isEmpty() {
        return this.addShapeList.isEmpty() && this.removeShapeList.isEmpty();
    }

    @NotNull
    public final UndoRedoArgs setAddShapeList(@NotNull List<? extends Shape> addShapeList) {
        Intrinsics.checkNotNullParameter(addShapeList, "addShapeList");
        this.addShapeList = addShapeList;
        return this;
    }

    @NotNull
    public final UndoRedoArgs setApplyAllLayer(boolean applyAllLayer) {
        this.isApplyAllLayer = applyAllLayer;
        return this;
    }

    public final void setEnableTagList(@NotNull Set<String> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.enableTagList = set;
    }

    @NotNull
    public final UndoRedoArgs setRemoveShapeList(@NotNull List<? extends Shape> removeShapeList) {
        Intrinsics.checkNotNullParameter(removeShapeList, "removeShapeList");
        this.removeShapeList = removeShapeList;
        return this;
    }

    public final void setRemoveTagList(@NotNull Set<String> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.removeTagList = set;
    }

    /* renamed from: setTransformShapeList, reason: collision with other method in class */
    public final void m72294setTransformShapeList(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.transformShapeList = list;
    }

    public final void setUpdateLinkList(@NotNull Set<String> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.updateLinkList = set;
    }

    @NotNull
    public final ChangedShapeBean toChangedShapeBean() {
        List<Shape> mutableList;
        List<Shape> mutableList2;
        List<Integer> mutableList3;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.addShapeList);
        mutableList.removeAll(this.removeShapeList);
        ChangedShapeBean addShapeList = new ChangedShapeBean().setAddShapeList(mutableList);
        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) this.removeShapeList);
        ChangedShapeBean removeShapeList = addShapeList.setRemoveShapeList(mutableList2);
        mutableList3 = CollectionsKt___CollectionsKt.toMutableList((Collection) this.layerSet);
        return removeShapeList.setChangedLayerList(mutableList3);
    }

    public final void unionPageChangeRect(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        RectF boundingRectWithWidth = ShapeRectUtils.INSTANCE.getBoundingRectWithWidth(shape);
        Map<String, RectF> map = this.pageChangeRectMap;
        String pageUniqueId = shape.getPageUniqueId();
        RectF rectF = map.get(pageUniqueId);
        if (rectF == null) {
            map.put(pageUniqueId, boundingRectWithWidth);
            rectF = boundingRectWithWidth;
        }
        rectF.union(boundingRectWithWidth);
    }

    public final void unionReferenceShapePageChangeRect(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        if (ShapeTypes.INSTANCE.isReferenceShape(shape)) {
            unionPageChangeRect(shape);
        }
    }

    @NotNull
    public final UndoRedoArgs setTransformShapeList(@NotNull List<? extends Shape> transformShapeList) {
        Intrinsics.checkNotNullParameter(transformShapeList, "transformShapeList");
        this.transformShapeList = transformShapeList;
        return this;
    }
}
