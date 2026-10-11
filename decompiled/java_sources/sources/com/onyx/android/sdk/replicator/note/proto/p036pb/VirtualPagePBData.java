package com.onyx.android.sdk.replicator.note.proto.p036pb;

import android.graphics.RectF;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.AppFilePaths;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.path.CommonPaths;
import com.onyx.android.sdk.data.common.path.ContentPaths;
import com.onyx.android.sdk.data.common.path.ResourcePaths;
import com.onyx.android.sdk.data.common.path.TemplatePaths;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.genericshape.FillAttr;
import com.onyx.android.sdk.genericshape.GeoFactory;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportPdfPagesResult;
import com.onyx.android.sdk.replicator.note.p035db.PBDocRecordProvider;
import com.onyx.android.sdk.replicator.note.p035db.TemplateProvider;
import com.onyx.android.sdk.replicator.note.p035db.VirtualModelProvider;
import com.onyx.android.sdk.replicator.note.p035db.VirtualPageQueryArgsKt;
import com.onyx.android.sdk.replicator.note.p035db.model.PBDocRecordModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel;
import com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto;
import com.onyx.android.sdk.replicator.note.proto.data.ExtraInfoBean;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.PBDocumentUtils;
import com.onyx.android.sdk.replicator.note.proto.doc.VirtualPagePBDocument;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.ByteArrayInputStream;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010%\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bE\u0010FJD\u0010\r\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00040\n2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\u0010\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004H\u0002J.\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u00112\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\bH\u0002J\u0018\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\bH\u0002J \u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\bH\u0002J&\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001a2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u0014\u001a\u00020\bH\u0002J&\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001a2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u0014\u001a\u00020\bH\u0002J\u001e\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001a2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004H\u0002J&\u0010\u001f\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001a2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u0014\u001a\u00020\bH\u0002J*\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010 \u001a\u00020\b2\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\b2\u0006\u0010\"\u001a\u00020\bH\u0002J,\u0010(\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010&\u001a\u00020%2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004H\u0002J\u001e\u0010)\u001a\u00020\u00162\u0006\u0010&\u001a\u00020%2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004H\u0002J\u001e\u0010*\u001a\u00020\u00162\u0006\u0010&\u001a\u00020%2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004H\u0002J\u001e\u0010+\u001a\u00020\u00162\u0006\u0010&\u001a\u00020%2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004H\u0002J\u001e\u0010,\u001a\u00020\u00162\u0006\u0010&\u001a\u00020%2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004H\u0002J,\u00101\u001a\u00020#2\u0012\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020#0-2\u0006\u0010/\u001a\u00020#2\u0006\u00100\u001a\u00020#H\u0002J\u001e\u00102\u001a\u00020\u00162\u0006\u0010&\u001a\u00020%2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004H\u0002J,\u00104\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u00103\u001a\u00020\u00112\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0014\u001a\u00020\bH\u0002J\b\u00105\u001a\u00020\bH\u0002J\u0010\u00106\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u00107\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u00108\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u00109\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u001a\u0010=\u001a\u00020\b8\u0006X\u0086D¢\u0006\f\n\u0004\b(\u0010:\u001a\u0004\b;\u0010<R\"\u0010D\u001a\u00020>8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b1\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010C¨\u0006G"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/BasePBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;", "pbDataContext", "", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "argsList", "", "", "revisionIdList", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;", "Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;", "l", GoogleApiAvailabilityLight.f29016b, "list", "u", "Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;", "virtualPagePBDocument", "virtualPageModels", "documentId", CouchFieldKey.KEY_REVISION_ID, "", "s", "q", "r", "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;", "exportNoteArgs", "i", C4921e.f26537n, "j", C6998g.f39679a, "dirPath", "virtualPageModel", CouchFieldKey.KEY_TOC_PAGE_ID, "Ljava/nio/file/Path;", "p", "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;", "copyNoteArgs", "virtualModels", "a", "t", "d", C6997f.f39671c, "c", "", "copiedPathMap", "origin", "dst", "b", "e", "pbDocument", "m", C4921e.f26528e, "exportToPBFromDB", "exportToDBFromPB", "exportToNote", "copyPBDataToDB", Constants.STRING_SIG, "getTEMPLATE_LOG", "()Ljava/lang/String;", "TEMPLATE_LOG", "", "I", "getType", "()I", "setType", "(I)V", "type", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nVirtualPagePBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VirtualPagePBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,591:1\n1855#2,2:592\n766#2:594\n857#2,2:595\n1549#2:598\n1620#2,3:599\n1855#2,2:602\n1855#2,2:604\n766#2:606\n857#2,2:607\n1855#2,2:609\n766#2:611\n857#2,2:612\n1855#2,2:614\n1855#2,2:616\n1855#2,2:618\n1855#2,2:620\n1855#2,2:622\n1855#2,2:624\n1179#2,2:626\n1253#2,4:628\n1179#2,2:633\n1253#2,4:635\n1855#2,2:640\n766#2:642\n857#2,2:643\n1855#2,2:645\n1045#2:647\n1549#2:648\n1620#2,3:649\n1#3:597\n215#4:632\n216#4:639\n*S KotlinDebug\n*F\n+ 1 VirtualPagePBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData\n*L\n228#1:592,2\n241#1:594\n241#1:595,2\n243#1:598\n243#1:599,3\n251#1:602,2\n254#1:604,2\n264#1:606\n264#1:607,2\n265#1:609,2\n306#1:611\n306#1:612,2\n307#1:614,2\n325#1:616,2\n369#1:618,2\n408#1:620,2\n418#1:622,2\n421#1:624,2\n429#1:626,2\n429#1:628,4\n468#1:633,2\n468#1:635,4\n473#1:640,2\n530#1:642\n530#1:643,2\n531#1:645,2\n585#1:647\n220#1:648\n220#1:649,3\n466#1:632\n466#1:639\n*E\n"})
/* loaded from: classes8.dex */
public final class VirtualPagePBData extends BasePBData {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String TEMPLATE_LOG = "template_log";

