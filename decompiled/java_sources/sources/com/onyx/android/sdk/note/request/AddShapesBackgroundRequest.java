package com.onyx.android.sdk.note.request;

import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.command.UndoRedoCommand;
import com.onyx.android.sdk.note.common.data.shape.AddShapesBackgroundArgs;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.note.extension.ShapeKt;
import com.onyx.android.sdk.replicator.note.data.page.LayerInfo;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\r¢\u0006\u0004\b,\u0010-J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002R\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u000eR\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\"\u0010\u001f\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0014\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010#\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010\u0014\u001a\u0004\b!\u0010\u001c\"\u0004\b\"\u0010\u001eR$\u0010+\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "", "i", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", C6999h.f39688c, C6998g.f39679a, C6997f.f39671c, "Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;", "Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;", "addShapesArgs", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Ljava/util/List;", "shapes", Constants.HASIDCALL_INDEX_SIG, "addToCmdStack", "", "j", Constants.STRING_SIG, CouchFieldKey.KEY_PAGE_ID, C4921e.f26537n, "getHasBottomUnderContentShape", Constants.BOOLEAN_VALUE_SIG, "setHasBottomUnderContentShape", "(Z)V", "hasBottomUnderContentShape", "l", "getForceRenderNoteDirtyRectToDisplay", "setForceRenderNoteDirtyRectToDisplay", "forceRenderNoteDirtyRectToDisplay", "Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;", "m", "Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;", "getUndoRedoCommand", "()Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;", "setUndoRedoCommand", "(Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;)V", "undoRedoCommand", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAddShapesBackgroundRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddShapesBackgroundRequest.kt\ncom/onyx/android/sdk/note/request/AddShapesBackgroundRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,101:1\n1549#2:102\n1620#2,3:103\n1855#2,2:106\n*S KotlinDebug\n*F\n+ 1 AddShapesBackgroundRequest.kt\ncom/onyx/android/sdk/note/request/AddShapesBackgroundRequest\n*L\n89#1:102\n89#1:103,3\n92#1:106,2\n*E\n"})
/* loaded from: classes8.dex */
public final class AddShapesBackgroundRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final AddShapesBackgroundArgs addShapesArgs;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapes;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean addToCmdStack;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final String pageUniqueId;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean hasBottomUnderContentShape;

    /* renamed from: l, reason: from kotlin metadata */
    public boolean forceRenderNoteDirtyRectToDisplay;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public UndoRedoCommand undoRedoCommand;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddShapesBackgroundRequest(@NotNull NoteBundle noteBundle, @NotNull AddShapesBackgroundArgs addShapesArgs) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(addShapesArgs, "addShapesArgs");
        this.addShapesArgs = addShapesArgs;
        this.shapes = addShapesArgs.getShapes();
        this.addToCmdStack = addShapesArgs.getAddToCmdStack();
        this.pageUniqueId = addShapesArgs.getPageUniqueId();
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        List<? extends Shape> mutableList;
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        NotePage pageByUniqueId = NoteDocNotePage.INSTANCE.getPageByUniqueId(noteBundle.getNoteDoc(), this.pageUniqueId);
        if (pageByUniqueId == null) {
            return;
        }
        if (this.addShapesArgs.getSetZOrder()) {
            ShapeUtils.INSTANCE.setShapeZOrder(this.shapes, pageByUniqueId);
        }
        m34095h(pageByUniqueId);
        m34094g(pageByUniqueId);
        m34093f(pageByUniqueId);
        ShapeUtils.INSTANCE.updateShapesTimes(this.shapes);
        NotePageShape.addShapeList$default(NotePageShape.INSTANCE, pageByUniqueId, this.shapes, 0, 2, null);
        if (getPostShapeChangedEvent()) {
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.shapes);
            noteBundle.postAddShapeEvent(mutableList);
        }
        if (m34096i()) {
            this.undoRedoCommand = noteBundle.getCommandManager().addShapesUndoRedoCommand(this.shapes);
        }
    }

    /* renamed from: f */
    public final void m34093f(NotePage notePage) {
        Object lastOrNull;
        int collectionSizeOrDefault;
        List distinct;
        if (this.forceRenderNoteDirtyRectToDisplay) {
            return;
        }
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) this.shapes);
        Shape shape = (Shape) lastOrNull;
        if (shape != null) {
            int layerId = shape.getLayerId();
            List<LayerInfo> layerList = notePage.getPageInfo().getLayerList();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(layerList, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = layerList.iterator();
            while (it2.hasNext()) {
                arrayList.add(Integer.valueOf(((LayerInfo) it2.next()).getId()));
            }
            distinct = CollectionsKt___CollectionsKt.distinct(arrayList);
            int indexOf = distinct.indexOf(Integer.valueOf(layerId));
            RectF boundingRectWithWidth = ShapeRectUtils.INSTANCE.getBoundingRectWithWidth(this.shapes);
            for (Shape shape2 : notePage.getShapeList()) {
                if (distinct.indexOf(Integer.valueOf(shape2.getLayerId())) > indexOf && RectF.intersects(boundingRectWithWidth, ShapeRectUtils.INSTANCE.getBoundingRectWithWidth(shape2))) {
                    this.forceRenderNoteDirtyRectToDisplay = true;
                    return;
                }
            }
        }
    }

    /* renamed from: g */
    public final void m34094g(final NotePage notePage) {
        this.hasBottomUnderContentShape = CollectionKt.contains(this.shapes, new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.note.request.AddShapesBackgroundRequest$checkBottomLayerUnderContentShape$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Shape targetShape = ShapeTypes.INSTANCE.getTargetShape(it2);
                return Boolean.valueOf(ShapePersistOptionsKt.isBottom(targetShape) && (targetShape.underContent() || NotePage.this.getDarkTheme()));
            }
        });
    }

    public final boolean getForceRenderNoteDirtyRectToDisplay() {
        return this.forceRenderNoteDirtyRectToDisplay;
    }

    public final boolean getHasBottomUnderContentShape() {
        return this.hasBottomUnderContentShape;
    }

    @Nullable
    public final UndoRedoCommand getUndoRedoCommand() {
        return this.undoRedoCommand;
    }

    /* renamed from: h */
    public final void m34095h(NotePage notePage) {
        if (CollectionKt.containsAll(this.shapes, new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.note.request.AddShapesBackgroundRequest$intersectsTapeShape$allTapeShape$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(ShapeKt.isTapeShape(it2));
            }
        })) {
            return;
        }
        ShapeRectUtils shapeRectUtils = ShapeRectUtils.INSTANCE;
        RectF boundingRectWithWidth = shapeRectUtils.getBoundingRectWithWidth(NotePageShape.INSTANCE.getTapeShapes(notePage));
        if (boundingRectWithWidth.isEmpty()) {
            return;
        }
        this.forceRenderNoteDirtyRectToDisplay = RectF.intersects(boundingRectWithWidth, shapeRectUtils.getBoundingRectWithWidth(this.shapes));
    }

    /* renamed from: i */
    public final boolean m34096i() {
        return this.addToCmdStack && !CollectionKt.containsAll(this.shapes, new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.note.request.AddShapesBackgroundRequest$shouldAddToRedoList$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(ShapeTypes.INSTANCE.isExcerptShape(it2) || it2.getType() == 42);
            }
        });
    }

    public final void setForceRenderNoteDirtyRectToDisplay(boolean z) {
        this.forceRenderNoteDirtyRectToDisplay = z;
    }

    public final void setHasBottomUnderContentShape(boolean z) {
        this.hasBottomUnderContentShape = z;
    }

    public final void setUndoRedoCommand(@Nullable UndoRedoCommand undoRedoCommand) {
        this.undoRedoCommand = undoRedoCommand;
    }
}
