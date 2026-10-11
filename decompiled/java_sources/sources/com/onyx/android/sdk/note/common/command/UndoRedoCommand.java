package com.onyx.android.sdk.note.common.command;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.note.common.data.command.UndoRedoArgs;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b+\u0010,J\u0016\u0010\u0005\u001a\u00020\u00002\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002J\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006J\u0016\u0010\b\u001a\u00020\u00002\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002J\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\rJ\u0006\u0010\u0011\u001a\u00020\nJ\u0006\u0010\u0012\u001a\u00020\rJ\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u0019\u001a\u00020\u0018H\u0016J\u0010\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0002R\u001a\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00030\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001eR\u001a\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00030\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001eR(\u0010%\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\"0\u00060!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R$\u0010)\u001a\u00020\n2\u0006\u0010&\u001a\u00020\n8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;", "Lcom/onyx/android/sdk/note/common/command/Command;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "addShapes", "", "getAddedShapes", "removeShapes", "getRemovedShapes", "", "applyAllLayer", "setApplyAllLayer", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "removeShapeBean", "changedShapeBean", "addChangedShapeBean", "isEmpty", "toChangedShapeBean", "Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;", "args", "", "undo", "redo", "Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;", "cloneArgs", "clone", "b", "a", "", "Ljava/util/List;", "addedShapes", "removedShapes", "", "", "c", "Ljava/util/Map;", "removeShapeTagMap", "<set-?>", "d", Constants.HASIDCALL_INDEX_SIG, "isApplyAllLayer", Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUndoRedoCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UndoRedoCommand.kt\ncom/onyx/android/sdk/note/common/command/UndoRedoCommand\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,127:1\n1855#2,2:128\n1855#2,2:130\n1855#2,2:132\n1855#2,2:134\n1855#2,2:136\n1855#2,2:138\n1549#2:140\n1620#2,3:141\n1549#2:144\n1620#2,3:145\n*S KotlinDebug\n*F\n+ 1 UndoRedoCommand.kt\ncom/onyx/android/sdk/note/common/command/UndoRedoCommand\n*L\n80#1:128,2\n85#1:130,2\n91#1:132,2\n102#1:134,2\n108#1:136,2\n113#1:138,2\n123#1:140\n123#1:141,3\n124#1:144\n124#1:145,3\n*E\n"})
/* loaded from: classes8.dex */
public final class UndoRedoCommand extends Command {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> addedShapes = new ArrayList();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> removedShapes = new ArrayList();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public Map<Shape, ? extends List<String>> removeShapeTagMap = new HashMap();

    /* renamed from: d, reason: from kotlin metadata */
    public boolean isApplyAllLayer;

