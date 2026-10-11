package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteListArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteListArgs;
import com.onyx.android.sdk.replicator.note.p035db.CoverProvider;
import com.onyx.android.sdk.replicator.note.p035db.CoverQueryArgsExtKt;
import com.onyx.android.sdk.replicator.note.p035db.VirtualModelProvider;
import com.onyx.android.sdk.replicator.note.p035db.VirtualPageQueryArgsKt;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateResourceModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualDocModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel;
import com.onyx.android.sdk.replicator.note.utils.TemplateResourcesKt;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J4\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e0\rH\u0002R\"\u0010\u0017\u001a\u00020\u00118\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/CoverPBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/BaseUserPBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;", "pbDataContext", "", "collectDataToPBFromDB", "saveDataToDB", "collectDataExportToFile", "copyPBToDB", "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;", "exportNoteArgs", "", "exportDirPath", "", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "coverMap", "a", "", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCoverPBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoverPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/CoverPBData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n1855#2,2:101\n1855#2,2:103\n1855#2,2:105\n766#2:107\n857#2,2:108\n1549#2:110\n1620#2,3:111\n1855#2,2:114\n766#2:116\n857#2,2:117\n1855#2,2:119\n1855#2:121\n1855#2,2:122\n1856#2:124\n*S KotlinDebug\n*F\n+ 1 CoverPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/CoverPBData\n*L\n27#1:101,2\n36#1:103,2\n46#1:105,2\n68#1:107\n68#1:108,2\n68#1:110\n68#1:111,3\n77#1:114,2\n86#1:116\n86#1:117,2\n88#1:119,2\n92#1:121\n93#1:122,2\n92#1:124\n*E\n"})
/* loaded from: classes8.dex */
public final class CoverPBData extends BaseUserPBData {

    /* renamed from: a, reason: from kotlin metadata */
    public int type = 12;

