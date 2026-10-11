package com.onyx.android.sdk.replicator.note.proto.p036pb;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.TinyPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.data.common.path.PointPaths;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteArgs;
import com.onyx.android.sdk.replicator.note.data.point.PagePointLoader;
import com.onyx.android.sdk.replicator.note.data.point.ShapeRepo;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeConnectionBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeReferenceBean;
import com.onyx.android.sdk.replicator.note.p035db.ShapeQueryArgsExtKt;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto;
import com.onyx.android.sdk.replicator.note.proto.data.ShapeDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.ShapePBDocumentUtils;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.NoteShapePBDocument;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.ShapeDocumentUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.bym;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u0000 .2\u00020\u0001:\u0001.B\u0007¢\u0006\u0004\b,\u0010-J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J&\u0010\u000f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\fJ\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J(\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00020\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00140\u00132\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\b0\u0011H\u0002J:\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0018\u0010\u0018\u001a\u0014\u0012\u0004\u0012\u00020\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u00110\u0013H\u0002JD\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\"\u0010\u001c\u001a\u001e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\b0\u001aj\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\b`\u001b2\u0006\u0010\u0016\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0002J4\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\b0\u00132\u0006\u0010\u0016\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0002J.\u0010#\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\f2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0\u00112\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\fH\u0002R\u0014\u0010&\u001a\u00020$8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0019\u0010%R\"\u0010+\u001a\u00020$8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010%\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*¨\u0006/"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/ShapePBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/BasePBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;", "pbDataContext", "", "exportToPBFromDB", "exportToNote", "copyPBDataToDB", "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "shapeModel", "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;", "copyNoteArgs", "", "dstPageId", CouchFieldKey.KEY_REVISION_ID, "copyShapeData", C6997f.f39671c, "", "shapeModelList", "", "", "c", "srcPageId", "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;", "argsMap", "a", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "copyShapeModelMap", "e", "shapeModelMap", "b", "dstDocId", "Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;", "shapeRepos", "d", "", "I", "LIMIT_POINT_COUNT_FOR_SAVE", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapePBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapePBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/ShapePBData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,273:1\n1#2:274\n372#3,7:275\n*S KotlinDebug\n*F\n+ 1 ShapePBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/ShapePBData\n*L\n117#1:275,7\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapePBData extends BasePBData {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: c */
    public static boolean f46031c;

    /* renamed from: a, reason: from kotlin metadata */
    public final int LIMIT_POINT_COUNT_FOR_SAVE = 20000;

    /* renamed from: b, reason: from kotlin metadata */
    public int type = 1;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/ShapePBData$Companion;", "", "()V", "IMPORT_DELETED_SHAPE", "", "getIMPORT_DELETED_SHAPE", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setIMPORT_DELETED_SHAPE", "(Z)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean getIMPORT_DELETED_SHAPE() {
            return ShapePBData.f46031c;
        }

        public final void setIMPORT_DELETED_SHAPE(boolean z) {
            ShapePBData.f46031c = z;
        }

        public Companion() {
        }
    }

    /* renamed from: a */
    public final void m35477a(PBDataContext pbDataContext, String srcPageId, String dstPageId, Map<String, ? extends List<ShapeDocumentArgs>> argsMap) {
        CopyNoteArgs copyNoteArgs = pbDataContext.getCopyNoteArgs();
        if (copyNoteArgs == null) {
            return;
        }
        List<ShapeDocumentArgs> list = argsMap.get(srcPageId);
        if (CollectionKt.isNullOrEmpty(list)) {
            return;
        }
        HashMap<String, ShapeModel> hashMap = new HashMap<>();
        final LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (ShapeDocumentArgs shapeDocumentArgs : list) {
            if (copyNoteArgs.isAbort()) {
                return;
            }
            shapeDocumentArgs.setDocumentId(copyNoteArgs.getSrcDocId());
            shapeDocumentArgs.setPbDirPath(copyNoteArgs.getSrcDirFilePath());
            shapeDocumentArgs.setPageId(srcPageId);
            for (ShapeModel shapeModel : NoteShapePBDocument.INSTANCE.fromShapeInfoProtoList(new NoteShapePBDocument(shapeDocumentArgs).load().getData(), new Function1<NoteShapeDocProto.ShapeInfoProto, Boolean>() { // from class: com.onyx.android.sdk.replicator.note.proto.pb.ShapePBData$copyPagePBDataToDB$protoShapeModels$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull NoteShapeDocProto.ShapeInfoProto it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(!linkedHashSet.contains(it2.getUniqueId()));
                }
            })) {
                linkedHashSet.add(shapeModel.getUniqueId());
                if (shapeModel.isEnabled() || f46031c) {
                    shapeModel.setStatus(0);
                    hashMap.put(shapeModel.getUniqueId(), shapeModel);
                } else {
                    hashMap.remove(shapeModel.getUniqueId());
                }
            }
        }
        m35481e(pbDataContext, hashMap, srcPageId, dstPageId);
    }

    /* renamed from: b */
    public final void m35478b(PBDataContext pbDataContext, Map<String, ShapeModel> shapeModelMap, String srcPageId, String dstPageId) {
        CopyNoteArgs copyNoteArgs = pbDataContext.getCopyNoteArgs();
        if (copyNoteArgs == null) {
            return;
        }
        LinkedHashMap<String, ShapeRepo> loadShapePointList = new PagePointLoader(srcPageId, Paths.INSTANCE.append(PointPaths.INSTANCE.pointDir(copyNoteArgs.getSrcDirFilePath(), copyNoteArgs.getSrcDocId()), srcPageId).toAbsolutePath().toString()).loadShapePointList();
        ArrayList arrayList = new ArrayList();
        String newRevisionId = ShapeModel.INSTANCE.newRevisionId();
        while (true) {
            int i = 0;
            for (Map.Entry<String, ShapeRepo> entry : loadShapePointList.entrySet()) {
                if (copyNoteArgs.isAbort()) {
                    return;
                }
                String copyShapeId = copyNoteArgs.getCopyShapeId(entry.getKey());
                if (copyShapeId != null) {
                    ShapeModel shapeModel = shapeModelMap.get(entry.getKey());
                    ShapeRepo value = entry.getValue();
                    if (shapeModel != null) {
                        shapeModel.setRevisionId(newRevisionId);
                    }
                    value.setShapeUniqueId(copyShapeId);
                    arrayList.add(value);
                    List<TinyPoint> tinyPointList = value.getTinyPointList();
                    i += tinyPointList != null ? tinyPointList.size() : 0;
                    if (i > this.LIMIT_POINT_COUNT_FOR_SAVE) {
                        break;
                    }
                }
            }
            m35480d(copyNoteArgs.getDstDocId(), arrayList, dstPageId, newRevisionId);
            return;
            m35480d(copyNoteArgs.getDstDocId(), arrayList, dstPageId, newRevisionId);
            arrayList.clear();
            newRevisionId = ShapeModel.INSTANCE.newRevisionId();
        }
    }

    /* renamed from: c */
    public final Map<String, List<ShapeModel>> m35479c(List<ShapeModel> shapeModelList) {
        HashMap hashMap = new HashMap();
        for (ShapeModel shapeModel : shapeModelList) {
            String pageUniqueId = shapeModel.getPageUniqueId();
            if (!(pageUniqueId == null || pageUniqueId.length() == 0)) {
                Object obj = hashMap.get(pageUniqueId);
                if (obj == null) {
                    obj = new ArrayList();
                    hashMap.put(pageUniqueId, obj);
                }
                ((List) obj).add(shapeModel);
            }
        }
        return hashMap;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void copyPBDataToDB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        CopyNoteArgs copyNoteArgs = pbDataContext.getCopyNoteArgs();
        if (copyNoteArgs == null) {
            return;
        }
        ShapeDocumentUtils shapeDocumentUtils = ShapeDocumentUtils.INSTANCE;
        Map<String, List<ShapeDocumentArgs>> docPageShapeArgsMapByPath = shapeDocumentUtils.docPageShapeArgsMapByPath(shapeDocumentUtils.shapeFileDirPath(copyNoteArgs.getSrcDirFilePath(), copyNoteArgs.getSrcDocId()), new bym(ShapeDocumentArgs.INSTANCE));
        for (Map.Entry<String, String> entry : copyNoteArgs.getPageIdCopyMap().entrySet()) {
            if (copyNoteArgs.isAbort()) {
                return;
            } else {
                m35477a(pbDataContext, entry.getKey(), entry.getValue(), docPageShapeArgsMapByPath);
            }
        }
        if (copyNoteArgs.getCopyGlobalPage()) {
            m35477a(pbDataContext, copyNoteArgs.getSrcDocId(), copyNoteArgs.getDstDocId(), docPageShapeArgsMapByPath);
        }
        copyNoteArgs.updateAndSavePendingShapeModels(pbDataContext.getNoteProviderHolder());
    }

    public final void copyShapeData(@NotNull ShapeModel shapeModel, @NotNull CopyNoteArgs copyNoteArgs, @NotNull String dstPageId, @NotNull String revisionId) throws Exception {
        ShapeReferenceBean shapeReferenceBean;
        Intrinsics.checkNotNullParameter(shapeModel, "shapeModel");
        Intrinsics.checkNotNullParameter(copyNoteArgs, "copyNoteArgs");
        Intrinsics.checkNotNullParameter(dstPageId, "dstPageId");
        Intrinsics.checkNotNullParameter(revisionId, "revisionId");
        String rawUUID = UUIDUtils.INSTANCE.rawUUID();
        copyNoteArgs.addShapeId(shapeModel.getUniqueId(), rawUUID);
        shapeModel.setPageUniqueId(dstPageId);
        shapeModel.setDocumentUniqueId(copyNoteArgs.getDstDocId());
        shapeModel.setUniqueId(rawUUID);
        shapeModel.setGroupId(null);
        String resourceId = shapeModel.getResourceId();
        if (resourceId == null) {
            resourceId = "";
        }
        shapeModel.setResourceId(copyNoteArgs.ensureCopyResourceId(resourceId));
        List<String> linkIdList = shapeModel.getLinkIdList();
        if (linkIdList == null) {
            linkIdList = new ArrayList<>();
        }
        shapeModel.setLinkIdList(copyNoteArgs.ensureCopyLinkIdList(linkIdList));
        List<String> tagIdList = shapeModel.getTagIdList();
        if (tagIdList == null) {
            tagIdList = new ArrayList<>();
        }
        shapeModel.setTagIdList(copyNoteArgs.ensureCopyTagIdList(tagIdList));
        shapeModel.setInfoRevisionId(revisionId);
        Float f = copyNoteArgs.getCopyPageScaleMap().get(dstPageId);
        if (f != null) {
            float floatValue = f.floatValue();
            Matrix matrixByValues = MatrixKt.getMatrixByValues(shapeModel.getMatrixValues());
            matrixByValues.postScale(floatValue, floatValue);
            shapeModel.setMatrixValues(MatrixKt.toMatrixValues(matrixByValues));
            RectF boundingRect = shapeModel.getBoundingRect();
            if (boundingRect != null) {
                RectFKt.scaleRect(boundingRect, floatValue);
            }
            ShapeConnectionBean shapeConnectionBean = shapeModel.getShapeConnectionBean();
            if (shapeConnectionBean != null && (shapeReferenceBean = shapeConnectionBean.getShapeReferenceBean()) != null) {
                Matrix matrixByValues2 = MatrixKt.getMatrixByValues(shapeReferenceBean.getMatrixValues());
                MatrixKt.scaleTranslate(matrixByValues2, floatValue, floatValue);
                shapeReferenceBean.setMatrixValues(MatrixKt.getMatrixValue(matrixByValues2));
            }
        }
        copyNoteArgs.addPendingShapeModel(shapeModel);
    }

    /* renamed from: d */
    public final void m35480d(String dstDocId, List<ShapeRepo> shapeRepos, String dstPageId, String revisionId) {
        if (shapeRepos.isEmpty()) {
            return;
        }
        PagePointLoader pagePointLoader = new PagePointLoader(dstPageId, PointPaths.INSTANCE.appPagePointDir(dstDocId, dstPageId).toAbsolutePath().toString());
        pagePointLoader.setRevisionId(revisionId);
        pagePointLoader.saveShapePointList(shapeRepos, revisionId);
    }

    /* renamed from: e */
    public final void m35481e(PBDataContext pbDataContext, HashMap<String, ShapeModel> copyShapeModelMap, String srcPageId, String dstPageId) throws Exception {
        CopyNoteArgs copyNoteArgs = pbDataContext.getCopyNoteArgs();
        if (copyNoteArgs == null || copyShapeModelMap.isEmpty()) {
            return;
        }
        ArrayList<ShapeModel> arrayList = new ArrayList(copyShapeModelMap.values());
        String newRevisionId = ShapeModel.INSTANCE.newRevisionId();
        for (ShapeModel shapeModel : arrayList) {
            if (copyNoteArgs.isAbort()) {
                return;
            } else {
                copyShapeData(shapeModel, copyNoteArgs, dstPageId, newRevisionId);
            }
        }
        m35478b(pbDataContext, copyShapeModelMap, srcPageId, dstPageId);
        ShapePBDocumentUtils.INSTANCE.saveToShapeFile(pbDataContext.getNoteProviderHolder(), copyNoteArgs.getDstDocId(), dstPageId, newRevisionId, arrayList);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
    
        r3 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) r3);
     */
    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void exportToNote(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.replicator.note.proto.p036pb.PBDataContext r17) {
        /*
            r16 = this;
            r0 = r17
            java.lang.String r1 = "pbDataContext"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            java.lang.String r1 = r17.getDocumentId()
            com.onyx.android.sdk.replicator.note.bean.ExportNoteArgs r2 = r17.getExportNoteArgs()
            if (r2 != 0) goto L12
            return
        L12:
            java.util.List r3 = r2.getPageIdList()
            if (r3 == 0) goto L10a
            java.util.Collection r3 = (java.util.Collection) r3
            java.util.List r3 = kotlin.collections.CollectionsKt.toMutableList(r3)
            if (r3 != 0) goto L22
            goto L10a
        L22:
            com.onyx.android.sdk.data.common.path.PointPaths r4 = com.onyx.android.sdk.data.common.path.PointPaths.INSTANCE
            java.nio.file.Path r5 = r4.appDocPointDir(r1)
            java.lang.String r6 = r2.getExportDirPath()
            java.nio.file.Path r4 = r4.pointDir(r6, r1)
            com.onyx.android.sdk.replicator.note.proto.doc.shape.ShapeDocumentUtils r6 = com.onyx.android.sdk.replicator.note.proto.doc.shape.ShapeDocumentUtils.INSTANCE
            java.lang.String r7 = r6.shapeFileDirPath(r1)
            r8 = 2
            r9 = 0
            java.util.Map r6 = com.onyx.android.sdk.replicator.note.proto.doc.shape.ShapeDocumentUtils.docPageShapeArgsMapByPath$default(r6, r7, r9, r8, r9)
            r2.addGlobalPageId(r3)
            java.util.Iterator r7 = r3.iterator()
        L43:
            boolean r8 = r7.hasNext()
            if (r8 == 0) goto L10a
            java.lang.Object r8 = r7.next()
            java.lang.String r8 = (java.lang.String) r8
            boolean r10 = r2.getTransformReferenceShape()
            if (r10 == 0) goto L5a
            com.onyx.android.sdk.replicator.note.utils.ReferenceShapes r10 = com.onyx.android.sdk.replicator.note.utils.ReferenceShapes.INSTANCE
            r10.exportReferenceToTargetShapes(r0, r3, r8)
        L5a:
            com.onyx.android.sdk.base.extension.Paths r10 = com.onyx.android.sdk.base.extension.Paths.INSTANCE
            java.nio.file.Path r11 = r10.append(r5, r8)
            r12 = 0
            java.nio.file.LinkOption[] r13 = new java.nio.file.LinkOption[r12]
            java.lang.Object[] r13 = java.util.Arrays.copyOf(r13, r12)
            java.nio.file.LinkOption[] r13 = (java.nio.file.LinkOption[]) r13
            boolean r13 = java.nio.file.Files.exists(r11, r13)
            if (r13 == 0) goto L70
            goto L71
        L70:
            r11 = r9
        L71:
            if (r11 == 0) goto L84
            com.onyx.android.sdk.data.common.path.PointPaths r13 = com.onyx.android.sdk.data.common.path.PointPaths.INSTANCE
            java.nio.file.Path r13 = r13.pagePointDir(r4, r8)
            java.io.File r13 = r10.asFile(r13)
            java.io.File r10 = r10.asFile(r11)
            onyx.org.apache.commons.io.FileUtils.copyDirectory(r10, r13)
        L84:
            java.lang.Object r8 = r6.get(r8)
            java.util.List r8 = (java.util.List) r8
            java.util.List r8 = com.onyx.android.sdk.base.extension.CollectionKt.ensureList(r8)
            java.util.Iterator r8 = r8.iterator()
        L92:
            boolean r10 = r8.hasNext()
            if (r10 == 0) goto L43
            java.lang.Object r10 = r8.next()
            com.onyx.android.sdk.replicator.note.proto.data.ShapeDocumentArgs r10 = (com.onyx.android.sdk.replicator.note.proto.data.ShapeDocumentArgs) r10
            r10.setDocumentId(r1)
            java.io.File r11 = new java.io.File
            com.onyx.android.sdk.replicator.note.proto.doc.shape.ShapeDocumentUtils r13 = com.onyx.android.sdk.replicator.note.proto.doc.shape.ShapeDocumentUtils.INSTANCE
            java.lang.String r14 = r13.shapeZipFilePath(r10)
            r11.<init>(r14)
            boolean r14 = r11.exists()
            if (r14 != 0) goto Lcf
            java.lang.String r10 = com.onyx.android.sdk.base.extension.AnyKt.toSimpleNameString(r16)
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            java.lang.String r14 = "docPageShapeArgsListByPath source shape pb file not exist:"
            r13.append(r14)
            r13.append(r11)
            java.lang.String r11 = r13.toString()
            java.lang.Object[] r10 = new java.lang.Object[]{r10, r11}
            com.blankj.utilcode.util.LogUtils.m8166w(r10)
            goto L92
        Lcf:
            java.io.File r14 = new java.io.File
            java.lang.String r15 = r2.getExportDirPath()
            com.onyx.android.sdk.replicator.note.proto.data.ShapeDocumentArgs r10 = r10.setPbDirPath(r15)
            java.lang.String r10 = r13.shapeZipFilePath(r10)
            r14.<init>(r10)
            onyx.org.apache.commons.io.FileUtils.copyFile(r11, r14)
            com.onyx.android.sdk.base.utils.Debug r10 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            java.lang.Class<com.onyx.android.sdk.replicator.note.proto.pb.ShapePBData> r11 = com.onyx.android.sdk.replicator.note.proto.p036pb.ShapePBData.class
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            java.lang.String r15 = "page list shape data export to note file dstFile: "
            r13.append(r15)
            r13.append(r14)
            java.lang.String r15 = ", size: "
            r13.append(r15)
            long r14 = r14.length()
            r13.append(r14)
            java.lang.String r13 = r13.toString()
            java.lang.Object[] r14 = new java.lang.Object[r12]
            r10.m32035d(r11, r13, r14)
            goto L92
        L10a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.proto.p036pb.ShapePBData.exportToNote(com.onyx.android.sdk.replicator.note.proto.pb.PBDataContext):void");
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToPBFromDB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        if (pbDataContext.getNoteProviderHolder().getNoteShapeProvider().loadShapeCount(ShapeQueryArgsExtKt.emptyInfoRevisionIdShapeCountQuery(pbDataContext.getDocumentId())) == 0) {
            return;
        }
        m35482f(pbDataContext);
    }

    /* renamed from: f */
    public final void m35482f(PBDataContext pbDataContext) {
        List<ShapeModel> loadShapeList = pbDataContext.getNoteProviderHolder().getNoteShapeProvider().loadShapeList(ShapeQueryArgsExtKt.loadEmptyInfoRevisionIdShapeListQuery(pbDataContext.getDocumentId(), 2000));
        if (loadShapeList.isEmpty()) {
            return;
        }
        for (Map.Entry<String, List<ShapeModel>> entry : m35479c(loadShapeList).entrySet()) {
            ShapePBDocumentUtils.INSTANCE.saveToShapeFile(pbDataContext.getNoteProviderHolder(), pbDataContext.getDocumentId(), entry.getKey(), "", entry.getValue());
        }
        if (loadShapeList.size() >= 2000) {
            m35482f(pbDataContext);
        }
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void setType(int i) {
        this.type = i;
    }
}
