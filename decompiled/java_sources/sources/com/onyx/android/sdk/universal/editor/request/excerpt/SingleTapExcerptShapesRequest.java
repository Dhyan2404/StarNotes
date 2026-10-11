package com.onyx.android.sdk.universal.editor.request.excerpt;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.shape.SingleTapExcerptShapeArgs;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.note.request.excerpt.LoadExcerptCollectionListByExcerptIdRequest;
import com.onyx.android.sdk.note.request.excerpt.LoadNoteModelListByIdListRequest;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0011¢\u0006\u0004\b'\u0010(J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u001e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002J$\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002R\"\u0010\u0017\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\f0\u00188\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001d\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00188\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u0019\u001a\u0004\b\u001d\u0010\u001bR$\u0010&\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", C6997f.f39671c, "", "excerptId", "", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", C6998g.f39679a, "excerptCollectionList", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;", "Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;", "getArgs", "()Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;", "setArgs", "(Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;)V", "args", "", "Ljava/util/List;", "getExcerptCollectionList", "()Ljava/util/List;", "i", "getNoteModelList", "noteModelList", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "j", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getHitTestShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "setHitTestShape", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "hitTestShape", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSingleTapExcerptShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SingleTapExcerptShapesRequest.kt\ncom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n288#2,2:77\n*S KotlinDebug\n*F\n+ 1 SingleTapExcerptShapesRequest.kt\ncom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest\n*L\n46#1:77,2\n*E\n"})
/* loaded from: classes8.dex */
public final class SingleTapExcerptShapesRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public SingleTapExcerptShapeArgs args;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<ExcerptCollectionModel> excerptCollectionList;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<SyncNoteModel> noteModelList;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public Shape hitTestShape;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleTapExcerptShapesRequest(@NotNull NoteBundle noteBundle, @NotNull SingleTapExcerptShapeArgs args) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
        this.excerptCollectionList = new ArrayList();
        this.noteModelList = new ArrayList();
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        NotePage pageByUniqueId = NoteDocNotePage.INSTANCE.getPageByUniqueId(noteBundle.getNoteDoc(), this.args.getPageUniqueId());
        if (pageByUniqueId == null) {
            return;
        }
        m41466f(pageByUniqueId);
        Shape shape = this.hitTestShape;
        if (shape == null) {
            return;
        }
        this.excerptCollectionList.addAll(m41467g(noteBundle, shape.getShapeUniqueId()));
        if (!this.excerptCollectionList.isEmpty()) {
            this.noteModelList.addAll(m41468h(noteBundle, this.excerptCollectionList));
        }
    }

    /* renamed from: f */
    public final void m41466f(NotePage notePage) {
        Object obj;
        TouchPoint pointInDocument = this.args.getPointInDocument();
        Iterator<T> it2 = NotePageShape.INSTANCE.getExcerptShapes(notePage).iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            Shape shape = (Shape) obj;
            if (ShapeUtils.INSTANCE.isShapeOnCurrentLayer(notePage, shape) && shape.hitTest(pointInDocument.getX(), pointInDocument.getY(), this.args.getHitTestRadius())) {
                break;
            }
        }
        this.hitTestShape = (Shape) obj;
    }

    /* renamed from: g */
    public final List<ExcerptCollectionModel> m41467g(NoteBundle noteBundle, String excerptId) {
        LoadExcerptCollectionListByExcerptIdRequest loadExcerptCollectionListByExcerptIdRequest = new LoadExcerptCollectionListByExcerptIdRequest(noteBundle, excerptId);
        loadExcerptCollectionListByExcerptIdRequest.execute2();
        return loadExcerptCollectionListByExcerptIdRequest.getExcerptCollectionList();
    }

    @NotNull
    public final SingleTapExcerptShapeArgs getArgs() {
        return this.args;
    }

    @NotNull
    public final List<ExcerptCollectionModel> getExcerptCollectionList() {
        return this.excerptCollectionList;
    }

    @Nullable
    public final Shape getHitTestShape() {
        return this.hitTestShape;
    }

    @NotNull
    public final List<SyncNoteModel> getNoteModelList() {
        return this.noteModelList;
    }

    /* renamed from: h */
    public final List<SyncNoteModel> m41468h(NoteBundle noteBundle, List<ExcerptCollectionModel> excerptCollectionList) {
        Sequence asSequence;
        Sequence map;
        List list;
        asSequence = CollectionsKt___CollectionsKt.asSequence(excerptCollectionList);
        map = SequencesKt___SequencesKt.map(asSequence, new Function1<ExcerptCollectionModel, String>() { // from class: com.onyx.android.sdk.universal.editor.request.excerpt.SingleTapExcerptShapesRequest$loadNoteModelList$idList$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull ExcerptCollectionModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getQuoteDocId();
            }
        });
        list = SequencesKt___SequencesKt.toList(map);
        LoadNoteModelListByIdListRequest loadNoteModelListByIdListRequest = new LoadNoteModelListByIdListRequest(noteBundle, list);
        loadNoteModelListByIdListRequest.execute2();
        return loadNoteModelListByIdListRequest.getModelList();
    }

    public final void setArgs(@NotNull SingleTapExcerptShapeArgs singleTapExcerptShapeArgs) {
        Intrinsics.checkNotNullParameter(singleTapExcerptShapeArgs, "<set-?>");
        this.args = singleTapExcerptShapeArgs;
    }

    public final void setHitTestShape(@Nullable Shape shape) {
        this.hitTestShape = shape;
    }
}