    /* renamed from: b, reason: from kotlin metadata */
    public int type = 7;

    /* renamed from: h */
    public static final void m35531h(List<String> list, VirtualPagePBData virtualPagePBData, ExportNoteArgs exportNoteArgs, String str, VirtualPagePBDocument virtualPagePBDocument, List<VirtualPageModel> list2) {
        int collectionSizeOrDefault;
        List<String> list3 = list;
        List<VirtualPageModel> list4 = list2;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list4, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list4.iterator();
        while (it2.hasNext()) {
            arrayList.add(((VirtualPageModel) it2.next()).getUniqueId());
        }
        CollectionKt.safeAddAll(list3, arrayList);
        virtualPagePBData.m35539i(exportNoteArgs, list2, str);
        virtualPagePBData.m35541k(exportNoteArgs, list2, str);
        virtualPagePBData.m35538g(exportNoteArgs, list2, str);
        virtualPagePBData.m35540j(exportNoteArgs, list2);
        virtualPagePBData.m35549s(virtualPagePBDocument, list2, str, virtualPagePBData.m35545o());
    }

    /* renamed from: a */
    public final List<VirtualPageModel> m35532a(PBDataContext pbDataContext, CopyNoteArgs copyNoteArgs, List<VirtualPageModel> virtualModels) {
        List<VirtualPageModel> mutableList;
        Integer copyToPageIndex = copyNoteArgs.getCopyToPageIndex();
        if (copyToPageIndex == null) {
            return virtualModels;
        }
        int intValue = copyToPageIndex.intValue();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) pbDataContext.getNoteProviderHolder().getVirtualModelProvider().loadVirtualPageModelList());
        mutableList.addAll(Math.min(intValue, CollectionKt.getSize(mutableList)), virtualModels);
        VirtualPageModel.INSTANCE.reorderIndexByListIndex(mutableList);
        return mutableList;
    }

    /* renamed from: b */
    public final Path m35533b(Map<String, Path> copiedPathMap, Path origin, Path dst) {
        FileUtils fileUtils = FileUtils.INSTANCE;
        String fileName = fileUtils.getFileName(origin.toAbsolutePath().toString());
        String str = origin.toAbsolutePath().toString() + Files.size(origin);
        if (Files.exists(dst, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0)) && Files.size(dst) != Files.size(origin)) {
            if (copiedPathMap.containsKey(str)) {
                Path path = copiedPathMap.get(str);
                Intrinsics.checkNotNull(path);
                return path;
            }
            Path parent = dst.getParent();
            try {
                Intrinsics.checkNotNull(parent);
                String obj = parent.toAbsolutePath().toString();
                String baseName = FilenameUtils.getBaseName(fileName);
                Intrinsics.checkNotNullExpressionValue(baseName, "getBaseName(...)");
                String extension = FilenameUtils.getExtension(fileName);
                Intrinsics.checkNotNullExpressionValue(extension, "getExtension(...)");
                fileName = FileUtils.generateUniqueFileName$default(fileUtils, obj, baseName, extension, 0, null, 24, null);
            } catch (Exception e) {
                e.printStackTrace();
            }
            Paths paths = Paths.INSTANCE;
            Intrinsics.checkNotNull(parent);
            dst = paths.append(parent, fileName);
        }
        if (Paths.copyFile$default(Paths.INSTANCE, origin, dst, false, 2, null)) {
            copiedPathMap.put(str, dst);
        }
        return dst;
    }

    /* renamed from: c */
    public final void m35534c(final CopyNoteArgs copyNoteArgs, List<VirtualPageModel> virtualPageModels) {
        ExportPdfPagesResult exportPdfPagesResult;
        String str;
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        Map<String, String> mutableMap;
        ExportPdfPagesResult.Companion companion = ExportPdfPagesResult.INSTANCE;
        ExtraInfoBean extraInfoBean = copyNoteArgs.getExtraInfoBean();
        Map<String, ExportPdfPagesResult> parse = companion.parse(extraInfoBean != null ? extraInfoBean.getExportPdfPagesResult() : null);
        if (parse != null) {
            for (Map.Entry<String, ExportPdfPagesResult> entry : parse.entrySet()) {
                ExportPdfPagesResult value = entry.getValue();
                Set<Map.Entry<String, String>> entrySet = entry.getValue().getContentPageIdMap().entrySet();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(entrySet, 10);
                mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
                LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
                Iterator<T> it2 = entrySet.iterator();
                while (it2.hasNext()) {
                    Map.Entry entry2 = (Map.Entry) it2.next();
                    Pair m61535to = TuplesKt.m61535to((String) entry2.getValue(), (String) entry2.getKey());
                    linkedHashMap.put(m61535to.getFirst(), m61535to.getSecond());
                }
                mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
                value.setContentPageIdMap(mutableMap);
            }
        }
        final LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        final LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        for (VirtualPageModel virtualPageModel : virtualPageModels) {
            VirtualPageModel.Companion companion2 = VirtualPageModel.INSTANCE;
            String loadContentResourceRelativePath = companion2.loadContentResourceRelativePath(virtualPageModel);
            if (loadContentResourceRelativePath != null) {
                ResourcePaths resourcePaths = ResourcePaths.INSTANCE;
                String srcDirFilePath = copyNoteArgs.getSrcDirFilePath();
                String srcDocId = copyNoteArgs.getSrcDocId();
                FileUtils fileUtils = FileUtils.INSTANCE;
                final Path docResourceContentFilePath = resourcePaths.docResourceContentFilePath(srcDirFilePath, srcDocId, fileUtils.getFileName(loadContentResourceRelativePath));
                if (Files.exists(docResourceContentFilePath, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                    final String obj = resourcePaths.appDocResourceContentFilePath(copyNoteArgs.getDstDocId(), fileUtils.getFileName(docResourceContentFilePath.toAbsolutePath().toString())).toAbsolutePath().toString();
                    Path path = (Path) AnyKt.transform(Paths.INSTANCE.toPath(obj), new Function1<Path, Path>() { // from class: com.onyx.android.sdk.replicator.note.proto.pb.VirtualPagePBData$copyVirtualPageContentResource$2$dstPath$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        public final Path invoke(@NotNull Path it3) {
                            Path m35533b;
                            Intrinsics.checkNotNullParameter(it3, "it");
                            boolean exists = Files.exists(it3, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0));
                            if (!linkedHashMap3.containsKey(obj)) {
                                linkedHashMap3.put(obj, Boolean.valueOf(exists));
                            }
                            if (exists && !copyNoteArgs.getGenerateUniqueContentFile()) {
                                return it3;
                            }
                            m35533b = this.m35533b(linkedHashMap2, docResourceContentFilePath, it3);
                            return m35533b;
                        }
                    });
                    if (!copyNoteArgs.getGenerateUniqueContentFile() && Intrinsics.areEqual(linkedHashMap3.get(obj), Boolean.TRUE) && parse != null && (exportPdfPagesResult = parse.get(path.toAbsolutePath().toString())) != null && (str = exportPdfPagesResult.getContentPageIdMap().get(virtualPageModel.getContentPageId())) != null) {
                        virtualPageModel.setContentPageId(str);
                    }
                    companion2.updateContentResourceRelativePath(virtualPageModel, AppFilePaths.INSTANCE.filesDirRelativePath(path.toAbsolutePath().toString()));
                }
            }
        }
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void copyPBDataToDB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        CopyNoteArgs copyNoteArgs = pbDataContext.getCopyNoteArgs();
        if (copyNoteArgs == null) {
            return;
        }
        VirtualPagePBDocument virtualPagePBDocument = new VirtualPagePBDocument();
        virtualPagePBDocument.setPbDirPath(copyNoteArgs.getSrcDirFilePath());
        List<PBDocumentArgs> loadDocPBArgsList = PBDocumentUtils.INSTANCE.loadDocPBArgsList(virtualPagePBDocument.getPBFileDirPath(copyNoteArgs.getSrcDocId()));
        Debug.INSTANCE.m32035d(VirtualPagePBData.class, "copyPBDataToDB argsList size: " + loadDocPBArgsList.size(), new Object[0]);
        if (loadDocPBArgsList.isEmpty()) {
            return;
        }
        String m35545o = m35545o();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List<VirtualPageModel> m35543m = m35543m(virtualPagePBDocument, loadDocPBArgsList, copyNoteArgs.getSrcDocId());
        for (VirtualPageModel virtualPageModel : m35543m) {
            String uniqueId = virtualPageModel.getUniqueId();
            String rawUUID = UUIDUtils.INSTANCE.rawUUID();
            virtualPageModel.setUniqueId(rawUUID);
            virtualPageModel.setRevisionId(m35545o);
            linkedHashMap.put(uniqueId, rawUUID);
        }
        copyNoteArgs.setPageIdCopyMap(linkedHashMap);
        List<VirtualPageModel> m35532a = m35532a(pbDataContext, copyNoteArgs, m35543m);
        m35550t(copyNoteArgs, m35543m);
        m35535d(copyNoteArgs, m35543m);
        m35537f(copyNoteArgs, m35543m);
        m35534c(copyNoteArgs, m35543m);
        m35536e(copyNoteArgs, m35543m);
        virtualPagePBDocument.setPbDirPath(copyNoteArgs.getDstDirFilePath());
        m35549s(virtualPagePBDocument, m35532a, copyNoteArgs.getDstDocId(), m35545o);
        pbDataContext.getNoteProviderHolder().getVirtualModelProvider().saveVirtualPageList(m35532a);
        m35548r(pbDataContext, copyNoteArgs.getDstDocId(), m35545o);
    }

    /* renamed from: d */
    public final void m35535d(CopyNoteArgs copyNoteArgs, List<VirtualPageModel> virtualModels) {
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet();
        Iterator<T> it2 = virtualModels.iterator();
        while (it2.hasNext()) {
            CollectionKt.safeAdd(linkedHashSet, ((VirtualPageModel) it2.next()).getMarginTemplateResourceId());
        }
        for (String str : linkedHashSet) {
            TemplatePaths templatePaths = TemplatePaths.INSTANCE;
            Paths.copyFile$default(Paths.INSTANCE, templatePaths.docPageMarginTemplateJsonPath(copyNoteArgs.getSrcDirFilePath(), copyNoteArgs.getSrcDocId(), str), templatePaths.docPageMarginTemplateJsonPath(SyncConstant.INSTANCE.appDocDir(), copyNoteArgs.getDstDocId(), str), false, 2, null);
        }
    }

    /* renamed from: e */
    public final void m35536e(CopyNoteArgs copyNoteArgs, List<VirtualPageModel> virtualPageModels) {
        boolean startsWith$default;
        boolean startsWith$default2;
        ArrayList<VirtualPageModel> arrayList = new ArrayList();
        for (Object obj : virtualPageModels) {
            if (true ^ ContentConstants.INSTANCE.isImportPDF(((VirtualPageModel) obj).getContentType())) {
                arrayList.add(obj);
            }
        }
        for (VirtualPageModel virtualPageModel : arrayList) {
            String loadContentResourceRelativePath = VirtualPageModel.INSTANCE.loadContentResourceRelativePath(virtualPageModel);
            if (loadContentResourceRelativePath == null && Intrinsics.areEqual(virtualPageModel.getContentType(), "pdf")) {
                loadContentResourceRelativePath = virtualPageModel.getContentRelativePath();
            }
            if (loadContentResourceRelativePath != null) {
                Paths paths = Paths.INSTANCE;
                String obj2 = paths.append(CommonPaths.INSTANCE.docDir(copyNoteArgs.getSrcDirFilePath(), copyNoteArgs.getSrcDocId()), loadContentResourceRelativePath).toAbsolutePath().toString();
                FileUtils fileUtils = FileUtils.INSTANCE;
                if (!fileUtils.isFileExist(obj2)) {
                    obj2 = ResourcePaths.INSTANCE.docResourceContentFilePath(copyNoteArgs.getSrcDirFilePath(), copyNoteArgs.getSrcDocId(), fileUtils.getFileName(loadContentResourceRelativePath)).toAbsolutePath().toString();
                }
                String docTemplateResAbsolutePath = TemplatePaths.INSTANCE.docTemplateResAbsolutePath(loadContentResourceRelativePath, copyNoteArgs.getDstDocId());
                startsWith$default = StringsKt__StringsJVMKt.startsWith$default(loadContentResourceRelativePath, "document", false, 2, null);
                if (startsWith$default) {
                    docTemplateResAbsolutePath = ResourcePaths.INSTANCE.appDocResourceContentFilePath(copyNoteArgs.getDstDocId(), fileUtils.getFileName(obj2)).toAbsolutePath().toString();
                }
                if (!fileUtils.isFileExist(docTemplateResAbsolutePath) && fileUtils.isFileExist(obj2)) {
                    paths.copyFile(paths.toPath(obj2), paths.toPath(docTemplateResAbsolutePath), true);
                    startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(loadContentResourceRelativePath, "document", false, 2, null);
                    if (startsWith$default2 && ContentConstants.INSTANCE.isPDF(virtualPageModel.getContentType())) {
                        virtualPageModel.setContentRelativePath(AppFilePaths.INSTANCE.filesDirRelativePath(docTemplateResAbsolutePath));
                    }
                }
            }
        }
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToDBFromPB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        String documentId = pbDataContext.getDocumentId();
        List<PBDocumentArgs> loadDocPBArgsList = PBDocumentUtils.INSTANCE.loadDocPBArgsList(new VirtualPagePBDocument().getPBFileDirPath(documentId));
        if (loadDocPBArgsList.isEmpty()) {
            return;
        }
        Pair<List<VirtualPageModel>, List<PBDocRecordModel>> m35542l = m35542l(pbDataContext, loadDocPBArgsList, loadRevisions(loadDocPBArgsList));
        pbDataContext.getNoteProviderHolder().getVirtualModelProvider().saveVirtualPageList(m35542l.getFirst());
        pbDataContext.getNoteProviderHolder().getPbDocRecordProvider().saveRecordList(m35542l.getSecond());
        Debug.INSTANCE.m32052i(VirtualPagePBData.class, "documentId = " + documentId + ", exportToDBFromPB count: " + m35542l.getFirst().size(), new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToNote(@NotNull PBDataContext pbDataContext) {
        List<VirtualPageModel> emptyList;
        long loadVirtualPageCount;
        String str;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        final ExportNoteArgs exportNoteArgs = pbDataContext.getExportNoteArgs();
        if (exportNoteArgs == null) {
            return;
        }
        final String documentId = pbDataContext.getDocumentId();
        final VirtualPagePBDocument virtualPagePBDocument = new VirtualPagePBDocument();
        virtualPagePBDocument.setPbDirPath(exportNoteArgs.getExportDirPath());
        List<String> pageIdList = exportNoteArgs.getPageIdList();
        if (pageIdList == null) {
            return;
        }
        VirtualModelProvider virtualModelProvider = pbDataContext.getNoteProviderHolder().getVirtualModelProvider();
        CBQueryArgs loadValidVirtualPageQuery = VirtualPageQueryArgsKt.loadValidVirtualPageQuery();
        long loadVirtualPageCount2 = virtualModelProvider.loadVirtualPageCount(VirtualPageQueryArgsKt.loadEnabledVirtualPageQuery());
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        if (pageIdList.isEmpty()) {
            LogUtils.file(AnyKt.toSimpleNameString(this), "virtual page exportToNote detect exportNoteArgs empty pageIds");
            loadVirtualPageCount = 0;
        } else {
            if (!exportNoteArgs.getExportRemovedPages()) {
                loadValidVirtualPageQuery = VirtualPageQueryArgsKt.loadVirtualPageById(pageIdList);
            }
            loadVirtualPageCount = virtualModelProvider.loadVirtualPageCount(loadValidVirtualPageQuery);
        }
        if (loadVirtualPageCount <= 0) {
            LogUtils.file(AnyKt.toSimpleNameString(this), "virtual page exportToNote detect empty virtualPageModels load from db by pageIds:" + pageIdList.size());
            loadValidVirtualPageQuery = VirtualPageQueryArgsKt.loadValidVirtualPageQuery();
            loadVirtualPageCount = virtualModelProvider.loadVirtualPageCount(loadValidVirtualPageQuery);
        }
        long j = loadVirtualPageCount;
        CBQueryArgs cBQueryArgs = loadValidVirtualPageQuery;
        if (j <= 0) {
            LogUtils.file(AnyKt.toSimpleNameString(this), "virtual page exportToNote detect empty virtualPageModels load from db with all");
            VirtualPagePBDocument virtualPagePBDocument2 = new VirtualPagePBDocument();
            emptyList = m35543m(virtualPagePBDocument2, PBDocumentUtils.INSTANCE.loadDocPBArgsList(virtualPagePBDocument2.getPBFileDirPath(documentId)), documentId);
            j = emptyList.size();
        }
        final ArrayList arrayList = new ArrayList();
        if (CollectionKt.isNonBlank(emptyList)) {
            Iterator it2 = CollectionKt.split(emptyList, 5000).iterator();
            while (it2.hasNext()) {
                m35531h(arrayList, this, exportNoteArgs, documentId, virtualPagePBDocument, (List) it2.next());
            }
            str = documentId;
        } else {
            str = documentId;
            virtualModelProvider.loadVirtualPageModelListInBatch(cBQueryArgs, new Function1<List<? extends VirtualPageModel>, Unit>() { // from class: com.onyx.android.sdk.replicator.note.proto.pb.VirtualPagePBData$exportToNote$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(List<? extends VirtualPageModel> list) {
                    invoke2((List<VirtualPageModel>) list);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull List<VirtualPageModel> it3) {
                    Intrinsics.checkNotNullParameter(it3, "it");
                    VirtualPagePBData.m35531h(arrayList, this, exportNoteArgs, documentId, virtualPagePBDocument, it3);
                }
            });
        }
        if (j == loadVirtualPageCount2 || exportNoteArgs.getExportRemovedPages()) {
            pageIdList = arrayList;
        } else if (j > pageIdList.size()) {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                if (pageIdList.contains((String) obj)) {
                    arrayList2.add(obj);
                }
            }
            if (arrayList2.isEmpty()) {
                arrayList2 = arrayList;
            }
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
            pageIdList = new ArrayList<>(collectionSizeOrDefault);
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                pageIdList.add((String) it3.next());
            }
        }
        exportNoteArgs.setPageIdList(pageIdList);
        Debug.INSTANCE.m32052i(VirtualPagePBData.class, "documentId = " + str + ", virtual model exportPB count: " + pageIdList.size(), new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToPBFromDB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        String documentId = pbDataContext.getDocumentId();
        List<VirtualPageModel> m35544n = m35544n(pbDataContext);
        if (m35544n.isEmpty()) {
            return;
        }
        String m35551u = m35551u(m35544n);
        m35549s(new VirtualPagePBDocument(), m35544n, documentId, m35551u);
        m35547q(pbDataContext, m35551u);
        pbDataContext.getNoteProviderHolder().getVirtualModelProvider().saveVirtualPageList(m35544n);
        Debug.INSTANCE.m32052i(VirtualPagePBData.class, "documentId = " + documentId + ", save virtual page to pb count: " + m35544n.size(), new Object[0]);
    }

    /* renamed from: f */
    public final void m35537f(CopyNoteArgs copyNoteArgs, List<VirtualPageModel> virtualModels) {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        Path append;
        Set<Map.Entry<String, String>> entrySet = copyNoteArgs.getPageIdCopyMap().entrySet();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(entrySet, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        Iterator<T> it2 = entrySet.iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            Pair m61535to = TuplesKt.m61535to(entry.getValue(), entry.getKey());
            linkedHashMap.put(m61535to.getFirst(), m61535to.getSecond());
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (VirtualPageModel virtualPageModel : virtualModels) {
            String str = (String) linkedHashMap.get(virtualPageModel.getUniqueId());
            if (str != null) {
                String uniqueId = virtualPageModel.getUniqueId();
                Path m35546p = m35546p(copyNoteArgs.getSrcDirFilePath(), virtualPageModel, copyNoteArgs.getSrcDocId(), str);
                if (m35546p != null) {
                    if (Files.notExists(m35546p, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                        m35546p = Paths.INSTANCE.toPath(AppFilePaths.INSTANCE.filesDirAbsolutePath(virtualPageModel.getContentRelativePath()));
                    }
                    String contentRelativePath = virtualPageModel.getContentRelativePath();
                    String str2 = (String) linkedHashMap2.get(contentRelativePath);
                    if (str2 != null) {
                        append = Paths.INSTANCE.append(TemplatePaths.INSTANCE.docTemplateJsonDir(SyncConstant.INSTANCE.appDocDir(), copyNoteArgs.getDstDocId()), FilenameUtils.getName(str2));
                    } else {
                        append = m35546p(SyncConstant.INSTANCE.appDocDir(), virtualPageModel, copyNoteArgs.getDstDocId(), uniqueId);
                        if (append == null) {
                        }
                    }
                    Path path = append;
                    virtualPageModel.setContentRelativePath(ContentPaths.INSTANCE.contentRelativePath(virtualPageModel.getContentType(), path.toAbsolutePath().toString()));
                    if (!Files.exists(path, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                        linkedHashMap2.put(contentRelativePath, virtualPageModel.getContentRelativePath());
                        if (!Paths.copyFile$default(Paths.INSTANCE, m35546p, path, false, 2, null)) {
                            LogUtils.file(this.TEMPLATE_LOG, "copy template fail; srcPath is notExists:" + Files.notExists(m35546p, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0)) + ";dstPath is exists:" + Files.exists(path, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0)) + "src doc id:" + copyNoteArgs.getSrcDocId() + "; page id:" + str + "srcPath:" + m35546p + "dst doc id:" + copyNoteArgs.getDstDocId() + "; page id:" + uniqueId);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: g */
    public final void m35538g(ExportNoteArgs exportNoteArgs, List<VirtualPageModel> virtualPageModels, String documentId) {
        String str;
        for (VirtualPageModel virtualPageModel : virtualPageModels) {
            String loadContentResourceRelativePath = VirtualPageModel.INSTANCE.loadContentResourceRelativePath(virtualPageModel);
            if (loadContentResourceRelativePath != null) {
                Paths paths = Paths.INSTANCE;
                Path path = paths.toPath(AppFilePaths.INSTANCE.filesDirAbsolutePath(loadContentResourceRelativePath));
                if (!Files.exists(path, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                    path = paths.toPath(TemplatePaths.INSTANCE.templateResAbsolutePath(loadContentResourceRelativePath, documentId));
                }
                if (Files.exists(path, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                    Path docResourceContentFilePath = ResourcePaths.INSTANCE.docResourceContentFilePath(exportNoteArgs.getExportDirPath(), exportNoteArgs.getDocumentId(), FileUtils.INSTANCE.getFileName(path.toAbsolutePath().toString()));
                    ExportPdfPagesResult exportPdfPagesResult = exportNoteArgs.getExportPdfPagesResult().get(path.toAbsolutePath().toString());
                    if (exportPdfPagesResult != null && (str = exportPdfPagesResult.getContentPageIdMap().get(virtualPageModel.getContentPageId())) != null) {
                        virtualPageModel.setContentPageId(str);
                        path = paths.toPath(exportPdfPagesResult.getExportPath());
                    }
                    if (!Files.exists(docResourceContentFilePath, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                        Paths.copyFile$default(paths, path, docResourceContentFilePath, false, 2, null);
                    }
                }
            }
        }
    }

    @NotNull
    public final String getTEMPLATE_LOG() {
        return this.TEMPLATE_LOG;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public int getType() {
        return this.type;
    }

    /* renamed from: i */
    public final void m35539i(ExportNoteArgs exportNoteArgs, List<VirtualPageModel> virtualPageModels, String documentId) {
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet();
        Iterator<T> it2 = virtualPageModels.iterator();
        while (it2.hasNext()) {
            CollectionKt.safeAdd(linkedHashSet, ((VirtualPageModel) it2.next()).getMarginTemplateResourceId());
        }
        for (String str : linkedHashSet) {
            TemplatePaths templatePaths = TemplatePaths.INSTANCE;
            Paths.copyFile$default(Paths.INSTANCE, templatePaths.docPageMarginTemplateJsonPath(SyncConstant.INSTANCE.appDocDir(), documentId, str), templatePaths.docPageMarginTemplateJsonPath(exportNoteArgs.getExportDirPath(), documentId, str), false, 2, null);
        }
    }

    /* renamed from: j */
    public final void m35540j(ExportNoteArgs exportNoteArgs, List<VirtualPageModel> virtualPageModels) {
        String documentId = exportNoteArgs.getDocumentId();
        ArrayList<VirtualPageModel> arrayList = new ArrayList();
        Iterator<T> it2 = virtualPageModels.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (exportNoteArgs.getExportTemplate() && !ContentConstants.INSTANCE.isImportPDF(((VirtualPageModel) next).getContentType())) {
                arrayList.add(next);
            }
        }
        for (VirtualPageModel virtualPageModel : arrayList) {
            String loadContentResourceRelativePath = VirtualPageModel.INSTANCE.loadContentResourceRelativePath(virtualPageModel);
            if (loadContentResourceRelativePath == null) {
                loadContentResourceRelativePath = virtualPageModel.getContentRelativePath();
            }
            String templateResAbsolutePath = TemplatePaths.INSTANCE.templateResAbsolutePath(loadContentResourceRelativePath, documentId);
            Paths paths = Paths.INSTANCE;
            String obj = paths.append(CommonPaths.INSTANCE.docDir(exportNoteArgs.getExportDirPath(), documentId), loadContentResourceRelativePath).toAbsolutePath().toString();
            FileUtils fileUtils = FileUtils.INSTANCE;
            if (!fileUtils.isFileExist(obj) && fileUtils.isFileExist(templateResAbsolutePath)) {
                paths.copyFile(paths.toPath(templateResAbsolutePath), paths.toPath(obj), true);
            }
        }
    }

    /* renamed from: k */
    public final void m35541k(ExportNoteArgs exportNoteArgs, List<VirtualPageModel> virtualPageModels, String documentId) {
        TemplateModel loadTemplateListById;
        GeoLayout loadGeoLayoutFromTemplateModel$default;
        Integer fillColor;
        TemplateProvider userTemplateProvider = KSyncBundle.INSTANCE.getUserTemplateProvider();
        ArrayList<VirtualPageModel> arrayList = new ArrayList();
        for (Object obj : virtualPageModels) {
            if (Intrinsics.areEqual(((VirtualPageModel) obj).getContentType(), ContentConstants.TYPE_GEO_LAYOUT)) {
                arrayList.add(obj);
            }
        }
        for (VirtualPageModel virtualPageModel : arrayList) {
            Paths paths = Paths.INSTANCE;
            Path append = paths.append(TemplatePaths.INSTANCE.docTemplateJsonDir(exportNoteArgs.getExportDirPath(), documentId), FilenameUtils.getName(virtualPageModel.getContentRelativePath()));
            int i = 0;
            if (!Files.exists(append, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                Path path = paths.toPath(AppFilePaths.INSTANCE.filesDirAbsolutePath(virtualPageModel.getContentRelativePath()));
                if (Files.exists(path, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0)) || (path = m35546p(SyncConstant.INSTANCE.appDocDir(), virtualPageModel, documentId, virtualPageModel.getUniqueId())) != null) {
                    Path path2 = path;
                    if (exportNoteArgs.getExportTemplate()) {
                        Paths.copyFile$default(paths, path2, append, false, 2, null);
                        Path m35546p = m35546p(exportNoteArgs.getExportDirPath(), virtualPageModel, documentId, virtualPageModel.getUniqueId());
                        if (m35546p != null) {
                            Paths.copyFile$default(paths, path2, m35546p, false, 2, null);
                        }
                    } else {
                        virtualPageModel.resetTemplateData();
                        if (!ContentConstants.INSTANCE.isPDF(virtualPageModel.getContentType())) {
                            FileUtils fileUtils = FileUtils.INSTANCE;
                            GeoLayout parseGeoLayout = GeoFactory.INSTANCE.parseGeoLayout(fileUtils.readContentOfFileSafely(path2.toAbsolutePath().toString()));
                            if (parseGeoLayout != null && (fillColor = parseGeoLayout.getFillColor()) != null) {
                                i = fillColor.intValue();
                            }
                            if (i != 0 && (loadTemplateListById = userTemplateProvider.loadTemplateListById(virtualPageModel.getContentId())) != null && (loadGeoLayoutFromTemplateModel$default = TemplateModel.Companion.loadGeoLayoutFromTemplateModel$default(TemplateModel.INSTANCE, loadTemplateListById, null, false, 3, null)) != null) {
                                FillAttr fillAttr = loadGeoLayoutFromTemplateModel$default.getProperties().getFillAttr();
                                if (fillAttr != null) {
                                    fillAttr.setColor(i);
                                }
                                String json = JSONUtils.INSTANCE.toJson(loadGeoLayoutFromTemplateModel$default);
                                if (json != null) {
                                    byte[] bytes = json.getBytes(Charsets.UTF_8);
                                    Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                                    fileUtils.copyInputStreamToFile(new ByteArrayInputStream(bytes), paths.asFile(append));
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: l */
    public final Pair<List<VirtualPageModel>, List<PBDocRecordModel>> m35542l(PBDataContext pbDataContext, List<PBDocumentArgs> argsList, List<String> revisionIdList) {
        List<String> list;
        PBDocRecordModel pBDocRecordModel;
        List<VirtualPageModel> fromProtoList;
        VirtualPagePBDocument virtualPagePBDocument = new VirtualPagePBDocument();
        String documentId = pbDataContext.getDocumentId();
        ArrayList arrayList = new ArrayList();
        PBDocRecordProvider pbDocRecordProvider = pbDataContext.getNoteProviderHolder().getPbDocRecordProvider();
        list = CollectionsKt___CollectionsKt.toList(revisionIdList);
        Map<String, PBDocRecordModel> loadRecordModelMap = pbDocRecordProvider.loadRecordModelMap(documentId, list);
        ArrayList arrayList2 = new ArrayList();
        for (PBDocumentArgs pBDocumentArgs : argsList) {
            String revisionId = pBDocumentArgs.getRevisionId();
            if (revisionId != null && ((pBDocRecordModel = loadRecordModelMap.get(revisionId)) == null || !pBDocRecordModel.isSynced())) {
                pBDocumentArgs.setDocumentId(documentId);
                VirtualDocPageProto.VirtualPageList data = virtualPagePBDocument.setArgs(pBDocumentArgs).load().getData();
                if (data != null && (fromProtoList = VirtualPagePBDocument.INSTANCE.fromProtoList(data, revisionId)) != null) {
                    arrayList.addAll(fromProtoList);
                    PBDocRecordModel pBDocRecordModel2 = new PBDocRecordModel();
                    pBDocRecordModel2.setUniqueId(revisionId);
                    pBDocRecordModel2.setDocumentId(documentId);
                    pBDocRecordModel2.setStatus(1);
                    arrayList2.add(pBDocRecordModel2);
                }
            }
        }
        return new Pair<>(arrayList, arrayList2);
    }

    /* renamed from: m */
    public final List<VirtualPageModel> m35543m(VirtualPagePBDocument pbDocument, List<PBDocumentArgs> argsList, String documentId) {
        List list;
        List<VirtualPageModel> sortedWith;
        List<VirtualPageModel> fromProtoList;
        List<VirtualPageModel> list2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (argsList.isEmpty()) {
            list2 = CollectionsKt___CollectionsKt.toList(linkedHashMap.values());
            return list2;
        }
        for (PBDocumentArgs pBDocumentArgs : argsList) {
            String revisionId = pBDocumentArgs.getRevisionId();
            if (revisionId != null) {
                pBDocumentArgs.setDocumentId(documentId);
                VirtualDocPageProto.VirtualPageList data = pbDocument.setArgs(pBDocumentArgs).load().getData();
                if (data != null && (fromProtoList = VirtualPagePBDocument.INSTANCE.fromProtoList(data, revisionId)) != null) {
                    for (VirtualPageModel virtualPageModel : fromProtoList) {
                        if (virtualPageModel.getStatus() == 2) {
                            linkedHashMap.remove(virtualPageModel.getUniqueId());
                        } else {
                            linkedHashMap.put(virtualPageModel.getUniqueId(), virtualPageModel);
                        }
                    }
                }
            }
        }
        list = CollectionsKt___CollectionsKt.toList(linkedHashMap.values());
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(list, new Comparator() { // from class: com.onyx.android.sdk.replicator.note.proto.pb.VirtualPagePBData$loadVirtualPageFormPB$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Float.valueOf(((VirtualPageModel) t).getOrderIndex()), Float.valueOf(((VirtualPageModel) t2).getOrderIndex()));
                return compareValues;
            }
        });
        return sortedWith;
    }

    /* renamed from: n */
    public final List<VirtualPageModel> m35544n(PBDataContext pbDataContext) {
        return pbDataContext.getNoteProviderHolder().getVirtualModelProvider().loadVirtualPageModelList(VirtualPageQueryArgsKt.loadEmptyRevisionIdVirtualPageQuery());
    }

    /* renamed from: o */
    public final String m35545o() {
        return UUIDUtils.INSTANCE.timeBasedEpochUUID();
    }

    /* renamed from: p */
    public final Path m35546p(String dirPath, VirtualPageModel virtualPageModel, String documentId, String pageId) {
        if (Intrinsics.areEqual(virtualPageModel.getContentType(), ContentConstants.TYPE_GEO_LAYOUT)) {
            return TemplatePaths.INSTANCE.docPageTemplateJsonPath(dirPath, documentId, pageId);
        }
        return null;
    }

    /* renamed from: q */
    public final void m35547q(PBDataContext pbDataContext, String revisionId) {
        String documentId = pbDataContext.getDocumentId();
        PBDocRecordModel pBDocRecordModel = new PBDocRecordModel();
        pBDocRecordModel.setUniqueId(revisionId);
        pBDocRecordModel.setDocumentId(documentId);
        pBDocRecordModel.setStatus(2);
        pbDataContext.getNoteProviderHolder().getPbDocRecordProvider().saveRecordModel(pBDocRecordModel);
    }

    /* renamed from: r */
    public final void m35548r(PBDataContext pbDataContext, String documentId, String revisionId) {
        PBDocRecordModel pBDocRecordModel = new PBDocRecordModel();
        pBDocRecordModel.setUniqueId(revisionId);
        pBDocRecordModel.setDocumentId(documentId);
        pBDocRecordModel.setStatus(1);
        pbDataContext.getNoteProviderHolder().getPbDocRecordProvider().saveRecordModel(pBDocRecordModel);
    }

    /* renamed from: s */
    public final void m35549s(VirtualPagePBDocument virtualPagePBDocument, List<VirtualPageModel> virtualPageModels, String documentId, String revisionId) {
        if (CollectionKt.isNullOrEmpty(virtualPageModels)) {
            return;
        }
        virtualPagePBDocument.setArgs(new PBDocumentArgs().setDocumentId(documentId).setRevisionId(revisionId)).setData(VirtualPagePBDocument.INSTANCE.toProtoList(virtualPageModels)).save();
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void setType(int i) {
        this.type = i;
    }

    /* renamed from: t */
    public final void m35550t(CopyNoteArgs copyNoteArgs, List<VirtualPageModel> virtualModels) {
        RectF copyPageRect = copyNoteArgs.getCopyPageRect();
        if (!(!RectKt.isNullOrEmpty(copyPageRect))) {
            copyPageRect = null;
        }
        if (copyPageRect == null) {
            return;
        }
        for (VirtualPageModel virtualPageModel : virtualModels) {
            float scaleToWidth = RectFKt.scaleToWidth(virtualPageModel.getPageSize(), copyPageRect);
            RectFKt.scaleRect(virtualPageModel.getPageSizeWithMargin(), scaleToWidth);
            RectFKt.offsetToOrigin(virtualPageModel.getPageSize());
            copyNoteArgs.getCopyPageScaleMap().put(virtualPageModel.getUniqueId(), Float.valueOf(scaleToWidth));
        }
    }

    /* renamed from: u */
    public final String m35551u(List<VirtualPageModel> list) {
        String m35545o = m35545o();
        Iterator<VirtualPageModel> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next().setRevisionId(m35545o);
        }
        return m35545o;
    }
}
