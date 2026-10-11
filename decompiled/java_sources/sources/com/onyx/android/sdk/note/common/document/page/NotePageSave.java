package com.onyx.android.sdk.note.common.document.page;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeConvertUtils;
import com.onyx.android.sdk.replicator.note.data.point.ShapeRepo;
import com.onyx.android.sdk.replicator.note.p035db.NoteShapeProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto;
import com.onyx.android.sdk.replicator.note.proto.data.ShapeDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.NoteShapePBDocument;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.ShapeDocumentUtils;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\n\u0010\u0004\u001a\u00020\u0003*\u00020\u0002J\n\u0010\u0005\u001a\u00020\u0003*\u00020\u0002J\n\u0010\u0007\u001a\u00020\u0006*\u00020\u0002J,\u0010\u0010\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rJ\u001c\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000b0\nJ\"\u0010\u0014\u001a\u00020\u0003*\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000f\u001a\u00020\rH\u0002¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;", "", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "", "unloadPage", "saveAndUnloadPage", "", "savePage", "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;", "providerHolder", "", "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "changedShapeModels", "", CouchFieldKey.KEY_PAGE_ID, CouchFieldKey.KEY_INFO_REVISION_ID, "saveShapeToFile", "noteProviderHolder", "shapeModels", "deleteShapeFromDB", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNotePageSave.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePageSave.kt\ncom/onyx/android/sdk/note/common/document/page/NotePageSave\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,148:1\n215#2:149\n216#2:152\n1855#3,2:150\n*S KotlinDebug\n*F\n+ 1 NotePageSave.kt\ncom/onyx/android/sdk/note/common/document/page/NotePageSave\n*L\n134#1:149\n134#1:152\n139#1:150,2\n*E\n"})
/* loaded from: classes8.dex */
public final class NotePageSave {

    @NotNull
    public static final NotePageSave INSTANCE = new NotePageSave();

    /* renamed from: a */
    public final void m33789a(NotePage notePage, List<ShapeModel> list, String str) {
        saveShapeToFile(notePage.getProviderHolder(), list, notePage.getPageUniqueId(), str);
    }

