package com.onyx.android.sdk.replicator.replicator.userFile;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.data.common.path.TemplatePaths;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.replicator.bean.SyncDataBean;
import com.onyx.android.sdk.replicator.common.BaseUserSyncFile;
import com.onyx.android.sdk.replicator.note.utils.OssPaths;
import com.onyx.android.sdk.replicator.replicator.DataReplicator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016J\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0002J\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0002R\u0014\u0010\r\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/userFile/UserTemplateResSyncFile;", "Lcom/onyx/android/sdk/replicator/common/BaseUserSyncFile;", "", "filePrefix", "", "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;", "makeSyncDataBean", "", "cloudFileNames", "a", "b", "e", Constants.STRING_SIG, "thumbnailFilePrefix", "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;", "dataReplicator", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUserTemplateResSyncFile.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserTemplateResSyncFile.kt\ncom/onyx/android/sdk/replicator/replicator/userFile/UserTemplateResSyncFile\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,111:1\n766#2:112\n857#2,2:113\n766#2:115\n857#2,2:116\n1549#2:118\n1620#2,3:119\n766#2:122\n857#2,2:123\n1549#2:125\n1620#2,3:126\n766#2:129\n857#2,2:130\n1549#2:132\n1620#2,3:133\n*S KotlinDebug\n*F\n+ 1 UserTemplateResSyncFile.kt\ncom/onyx/android/sdk/replicator/replicator/userFile/UserTemplateResSyncFile\n*L\n32#1:112\n32#1:113,2\n34#1:115\n34#1:116,2\n35#1:118\n35#1:119,3\n45#1:122\n45#1:123,2\n46#1:125\n46#1:126,3\n80#1:129\n80#1:130,2\n81#1:132\n81#1:133,3\n*E\n"})
/* loaded from: classes8.dex */
public final class UserTemplateResSyncFile extends BaseUserSyncFile {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String thumbnailFilePrefix;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserTemplateResSyncFile(@NotNull DataReplicator dataReplicator) {
        super(dataReplicator);
        Intrinsics.checkNotNullParameter(dataReplicator, "dataReplicator");
        this.thumbnailFilePrefix = "thumbnail" + File.separator;
    }

    /* renamed from: a */
    public final List<SyncDataBean> m35783a(Set<String> cloudFileNames) {
        int collectionSizeOrDefault;
        Set set;
        ArrayList arrayList = new ArrayList();
        Collection<File> listFiles = Paths.INSTANCE.listFiles(TemplatePaths.INSTANCE.appCurUserNoteTemplateResDir(), false);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : listFiles) {
            if (((File) obj).isFile()) {
                arrayList2.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList3.add(((File) it2.next()).getName());
        }
        set = CollectionsKt___CollectionsKt.toSet(arrayList3);
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet();
        LinkedHashSet<String> linkedHashSet2 = new LinkedHashSet();
        CollectionKt.diff(cloudFileNames, set, linkedHashSet, linkedHashSet2);
        for (String str : linkedHashSet) {
            OssPaths ossPaths = OssPaths.INSTANCE;
            String ossPathString = ossPaths.ossPathString(ossPaths.userTemplateResOssFileKey(getSyncUserId(), str));
            arrayList.add(createSyncDataBean(ossPathString, 302, Paths.INSTANCE.append(TemplatePaths.INSTANCE.appCurUserNoteTemplateResDir(), str).toAbsolutePath().toString(), ossPathString, 1));
        }
        for (String str2 : linkedHashSet2) {
            OssPaths ossPaths2 = OssPaths.INSTANCE;
            String ossPathString2 = ossPaths2.ossPathString(ossPaths2.userTemplateResOssFileKey(getSyncUserId(), str2));
            arrayList.add(createSyncDataBean(ossPathString2, 302, Paths.INSTANCE.append(TemplatePaths.INSTANCE.appCurUserNoteTemplateResDir(), str2).toAbsolutePath().toString(), ossPathString2, 2));
        }
        return arrayList;
    }

    /* renamed from: b */
    public final List<SyncDataBean> m35784b(Set<String> cloudFileNames) {
        int collectionSizeOrDefault;
        Set set;
        ArrayList arrayList = new ArrayList();
        Collection<File> listFiles = Paths.INSTANCE.listFiles(TemplatePaths.INSTANCE.appCurUserNoteTemplateThumbnailResDir(), false);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : listFiles) {
            if (((File) obj).isFile()) {
                arrayList2.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList3.add(((File) it2.next()).getName());
        }
        set = CollectionsKt___CollectionsKt.toSet(arrayList3);
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet();
        LinkedHashSet<String> linkedHashSet2 = new LinkedHashSet();
        CollectionKt.diff(cloudFileNames, set, linkedHashSet, linkedHashSet2);
        for (String str : linkedHashSet) {
            OssPaths ossPaths = OssPaths.INSTANCE;
            arrayList.add(createSyncDataBean(str, 303, Paths.INSTANCE.append(TemplatePaths.INSTANCE.appCurUserNoteTemplateThumbnailResDir(), str).toAbsolutePath().toString(), ossPaths.ossPathString(ossPaths.userTemplateThumbnailResOssFileKey(getSyncUserId(), str)), 1));
        }
        for (String str2 : linkedHashSet2) {
            OssPaths ossPaths2 = OssPaths.INSTANCE;
            arrayList.add(createSyncDataBean(str2, 303, Paths.INSTANCE.append(TemplatePaths.INSTANCE.appCurUserNoteTemplateThumbnailResDir(), str2).toAbsolutePath().toString(), ossPaths2.ossPathString(ossPaths2.userTemplateThumbnailResOssFileKey(getSyncUserId(), str2)), 2));
        }
        return arrayList;
    }

    @Override // com.onyx.android.sdk.replicator.common.BaseSyncFile
    @NotNull
    public String filePrefix() {
        StringBuilder sb = new StringBuilder();
        String str = File.separator;
        sb.append(str);
        sb.append(SyncConstant.LOCAL_TEMPLATE_RES_NAME);
        sb.append(str);
        return sb.toString();
    }

    @Override // com.onyx.android.sdk.replicator.common.BaseSyncFile
    @NotNull
    public List<SyncDataBean> makeSyncDataBean() {
        Set mutableSet;
        Set<String> set;
        int collectionSizeOrDefault;
        Set<String> set2;
        String removePrefix;
        boolean startsWith$default;
        boolean startsWith$default2;
        ArrayList arrayList = new ArrayList();
        mutableSet = CollectionsKt___CollectionsKt.toMutableSet(getCloudSummaryMap().keySet());
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : mutableSet) {
            startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default((String) obj, this.thumbnailFilePrefix, false, 2, null);
            if (!startsWith$default2) {
                arrayList2.add(obj);
            }
        }
        set = CollectionsKt___CollectionsKt.toSet(arrayList2);
        mutableSet.removeAll(set);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : mutableSet) {
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default((String) obj2, this.thumbnailFilePrefix, false, 2, null);
            if (startsWith$default) {
                arrayList3.add(obj2);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList3, 10);
        ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            removePrefix = StringsKt__StringsKt.removePrefix((String) it2.next(), (CharSequence) this.thumbnailFilePrefix);
            arrayList4.add(removePrefix);
        }
        set2 = CollectionsKt___CollectionsKt.toSet(arrayList4);
        CollectionKt.safeAddAll(arrayList, m35783a(set));
        CollectionKt.safeAddAll(arrayList, m35784b(set2));
        return arrayList;
    }
}
