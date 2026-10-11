package com.onyx.android.sdk.universal.editor.action.backup;

import android.net.Uri;
import com.blankj.utilcode.util.LogUtils;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.backup.CloudRestoreAction;
import com.onyx.android.sdk.universal.editor.action.p126import.ImportFromNoteFileAction;
import com.onyx.android.sdk.universal.editor.data.NoteImportArgs;
import com.onyx.android.sdk.universal.editor.events.note.CloudRestoreCompleteEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.p042ui.data.RestoreContext;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.List;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/backup/CloudRestoreAction;", "Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;", "noteImportArgs", "u", "s", "", "throwable", "", "r", "p", "q", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;", "restoreContext", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCloudRestoreAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudRestoreAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/CloudRestoreAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,92:1\n1#2:93\n*E\n"})
/* loaded from: classes8.dex */
public final class CloudRestoreAction extends RxBaseBackupAction<CloudRestoreAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final RestoreContext restoreContext;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.CloudRestoreAction$a */
    /* loaded from: classes8.dex */
    public static final class C8471a<T> implements Consumer {
        public C8471a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteImportArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CloudRestoreAction.this.checkInternalFreeSpace();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.CloudRestoreAction$b */
    /* loaded from: classes8.dex */
    public static final class C8472b<T, R> implements Function {
        public C8472b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudRestoreAction> apply(@NotNull NoteImportArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloudRestoreAction.this.m37256u(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.CloudRestoreAction$c */
    /* loaded from: classes8.dex */
    public static final class C8473c<T> implements Consumer {
        public C8473c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CloudRestoreAction.this.m37253q(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.CloudRestoreAction$d */
    /* loaded from: classes8.dex */
    public static final class C8474d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ NoteImportArgs f47998e;

        public C8474d(NoteImportArgs noteImportArgs) {
            this.f47998e = noteImportArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final NoteImportArgs apply(@NotNull List<CloudFileBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f47998e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.CloudRestoreAction$e */
    /* loaded from: classes8.dex */
    public static final class C8475e<T> implements Consumer {
        public C8475e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CloudRestoreAction.this.m37254r(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.CloudRestoreAction$f */
    /* loaded from: classes8.dex */
    public static final class C8476f<T, R> implements Function {
        public C8476f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudRestoreAction apply(@NotNull ProgressInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloudRestoreAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.CloudRestoreAction$g */
    /* loaded from: classes8.dex */
    public static final class C8477g<T, R> implements Function {
        public C8477g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudRestoreAction> apply(@NotNull NoteImportArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloudRestoreAction.this.m37255s(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudRestoreAction(@NotNull EditorBundle editorBundle, @NotNull RestoreContext restoreContext) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(restoreContext, "restoreContext");
        this.editorBundle = editorBundle;
        this.restoreContext = restoreContext;
    }

    /* renamed from: o */
    public static final void m37250o(CloudRestoreAction this$0, CloudRestoreCompleteEvent event) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(event, "$event");
        EditorBundleKt.postEvent(this$0.editorBundle, event);
    }

    /* renamed from: t */
    public static final void m37251t(CloudRestoreAction this$0, String localFilePath) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(localFilePath, "$localFilePath");
        if (this$0.restoreContext.getDeleteLocalFile()) {
            FileUtils.INSTANCE.deleteFile(localFilePath);
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudRestoreAction> create() {
        final CloudRestoreCompleteEvent cloudRestoreCompleteEvent = new CloudRestoreCompleteEvent(this.restoreContext);
        Observable<CloudRestoreAction> doFinally = Observable.fromIterable(this.restoreContext.getNoteImportList()).observeOn(getBackupIoObserveOn()).doOnNext(new C8471a()).concatMap(new C8472b()).takeLast(1).doFinally(new Action() { // from class: com.sunia.HTREnginev2.pvd
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                CloudRestoreAction.m37250o(CloudRestoreAction.this, cloudRestoreCompleteEvent);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: p */
    public final Observable<NoteImportArgs> m37252p(NoteImportArgs noteImportArgs) {
        List<CloudFileBean> listOf;
        BaseCloudStorageProvider cloudProvider = this.restoreContext.getCloudProvider();
        if (cloudProvider == null) {
            Observable<NoteImportArgs> just = Observable.just(noteImportArgs);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        CloudFileBean cloudFileBean = noteImportArgs.getCloudFileBean();
        if (cloudFileBean == null) {
            Observable<NoteImportArgs> just2 = Observable.just(noteImportArgs);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        CloudFileBean queryFileInfo = cloudProvider.getCloudStorageRecordProvider().queryFileInfo(cloudFileBean.getUniqueId());
        String localFilePath = queryFileInfo != null ? queryFileInfo.getLocalFilePath() : null;
        if (StringKt.isNotBlank(localFilePath)) {
            FileUtils fileUtils = FileUtils.INSTANCE;
            if (fileUtils.fileExist(new File(localFilePath))) {
                fileUtils.deleteFile(localFilePath);
            }
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(cloudFileBean);
        Observable map = cloudProvider.downloadFiles(listOf).doOnError(new C8473c()).map(new C8474d(noteImportArgs));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final void m37253q(Throwable throwable) {
        String stackTraceToString;
        String simpleName = CloudRestoreAction.class.getSimpleName();
        StringBuilder sb = new StringBuilder();
        sb.append("cloud download error e:");
        stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(throwable);
        sb.append(stackTraceToString);
        LogUtils.file(simpleName, sb.toString());
        this.restoreContext.setThrowable(new CloudNoteException(2, ResManager.INSTANCE.getString(C7373R.string.network_state_bad)));
    }

    /* renamed from: r */
    public final void m37254r(Throwable throwable) {
        String stackTraceToString;
        String simpleName = CloudRestoreAction.class.getSimpleName();
        StringBuilder sb = new StringBuilder();
        sb.append("cloud import error e:");
        stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(throwable);
        sb.append(stackTraceToString);
        LogUtils.file(simpleName, sb.toString());
        this.restoreContext.setThrowable(throwable);
    }

    /* renamed from: s */
    public final Observable<CloudRestoreAction> m37255s(NoteImportArgs noteImportArgs) {
        List listOf;
        CloudFileBean cloudFileBean = noteImportArgs.getCloudFileBean();
        final String localFilePath = cloudFileBean != null ? cloudFileBean.getLocalFilePath() : null;
        Intrinsics.checkNotNull(localFilePath);
        Uri fromFile = Uri.fromFile(new File(localFilePath));
        Intrinsics.checkNotNullExpressionValue(fromFile, "fromFile(...)");
        noteImportArgs.setImportFileUri(fromFile);
        noteImportArgs.setUseOriginParentId(true);
        EditorBundle editorBundle = this.editorBundle;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(noteImportArgs);
        Observable map = new ImportFromNoteFileAction(editorBundle, listOf, false).build().observeOn(getBackupIoObserveOn()).doOnError(new C8475e()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.qvd
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                CloudRestoreAction.m37251t(CloudRestoreAction.this, localFilePath);
            }
        }).map(new C8476f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: u */
    public final Observable<CloudRestoreAction> m37256u(NoteImportArgs noteImportArgs) {
        Observable flatMap = m37252p(noteImportArgs).flatMap(new C8477g());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }
}
