package com.onyx.android.sdk.note.common.command;

import com.onyx.android.sdk.note.common.data.command.UndoRedoArgs;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B%\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u000f¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u0007H\u0016R\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0011¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/command/ShapeLayerCommand;", "Lcom/onyx/android/sdk/note/common/command/Command;", "Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;", "args", "", "undo", "redo", "Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;", "cloneArgs", "clone", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "a", "Ljava/util/List;", "shapes", "", "b", "I", "srcLayer", "c", "dstLayer", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;II)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeLayerCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeLayerCommand.kt\ncom/onyx/android/sdk/note/common/command/ShapeLayerCommand\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,44:1\n1855#2,2:45\n1855#2,2:47\n1549#2:49\n1620#2,3:50\n*S KotlinDebug\n*F\n+ 1 ShapeLayerCommand.kt\ncom/onyx/android/sdk/note/common/command/ShapeLayerCommand\n*L\n20#1:45,2\n31#1:47,2\n42#1:49\n42#1:50,3\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeLayerCommand extends Command {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapes;

    /* renamed from: b, reason: from kotlin metadata */
    public final int srcLayer;

    /* renamed from: c, reason: from kotlin metadata */
    public final int dstLayer;

    /* JADX WARN: Multi-variable type inference failed */
    public ShapeLayerCommand(@NotNull List<? extends Shape> shapes, int i, int i2) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        this.shapes = shapes;
        this.srcLayer = i;
        this.dstLayer = i2;
    }

    @Override // com.onyx.android.sdk.note.common.command.Command
    @NotNull
    public Command clone(@NotNull CommandCloneArgs cloneArgs) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(cloneArgs, "cloneArgs");
        List<Shape> list = this.shapes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(cloneArgs.getOrCopyShape((Shape) it2.next()));
        }
        return new ShapeLayerCommand(arrayList, this.srcLayer, this.dstLayer);
    }

    @Override // com.onyx.android.sdk.note.common.command.Command
    public void redo(@NotNull UndoRedoArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        for (Shape shape : this.shapes) {
            shape.setLayerId(this.dstLayer);
            args.unionPageChangeRect(shape);
            args.addChangedShape(shape.getPageUniqueId(), shape);
        }
        args.addLayerId(this.srcLayer);
        args.addLayerId(this.dstLayer);
        args.setAddShapeList(this.shapes);
    }

    @Override // com.onyx.android.sdk.note.common.command.Command
    public void undo(@NotNull UndoRedoArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        for (Shape shape : this.shapes) {
            shape.setLayerId(this.srcLayer);
            args.unionPageChangeRect(shape);
            args.addChangedShape(shape.getPageUniqueId(), shape);
        }
        args.addLayerId(this.srcLayer);
        args.addLayerId(this.dstLayer);
        args.setAddShapeList(this.shapes);
    }
}
