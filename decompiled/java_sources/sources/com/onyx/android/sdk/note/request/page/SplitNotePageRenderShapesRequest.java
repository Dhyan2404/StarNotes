package com.onyx.android.sdk.note.request.page;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\n\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\tR.\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\t\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/page/SplitNotePageRenderShapesRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6998g.f39679a, "Ljava/util/List;", "shapeList", "", C6999h.f39688c, "getBatchShapeList", "()Ljava/util/List;", "setBatchShapeList", "(Ljava/util/List;)V", "batchShapeList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;)V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSplitNotePageRenderShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplitNotePageRenderShapesRequest.kt\ncom/onyx/android/sdk/note/request/page/SplitNotePageRenderShapesRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,47:1\n766#2:48\n857#2,2:49\n1855#2,2:51\n*S KotlinDebug\n*F\n+ 1 SplitNotePageRenderShapesRequest.kt\ncom/onyx/android/sdk/note/request/page/SplitNotePageRenderShapesRequest\n*L\n29#1:48\n29#1:49,2\n39#1:51,2\n*E\n"})
/* loaded from: classes8.dex */
public final class SplitNotePageRenderShapesRequest extends BaseRxNoteRequest {
    public static final int MIN_BATCH_LIMIT = 200;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public List<? extends Shape> shapeList;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<List<Shape>> batchShapeList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SplitNotePageRenderShapesRequest(@NotNull NoteBundle noteBundle, @NotNull List<? extends Shape> shapeList) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        this.shapeList = shapeList;
        this.batchShapeList = new ArrayList();
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        List<List<Shape>> mutableList;
        Integer minOrNull;
        int indexOf;
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        List<? extends Shape> list = this.shapeList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (ShapeTypes.INSTANCE.isPenShape((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        this.shapeList = arrayList;
        if (arrayList.size() < 200) {
            CollectionKt.safeAdd(this.batchShapeList, this.shapeList);
            return;
        }
        int[] iArr = new int[4];
        ArrayList arrayList2 = new ArrayList(4);
        for (int i = 0; i < 4; i++) {
            arrayList2.add(new ArrayList());
        }
        for (Shape shape : this.shapeList) {
            minOrNull = ArraysKt___ArraysKt.minOrNull(iArr);
            indexOf = ArraysKt___ArraysKt.indexOf(iArr, minOrNull != null ? minOrNull.intValue() : 0);
            ((List) arrayList2.get(indexOf)).add(shape);
            iArr[indexOf] = iArr[indexOf] + shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().size();
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
        this.batchShapeList = mutableList;
        Debug debug = Debug.INSTANCE;
        StringBuilder sb = new StringBuilder();
        sb.append("pointsCountInGroup:");
        String arrays = Arrays.toString(iArr);
        Intrinsics.checkNotNullExpressionValue(arrays, "toString(this)");
        sb.append(arrays);
        debug.m32035d(SplitNotePageRenderShapesRequest.class, sb.toString(), new Object[0]);
    }

    @NotNull
    public final List<List<Shape>> getBatchShapeList() {
        return this.batchShapeList;
    }

    public final void setBatchShapeList(@NotNull List<List<Shape>> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.batchShapeList = list;
    }
}
