package com.onyx.android.sdk.universal.editor.data;

import android.net.Uri;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.UriKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteListArgs;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0003\n\u0002\b\f\n\u0002\u0010\u0007\n\u0002\b\u0002\u0018\u0000 X2\u00020\u0001:\u0001XB\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010R\u001a\u00020\u0012J\u0006\u0010S\u001a\u00020\u0012J\u0006\u0010T\u001a\u00020\u0005J\b\u0010U\u001a\u0004\u0018\u00010>J\u0006\u0010V\u001a\u00020WR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R \u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001c\u0010#\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001c\u0010(\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010%\"\u0004\b*\u0010'R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u001c\u0010/\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010%\"\u0004\b1\u0010'R\u001c\u00102\u001a\u0004\u0018\u000103X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\"\u00108\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u000109X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\u001b\"\u0004\b;\u0010\u001dR\u001d\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020>0=¢\u0006\b\n\u0000\u001a\u0004\b?\u0010@R\u001c\u0010A\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010,\"\u0004\bC\u0010.R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010%\"\u0004\bE\u0010'R\"\u0010F\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u000109X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010\u001b\"\u0004\bH\u0010\u001dR\u001c\u0010I\u001a\u0004\u0018\u00010JX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010L\"\u0004\bM\u0010NR\u001a\u0010O\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bP\u0010\u0014\"\u0004\bQ\u0010\u0016¨\u0006Y"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;", "", "importFileUri", "Landroid/net/Uri;", CouchFieldKey.KEY_PARENT_ID, "", "(Landroid/net/Uri;Ljava/lang/String;)V", "cloudFileBean", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "getCloudFileBean", "()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "setCloudFileBean", "(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "copyNoteListArgs", "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;", "getCopyNoteListArgs", "()Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;", "deleteSourceOnImported", "", "getDeleteSourceOnImported", Constants.BOOLEAN_VALUE_SIG, "setDeleteSourceOnImported", "(Z)V", "fileList", "", "Ljava/io/File;", "getFileList", "()Ljava/util/List;", "setFileList", "(Ljava/util/List;)V", "importCacheDir", "getImportCacheDir", "()Ljava/io/File;", "setImportCacheDir", "(Ljava/io/File;)V", "importFilePassword", "getImportFilePassword", "()Ljava/lang/String;", "setImportFilePassword", "(Ljava/lang/String;)V", "importFilePath", "getImportFilePath", "setImportFilePath", "getImportFileUri", "()Landroid/net/Uri;", "setImportFileUri", "(Landroid/net/Uri;)V", "importFolderName", "getImportFolderName", "setImportFolderName", "importSelectedContext", "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", "getImportSelectedContext", "()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", "setImportSelectedContext", "(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V", "importTagNameList", "", "getImportTagNameList", "setImportTagNameList", "noteProgressInfoMap", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;", "getNoteProgressInfoMap", "()Ljava/util/concurrent/ConcurrentHashMap;", "originUri", "getOriginUri", "setOriginUri", "getParentId", "setParentId", CouchFieldKey.KEY_TAG_ID_LIST, "getTagIdList", "setTagIdList", "throwable", "", "getThrowable", "()Ljava/lang/Throwable;", "setThrowable", "(Ljava/lang/Throwable;)V", "useOriginParentId", "getUseOriginParentId", "setUseOriginParentId", "allErrorImported", "anySuccessImported", "getImportFileName", "getImportingNote", "getNoteProgress", "", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nNoteImportArgs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteImportArgs.kt\ncom/onyx/android/sdk/universal/editor/data/NoteImportArgs\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,155:1\n526#2:156\n511#2,6:157\n526#2:166\n511#2,6:167\n187#3,3:163\n167#3,3:173\n215#3,2:176\n288#4,2:178\n*S KotlinDebug\n*F\n+ 1 NoteImportArgs.kt\ncom/onyx/android/sdk/universal/editor/data/NoteImportArgs\n*L\n53#1:156\n53#1:157,6\n57#1:166\n57#1:167,6\n53#1:163,3\n57#1:173,3\n67#1:176,2\n74#1:178,2\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteImportArgs {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private CloudFileBean cloudFileBean;

    @NotNull
    private final CopyNoteListArgs copyNoteListArgs;
    private boolean deleteSourceOnImported;

    @NotNull
    private List<File> fileList;

    @NotNull
    private File importCacheDir;

    @Nullable
    private String importFilePassword;

    @Nullable
    private String importFilePath;

    @NotNull
    private Uri importFileUri;

    @Nullable
    private String importFolderName;

    @Nullable
    private ImportSelectedContext importSelectedContext;

    @Nullable
    private List<String> importTagNameList;

    @NotNull
    private final ConcurrentHashMap<String, NoteProgressInfo> noteProgressInfoMap;

    @Nullable
    private Uri originUri;

    @Nullable
    private String parentId;

    @Nullable
    private List<String> tagIdList;

    @Nullable
    private Throwable throwable;
    private boolean useOriginParentId;

    @Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\nJ\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fJ8\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00040\n2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\n2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\nJ\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00040\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\f0\nJ8\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\n2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\n2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\nJ\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\n2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00040\nJ\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\nJ\u0014\u0010\u0016\u001a\u00020\u00172\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\n¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;", "importFileUri", "Landroid/net/Uri;", CouchFieldKey.KEY_PARENT_ID, "", CouchFieldKey.KEY_TAG_ID_LIST, "", "cloudFileBean", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "importFileUris", "list", "createFromDocEntries", "importFileEntries", "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;", "getImportErrorBeanList", "Lcom/onyx/android/sdk/universal/editor/data/ImportErrorBean;", "argsList", "getImportingNoteArgs", "getNoteImportListProgress", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nNoteImportArgs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteImportArgs.kt\ncom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,155:1\n1549#2:156\n1620#2,3:157\n1549#2:160\n1620#2,3:161\n1549#2:165\n1620#2,3:166\n1855#2,2:169\n288#2,2:171\n1855#2:173\n1856#2:176\n1#3:164\n215#4,2:174\n*S KotlinDebug\n*F\n+ 1 NoteImportArgs.kt\ncom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion\n*L\n85#1:156\n85#1:157,3\n95#1:160\n95#1:161,3\n117#1:165\n117#1:166,3\n128#1:169,2\n135#1:171,2\n140#1:173\n140#1:176\n144#1:174,2\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ List create$default(Companion companion, List list, String str, List list2, int i, Object obj) {
            if ((i & 2) != 0) {
                str = null;
            }
            if ((i & 4) != 0) {
                list2 = null;
            }
            return companion.create((List<? extends Uri>) list, str, (List<String>) list2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ List createFromDocEntries$default(Companion companion, List list, String str, List list2, int i, Object obj) {
            if ((i & 2) != 0) {
                str = null;
            }
            if ((i & 4) != 0) {
                list2 = null;
            }
            return companion.createFromDocEntries(list, str, list2);
        }

        @NotNull
        public final List<NoteImportArgs> create(@NotNull List<? extends Uri> importFileUris, @Nullable String parentId, @Nullable List<String> tagIdList) {
            int collectionSizeOrDefault;
            List<NoteImportArgs> list;
            Intrinsics.checkNotNullParameter(importFileUris, "importFileUris");
            List<? extends Uri> list2 = importFileUris;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList.add(NoteImportArgs.INSTANCE.create((Uri) it2.next(), parentId, tagIdList));
            }
            list = CollectionsKt___CollectionsKt.toList(arrayList);
            return list;
        }

        @NotNull
        public final List<NoteImportArgs> createFromDocEntries(@NotNull List<DocumentFileEntry> importFileEntries, @Nullable String parentId, @Nullable List<String> tagIdList) {
            int collectionSizeOrDefault;
            List<NoteImportArgs> list;
            Intrinsics.checkNotNullParameter(importFileEntries, "importFileEntries");
            List<DocumentFileEntry> list2 = importFileEntries;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (DocumentFileEntry documentFileEntry : list2) {
                NoteImportArgs create = NoteImportArgs.INSTANCE.create(documentFileEntry.getFileUri(), parentId, tagIdList);
                create.setImportFilePassword(documentFileEntry.getFilePassword());
                arrayList.add(create);
            }
            list = CollectionsKt___CollectionsKt.toList(arrayList);
            return list;
        }

        @NotNull
        public final List<ImportErrorBean> getImportErrorBeanList(@NotNull List<NoteImportArgs> argsList) {
            Intrinsics.checkNotNullParameter(argsList, "argsList");
            ArrayList arrayList = new ArrayList();
            for (NoteImportArgs noteImportArgs : argsList) {
                if (noteImportArgs.getThrowable() != null) {
                    arrayList.add(new ImportErrorBean(noteImportArgs.getImportFileName(), noteImportArgs.getThrowable()));
                } else if (!noteImportArgs.getNoteProgressInfoMap().isEmpty()) {
                    Iterator<Map.Entry<String, NoteProgressInfo>> it2 = noteImportArgs.getNoteProgressInfoMap().entrySet().iterator();
                    while (it2.hasNext()) {
                        NoteProgressInfo value = it2.next().getValue();
                        if (value.isError()) {
                            String importFileName = value.getImportFileName();
                            if (importFileName == null) {
                                importFileName = noteImportArgs.getImportFileName();
                            }
                            arrayList.add(new ImportErrorBean(importFileName, noteImportArgs.getThrowable()));
                        }
                    }
                }
            }
            return arrayList;
        }

        @Nullable
        public final NoteImportArgs getImportingNoteArgs(@NotNull List<NoteImportArgs> list) {
            Object obj;
            Intrinsics.checkNotNullParameter(list, "list");
            Iterator<T> it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                if (!MathUtils.areApproximatelyEqual$default(MathUtils.INSTANCE, ((NoteImportArgs) obj).getNoteProgress(), 100.0f, 0.0f, 4, null)) {
                    break;
                }
            }
            return (NoteImportArgs) obj;
        }

        public final float getNoteImportListProgress(@NotNull List<NoteImportArgs> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            float f = 0.0f;
            if (list.isEmpty()) {
                return 0.0f;
            }
            float size = 1.0f / CollectionKt.getSize(list);
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                f += ((NoteImportArgs) it2.next()).getNoteProgress() * size;
            }
            return f;
        }

        private Companion() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ NoteImportArgs create$default(Companion companion, Uri uri, String str, List list, int i, Object obj) {
            if ((i & 2) != 0) {
                str = null;
            }
            if ((i & 4) != 0) {
                list = null;
            }
            return companion.create(uri, str, (List<String>) list);
        }

        @NotNull
        public final NoteImportArgs create(@NotNull Uri importFileUri, @Nullable String parentId, @Nullable List<String> tagIdList) {
            Intrinsics.checkNotNullParameter(importFileUri, "importFileUri");
            NoteImportArgs noteImportArgs = new NoteImportArgs(importFileUri, parentId);
            noteImportArgs.setTagIdList(tagIdList);
            return noteImportArgs;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @NotNull
        public final NoteImportArgs create(@NotNull CloudFileBean cloudFileBean) {
            Intrinsics.checkNotNullParameter(cloudFileBean, "cloudFileBean");
            Uri fromFile = Uri.fromFile(new File(""));
            Intrinsics.checkNotNullExpressionValue(fromFile, "fromFile(...)");
            NoteImportArgs noteImportArgs = new NoteImportArgs(fromFile, null, 2, 0 == true ? 1 : 0);
            noteImportArgs.setCloudFileBean(cloudFileBean);
            return noteImportArgs;
        }

        @NotNull
        public final List<NoteImportArgs> create(@NotNull List<CloudFileBean> list) {
            int collectionSizeOrDefault;
            List<NoteImportArgs> list2;
            Intrinsics.checkNotNullParameter(list, "list");
            List<CloudFileBean> list3 = list;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list3.iterator();
            while (it2.hasNext()) {
                arrayList.add(NoteImportArgs.INSTANCE.create((CloudFileBean) it2.next()));
            }
            list2 = CollectionsKt___CollectionsKt.toList(arrayList);
            return list2;
        }
    }

    public NoteImportArgs(@NotNull Uri importFileUri, @Nullable String str) {
        Intrinsics.checkNotNullParameter(importFileUri, "importFileUri");
        this.importFileUri = importFileUri;
        this.parentId = str;
        this.fileList = new ArrayList();
        this.noteProgressInfoMap = new ConcurrentHashMap<>();
        this.importCacheDir = new File(ResManager.INSTANCE.getAppContext().getExternalCacheDir(), UUIDUtils.INSTANCE.rawUUID());
        CopyNoteListArgs copyNoteListArgs = new CopyNoteListArgs();
        String absolutePath = this.importCacheDir.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        copyNoteListArgs.setSrcDirFilePath(absolutePath);
        this.copyNoteListArgs = copyNoteListArgs;
    }

    public final boolean allErrorImported() {
        ConcurrentHashMap<String, NoteProgressInfo> concurrentHashMap = this.noteProgressInfoMap;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, NoteProgressInfo> entry : concurrentHashMap.entrySet()) {
            if (true ^ entry.getValue().getIgnoreResult()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        if (linkedHashMap.isEmpty()) {
            return true;
        }
        Iterator it2 = linkedHashMap.entrySet().iterator();
        while (it2.hasNext()) {
            if (!((NoteProgressInfo) ((Map.Entry) it2.next()).getValue()).isError()) {
                return false;
            }
        }
        return true;
    }

    public final boolean anySuccessImported() {
        ConcurrentHashMap<String, NoteProgressInfo> concurrentHashMap = this.noteProgressInfoMap;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, NoteProgressInfo> entry : concurrentHashMap.entrySet()) {
            if (true ^ entry.getValue().getIgnoreResult()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        if (!linkedHashMap.isEmpty()) {
            Iterator it2 = linkedHashMap.entrySet().iterator();
            while (it2.hasNext()) {
                if (((NoteProgressInfo) ((Map.Entry) it2.next()).getValue()).isSuccess()) {
                    return true;
                }
            }
        }
        return false;
    }

    @Nullable
    public final CloudFileBean getCloudFileBean() {
        return this.cloudFileBean;
    }

    @NotNull
    public final CopyNoteListArgs getCopyNoteListArgs() {
        return this.copyNoteListArgs;
    }

    public final boolean getDeleteSourceOnImported() {
        return this.deleteSourceOnImported;
    }

    @NotNull
    public final List<File> getFileList() {
        return this.fileList;
    }

    @NotNull
    public final File getImportCacheDir() {
        return this.importCacheDir;
    }

    @NotNull
    public final String getImportFileName() {
        CloudFileBean cloudFileBean = this.cloudFileBean;
        return (String) AnyKt.getOrElse(AnyKt.getOrElseNull(cloudFileBean != null ? cloudFileBean.getName() : null, new Function0<String>() { // from class: com.onyx.android.sdk.universal.editor.data.NoteImportArgs$getImportFileName$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final String invoke() {
                ImportSelectedContext importSelectedContext = NoteImportArgs.this.getImportSelectedContext();
                if (importSelectedContext != null) {
                    return importSelectedContext.getModifyFileName();
                }
                return null;
            }
        }), (Function0<? extends Object>) new Function0<String>() { // from class: com.onyx.android.sdk.universal.editor.data.NoteImportArgs$getImportFileName$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                return UriKt.getFileName(NoteImportArgs.this.getImportFileUri(), ResManager.INSTANCE.getAppContext());
            }
        });
    }

    @Nullable
    public final String getImportFilePassword() {
        return this.importFilePassword;
    }

    @Nullable
    public final String getImportFilePath() {
        return this.importFilePath;
    }

    @NotNull
    public final Uri getImportFileUri() {
        return this.importFileUri;
    }

    @Nullable
    public final String getImportFolderName() {
        return this.importFolderName;
    }

    @Nullable
    public final ImportSelectedContext getImportSelectedContext() {
        return this.importSelectedContext;
    }

    @Nullable
    public final List<String> getImportTagNameList() {
        return this.importTagNameList;
    }

    @Nullable
    public final NoteProgressInfo getImportingNote() {
        Object obj;
        Collection<NoteProgressInfo> values = this.noteProgressInfoMap.values();
        Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
        Iterator<T> it2 = values.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            NoteProgressInfo noteProgressInfo = (NoteProgressInfo) obj;
            if (!noteProgressInfo.isError() && noteProgressInfo.getProgressInfo().getProgress() < 100.0d) {
                break;
            }
        }
        return (NoteProgressInfo) obj;
    }

    public final float getNoteProgress() {
        float f = 0.0f;
        if (this.noteProgressInfoMap.isEmpty()) {
            return 0.0f;
        }
        float size = 1.0f / CollectionKt.getSize(this.noteProgressInfoMap);
        Iterator<Map.Entry<String, NoteProgressInfo>> it2 = this.noteProgressInfoMap.entrySet().iterator();
        while (it2.hasNext()) {
            f += ((float) it2.next().getValue().getProgressInfo().getProgress()) * size;
        }
        return f;
    }

    @NotNull
    public final ConcurrentHashMap<String, NoteProgressInfo> getNoteProgressInfoMap() {
        return this.noteProgressInfoMap;
    }

    @Nullable
    public final Uri getOriginUri() {
        return this.originUri;
    }

    @Nullable
    public final String getParentId() {
        return this.parentId;
    }

    @Nullable
    public final List<String> getTagIdList() {
        return this.tagIdList;
    }

    @Nullable
    public final Throwable getThrowable() {
        return this.throwable;
    }

    public final boolean getUseOriginParentId() {
        return this.useOriginParentId;
    }

    public final void setCloudFileBean(@Nullable CloudFileBean cloudFileBean) {
        this.cloudFileBean = cloudFileBean;
    }

    public final void setDeleteSourceOnImported(boolean z) {
        this.deleteSourceOnImported = z;
    }

    public final void setFileList(@NotNull List<File> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.fileList = list;
    }

    public final void setImportCacheDir(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "<set-?>");
        this.importCacheDir = file;
    }

    public final void setImportFilePassword(@Nullable String str) {
        this.importFilePassword = str;
    }

    public final void setImportFilePath(@Nullable String str) {
        this.importFilePath = str;
    }

    public final void setImportFileUri(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "<set-?>");
        this.importFileUri = uri;
    }

    public final void setImportFolderName(@Nullable String str) {
        this.importFolderName = str;
    }

    public final void setImportSelectedContext(@Nullable ImportSelectedContext importSelectedContext) {
        this.importSelectedContext = importSelectedContext;
    }

    public final void setImportTagNameList(@Nullable List<String> list) {
        this.importTagNameList = list;
    }

    public final void setOriginUri(@Nullable Uri uri) {
        this.originUri = uri;
    }

    public final void setParentId(@Nullable String str) {
        this.parentId = str;
    }

    public final void setTagIdList(@Nullable List<String> list) {
        this.tagIdList = list;
    }

    public final void setThrowable(@Nullable Throwable th) {
        this.throwable = th;
    }

    public final void setUseOriginParentId(boolean z) {
        this.useOriginParentId = z;
    }

    public /* synthetic */ NoteImportArgs(Uri uri, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(uri, (i & 2) != 0 ? null : str);
    }
}