    public final void deleteShapeFromDB(@NotNull NoteProviderHolder noteProviderHolder, @NotNull List<ShapeModel> shapeModels) {
        Intrinsics.checkNotNullParameter(noteProviderHolder, "noteProviderHolder");
        Intrinsics.checkNotNullParameter(shapeModels, "shapeModels");
        for (Map.Entry entry : CollectionKt.toMapList(shapeModels, new Function1<ShapeModel, String>() { // from class: com.onyx.android.sdk.note.common.document.page.NotePageSave$deleteShapeFromDB$modelGroup$1
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final String invoke(@NotNull ShapeModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getPageUniqueId();
            }
        }, new Function1<ShapeModel, ShapeModel>() { // from class: com.onyx.android.sdk.note.common.document.page.NotePageSave$deleteShapeFromDB$modelGroup$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final ShapeModel invoke(@NotNull ShapeModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        }).entrySet()) {
            String str = (String) entry.getKey();
            List<ShapeModel> list = (List) entry.getValue();
            if (!StringKt.isEmpty(str) && !list.isEmpty()) {
                String newRevisionId = ShapeModel.INSTANCE.newRevisionId();
                for (ShapeModel shapeModel : list) {
                    shapeModel.setStatus(1);
                    shapeModel.setInfoRevisionId(newRevisionId);
                }
                noteProviderHolder.getNoteShapeProvider().updateShapeList(list);
                INSTANCE.saveShapeToFile(noteProviderHolder, list, str, newRevisionId);
            }
        }
    }

    public final void saveAndUnloadPage(@NotNull NotePage notePage) {
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        savePage(notePage);
        unloadPage(notePage);
    }

    public final boolean savePage(@NotNull NotePage notePage) {
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ShapeModel.Companion companion = ShapeModel.INSTANCE;
        String newRevisionId = companion.newRevisionId();
        String newRevisionId2 = companion.newRevisionId();
        Iterator<Map.Entry<String, Shape>> it2 = notePage.getNewAddedShapeMap().entrySet().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Shape value = it2.next().getValue();
            ShapeModel modelFromShape = ShapeConvertUtils.INSTANCE.modelFromShape(value);
            modelFromShape.setInfoRevisionId(newRevisionId2);
            String revisionId = modelFromShape.getRevisionId();
            if ((revisionId == null || revisionId.length() == 0) && (ShapeTypes.INSTANCE.isReferenceShape(value) || !value.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().isEmpty())) {
                modelFromShape.setRevisionId(newRevisionId);
                arrayList.add(new ShapeRepo().setShapeUniqueId(modelFromShape.getUniqueId()).setTinyPointList(value.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().toTinyPointList(value.getShapeCreateArgs().getMaxPressure())));
            }
            ShapeOptions shapeOptions = ShapeOptions.INSTANCE;
            if (shapeOptions.isSaved(value)) {
                arrayList3.add(modelFromShape);
            } else {
                arrayList2.add(modelFromShape);
            }
            TypeIntrinsics.asMutableCollection(notePage.getRemoveResourceIdList()).remove(modelFromShape.getResourceId());
            shapeOptions.setSaved(value, true);
        }
        NoteShapeProvider noteShapeProvider = notePage.getProviderHolder().getNoteShapeProvider();
        if (arrayList2.size() > 0) {
            Debug.INSTANCE.m32052i(NotePage.class, "new shape size:" + arrayList2.size(), new Object[0]);
            noteShapeProvider.saveShapeList(arrayList2);
        }
        if (arrayList3.size() > 0) {
            Debug.INSTANCE.m32052i(NotePage.class, "update shape size:" + arrayList3.size(), new Object[0]);
            noteShapeProvider.updateShapeList(arrayList3);
        }
        notePage.getPointLoader().saveShapePointList(arrayList, newRevisionId);
        ArrayList arrayList5 = new ArrayList();
        Iterator<Map.Entry<String, Shape>> it3 = notePage.getRemovedShapeMap().entrySet().iterator();
        while (it3.hasNext()) {
            Shape value2 = it3.next().getValue();
            CollectionKt.addAll(notePage.getRemoveTagIdList(), value2.getTagIdList());
            notePage.getRemoveResourceIdList().add(value2.getRevisionId());
            ShapeModel modelFromShape2 = ShapeConvertUtils.INSTANCE.modelFromShape(value2);
            modelFromShape2.setStatus(1);
            modelFromShape2.setInfoRevisionId(newRevisionId2);
            arrayList5.add(modelFromShape2);
        }
        if (arrayList5.size() > 0) {
            Debug.INSTANCE.m32052i(NotePage.class, "remove shape size:" + arrayList5.size(), new Object[0]);
            noteShapeProvider.updateShapeList(arrayList5);
        }
        arrayList4.addAll(arrayList2);
        arrayList4.addAll(arrayList3);
        arrayList4.addAll(arrayList5);
        m33789a(notePage, arrayList4, newRevisionId2);
        arrayList2.clear();
        arrayList3.clear();
        arrayList5.clear();
        arrayList4.clear();
        notePage.getNewAddedShapeMap().clear();
        notePage.getRemovedShapeMap().clear();
        return true;
    }

    public final void saveShapeToFile(@NotNull NoteProviderHolder providerHolder, @NotNull List<ShapeModel> changedShapeModels, @NotNull String pageUniqueId, @NotNull String infoRevisionId) {
        Intrinsics.checkNotNullParameter(providerHolder, "providerHolder");
        Intrinsics.checkNotNullParameter(changedShapeModels, "changedShapeModels");
        Intrinsics.checkNotNullParameter(pageUniqueId, "pageUniqueId");
        Intrinsics.checkNotNullParameter(infoRevisionId, "infoRevisionId");
        if (changedShapeModels.isEmpty()) {
            return;
        }
        NoteShapeDocProto.ShapeInfoProtoList shapeInfoList = NoteShapePBDocument.INSTANCE.toShapeInfoList(providerHolder.getNoteResourceProvider(), changedShapeModels);
        ShapeDocumentArgs createAt = new ShapeDocumentArgs().setDocumentId(providerHolder.getDocumentUniqueId()).setPageId(pageUniqueId).setRevisionId(infoRevisionId).setSaveExportRecord(true).setCreateAt(ShapeDocumentUtils.INSTANCE.currentTimestamp());
        createAt.setProvider(providerHolder.getPbDocRecordProvider());
        new NoteShapePBDocument(createAt).setData(shapeInfoList).save();
    }

    public final void unloadPage(@NotNull NotePage notePage) {
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        notePage.getShapeList().clear();
        notePage.getNewAddedShapeMap().clear();
        notePage.getRemovedShapeMap().clear();
        notePage.setLoaded(false);
    }
}
