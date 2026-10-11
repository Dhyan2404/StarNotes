package com.onyx.android.sdk.note.request.excerpt;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.extension.NoteBundleKt;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.p035db.ExcerptCollectionProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R#\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00068\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001d\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/excerpt/UpdateQuoteExcerptListRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6998g.f39679a, "Ljava/util/Map;", "getShapeMap", "()Ljava/util/Map;", "shapeMap", "", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", C6999h.f39688c, "Ljava/util/List;", "getModelList", "()Ljava/util/List;", "modelList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/Map;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUpdateQuoteExcerptListRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateQuoteExcerptListRequest.kt\ncom/onyx/android/sdk/note/request/excerpt/UpdateQuoteExcerptListRequest\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,48:1\n526#2:49\n511#2,6:50\n215#3,2:56\n*S KotlinDebug\n*F\n+ 1 UpdateQuoteExcerptListRequest.kt\ncom/onyx/android/sdk/note/request/excerpt/UpdateQuoteExcerptListRequest\n*L\n28#1:49\n28#1:50,6\n33#1:56,2\n*E\n"})
/* loaded from: classes8.dex */
public final class UpdateQuoteExcerptListRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Map<Shape, Shape> shapeMap;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<ExcerptCollectionModel> modelList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public UpdateQuoteExcerptListRequest(@NotNull NoteBundle noteBundle, @NotNull Map<Shape, ? extends Shape> shapeMap) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(shapeMap, "shapeMap");
        this.shapeMap = shapeMap;
        this.modelList = new ArrayList();
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Map<Shape, Shape> map = this.shapeMap;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<Shape, Shape> entry : map.entrySet()) {
            if (ShapeTypes.INSTANCE.isQuoteShape(entry.getKey())) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        if (CollectionKt.isNullOrEmpty(linkedHashMap)) {
            return;
        }
        ExcerptCollectionProvider excerptCollectionProvider = NoteBundleKt.getExcerptCollectionProvider(noteBundle);
        for (Map.Entry<Shape, Shape> entry2 : this.shapeMap.entrySet()) {
            ExcerptCollectionModel loadExcerptCollectionByQuoteId = excerptCollectionProvider.loadExcerptCollectionByQuoteId(entry2.getKey().getDocumentUniqueId(), entry2.getKey().getShapeUniqueId());
            if (loadExcerptCollectionByQuoteId != null) {
                loadExcerptCollectionByQuoteId.setQuoteShapeId(entry2.getValue().getShapeUniqueId());
                loadExcerptCollectionByQuoteId.resetRevisionId();
            }
            CollectionKt.safeAdd(this.modelList, loadExcerptCollectionByQuoteId);
        }
        excerptCollectionProvider.saveExcerptCollectionList(this.modelList);
    }

    @NotNull
    public final List<ExcerptCollectionModel> getModelList() {
        return this.modelList;
    }

    @NotNull
    public final Map<Shape, Shape> getShapeMap() {
        return this.shapeMap;
    }
}
