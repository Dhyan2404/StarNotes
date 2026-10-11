package com.onyx.android.sdk.note.common.utils;

import com.alibaba.fastjson2.TypeReference;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.sunia.HTREnginev2.fmm;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006*\u00020\nJ\u0010\u0010\u000b\u001a\u00020\f*\b\u0012\u0004\u0012\u00020\u00070\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/ShapeDebugger;", "", "()V", "debugFile", "", "readFromDebugFile", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "doc", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;", "Lcom/onyx/android/sdk/note/NoteBundle;", "saveToDebugFile", "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nShapeDebugger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeDebugger.kt\ncom/onyx/android/sdk/note/common/utils/ShapeDebugger\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 JSONUtils.kt\ncom/onyx/android/sdk/data/utils/JSONUtils\n*L\n1#1,68:1\n1549#2:69\n1620#2,3:70\n1559#2:77\n1590#2,4:78\n1855#2,2:82\n50#3,2:73\n50#3,2:75\n*S KotlinDebug\n*F\n+ 1 ShapeDebugger.kt\ncom/onyx/android/sdk/note/common/utils/ShapeDebugger\n*L\n33#1:69\n33#1:70,3\n55#1:77\n55#1:78,4\n61#1:82,2\n53#1:73,2\n54#1:75,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeDebugger {

    @NotNull
    public static final ShapeDebugger INSTANCE = new ShapeDebugger();

    @NotNull
    public static final String debugFile = "sdcard/shapes.json";

    @NotNull
    public final List<Shape> readFromDebugFile(@NotNull NoteDocument doc) {
        int collectionSizeOrDefault;
        List<Shape> emptyList;
        Intrinsics.checkNotNullParameter(doc, "doc");
        if (!ContextKt.isStorageManager()) {
            ContextKt.requestStorageManager();
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        String readContentOfFile = FileUtils.INSTANCE.readContentOfFile(debugFile);
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        List list = (List) jSONUtils.parseObject(readContentOfFile, new TypeReference<List<? extends ShapeModel>>() { // from class: com.onyx.android.sdk.note.common.utils.ShapeDebugger$readFromDebugFile$$inlined$parseList$1
        });
        if (list == null) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        List list2 = (List) jSONUtils.parseObject(readContentOfFile, new TypeReference<List<? extends fmm>>() { // from class: com.onyx.android.sdk.note.common.utils.ShapeDebugger$readFromDebugFile$$inlined$parseList$2
        });
        if (list2 == null) {
            list2 = CollectionsKt__CollectionsKt.emptyList();
        }
        List list3 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10);
        ArrayList<Shape> arrayList = new ArrayList(collectionSizeOrDefault);
        int i = 0;
        for (Object obj : list3) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            Shape shapeFromModel = ShapeConvertUtils.INSTANCE.shapeFromModel(doc.getProviderHolder(), (ShapeModel) obj);
            shapeFromModel.setPoints(((fmm) list2.get(i)).m54138a());
            arrayList.add(shapeFromModel);
            i = i2;
        }
        for (Shape shape : arrayList) {
            shape.setOriginRect(RectFKt.concatTransform(shape.getBoundingRect(), MatrixKt.invertMatrix(shape.getShapeMatrix())));
        }
        return arrayList;
    }

    public final void saveToDebugFile(@NotNull List<? extends Shape> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (!ContextKt.isStorageManager()) {
            ContextKt.requestStorageManager();
            return;
        }
        List<? extends Shape> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Shape shape : list2) {
            ShapeModel modelFromShape = ShapeConvertUtils.INSTANCE.modelFromShape(shape);
            JSONUtils jSONUtils = JSONUtils.INSTANCE;
            JSONObject jSONObject = new JSONObject(jSONUtils.asPrettyJson(modelFromShape));
            jSONObject.put(PointConstant.POINT_FILE_END, new JSONObject(jSONUtils.asPrettyJson(shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String())));
            arrayList.add(jSONObject);
        }
        String obj = arrayList.toString();
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.ensureFileExists(debugFile);
        fileUtils.saveContentToFile(obj, debugFile);
        fileUtils.saveContentToFile(obj, "sdcard/shapes_" + DateTimeUtil.INSTANCE.millisOfNow() + ".json");
    }

    @NotNull
    public final List<Shape> readFromDebugFile(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "<this>");
        return readFromDebugFile(noteBundle.getNoteDoc());
    }
}