    /* renamed from: a */
    public final void m33614a(UndoRedoArgs args) {
        List<? extends Shape> mutableList;
        List<? extends Shape> mutableList2;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) args.getRemoveShapeList());
        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) args.getAddShapeList());
        for (Shape shape : this.addedShapes) {
            args.unionReferenceShapePageChangeRect(shape);
            args.addChangedShape(shape.getPageUniqueId(), shape);
            shape.updateShapeTime();
            mutableList2.add(shape);
        }
        for (Shape shape2 : this.removedShapes) {
            args.unionReferenceShapePageChangeRect(shape2);
            args.addChangedShape(shape2.getPageUniqueId(), shape2);
            mutableList.add(shape2);
        }
        Iterator<T> it2 = this.removeShapeTagMap.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            args.getRemoveTagList().addAll((Collection) entry.getValue());
            mutableList2.add(entry.getKey());
        }
        args.setRemoveShapeList(mutableList).setAddShapeList(mutableList2);
    }

    @NotNull
    public final UndoRedoCommand addChangedShapeBean(@NotNull ChangedShapeBean changedShapeBean) {
        Intrinsics.checkNotNullParameter(changedShapeBean, "changedShapeBean");
        addShapes(changedShapeBean.getAddShapeList());
        removeShapes(changedShapeBean.getRemoveShapeList());
        return this;
    }

    @NotNull
    public final UndoRedoCommand addShapes(@Nullable Collection<? extends Shape> shapes) {
        CollectionKt.safeAddAll(this.addedShapes, shapes);
        return this;
    }

    /* renamed from: b */
    public final void m33615b(UndoRedoArgs args) {
        List<? extends Shape> mutableList;
        List<? extends Shape> mutableList2;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) args.getRemoveShapeList());
        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) args.getAddShapeList());
        for (Shape shape : this.addedShapes) {
            args.unionReferenceShapePageChangeRect(shape);
            args.addChangedShape(shape.getPageUniqueId(), shape);
            mutableList.add(shape);
        }
        for (Shape shape2 : this.removedShapes) {
            args.unionReferenceShapePageChangeRect(shape2);
            args.addChangedShape(shape2.getPageUniqueId(), shape2);
            shape2.updateShapeTime();
            mutableList2.add(shape2);
        }
        Iterator<T> it2 = this.removeShapeTagMap.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            args.addChangedShape(((Shape) entry.getKey()).getPageUniqueId(), (Shape) entry.getKey());
            args.getEnableTagList().addAll((Collection) entry.getValue());
            mutableList2.add(entry.getKey());
        }
        args.setRemoveShapeList(mutableList).setAddShapeList(mutableList2);
    }

    @Override // com.onyx.android.sdk.note.common.command.Command
    @NotNull
    public Command clone(@NotNull CommandCloneArgs cloneArgs) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        Intrinsics.checkNotNullParameter(cloneArgs, "cloneArgs");
        UndoRedoCommand undoRedoCommand = new UndoRedoCommand();
        undoRedoCommand.setApplyAllLayer(this.isApplyAllLayer);
        List<Shape> list = this.addedShapes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(cloneArgs.getOrCopyShape((Shape) it2.next()));
        }
        undoRedoCommand.addShapes(arrayList);
        List<Shape> list2 = this.removedShapes;
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = list2.iterator();
        while (it3.hasNext()) {
            arrayList2.add(cloneArgs.getOrCopyShape((Shape) it3.next()));
        }
        undoRedoCommand.removeShapes(arrayList2);
        return undoRedoCommand;
    }

    @NotNull
    public final List<Shape> getAddedShapes() {
        return this.addedShapes;
    }

    @NotNull
    public final List<Shape> getRemovedShapes() {
        return this.removedShapes;
    }

    /* renamed from: isApplyAllLayer, reason: from getter */
    public final boolean getIsApplyAllLayer() {
        return this.isApplyAllLayer;
    }

    public final boolean isEmpty() {
        return this.addedShapes.isEmpty() && this.removedShapes.isEmpty();
    }

    @Override // com.onyx.android.sdk.note.common.command.Command
    public void redo(@NotNull UndoRedoArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        args.setApplyAllLayer(this.isApplyAllLayer);
        m33614a(args);
    }

    @NotNull
    public final UndoRedoCommand removeShapes(@Nullable Collection<? extends Shape> shapes) {
        CollectionKt.safeAddAll(this.removedShapes, shapes);
        return this;
    }

    @NotNull
    public final UndoRedoCommand setApplyAllLayer(boolean applyAllLayer) {
        this.isApplyAllLayer = applyAllLayer;
        return this;
    }

    @NotNull
    public final ChangedShapeBean toChangedShapeBean() {
        List<Shape> mutableList;
        List<Shape> mutableList2;
        ChangedShapeBean changedShapeBean = new ChangedShapeBean();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.addedShapes);
        ChangedShapeBean addShapeList = changedShapeBean.setAddShapeList(mutableList);
        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) this.removedShapes);
        return addShapeList.setRemoveShapeList(mutableList2);
    }

    @Override // com.onyx.android.sdk.note.common.command.Command
    public void undo(@NotNull UndoRedoArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        args.setApplyAllLayer(this.isApplyAllLayer);
        m33615b(args);
    }

    @NotNull
    public final UndoRedoCommand removeShapes(@NotNull ChangedShapeBean removeShapeBean) {
        Intrinsics.checkNotNullParameter(removeShapeBean, "removeShapeBean");
        CollectionKt.safeAddAll(this.removedShapes, removeShapeBean.getRemoveShapeList());
        this.removeShapeTagMap = removeShapeBean.getShapeTagMap();
        return this;
    }
}