    /* renamed from: a */
    public final void m35441a(UserPBDataContext pbDataContext, ExportNoteArgs exportNoteArgs, String exportDirPath, Map<String, CoverModel> coverMap) {
        List<String> pageIdList;
        boolean contains;
        int collectionSizeOrDefault;
        CoverModel loadCoverById;
        if (exportNoteArgs.getExportTemplate() && (pageIdList = exportNoteArgs.getPageIdList()) != null) {
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            List list = (List) NoteProviderHolder.Companion.withOnce$default(NoteProviderHolder.INSTANCE, null, pbDataContext.getUserId(), exportNoteArgs.getDocumentId(), new Function1<NoteProviderHolder, List<? extends VirtualPageModel>>() { // from class: com.onyx.android.sdk.replicator.note.proto.pb.CoverPBData$loadExportCoverList$virtualPageModels$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                /* JADX WARN: Type inference failed for: r1v2, types: [T, java.lang.String] */
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final List<VirtualPageModel> invoke(@NotNull NoteProviderHolder it2) {
                    List<VirtualPageModel> emptyList;
                    ?? coverPageId;
                    List listOfNotNull;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    Ref.ObjectRef<String> objectRef2 = objectRef;
                    VirtualDocModel loadVirtualDocModel = it2.getVirtualModelProvider().loadVirtualDocModel();
                    if (loadVirtualDocModel != null && (coverPageId = loadVirtualDocModel.getCoverPageId()) != 0) {
                        objectRef2.element = coverPageId;
                        VirtualModelProvider virtualModelProvider = it2.getVirtualModelProvider();
                        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(objectRef.element);
                        return virtualModelProvider.loadVirtualPageModelList(VirtualPageQueryArgsKt.loadVirtualPageById(listOfNotNull));
                    }
                    emptyList = CollectionsKt__CollectionsKt.emptyList();
                    return emptyList;
                }
            }, 1, null);
            contains = CollectionsKt___CollectionsKt.contains(pageIdList, objectRef.element);
            if (!contains || list.isEmpty()) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                if (((VirtualPageModel) next).getContentId().length() > 0) {
                    arrayList.add(next);
                }
            }
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                arrayList2.add(((VirtualPageModel) it3.next()).getContentId());
            }
            if (arrayList2.isEmpty() || (loadCoverById = pbDataContext.getCoverProvider().loadCoverById((String) arrayList2.get(0))) == null || loadCoverById.getSource() != 1 || coverMap.containsKey(loadCoverById.getUniqueId())) {
                return;
            }
            coverMap.put(loadCoverById.getUniqueId(), loadCoverById);
            Iterator<T> it4 = loadCoverById.getTemplateResourceWrapper().getResourceList().iterator();
            while (it4.hasNext()) {
                TemplateResourcesKt.exportCoverResource((TemplateResourceModel) it4.next(), exportDirPath);
            }
        }
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void collectDataExportToFile(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        ExportNoteListArgs exportNoteListArgs = pbDataContext.getExportNoteListArgs();
        if (exportNoteListArgs == null) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> it2 = exportNoteListArgs.getExportNoteArgsList().iterator();
        while (it2.hasNext()) {
            m35441a(pbDataContext, (ExportNoteArgs) it2.next(), exportNoteListArgs.getExportDirPath(), linkedHashMap);
        }
        if (linkedHashMap.isEmpty()) {
            return;
        }
        CollectionKt.safeAddAll(pbDataContext.getCoverList(), linkedHashMap.values());
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void collectDataToPBFromDB(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        String userId = pbDataContext.getUserId();
        List<CoverModel> loadCoverList = pbDataContext.getCoverProvider().loadCoverList(CoverQueryArgsExtKt.loadImportEmptyRevisionIdCoverQuery());
        if (loadCoverList.isEmpty()) {
            return;
        }
        Iterator<T> it2 = loadCoverList.iterator();
        while (it2.hasNext()) {
            ((CoverModel) it2.next()).setRevisionId(pbDataContext.getRevisionId());
        }
        CollectionKt.safeAddAll(pbDataContext.getCoverList(), loadCoverList);
        Debug.INSTANCE.m32052i(CoverPBData.class, "userId = " + userId + ", save cover model to pb count: " + loadCoverList.size(), new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void copyPBToDB(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        CopyNoteListArgs copyNoteListArgs = pbDataContext.getCopyNoteListArgs();
        if (copyNoteListArgs == null) {
            return;
        }
        String userId = pbDataContext.getUserId();
        CoverProvider coverProvider = pbDataContext.getCoverProvider();
        List<CoverModel> coverList = pbDataContext.getCoverList();
        ArrayList<CoverModel> arrayList = new ArrayList();
        for (Object obj : coverList) {
            if (!coverProvider.checkCoverModelExist(((CoverModel) obj).getUniqueId())) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (CoverModel coverModel : arrayList) {
            coverModel.resetRevisionId();
            arrayList2.addAll(coverModel.getTemplateResourceWrapper().getResourceList());
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Iterator<T> it3 = ((CoverModel) it2.next()).getTemplateResourceWrapper().getResourceList().iterator();
            while (it3.hasNext()) {
                TemplateResourcesKt.importCoverResource((TemplateResourceModel) it3.next(), copyNoteListArgs.getSrcDirFilePath(), userId);
            }
        }
        coverProvider.saveList(arrayList);
        CoverProvider.saveTemplateResourceList$default(coverProvider, arrayList2, false, 2, null);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void saveDataToDB(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = pbDataContext.getCoverList().iterator();
        while (it2.hasNext()) {
            arrayList.addAll(((CoverModel) it2.next()).getTemplateResourceWrapper().getResourceList());
        }
        CoverProvider.saveCoverList$default(pbDataContext.getCoverProvider(), pbDataContext.getCoverList(), false, 2, null);
        CoverProvider.saveTemplateResourceList$default(pbDataContext.getCoverProvider(), arrayList, false, 2, null);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void setType(int i) {
        this.type = i;
    }
}
