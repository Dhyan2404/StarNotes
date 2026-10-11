package com.onyx.galaxy.note.datarepository.download;

import androidx.annotation.WorkerThread;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.data.common.path.DataRepositoryPaths;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.model.DataRepositoryDownloadRecordModel;
import com.onyx.android.sdk.replicator.note.p035db.model.MaterialAddRecordModel;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.datarepository.action.CheckAndUpdateMaterialAction;
import com.onyx.galaxy.note.datarepository.bean.AttachmentBean;
import com.onyx.galaxy.note.datarepository.bean.LibraryBean;
import com.onyx.galaxy.note.datarepository.download.DataRepositoryManager;
import com.onyx.galaxy.note.datarepository.event.DownloadEvent;
import com.onyx.galaxy.note.usercenter.data.JavascriptArgs;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b,\u0010-J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\bJ\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0002J\u0006\u0010\u000e\u001a\u00020\u0006J\u000e\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0004J\u0016\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000f0\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\u0017\u001a\u00020\u00062\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000f0\bH\u0002J\u0018\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0010\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0002H\u0002J\u0010\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0002H\u0002J\u0010\u0010\u001e\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J\u0016\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010\f\u001a\u00020\u0002H\u0002J\u0016\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0\u001f2\u0006\u0010\f\u001a\u00020\u0002H\u0002J\u0010\u0010$\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0004H\u0003Rh\u0010)\u001aV\u0012\u0004\u0012\u00020\u0002\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00180%j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0018`&0%j*\u0012\u0004\u0012\u00020\u0002\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00180%j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0018`&`&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010+\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010*¨\u0006."}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;", "", "", "getLibraryDirPath", "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", "data", "", "addDownloadTask", "", "libraries", "Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;", "checkLocalLibraries", CouchFieldKey.KEY_LIBRARY_ID, "deleteLibrary", "checkAndUpdateLocalResource", "Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;", "task", "saveDownloadRecord", "library", "", "isDownloadComplete", "e", "tasks", "i", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "progressInfo", C4921e.f26537n, JavascriptArgs.KEY_TASK_ID, "c", "d", "b", "", "Lcom/onyx/android/sdk/replicator/note/db/model/DataRepositoryDownloadRecordModel;", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/db/model/MaterialAddRecordModel;", C6999h.f39688c, C6997f.f39671c, "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "a", "Ljava/util/HashMap;", "downloadTaskMap", Constants.HASIDCALL_INDEX_SIG, "localResourceChecked", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDataRepositoryManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataRepositoryManager.kt\ncom/onyx/galaxy/note/datarepository/download/DataRepositoryManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,204:1\n1549#2:205\n1620#2,3:206\n1855#2,2:209\n1726#2,3:212\n1726#2,3:215\n1#3:211\n*S KotlinDebug\n*F\n+ 1 DataRepositoryManager.kt\ncom/onyx/galaxy/note/datarepository/download/DataRepositoryManager\n*L\n61#1:205\n61#1:206,3\n86#1:209,2\n125#1:212,3\n184#1:215,3\n*E\n"})
/* loaded from: classes9.dex */
public final class DataRepositoryManager {

    @NotNull
    public static final DataRepositoryManager INSTANCE = new DataRepositoryManager();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final HashMap<String, HashMap<String, ProgressInfo>> downloadTaskMap = new HashMap<>();

    /* renamed from: b, reason: from kotlin metadata */
    public static boolean localResourceChecked;

    /* renamed from: com.onyx.galaxy.note.datarepository.download.DataRepositoryManager$a */
    /* loaded from: classes9.dex */
    public static final class C11764a<T, R> implements Function {

        /* renamed from: e */
        public static final C11764a<T, R> f58047e = new C11764a<>();

        /* renamed from: com.onyx.galaxy.note.datarepository.download.DataRepositoryManager$a$a */
        /* loaded from: classes9.dex */
        public static final class a<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ DownloadTask f58048e;

            public a(DownloadTask downloadTask) {
                this.f58048e = downloadTask;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull ProgressInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                DataRepositoryManager.INSTANCE.m45490k(this.f58048e, it2);
            }
        }

        /* renamed from: com.onyx.galaxy.note.datarepository.download.DataRepositoryManager$a$b */
        /* loaded from: classes9.dex */
        public static final class b<T> implements Predicate {

            /* renamed from: e */
            public static final b<T> f58049e = new b<>();

            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull ProgressInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.isComplete();
            }
        }

        /* renamed from: com.onyx.galaxy.note.datarepository.download.DataRepositoryManager$a$c */
        /* loaded from: classes9.dex */
        public static final class c<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ DownloadTask f58050e;

            public c(DownloadTask downloadTask) {
                this.f58050e = downloadTask;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull ProgressInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                DataRepositoryManager.INSTANCE.saveDownloadRecord(this.f58050e);
            }
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ProgressInfo> apply(@NotNull DownloadTask task) {
            Intrinsics.checkNotNullParameter(task, "task");
            return task.startTask().doOnNext(new a(task)).filter(b.f58049e).doOnNext(new c(task));
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.download.DataRepositoryManager$b */
    /* loaded from: classes9.dex */
    public static final class C11765b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ String f58051e;

        public C11765b(String str) {
            this.f58051e = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DataRepositoryManager.INSTANCE.m45484d(this.f58051e);
        }
    }

    /* renamed from: j */
    public static final void m45481j(String taskId) {
        Intrinsics.checkNotNullParameter(taskId, "$taskId");
        INSTANCE.m45483c(taskId);
    }

    public final void addDownloadTask(@NotNull LibraryBean data) {
        Intrinsics.checkNotNullParameter(data, "data");
        String id = data.getId();
        if (id == null || downloadTaskMap.containsKey(id)) {
            return;
        }
        List<DownloadTask> m45485e = m45485e(data);
        if (m45485e.isEmpty()) {
            m45484d(id);
        } else {
            deleteLibrary(id);
            m45489i(m45485e);
        }
    }

    /* renamed from: b */
    public final DownloadEvent m45482b(LibraryBean library) {
        String id = library.getId();
        int i = 0;
        if (id == null) {
            return new DownloadEvent("", 0, 0);
        }
        HashMap<String, ProgressInfo> hashMap = downloadTaskMap.get(id);
        if (hashMap == null) {
            return m45486f(library) ? new DownloadEvent(id, 100, 3) : isDownloadComplete(library) ? new DownloadEvent(id, 100, 2) : new DownloadEvent(id, 0, 0);
        }
        Collection<ProgressInfo> values = hashMap.values();
        Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
        Iterator<T> it2 = values.iterator();
        while (it2.hasNext()) {
            i += (int) ((ProgressInfo) it2.next()).getProgress();
        }
        return new DownloadEvent(id, i / hashMap.size(), 1);
    }

    /* renamed from: c */
    public final void m45483c(String taskId) {
        HashMap<String, ProgressInfo> hashMap = downloadTaskMap.get(taskId);
        if (hashMap == null) {
            return;
        }
        Collection<ProgressInfo> values = hashMap.values();
        Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
        Collection<ProgressInfo> collection = values;
        boolean z = true;
        if (!collection.isEmpty()) {
            Iterator<T> it2 = collection.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                } else if (!((ProgressInfo) it2.next()).isComplete()) {
                    z = false;
                    break;
                }
            }
        }
        if (z) {
            GlobalBundle.INSTANCE.postEvent(new DownloadEvent(taskId, 100, 2));
            downloadTaskMap.remove(taskId);
        }
    }

    public final void checkAndUpdateLocalResource() {
        if (localResourceChecked || !NetworkUtils.INSTANCE.isNetworkConnected(ResManager.INSTANCE.getAppContext())) {
            return;
        }
        localResourceChecked = true;
        RxBaseAction.execute$default(new CheckAndUpdateMaterialAction(), null, null, null, 7, null);
    }

    @NotNull
    public final List<DownloadEvent> checkLocalLibraries(@NotNull List<LibraryBean> libraries) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(libraries, "libraries");
        List<LibraryBean> list = libraries;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(INSTANCE.m45482b((LibraryBean) it2.next()));
        }
        return arrayList;
    }

    /* renamed from: d */
    public final void m45484d(String taskId) {
        downloadTaskMap.remove(taskId);
        GlobalBundle.INSTANCE.postEvent(new DownloadEvent(taskId, 0, -1, 2, null));
    }

    public final void deleteLibrary(@NotNull String libraryId) {
        Intrinsics.checkNotNullParameter(libraryId, "libraryId");
        Path path = Paths.get(getLibraryDirPath(), (String[]) Arrays.copyOf(new String[]{libraryId}, 1));
        Intrinsics.checkNotNullExpressionValue(path, "get(...)");
        try {
            com.onyx.android.sdk.base.extension.Paths.INSTANCE.deleteDirectory(path);
        } catch (Exception unused) {
        }
        KSyncBundle.INSTANCE.getUserDataRepositoryProvider().deleteDownloadRecordByLibraryId(libraryId);
    }

    /* renamed from: e */
    public final List<DownloadTask> m45485e(LibraryBean data) {
        String id = data.getId();
        HashMap<String, ProgressInfo> hashMap = new HashMap<>();
        ArrayList arrayList = new ArrayList();
        String libraryDirPath = getLibraryDirPath();
        for (AttachmentBean attachmentBean : data.getAttachments()) {
            String computeMD5 = FileUtils.INSTANCE.computeMD5(attachmentBean.getValue());
            if (StringKt.isNotBlank(computeMD5)) {
                hashMap.put(computeMD5, new ProgressInfo());
                arrayList.add(new DownloadTask(libraryDirPath, id, attachmentBean));
            }
        }
        if (!hashMap.isEmpty()) {
            downloadTaskMap.put(id, hashMap);
        }
        return arrayList;
    }

    @WorkerThread
    /* renamed from: f */
    public final boolean m45486f(LibraryBean library) {
        return !m45488h(library.getId()).isEmpty();
    }

    /* renamed from: g */
    public final List<DataRepositoryDownloadRecordModel> m45487g(String libraryId) {
        List<DataRepositoryDownloadRecordModel> mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) KSyncBundle.INSTANCE.getUserDataRepositoryProvider().loadDownloadRecordList(libraryId));
        return mutableList;
    }

    @NotNull
    public final String getLibraryDirPath() {
        return DataRepositoryPaths.INSTANCE.appCurUserDataRepositoryDirPath();
    }

    /* renamed from: h */
    public final List<MaterialAddRecordModel> m45488h(String libraryId) {
        List<MaterialAddRecordModel> mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) KSyncBundle.INSTANCE.getUserDataRepositoryProvider().loadMaterialAddRecord(libraryId));
        return mutableList;
    }

    /* renamed from: i */
    public final void m45489i(List<DownloadTask> tasks) {
        Object firstOrNull;
        final String str;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) tasks);
        DownloadTask downloadTask = (DownloadTask) firstOrNull;
        if (downloadTask == null || (str = downloadTask.getTaskId()) == null) {
            str = "";
        }
        Observable flatMap = Observable.fromIterable(tasks).flatMap(C11764a.f58047e);
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        RxjavaKt.takeLastOne(flatMap).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.ave
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DataRepositoryManager.m45481j(str);
            }
        }).doOnError(new C11765b(str)).subscribe();
    }

    public final boolean isDownloadComplete(@NotNull LibraryBean library) {
        Intrinsics.checkNotNullParameter(library, "library");
        String id = library.getId();
        Path path = Paths.get(getLibraryDirPath(), (String[]) Arrays.copyOf(new String[]{id}, 1));
        Intrinsics.checkNotNullExpressionValue(path, "get(...)");
        if (Files.notExists(path, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
            return false;
        }
        List<AttachmentBean> attachments = library.getAttachments();
        List<DataRepositoryDownloadRecordModel> m45487g = m45487g(id);
        List<AttachmentBean> list = attachments;
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        for (final AttachmentBean attachmentBean : list) {
            if (!(Files.exists(com.onyx.android.sdk.base.extension.Paths.INSTANCE.append(path, attachmentBean.getFileName()), (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0)) && CollectionKt.contains(m45487g, new Function1<DataRepositoryDownloadRecordModel, Boolean>() { // from class: com.onyx.galaxy.note.datarepository.download.DataRepositoryManager$isDownloadComplete$1$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull DataRepositoryDownloadRecordModel model) {
                    Intrinsics.checkNotNullParameter(model, "model");
                    return Boolean.valueOf(StringUtils.equals(AttachmentBean.this.getMd5(), model.getFileMd5()) && StringUtils.equals(AttachmentBean.this.getFileName(), model.getFileName()) && AttachmentBean.this.getSize() == model.getFileSize());
                }
            }))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: k */
    public final void m45490k(DownloadTask task, ProgressInfo progressInfo) {
        String computeMD5;
        HashMap<String, ProgressInfo> hashMap = downloadTaskMap.get(task.getTaskId());
        if (hashMap == null || (computeMD5 = FileUtils.INSTANCE.computeMD5(task.getAttachment().getValue())) == null) {
            return;
        }
        hashMap.put(computeMD5, progressInfo);
        Collection<ProgressInfo> values = hashMap.values();
        Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
        Iterator<T> it2 = values.iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += (int) ((ProgressInfo) it2.next()).getProgress();
        }
        GlobalBundle.INSTANCE.postEvent(new DownloadEvent(task.getTaskId(), i / hashMap.size(), 1));
    }

    public final void saveDownloadRecord(@NotNull DownloadTask task) {
        Intrinsics.checkNotNullParameter(task, "task");
        String taskId = task.getTaskId();
        String fileName = task.getAttachment().getFileName();
        String md5 = task.getAttachment().getMd5();
        if (md5 == null) {
            md5 = "";
        }
        KSyncBundle.INSTANCE.getUserDataRepositoryProvider().saveDownloadRecord(new DataRepositoryDownloadRecordModel(taskId, fileName, md5, task.getAttachment().getSize()));
    }
}
