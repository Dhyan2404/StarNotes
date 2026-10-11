package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteListArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteListArgs;
import com.onyx.android.sdk.replicator.note.p035db.TemplateProvider;
import com.onyx.android.sdk.replicator.note.p035db.TemplateQueryArgsExtKt;
import com.onyx.android.sdk.replicator.note.p035db.VirtualPageQueryArgsKt;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
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
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J4\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e0\rH\u0002R\"\u0010\u0017\u001a\u00020\u00118\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/TemplatePBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/BaseUserPBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;", "pbDataContext", "", "collectDataToPBFromDB", "saveDataToDB", "collectDataExportToFile", "copyPBToDB", "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;", "exportNoteArgs", "", "exportDirPath", "", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "templateMap", "a", "", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTemplatePBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplatePBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/TemplatePBData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,112:1\n1855#2,2:113\n1855#2,2:115\n1855#2,2:117\n766#2:119\n857#2,2:120\n766#2:122\n857#2,2:123\n1549#2:125\n1620#2,3:126\n766#2:129\n857#2,2:130\n766#2:132\n857#2,2:133\n1855#2:135\n1855#2,2:136\n1856#2:138\n766#2:139\n857#2,2:140\n1855#2,2:142\n1855#2:144\n1855#2,2:145\n1856#2:147\n*S KotlinDebug\n*F\n+ 1 TemplatePBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/TemplatePBData\n*L\n27#1:113,2\n36#1:115,2\n46#1:117,2\n76#1:119\n76#1:120,2\n77#1:122\n77#1:123,2\n78#1:125\n78#1:126,3\n80#1:129\n80#1:130,2\n81#1:132\n81#1:133,2\n85#1:135\n87#1:136,2\n85#1:138\n97#1:139\n97#1:140,2\n99#1:142,2\n103#1:144\n104#1:145,2\n103#1:147\n*E\n"})
/* loaded from: classes8.dex */
public final class TemplatePBData extends BaseUserPBData {

