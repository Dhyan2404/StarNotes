package com.onyx.android.sdk.note.common.command;

import android.graphics.Matrix;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.note.common.data.command.UndoRedoArgs;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\"\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/command/TransformCommand;", "Lcom/onyx/android/sdk/note/common/command/Command;", "Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;", "args", "", "undo", "redo", "Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;", "cloneArgs", "clone", "b", "a", "c", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Landroid/graphics/Matrix;", "Ljava/util/Map;", "matrixMap", Constants.CONSTRUCTOR_NAME, "(Ljava/util/Map;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTransformCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransformCommand.kt\ncom/onyx/android/sdk/note/common/command/TransformCommand\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,71:1\n1855#2,2:72\n215#3,2:74\n*S KotlinDebug\n*F\n+ 1 TransformCommand.kt\ncom/onyx/android/sdk/note/common/command/TransformCommand\n*L\n56#1:72,2\n64#1:74,2\n*E\n"})
/* loaded from: classes8.dex */
public final class TransformCommand extends Command {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public Map<Shape, ? extends Matrix> matrixMap;

    public TransformCommand(@NotNull Map<Shape, ? extends Matrix> matrixMap) {
        Intrinsics.checkNotNullParameter(matrixMap, "matrixMap");
        this.matrixMap = matrixMap;
    }

    /* renamed from: a */
    public final void m33609a(UndoRedoArgs args) {
        List<? extends Shape> mutableList;
        List<? extends Shape> list;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) args.getAddShapeList());
        for (Map.Entry<Shape, ? extends Matrix> entry : this.matrixMap.entrySet()) {
            Shape key = entry.getKey();
            Matrix value = entry.getValue();
            args.unionPageChangeRect(key);
            key.postConcat(value);
            args.unionPageChangeRect(key);
            args.addChangedShape(key.getPageUniqueId(), key);
            mutableList.add(key);
        }
        args.setAddShapeList(mutableList);
        m33611c(args);
        list = CollectionsKt___CollectionsKt.toList(this.matrixMap.keySet());
        args.setTransformShapeList(list);
    }

    /* renamed from: b */
    public final void m33610b(UndoRedoArgs args) {
        List<? extends Shape> mutableList;
        List<? extends Shape> list;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) args.getAddShapeList());
        for (Map.Entry<Shape, ? extends Matrix> entry : this.matrixMap.entrySet()) {
            Shape key = entry.getKey();
            Matrix value = entry.getValue();
            args.unionPageChangeRect(key);
            key.postConcat(MatrixKt.invertMatrix(value));
            args.unionPageChangeRect(key);
            args.addChangedShape(key.getPageUniqueId(), key);
            mutableList.add(key);
        }
        args.setAddShapeList(mutableList);
        m33611c(args);
        list = CollectionsKt___CollectionsKt.toList(this.matrixMap.keySet());
        args.setTransformShapeList(list);
    }

    /* renamed from: c */
    public final void m33611c(UndoRedoArgs args) {
        Iterator<T> it2 = args.getAddShapeList().iterator();
        while (it2.hasNext()) {
            CollectionKt.addAll(args.getUpdateLinkList(), ((Shape) it2.next()).getLinkIdList());
        }
    }

    @Override // com.onyx.android.sdk.note.common.command.Command
    @NotNull
    public Command clone(@NotNull CommandCloneArgs cloneArgs) {
        Intrinsics.checkNotNullParameter(cloneArgs, "cloneArgs");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        TransformCommand transformCommand = new TransformCommand(linkedHashMap);
        for (Map.Entry<Shape, ? extends Matrix> entry : this.matrixMap.entrySet()) {
            linkedHashMap.put(cloneArgs.getOrCopyShape(entry.getKey()), MatrixKt.copy(entry.getValue()));
        }
        return transformCommand;
    }

    @Override // com.onyx.android.sdk.note.common.command.Command
    public void redo(@NotNull UndoRedoArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        m33609a(args);
    }

    @Override // com.onyx.android.sdk.note.common.command.Command
    public void undo(@NotNull UndoRedoArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        m33610b(args);
    }
}
