package com.onyx.android.sdk.universal.editor.action.backup;

import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.sync.MMKVBackup;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.utils.StringOption;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.backup.CloudBackupAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNoteProviderAction;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import com.onyx.android.sdk.universal.editor.events.note.CloudBackupCompleteEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.p042ui.data.BackupContext;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FileUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B%\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\u0006\u0010\u001b\u001a\u00020\u0018¢\u0006\u0004\b\u001c\u0010\u001dJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002R\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;", "Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", C4921e.f26528e, "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "baseCloudStorageProvider", "u", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteProvider", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "s", "Ljava/io/File;", "p", "t", C6997f.f39671c, "Ljava/util/List;", "baseCloudStorageProviders", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/ui/data/BackupContext;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/ui/data/BackupContext;", "backupContext", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/BackupContext;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCloudBackupAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudBackupAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,123:1\n1855#2,2:124\n1747#2,3:126\n*S KotlinDebug\n*F\n+ 1 CloudBackupAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction\n*L\n70#1:124,2\n76#1:126,3\n*E\n"})
/* loaded from: classes8.dex */
public final class CloudBackupAction extends RxBaseBackupAction<CloudBackupAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<BaseCloudStorageProvider> baseCloudStorageProviders;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final BackupContext backupContext;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.CloudBackupAction$a */
    /* loaded from: classes8.dex */
    public static final class C8459a<T, R> implements Function {
        public C8459a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudBackupAction apply(@NotNull CloudBackupAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloudBackupAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.CloudBackupAction$b */
    /* loaded from: classes8.dex */
    public static final class C8460b<T> implements Consumer {
        public C8460b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CloudBackupAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CloudBackupAction.this.checkBackupDirFreeSpace();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.CloudBackupAction$c */
    /* loaded from: classes8.dex */
    public static final class C8461c<T, R> implements Function {

        /* renamed from: e */
        public static final C8461c<T, R> f47980e = new C8461c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteProvider> apply(@NotNull CloudBackupAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new EnsureNoteProviderAction().build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.CloudBackupAction$d */
    /* loaded from: classes8.dex */
    public static final class C8462d<T, R> implements Function {
        public C8462d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<SyncNoteModel> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloudBackupAction.this.m37231s(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.CloudBackupAction$e */
    /* loaded from: classes8.dex */
    public static final class C8463e<T, R> implements Function {
        public C8463e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LocalBackupAction> apply(@NotNull List<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = CloudBackupAction.this.editorBundle;
            BackupContext backupContext = CloudBackupAction.this.backupContext;
            backupContext.setExportStashArchivedData(false);
            backupContext.setUpdateLastTime(false);
            backupContext.setCloudBackup(true);
            return new LocalBackupAction(editorBundle, backupContext).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.CloudBackupAction$f */
    /* loaded from: classes8.dex */
    public static final class C8464f<T, R> implements Function {
        public C8464f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BaseCloudStorageProvider> apply(@NotNull LocalBackupAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(CloudBackupAction.this.baseCloudStorageProviders);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.CloudBackupAction$g */
    /* loaded from: classes8.dex */
    public static final class C8465g<T, R> implements Function {
        public C8465g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudBackupAction> apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloudBackupAction.this.m37233u(it2);
        }
    }

    @SourceDebugExtension({"SMAP\nCloudBackupAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudBackupAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$create$8\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,123:1\n1#2:124\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.CloudBackupAction$h */
    /* loaded from: classes8.dex */
    public static final class C8466h<T> implements Consumer {
        public C8466h() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = CloudBackupAction.this.editorBundle;
            BackupContext backupContext = CloudBackupAction.this.backupContext;
            backupContext.setThrowable(it2);
            EditorBundleKt.postEvent(editorBundle, new CloudBackupCompleteEvent(backupContext));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.CloudBackupAction$i */
    /* loaded from: classes8.dex */
    public static final class C8467i<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ BaseCloudStorageProvider f47987f;

        public C8467i(BaseCloudStorageProvider baseCloudStorageProvider) {
            this.f47987f = baseCloudStorageProvider;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final File apply(@NotNull CloudBackupAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloudBackupAction.this.m37230p(this.f47987f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.CloudBackupAction$j */
    /* loaded from: classes8.dex */
    public static final class C8468j<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ BaseCloudStorageProvider f47988e;

        /* renamed from: f */
        public final /* synthetic */ CloudBackupAction f47989f;

        public C8468j(BaseCloudStorageProvider baseCloudStorageProvider, CloudBackupAction cloudBackupAction) {
            this.f47988e = baseCloudStorageProvider;
            this.f47989f = cloudBackupAction;
        }

        /* renamed from: c */
        public static final void m37244c(File it2) {
            Intrinsics.checkNotNullParameter(it2, "$it");
            FileUtils.deleteQuietly(it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UploadBackupFileToCloudAction> apply(@NotNull final File it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UploadBackupFileToCloudAction uploadBackupFileToCloudAction = new UploadBackupFileToCloudAction(this.f47988e, this.f47989f.editorBundle, this.f47989f.backupContext);
            uploadBackupFileToCloudAction.setNoteFile(it2);
            String name = it2.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            uploadBackupFileToCloudAction.setNoteFileName(name);
            return uploadBackupFileToCloudAction.build().observeOn(this.f47989f.getBackupIoObserveOn()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.nvd
                @Override // io.reactivex.rxjava3.functions.Action
                public final void run() {
                    CloudBackupAction.C8468j.m37244c(it2);
                }
            });
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.CloudBackupAction$k */
    /* loaded from: classes8.dex */
    public static final class C8469k<T, R> implements Function {
        public C8469k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudBackupAction apply(@NotNull UploadBackupFileToCloudAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloudBackupAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.CloudBackupAction$l */
    /* loaded from: classes8.dex */
    public static final class C8470l<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ BaseCloudStorageProvider f47991e;

        /* renamed from: f */
        public final /* synthetic */ CloudBackupAction f47992f;

        public C8470l(BaseCloudStorageProvider baseCloudStorageProvider, CloudBackupAction cloudBackupAction) {
            this.f47991e = baseCloudStorageProvider;
            this.f47992f = cloudBackupAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudBackupAction apply(@NotNull Throwable it2) {
            String stackTraceToString;
            Intrinsics.checkNotNullParameter(it2, "it");
            Provider providerType = this.f47991e.getProviderType();
            StringBuilder sb = new StringBuilder();
            sb.append(providerType);
            sb.append(" uploadToCloud fail; e:");
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(it2);
            sb.append(stackTraceToString);
            LogUtils.file(sb.toString());
            this.f47992f.backupContext.getFailedProviderMap().put(providerType, it2);
            return this.f47992f;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CloudBackupAction(@NotNull List<? extends BaseCloudStorageProvider> baseCloudStorageProviders, @NotNull EditorBundle editorBundle, @NotNull BackupContext backupContext) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(baseCloudStorageProviders, "baseCloudStorageProviders");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(backupContext, "backupContext");
        this.baseCloudStorageProviders = baseCloudStorageProviders;
        this.editorBundle = editorBundle;
        this.backupContext = backupContext;
    }

    /* renamed from: q */
    public static final void m37227q(CloudBackupAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m37232t();
        EditorBundleKt.postEvent(this$0.editorBundle, new CloudBackupCompleteEvent(this$0.backupContext));
    }

    /* renamed from: r */
    public static final void m37228r(CloudBackupAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m37229o();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudBackupAction> create() {
        if (this.baseCloudStorageProviders.isEmpty()) {
            throw new Exception("baseCloudStorageProviders is empty");
        }
        Observable concatMap = Observable.just(this).observeOn(getBackupIoObserveOn()).doOnNext(new C8460b()).flatMap(C8461c.f47980e).observeOn(getNoteObserveOn()).map(new C8462d()).concatMap(new C8463e()).takeLast(1).flatMap(new C8464f()).concatMap(new C8465g());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<CloudBackupAction> map = RxjavaKt.takeLastOne(concatMap).observeOn(getBackupIoObserveOn()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.lvd
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                CloudBackupAction.m37227q(CloudBackupAction.this);
            }
        }).doOnError(new C8466h()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.mvd
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                CloudBackupAction.m37228r(CloudBackupAction.this);
            }
        }).observeOn(getMainUIScheduler()).map(new C8459a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final void m37229o() {
        FileUtils.deleteQuietly(new File(this.backupContext.getBackupFilePath()));
        Iterator<T> it2 = this.baseCloudStorageProviders.iterator();
        while (it2.hasNext()) {
            cleanExpiredDriverLocalFiles((BaseCloudStorageProvider) it2.next());
        }
    }

    /* renamed from: p */
    public final File m37230p(BaseCloudStorageProvider baseCloudStorageProvider) {
        File file = new File(getDriveLocalBackupDir(baseCloudStorageProvider));
        File file2 = new File(this.backupContext.getBackupFilePath());
        FileUtils.copyFileToDirectory(file2, file);
        return new File(file, file2.getName());
    }

    /* renamed from: s */
    public final List<SyncNoteModel> m37231s(NoteProvider noteProvider) {
        CBQueryArgs m72249clone = this.backupContext.getNoteQueryArgs().m72249clone();
        m72249clone.m72251setLimit(200);
        List<SyncNoteModel> loadNoteListInBatch = NoteModelProviderKt.loadNoteListInBatch(noteProvider, m72249clone);
        if (loadNoteListInBatch.isEmpty()) {
            throw new Exception("no notes to back up");
        }
        return loadNoteListInBatch;
    }

    /* renamed from: t */
    public final void m37232t() {
        String format = DateTimeUtil.INSTANCE.getDATE_FORMAT_YYYYMMDD_HHMMSS().format(new Date());
        StringOption cloudBackupLastTime = MMKVBackup.INSTANCE.getCloudBackupLastTime();
        Intrinsics.checkNotNull(format);
        cloudBackupLastTime.put(format);
    }

    /* renamed from: u */
    public final Observable<CloudBackupAction> m37233u(BaseCloudStorageProvider baseCloudStorageProvider) {
        List<NoteExportArgs> noteExportList = this.backupContext.getNoteExportList();
        boolean z = false;
        if (!(noteExportList instanceof Collection) || !noteExportList.isEmpty()) {
            Iterator<T> it2 = noteExportList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                if (((NoteExportArgs) it2.next()).getNoteProgressInfo().isSuccess()) {
                    z = true;
                    break;
                }
            }
        }
        if (z) {
            Observable<CloudBackupAction> onErrorReturn = Observable.just(this).observeOn(getBackupIoObserveOn()).map(new C8467i(baseCloudStorageProvider)).flatMap(new C8468j(baseCloudStorageProvider, this)).map(new C8469k()).onErrorReturn(new C8470l(baseCloudStorageProvider, this));
            Intrinsics.checkNotNullExpressionValue(onErrorReturn, "onErrorReturn(...)");
            return onErrorReturn;
        }
        Observable<CloudBackupAction> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }
}
