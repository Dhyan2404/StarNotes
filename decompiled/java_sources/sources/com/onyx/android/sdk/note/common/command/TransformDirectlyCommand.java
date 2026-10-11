package com.onyx.android.sdk.note.common.command;

import android.graphics.Matrix;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.note.common.data.command.UndoRedoArgs;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\u0015B\u001b\u0012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\"\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\u0011¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand;", "Lcom/onyx/android/sdk/note/common/command/Command;", "Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;", "args", "", "undo", "redo", "Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;", "cloneArgs", "clone", "", "isUndo", "a", "b", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;", "Ljava/util/Map;", "shapeInfosMap", Constants.CONSTRUCTOR_NAME, "(Ljava/util/Map;)V", "Infos", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTransformDirectlyCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransformDirectlyCommand.kt\ncom/onyx/android/sdk/note/common/command/TransformDirectlyCommand\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,69:1\n1855#2,2:70\n215#3,2:72\n*S KotlinDebug\n*F\n+ 1 TransformDirectlyCommand.kt\ncom/onyx/android/sdk/note/common/command/TransformDirectlyCommand\n*L\n54#1:70,2\n62#1:72,2\n*E\n"})
/* loaded from: classes8.dex */
public final class TransformDirectlyCommand extends Command {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public Map<Shape, Infos> shapeInfosMap;

    @Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0016\u0010\t\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0004\b\u0018\u0010\u0019J\u0006\u0010\u0002\u001a\u00020\u0000J\u0015\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\u0007\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003HÆ\u0003J9\u0010\n\u001a\u00020\u00002\u0014\b\u0002\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00032\u0018\b\u0002\u0010\t\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003HÆ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\t\u0010\u000e\u001a\u00020\rHÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R#\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00038\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R'\u0010\t\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00038\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0013\u001a\u0004\b\u0017\u0010\u0015¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;", "", "clone", "Lkotlin/Pair;", "Landroid/graphics/Matrix;", "component1", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "component2", "matrixPair", "textStylePair", "copy", "", "toString", "", "hashCode", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "equals", "a", "Lkotlin/Pair;", "getMatrixPair", "()Lkotlin/Pair;", "b", "getTextStylePair", Constants.CONSTRUCTOR_NAME, "(Lkotlin/Pair;Lkotlin/Pair;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final /* data */ class Infos {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @NotNull
        public final Pair<Matrix, Matrix> matrixPair;

        /* renamed from: b, reason: from kotlin metadata and from toString */
        @NotNull
        public final Pair<ShapeTextStyle, ShapeTextStyle> textStylePair;

        /* JADX WARN: Multi-variable type inference failed */
        public Infos(@NotNull Pair<? extends Matrix, ? extends Matrix> matrixPair, @NotNull Pair<ShapeTextStyle, ShapeTextStyle> textStylePair) {
            Intrinsics.checkNotNullParameter(matrixPair, "matrixPair");
            Intrinsics.checkNotNullParameter(textStylePair, "textStylePair");
            this.matrixPair = matrixPair;
            this.textStylePair = textStylePair;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Infos copy$default(Infos infos, Pair pair, Pair pair2, int i, Object obj) {
            if ((i & 1) != 0) {
                pair = infos.matrixPair;
            }
            if ((i & 2) != 0) {
                pair2 = infos.textStylePair;
            }
            return infos.copy(pair, pair2);
        }

        @NotNull
        public final Infos clone() {
            Pair pair = new Pair(MatrixKt.copy(this.matrixPair.getFirst()), MatrixKt.copy(this.matrixPair.getSecond()));
            ShapeTextStyle first = this.textStylePair.getFirst();
            ShapeTextStyle m72374clone = first != null ? first.m72374clone() : null;
            ShapeTextStyle second = this.textStylePair.getSecond();
            return new Infos(pair, new Pair(m72374clone, second != null ? second.m72374clone() : null));
        }

        @NotNull
        public final Pair<Matrix, Matrix> component1() {
            return this.matrixPair;
        }

        @NotNull
        public final Pair<ShapeTextStyle, ShapeTextStyle> component2() {
            return this.textStylePair;
        }

        @NotNull
        public final Infos copy(@NotNull Pair<? extends Matrix, ? extends Matrix> matrixPair, @NotNull Pair<ShapeTextStyle, ShapeTextStyle> textStylePair) {
            Intrinsics.checkNotNullParameter(matrixPair, "matrixPair");
            Intrinsics.checkNotNullParameter(textStylePair, "textStylePair");
            return new Infos(matrixPair, textStylePair);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Infos)) {
                return false;
            }
            Infos infos = (Infos) other;
            return Intrinsics.areEqual(this.matrixPair, infos.matrixPair) && Intrinsics.areEqual(this.textStylePair, infos.textStylePair);
        }

        @NotNull
        public final Pair<Matrix, Matrix> getMatrixPair() {
            return this.matrixPair;
        }

        @NotNull
        public final Pair<ShapeTextStyle, ShapeTextStyle> getTextStylePair() {
            return this.textStylePair;
        }

        public int hashCode() {
            return (this.matrixPair.hashCode() * 31) + this.textStylePair.hashCode();
        }

        @NotNull
        public String toString() {
            return "Infos(matrixPair=" + this.matrixPair + ", textStylePair=" + this.textStylePair + ')';
        }
    }

    public TransformDirectlyCommand(@NotNull Map<Shape, Infos> shapeInfosMap) {
        Intrinsics.checkNotNullParameter(shapeInfosMap, "shapeInfosMap");
        this.shapeInfosMap = shapeInfosMap;
    }

    /* renamed from: a */
    public final void m33612a(boolean isUndo, UndoRedoArgs args) {
        List<? extends Shape> mutableList;
        List<? extends Shape> list;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) args.getAddShapeList());
        for (Map.Entry<Shape, Infos> entry : this.shapeInfosMap.entrySet()) {
            Shape key = entry.getKey();
            Infos value = entry.getValue();
            args.unionPageChangeRect(key);
            if (isUndo) {
                key.setShapeMatrix(MatrixKt.copy(value.getMatrixPair().getFirst()));
                ShapeTextStyle first = value.getTextStylePair().getFirst();
                key.setTextStyle(first != null ? first.m72374clone() : null);
            } else {
                key.setShapeMatrix(MatrixKt.copy(value.getMatrixPair().getSecond()));
                ShapeTextStyle second = value.getTextStylePair().getSecond();
                key.setTextStyle(second != null ? second.m72374clone() : null);
            }
            key.updateShapeRect();
            args.unionPageChangeRect(key);
            args.addChangedShape(key.getPageUniqueId(), key);
            mutableList.add(key);
        }
        args.setAddShapeList(mutableList);
        m33613b(args);
        list = CollectionsKt___CollectionsKt.toList(this.shapeInfosMap.keySet());
        args.setTransformShapeList(list);
    }

    /* renamed from: b */
    public final void m33613b(UndoRedoArgs args) {
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
        TransformDirectlyCommand transformDirectlyCommand = new TransformDirectlyCommand(linkedHashMap);
        for (Map.Entry<Shape, Infos> entry : this.shapeInfosMap.entrySet()) {
            linkedHashMap.put(cloneArgs.getOrCopyShape(entry.getKey()), entry.getValue().clone());
        }
        return transformDirectlyCommand;
    }

    @Override // com.onyx.android.sdk.note.common.command.Command
    public void redo(@NotNull UndoRedoArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        m33612a(false, args);
    }

    @Override // com.onyx.android.sdk.note.common.command.Command
    public void undo(@NotNull UndoRedoArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        m33612a(true, args);
    }
}