    /* renamed from: a, reason: from kotlin metadata */
    public int type = 11;

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final void m35489a(UserPBDataContext pbDataContext, ExportNoteArgs exportNoteArgs, String exportDirPath, Map<String, TemplateModel> templateMap) {
        final List<String> pageIdList;
        int collectionSizeOrDefault;
        if (!exportNoteArgs.getExportTemplate() || (pageIdList = exportNoteArgs.getPageIdList()) == null || pageIdList.isEmpty()) {
            return;
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        List list = (List) NoteProviderHolder.Companion.withOnce$default(NoteProviderHolder.INSTANCE, null, pbDataContext.getUserId(), exportNoteArgs.getDocumentId(), new Function1<NoteProviderHolder, List<? extends VirtualPageModel>>() { // from class: com.onyx.android.sdk.replicator.note.proto.pb.TemplatePBData$loadExportTemplateList$virtualPageModels$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Type inference failed for: r1v1, types: [T, com.onyx.android.sdk.replicator.note.db.model.VirtualDocModel] */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final List<VirtualPageModel> invoke(@NotNull NoteProviderHolder it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                objectRef.element = it2.getVirtualModelProvider().loadVirtualDocModel();
                return it2.getVirtualModelProvider().loadVirtualPageModelList(VirtualPageQueryArgsKt.loadVirtualPageById(pageIdList));
            }
        }, 1, null);
        if (list.isEmpty()) {
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
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            String uniqueId = ((VirtualPageModel) obj).getUniqueId();
            if (!Intrinsics.areEqual(uniqueId, ((VirtualDocModel) objectRef.element) != null ? r5.getCoverPageId() : null)) {
                arrayList2.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            arrayList3.add(((VirtualPageModel) it3.next()).getContentId());
        }
        List<TemplateModel> loadTemplateListByIdList = pbDataContext.getTemplateProvider().loadTemplateListByIdList(arrayList3);
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : loadTemplateListByIdList) {
            if (((TemplateModel) obj2).getSource() == 1) {
                arrayList4.add(obj2);
            }
        }
        ArrayList<TemplateModel> arrayList5 = new ArrayList();
        for (Object obj3 : arrayList4) {
            if (!templateMap.containsKey(((TemplateModel) obj3).getUniqueId())) {
                arrayList5.add(obj3);
            }
        }
        if (CollectionKt.isNullOrEmpty(arrayList5)) {
            return;
        }
        for (TemplateModel templateModel : arrayList5) {
            templateMap.put(templateModel.getUniqueId(), templateModel);
            Iterator<T> it4 = templateModel.getTemplateResourceWrapper().getResourceList().iterator();
            while (it4.hasNext()) {
                TemplateResourcesKt.exportTemplateResource((TemplateResourceModel) it4.next(), exportDirPath);
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
            m35489a(pbDataContext, (ExportNoteArgs) it2.next(), exportNoteListArgs.getExportDirPath(), linkedHashMap);
        }
        if (linkedHashMap.isEmpty()) {
            return;
        }
        CollectionKt.safeAddAll(pbDataContext.getTemplateList(), linkedHashMap.values());
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void collectDataToPBFromDB(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        String userId = pbDataContext.getUserId();
        List<TemplateModel> loadTemplateList = pbDataContext.getTemplateProvider().loadTemplateList(TemplateQueryArgsExtKt.loadImportEmptyRevisionIdTemplateQuery());
        if (loadTemplateList.isEmpty()) {
            return;
        }
        Iterator<T> it2 = loadTemplateList.iterator();
        while (it2.hasNext()) {
            ((TemplateModel) it2.next()).setRevisionId(pbDataContext.getRevisionId());
        }
        CollectionKt.safeAddAll(pbDataContext.getTemplateList(), loadTemplateList);
        Debug.INSTANCE.m32052i(TemplatePBData.class, "userId = " + userId + ", save template model to pb count: " + loadTemplateList.size(), new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void copyPBToDB(@NotNull UserPBDataContext pbDataContext) {
        List list;
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        CopyNoteListArgs copyNoteListArgs = pbDataContext.getCopyNoteListArgs();
        if (copyNoteListArgs == null) {
            return;
        }
        String userId = pbDataContext.getUserId();
        TemplateProvider templateProvider = pbDataContext.getTemplateProvider();
        List<TemplateModel> templateList = pbDataContext.getTemplateList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : templateList) {
            if (!templateProvider.checkTemplateModelExist(((TemplateModel) obj).getUniqueId())) {
                arrayList.add(obj);
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        ArrayList arrayList2 = new ArrayList();
        List<TemplateModel> list2 = list;
        for (TemplateModel templateModel : list2) {
            templateModel.resetRevisionId();
            arrayList2.addAll(templateModel.getTemplateResourceWrapper().getResourceList());
        }
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            Iterator<T> it3 = ((TemplateModel) it2.next()).getTemplateResourceWrapper().getResourceList().iterator();
            while (it3.hasNext()) {
                TemplateResourcesKt.importTemplateResource((TemplateResourceModel) it3.next(), copyNoteListArgs.getSrcDirFilePath(), userId);
            }
        }
        TemplateProvider.saveTemplateList$default(templateProvider, list, false, 2, null);
        TemplateProvider.saveTemplateResourceList$default(templateProvider, arrayList2, false, 2, null);
        Debug.INSTANCE.m32052i(TemplatePBData.class, "copyPBDataToDB count: " + list.size(), new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void saveDataToDB(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = pbDataContext.getTemplateList().iterator();
        while (it2.hasNext()) {
            arrayList.addAll(((TemplateModel) it2.next()).getTemplateResourceWrapper().getResourceList());
        }
        TemplateProvider.saveTemplateList$default(pbDataContext.getTemplateProvider(), pbDataContext.getTemplateList(), false, 2, null);
        TemplateProvider.saveTemplateResourceList$default(pbDataContext.getTemplateProvider(), arrayList, false, 2, null);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void setType(int i) {
        this.type = i;
    }
}
