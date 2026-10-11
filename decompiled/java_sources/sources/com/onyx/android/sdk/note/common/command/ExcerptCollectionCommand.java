package com.onyx.android.sdk.note.common.command;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.command.UndoRedoArgs;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.extension.NoteBundleKt;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0015\u001a\u00020\u0011\u0012\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00160\r¢\u0006\u0004\b\u001c\u0010\u001dJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\bH\u0016J\u0018\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\b\b\u0002\u0010\f\u001a\u00020\u000bH\u0002J\u0018\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\b\b\u0002\u0010\f\u001a\u00020\u000bH\u0002R\u0017\u0010\u0015\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001d\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00160\r8\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;", "Lcom/onyx/android/sdk/note/common/command/Command;", "", "removeExcerptCollectionModels", "Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;", "args", "undo", "redo", "Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;", "cloneArgs", "clone", "", "status", "", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "c", "a", "Lcom/onyx/android/sdk/note/NoteBundle;", "Lcom/onyx/android/sdk/note/NoteBundle;", "getNoteBundle", "()Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "b", "Ljava/util/List;", "getShapes", "()Ljava/util/List;", "shapes", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nExcerptCollectionCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExcerptCollectionCommand.kt\ncom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,73:1\n1549#2:74\n1620#2,3:75\n*S KotlinDebug\n*F\n+ 1 ExcerptCollectionCommand.kt\ncom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand\n*L\n47#1:74\n47#1:75,3\n*E\n"})
/* loaded from: classes8.dex */
public final class ExcerptCollectionCommand extends Command {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final NoteBundle noteBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapes;

    /* JADX WARN: Multi-variable type inference failed */
    public ExcerptCollectionCommand(@NotNull NoteBundle noteBundle, @NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        this.noteBundle = noteBundle;
        this.shapes = shapes;
    }

    /* renamed from: b */
    public static /* synthetic */ List m33605b(ExcerptCollectionCommand excerptCollectionCommand, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return excerptCollectionCommand.m33607a(i);
    }

    /* renamed from: d */
    public static /* synthetic */ List m33606d(ExcerptCollectionCommand excerptCollectionCommand, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return excerptCollectionCommand.m33608c(i);
    }

    /* renamed from: a */
    public final List<ExcerptCollectionModel> m33607a(int status) {
        List<ExcerptCollectionModel> emptyList;
        ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
        Set<String> shapeIdSet = shapeTypes.toShapeIdSet(shapeTypes.filterExcerptShapes(this.shapes));
        if (!shapeIdSet.isEmpty()) {
            return NoteBundleKt.getExcerptCollectionProvider(this.noteBundle).loadExcerptCollectionByExcerptIds(this.noteBundle.getNoteDoc().getDocumentUniqueId(), shapeIdSet, status);
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    /* renamed from: c */
    public final List<ExcerptCollectionModel> m33608c(int status) {
        ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
        return NoteBundleKt.getExcerptCollectionProvider(this.noteBundle).loadExcerptCollectionByQuoteIds(this.noteBundle.getNoteDoc().getDocumentUniqueId(), shapeTypes.toShapeIdSet(shapeTypes.filterQuoteShapes(this.shapes)), status);
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
        return new ExcerptCollectionCommand(cloneArgs.getNoteBundle(), arrayList);
    }

    @NotNull
    public final NoteBundle getNoteBundle() {
        return this.noteBundle;
    }

    @NotNull
    public final List<Shape> getShapes() {
        return this.shapes;
    }

    @Override // com.onyx.android.sdk.note.common.command.Command
    public void redo(@NotNull UndoRedoArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        ArrayList arrayList = new ArrayList();
        CollectionKt.safeAddAll(arrayList, m33606d(this, 0, 1, null));
        CollectionKt.safeAddAll(arrayList, m33605b(this, 0, 1, null));
        NoteBundleKt.getExcerptCollectionProvider(this.noteBundle).removeExcerptCollectionModels(arrayList);
    }

    public final void removeExcerptCollectionModels() {
        redo(new UndoRedoArgs());
    }

    @Override // com.onyx.android.sdk.note.common.command.Command
    public void undo(@NotNull UndoRedoArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        ArrayList arrayList = new ArrayList();
        CollectionKt.safeAddAll(arrayList, m33608c(1));
        CollectionKt.safeAddAll(arrayList, m33607a(1));
        NoteBundleKt.getExcerptCollectionProvider(this.noteBundle).enableExcerptCollectionModels(arrayList);
    }
}
