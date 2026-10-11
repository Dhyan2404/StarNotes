package com.onyx.android.sdk.replicator.note.proto.doc.shape;

import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.data.common.path.PointPaths;
import com.onyx.android.sdk.data.common.path.StashPaths;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteArgs;
import com.onyx.android.sdk.replicator.note.data.constant.NoteConstant;
import com.onyx.android.sdk.replicator.note.data.point.PagePointLoader;
import com.onyx.android.sdk.replicator.note.data.point.ShapeRepo;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeCreateArgs;
import com.onyx.android.sdk.replicator.note.data.shape.StashShapeBean;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto;
import com.onyx.android.sdk.replicator.note.proto.data.ShapeDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.NoteShapePBDocument;
import com.onyx.android.sdk.replicator.note.proto.p036pb.PBDataContext;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.bym;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u0000 \u00122\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0012B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0012\u0010\u0006\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0016J\u0006\u0010\r\u001a\u00020\nJ\u0012\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList;", "args", "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;", "(Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;)V", "parseFrom", "fin", "Ljava/io/FileInputStream;", "shapeFileDirPath", "", "pbDirPath", "documentId", "tempDataZipFilePath", "writeTo", "", "fout", "Ljava/io/FileOutputStream;", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public class StashNoteShapePBDocument extends BaseShapePBDocument<NoteShapeDocProto.ShapeInfoProtoList> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b,\u0010-J,\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u0016\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bJ0\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\u0012J0\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00140\u00172\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0010JF\u0010 \u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u000f0\u001f2\u0006\u0010\u001a\u001a\u00020\u00192\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00140\u000f2\u0016\b\u0002\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u001cJ$\u0010!\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0004\u001a\u00020\u00022\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00140\u000fJ.\u0010&\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020\u00022\f\u0010%\u001a\b\u0012\u0004\u0012\u00020$0#H\u0002J.\u0010)\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010'\u001a\u00020\u00022\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u001d0\u000fH\u0002J\u001e\u0010+\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u00192\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u001d0\u000fH\u0002¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion;", "", "", "documentId", CouchFieldKey.KEY_TOC_PAGE_ID, "Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList;", "protoList", "Lkotlin/Pair;", "saveShapePB", "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;", "pbDataContext", "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;", "copyNoteArgs", "", "importStashShape", "", "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;", "argsList", "", "parsedShapeSet", "Lcom/onyx/android/sdk/replicator/note/data/shape/StashShapeBean;", "parseStashShapeList", "args", "Ljava/util/LinkedHashMap;", "parseStashShapes", "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;", "providerHolder", "list", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "shapeModelTransform", "", "saveStashShape", "savePageStashShape", CouchFieldKey.KEY_REVISION_ID, "", "Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;", "shapeRepoList", "a", CouchFieldKey.KEY_INFO_REVISION_ID, "changedShapeModels", "c", "shapeModelList", "b", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nStashNoteShapePBDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StashNoteShapePBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,255:1\n2634#2:256\n1855#2:258\n766#2:259\n857#2:260\n858#2:266\n1856#2:267\n1855#2,2:268\n1855#2,2:270\n1603#2,9:272\n1855#2:281\n1856#2:283\n1612#2:284\n1855#2,2:286\n1855#2,2:289\n1549#2:291\n1620#2,3:292\n1#3:257\n1#3:282\n32#4,5:261\n215#5:285\n216#5:288\n*S KotlinDebug\n*F\n+ 1 StashNoteShapePBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion\n*L\n106#1:256\n108#1:258\n110#1:259\n110#1:260\n110#1:266\n108#1:267\n143#1:268,2\n161#1:270,2\n182#1:272,9\n182#1:281\n182#1:283\n182#1:284\n193#1:286,2\n207#1:289,2\n216#1:291\n216#1:292,3\n106#1:257\n182#1:282\n110#1:261,5\n191#1:285\n191#1:288\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Map saveStashShape$default(Companion companion, NoteProviderHolder noteProviderHolder, List list, Function1 function1, int i, Object obj) {
            if ((i & 4) != 0) {
                function1 = new Function1<ShapeModel, ShapeModel>() { // from class: com.onyx.android.sdk.replicator.note.proto.doc.shape.StashNoteShapePBDocument$Companion$saveStashShape$1
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final ShapeModel invoke(@NotNull ShapeModel it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return it2;
                    }
                };
            }
            return companion.saveStashShape(noteProviderHolder, list, function1);
        }

        /* renamed from: a */
        public final void m35426a(String documentId, String r3, String r4, List<ShapeRepo> shapeRepoList) {
            new PagePointLoader(r3, PointPaths.INSTANCE.appPagePointDir(documentId, r3).toAbsolutePath().toString()).saveShapePointList(shapeRepoList, r4);
        }

        /* renamed from: b */
        public final void m35427b(NoteProviderHolder providerHolder, List<ShapeModel> shapeModelList) {
            providerHolder.getNoteShapeProvider().saveShapeList(shapeModelList);
        }

        /* renamed from: c */
        public final void m35428c(NoteProviderHolder providerHolder, String r3, String r4, List<ShapeModel> changedShapeModels) {
            if (changedShapeModels.isEmpty()) {
                return;
            }
            NoteShapeDocProto.ShapeInfoProtoList shapeInfoList = NoteShapePBDocument.INSTANCE.toShapeInfoList(providerHolder.getNoteResourceProvider(), changedShapeModels);
            ShapeDocumentArgs createAt = new ShapeDocumentArgs().setDocumentId(providerHolder.getDocumentUniqueId()).setPageId(r3).setRevisionId(r4).setSaveExportRecord(true).setCreateAt(ShapeDocumentUtils.INSTANCE.currentTimestamp());
            createAt.setProvider(providerHolder.getPbDocRecordProvider());
            new NoteShapePBDocument(createAt).setData(shapeInfoList).save();
        }

        public final void importStashShape(@NotNull PBDataContext pbDataContext, @NotNull final CopyNoteArgs copyNoteArgs) {
            Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
            Intrinsics.checkNotNullParameter(copyNoteArgs, "copyNoteArgs");
            String documentId = pbDataContext.getDocumentId();
            Path stashShapePBFileDir = StashPaths.INSTANCE.stashShapePBFileDir(copyNoteArgs.getSrcDirFilePath(), documentId);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            List<ShapeDocumentArgs> docShapeArgsListByPath = ShapeDocumentUtils.INSTANCE.docShapeArgsListByPath(stashShapePBFileDir.toAbsolutePath().toString(), new bym(ShapeDocumentArgs.INSTANCE));
            if (CollectionKt.isNullOrEmpty(docShapeArgsListByPath)) {
                return;
            }
            List<ShapeDocumentArgs> list = docShapeArgsListByPath;
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                ((ShapeDocumentArgs) it2.next()).setPbDirPath(copyNoteArgs.getSrcDirFilePath());
            }
            Iterator it3 = CollectionKt.split(list, NoteConstant.INSTANCE.getCOMMON_BATCH_DATA_COUNT()).iterator();
            while (it3.hasNext()) {
                List<StashShapeBean> parseStashShapeList = StashNoteShapePBDocument.INSTANCE.parseStashShapeList(documentId, (List) it3.next(), linkedHashSet);
                ArrayList arrayList = new ArrayList();
                for (Object obj : parseStashShapeList) {
                    if (copyNoteArgs.getCopyShapeId(((StashShapeBean) obj).getShapeModel().getUniqueId()) == null) {
                        arrayList.add(obj);
                    }
                }
                StashNoteShapePBDocument.INSTANCE.saveStashShape(pbDataContext.getNoteProviderHolder(), arrayList, new Function1<ShapeModel, ShapeModel>() { // from class: com.onyx.android.sdk.replicator.note.proto.doc.shape.StashNoteShapePBDocument$Companion$importStashShape$2$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @Nullable
                    public final ShapeModel invoke(@NotNull ShapeModel it4) {
                        Intrinsics.checkNotNullParameter(it4, "it");
                        String copyPageId = CopyNoteArgs.this.getCopyPageId(it4.getPageUniqueId());
                        if (copyPageId == null) {
                            return null;
                        }
                        String rawUUID = UUIDUtils.INSTANCE.rawUUID();
                        CopyNoteArgs.this.addShapeId(it4.getUniqueId(), rawUUID);
                        CopyNoteArgs copyNoteArgs2 = CopyNoteArgs.this;
                        it4.setPageUniqueId(copyPageId);
                        it4.setDocumentUniqueId(copyNoteArgs2.getDstDocId());
                        it4.setUniqueId(rawUUID);
                        it4.setGroupId(null);
                        String resourceId = it4.getResourceId();
                        if (resourceId == null) {
                            resourceId = "";
                        }
                        it4.setResourceId(copyNoteArgs2.ensureCopyResourceId(resourceId));
                        List<String> linkIdList = it4.getLinkIdList();
                        if (linkIdList == null) {
                            linkIdList = new ArrayList<>();
                        }
                        it4.setLinkIdList(copyNoteArgs2.ensureCopyLinkIdList(linkIdList));
                        List<String> tagIdList = it4.getTagIdList();
                        if (tagIdList == null) {
                            tagIdList = new ArrayList<>();
                        }
                        it4.setTagIdList(copyNoteArgs2.ensureCopyTagIdList(tagIdList));
                        CopyNoteArgs.this.addPendingShapeModel(it4);
                        return it4;
                    }
                });
            }
            copyNoteArgs.updateAndSavePendingShapeModels(pbDataContext.getNoteProviderHolder());
        }

        @NotNull
        public final List<StashShapeBean> parseStashShapeList(@NotNull String documentId, @NotNull List<ShapeDocumentArgs> argsList, @NotNull Set<String> parsedShapeSet) {
            List<StashShapeBean> list;
            Intrinsics.checkNotNullParameter(documentId, "documentId");
            Intrinsics.checkNotNullParameter(argsList, "argsList");
            Intrinsics.checkNotNullParameter(parsedShapeSet, "parsedShapeSet");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Iterator<T> it2 = argsList.iterator();
            while (it2.hasNext()) {
                LinkedHashMap<String, StashShapeBean> parseStashShapes = StashNoteShapePBDocument.INSTANCE.parseStashShapes(documentId, parsedShapeSet, (ShapeDocumentArgs) it2.next());
                linkedHashMap.putAll(parseStashShapes);
                Set<String> keySet = parseStashShapes.keySet();
                Intrinsics.checkNotNullExpressionValue(keySet, "<get-keys>(...)");
                parsedShapeSet.addAll(keySet);
            }
            Collection values = linkedHashMap.values();
            Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
            list = CollectionsKt___CollectionsKt.toList(values);
            return list;
        }

        @NotNull
        public final LinkedHashMap<String, StashShapeBean> parseStashShapes(@NotNull String documentId, @NotNull Set<String> parsedShapeSet, @NotNull ShapeDocumentArgs args) {
            List<NoteShapeDocProto.ShapeInfoProto> protoList;
            Intrinsics.checkNotNullParameter(documentId, "documentId");
            Intrinsics.checkNotNullParameter(parsedShapeSet, "parsedShapeSet");
            Intrinsics.checkNotNullParameter(args, "args");
            LinkedHashMap<String, StashShapeBean> linkedHashMap = new LinkedHashMap<>();
            args.setDocumentId(documentId);
            NoteShapeDocProto.ShapeInfoProtoList data = new StashNoteShapePBDocument(args).load().getData();
            if (data != null && (protoList = data.getProtoList()) != null) {
                for (NoteShapeDocProto.ShapeInfoProto shapeInfoProto : protoList) {
                    if (!parsedShapeSet.contains(shapeInfoProto.getUniqueId())) {
                        NoteShapePBDocument.Companion companion = NoteShapePBDocument.INSTANCE;
                        Intrinsics.checkNotNull(shapeInfoProto);
                        ShapeModel fromShapeInfoProto = companion.fromShapeInfoProto(shapeInfoProto);
                        String pageUniqueId = fromShapeInfoProto.getPageUniqueId();
                        if (pageUniqueId == null || pageUniqueId.length() == 0) {
                            fromShapeInfoProto.setPageUniqueId(args.getPageId());
                        }
                        fromShapeInfoProto.setDocumentUniqueId(documentId);
                        linkedHashMap.put(fromShapeInfoProto.getUniqueId(), new StashShapeBean(fromShapeInfoProto, TouchPointList.INSTANCE.pointsFromByteArray(shapeInfoProto.getPointList().toByteArray())));
                    }
                }
            }
            return linkedHashMap;
        }

        public final void savePageStashShape(@NotNull NoteProviderHolder providerHolder, @NotNull String r9, @NotNull List<StashShapeBean> list) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(providerHolder, "providerHolder");
            Intrinsics.checkNotNullParameter(r9, "pageId");
            Intrinsics.checkNotNullParameter(list, "list");
            ShapeModel.Companion companion = ShapeModel.INSTANCE;
            String newRevisionId = companion.newRevisionId();
            String newRevisionId2 = companion.newRevisionId();
            ArrayList arrayList = new ArrayList();
            List<StashShapeBean> list2 = list;
            for (StashShapeBean stashShapeBean : list2) {
                stashShapeBean.getShapeModel().setRevisionId(newRevisionId);
                stashShapeBean.getShapeModel().setInfoRevisionId(newRevisionId2);
                ShapeRepo shapeUniqueId = new ShapeRepo().setShapeUniqueId(stashShapeBean.getShapeModel().getUniqueId());
                TouchPointList touchPointList = stashShapeBean.getTouchPointList();
                ShapeCreateArgs shapeCreateArgs = stashShapeBean.getShapeModel().getShapeCreateArgs();
                Float valueOf = shapeCreateArgs != null ? Float.valueOf(shapeCreateArgs.getMaxPressure()) : NumberUtils.FLOAT_ONE;
                Intrinsics.checkNotNull(valueOf);
                arrayList.add(shapeUniqueId.setTinyPointList(touchPointList.toTinyPointList(valueOf.floatValue())));
            }
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((StashShapeBean) it2.next()).getShapeModel());
            }
            m35426a(providerHolder.getDocumentUniqueId(), r9, newRevisionId, arrayList);
            m35428c(providerHolder, r9, newRevisionId2, arrayList2);
            m35427b(providerHolder, arrayList2);
        }

        @Nullable
        public final Pair<String, String> saveShapePB(@NotNull String documentId, @NotNull String r3, @NotNull NoteShapeDocProto.ShapeInfoProtoList protoList) {
            Intrinsics.checkNotNullParameter(documentId, "documentId");
            Intrinsics.checkNotNullParameter(r3, "pageId");
            Intrinsics.checkNotNullParameter(protoList, "protoList");
            ShapeDocumentArgs createAt = new ShapeDocumentArgs().setDocumentId(documentId).setPageId(r3).setRevisionId(UUIDUtils.INSTANCE.timeBasedEpochUUID()).setCreateAt(ShapeDocumentUtils.INSTANCE.currentTimestamp());
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = "";
            final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            objectRef2.element = "";
            StashNoteShapePBDocument stashNoteShapePBDocument = new StashNoteShapePBDocument(createAt) { // from class: com.onyx.android.sdk.replicator.note.proto.doc.shape.StashNoteShapePBDocument$Companion$saveShapePB$document$1
                /* JADX WARN: Type inference failed for: r1v0, types: [T, java.lang.String] */
                /* JADX WARN: Type inference failed for: r1v1, types: [T, java.lang.String] */
                @Override // com.onyx.android.sdk.replicator.note.proto.doc.shape.BaseShapePBDocument
                @NotNull
                public String dataZipFilePath() {
                    objectRef2.element = super.dataZipFilePath();
                    objectRef.element = tempDataZipFilePath();
                    return objectRef.element;
                }
            };
            stashNoteShapePBDocument.setData(protoList).save();
            if (stashNoteShapePBDocument.isSuccessful()) {
                return new Pair<>(objectRef.element, objectRef2.element);
            }
            return null;
        }

        @NotNull
        public final Map<String, List<StashShapeBean>> saveStashShape(@NotNull NoteProviderHolder providerHolder, @NotNull List<StashShapeBean> list, @NotNull Function1<? super ShapeModel, ShapeModel> shapeModelTransform) {
            Intrinsics.checkNotNullParameter(providerHolder, "providerHolder");
            Intrinsics.checkNotNullParameter(list, "list");
            Intrinsics.checkNotNullParameter(shapeModelTransform, "shapeModelTransform");
            ArrayList arrayList = new ArrayList();
            for (StashShapeBean stashShapeBean : list) {
                ShapeModel invoke = shapeModelTransform.invoke(stashShapeBean.getShapeModel());
                if (invoke == null) {
                    stashShapeBean = null;
                } else if (!Intrinsics.areEqual(invoke, stashShapeBean.getShapeModel())) {
                    stashShapeBean = new StashShapeBean(invoke, stashShapeBean.getTouchPointList());
                }
                if (stashShapeBean != null) {
                    arrayList.add(stashShapeBean);
                }
            }
            Map<String, List<StashShapeBean>> mapList = CollectionKt.toMapList(arrayList, new Function1<StashShapeBean, String>() { // from class: com.onyx.android.sdk.replicator.note.proto.doc.shape.StashNoteShapePBDocument$Companion$saveStashShape$stashShapeMap$2
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final String invoke(@NotNull StashShapeBean it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    String pageUniqueId = it2.getShapeModel().getPageUniqueId();
                    return pageUniqueId == null ? "" : pageUniqueId;
                }
            }, new Function1<StashShapeBean, StashShapeBean>() { // from class: com.onyx.android.sdk.replicator.note.proto.doc.shape.StashNoteShapePBDocument$Companion$saveStashShape$stashShapeMap$3
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final StashShapeBean invoke(@NotNull StashShapeBean it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return it2;
                }
            });
            for (Map.Entry<String, List<StashShapeBean>> entry : mapList.entrySet()) {
                Iterator it2 = CollectionKt.split(entry.getValue(), NoteConstant.INSTANCE.getCOMMON_BATCH_DATA_COUNT()).iterator();
                while (it2.hasNext()) {
                    StashNoteShapePBDocument.INSTANCE.savePageStashShape(providerHolder, entry.getKey(), (List) it2.next());
                }
            }
            return mapList;
        }

        public Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StashNoteShapePBDocument(@NotNull ShapeDocumentArgs args) {
        super(args);
        Intrinsics.checkNotNullParameter(args, "args");
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.shape.BaseShapePBDocument
    @NotNull
    public String shapeFileDirPath(@NotNull String pbDirPath, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(pbDirPath, "pbDirPath");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return StashPaths.INSTANCE.stashShapePBFileDir(pbDirPath, documentId).toAbsolutePath().toString();
    }

    @NotNull
    public final String tempDataZipFilePath() {
        Paths paths = Paths.INSTANCE;
        return paths.append(paths.toPath(dataFileDir()), ShapeDocumentUtils.INSTANCE.getPageShapeFileName(getArgs()) + '#' + UUIDUtils.INSTANCE.rawUUID() + ShapeDocumentUtils.SHAPE_FILE_END).toAbsolutePath().toString();
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.shape.BaseShapePBDocument
    public void writeTo(@Nullable FileOutputStream fout) throws IOException {
        NoteShapeDocProto.ShapeInfoProtoList data = getData();
        Intrinsics.checkNotNull(data);
        data.writeTo(fout);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.shape.BaseShapePBDocument
    @NotNull
    public NoteShapeDocProto.ShapeInfoProtoList parseFrom(@Nullable FileInputStream fin) throws IOException {
        NoteShapeDocProto.ShapeInfoProtoList parseFrom = NoteShapeDocProto.ShapeInfoProtoList.parseFrom(fin);
        Intrinsics.checkNotNullExpressionValue(parseFrom, "parseFrom(...)");
        return parseFrom;
    }
}
