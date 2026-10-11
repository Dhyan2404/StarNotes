package com.onyx.galaxy.note.usercenter.handler;

import android.content.Context;
import com.liulishuo.okdownload.DownloadTask;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.data.common.data.StorageLocation;
import com.onyx.android.sdk.data.common.download.FileDownloadRequest;
import com.onyx.android.sdk.data.common.download.OnyxDownloadManager;
import com.onyx.android.sdk.data.common.download.data.OnyxFileTransferStatus;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.common.path.PathManager;
import com.onyx.galaxy.note.settings.utils.PermissionActionUtils;
import com.onyx.galaxy.note.usercenter.data.FileDownloadArgs;
import com.onyx.galaxy.note.usercenter.handler.FileDownloadHandler;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FileUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\b\u001a\u00020\u0006JT\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u001c\u0010\f\u001a\u0018\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00060\tj\b\u0012\u0004\u0012\u00020\n`\u000b2\u001c\u0010\r\u001a\u0018\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00060\tj\b\u0012\u0004\u0012\u00020\n`\u000bH\u0002J\u0018\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002R\u0017\u0010\u0017\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;", "", "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;", "args", "", "download", "dispose", "Lkotlin/Function1;", "", "Lcom/onyx/android/sdk/base/extension/SingleArgCallbackFunc;", "onPermissionGranted", "onPermissionNotGranted", C6997f.f39671c, "", "path", "d", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "a", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "getEventBusHolder", "()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "eventBusHolder", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "b", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "disposables", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class FileDownloadHandler {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final EventBusHolder eventBusHolder = new EventBusHolder(null, 1, null);

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable disposables = new CompositeDisposable();

    /* renamed from: com.onyx.galaxy.note.usercenter.handler.FileDownloadHandler$a */
    /* loaded from: classes9.dex */
    public static final class C12834a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ FileDownloadRequest f62315e;

        public C12834a(FileDownloadRequest fileDownloadRequest) {
            this.f62315e = fileDownloadRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OnyxFileTransferStatus<DownloadTask>> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OnyxDownloadManager.INSTANCE.createObservable(this.f62315e);
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.handler.FileDownloadHandler$b */
    /* loaded from: classes9.dex */
    public static final class C12835b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ FileDownloadArgs f62316e;

        /* renamed from: f */
        public final /* synthetic */ FileDownloadHandler f62317f;

        public C12835b(FileDownloadArgs fileDownloadArgs, FileDownloadHandler fileDownloadHandler) {
            this.f62316e = fileDownloadArgs;
            this.f62317f = fileDownloadHandler;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OnyxFileTransferStatus<DownloadTask> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f62317f.getEventBusHolder().safelyPostEvent(FileDownloadEventKt.createDownloadStatusEvent(this.f62316e, it2));
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.handler.FileDownloadHandler$c */
    /* loaded from: classes9.dex */
    public static final class C12836c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ FileDownloadRequest f62318e;

        /* renamed from: f */
        public final /* synthetic */ FileDownloadArgs f62319f;

        /* renamed from: g */
        public final /* synthetic */ FileDownloadHandler f62320g;

        public C12836c(FileDownloadRequest fileDownloadRequest, FileDownloadArgs fileDownloadArgs, FileDownloadHandler fileDownloadHandler) {
            this.f62318e = fileDownloadRequest;
            this.f62319f = fileDownloadArgs;
            this.f62320g = fileDownloadHandler;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OnyxDownloadManager onyxDownloadManager = OnyxDownloadManager.INSTANCE;
            onyxDownloadManager.existTask(this.f62318e.getTask());
            onyxDownloadManager.removeTask(this.f62318e.getTask());
            OnyxFileTransferStatus onyxFileTransferStatus = new OnyxFileTransferStatus();
            onyxFileTransferStatus.setStatus(-1);
            this.f62320g.getEventBusHolder().safelyPostEvent(FileDownloadEventKt.createDownloadStatusEvent(this.f62319f, onyxFileTransferStatus));
        }
    }

    /* renamed from: e */
    public static final void m51486e(String tempFile, String path) {
        Intrinsics.checkNotNullParameter(tempFile, "$tempFile");
        Intrinsics.checkNotNullParameter(path, "$path");
        FileUtils.moveFile(new File(tempFile), new File(path));
        com.onyx.android.sdk.base.utils.FileUtils.INSTANCE.updateMtpDb(new File(path));
    }

    /* renamed from: g */
    public static final void m51487g(Function1 tmp0, boolean z) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(Boolean.valueOf(z));
    }

    /* renamed from: h */
    public static final void m51488h(Function1 tmp0, boolean z) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(Boolean.valueOf(z));
    }

    /* renamed from: d */
    public final void m51489d(FileDownloadArgs args, final String path) {
        final String randomCacheFile = PathManager.INSTANCE.getRandomCacheFile();
        FileDownloadRequest fileDownloadRequest = new FileDownloadRequest(args.getUrl(), randomCacheFile);
        fileDownloadRequest.setTag(randomCacheFile);
        fileDownloadRequest.setForceReDownload(true);
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable doOnComplete = Observable.just(Unit.INSTANCE).flatMap(new C12834a(fileDownloadRequest)).observeOn(Schedulers.m61350io()).doOnNext(new C12835b(args, this)).doOnError(new C12836c(fileDownloadRequest, args, this)).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.tgg
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                FileDownloadHandler.m51486e(randomCacheFile, path);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnComplete, "doOnComplete(...)");
        this.disposables.add(OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnComplete, null, null, 3, null));
    }

    public final void dispose() {
        RxjavaKt.safelyDispose(this.disposables);
    }

    public final void download(@NotNull Context context, @NotNull final FileDownloadArgs args) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(args, "args");
        m51490f(context, args, new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.usercenter.handler.FileDownloadHandler$download$onPermissionGranted$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z) {
                this.m51489d(FileDownloadArgs.this, com.onyx.android.sdk.base.utils.FileUtils.INSTANCE.appendSuffixIfExist(PathManager.getFile$default(PathManager.INSTANCE, StorageLocation.PUBLIC_FILE, null, FileDownloadArgs.this.getSaveDir(), FileDownloadArgs.this.getName(), FileDownloadArgs.this.getExt(), 2, null)));
            }
        }, new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.usercenter.handler.FileDownloadHandler$download$onPermissionNotGranted$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z) {
                FileDownloadEvent fileDownloadEvent = new FileDownloadEvent();
                fileDownloadEvent.setDownloadArgs(FileDownloadArgs.this);
                fileDownloadEvent.setStatus(-5);
                this.getEventBusHolder().safelyPostEvent(fileDownloadEvent);
            }
        });
    }

    /* renamed from: f */
    public final void m51490f(Context context, FileDownloadArgs args, final Function1<? super Boolean, Unit> onPermissionGranted, final Function1<? super Boolean, Unit> onPermissionNotGranted) {
        OnyxErrorHandler.subscribeWithErrorHandler$default(OnyxErrorHandler.INSTANCE, RxjavaKt.doOnNextIfFalse(RxjavaKt.doOnNextIfTrue(PermissionActionUtils.INSTANCE.requestStoragePermissionAction(context, args.getFunctionName(), args.getIntentName()).build(), new Consumer() { // from class: com.sunia.HTREnginev2.rgg
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                FileDownloadHandler.m51487g(Function1.this, ((Boolean) obj).booleanValue());
            }
        }), new Consumer() { // from class: com.sunia.HTREnginev2.sgg
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                FileDownloadHandler.m51488h(Function1.this, ((Boolean) obj).booleanValue());
            }
        }), null, null, 3, null);
    }

    @NotNull
    public final EventBusHolder getEventBusHolder() {
        return this.eventBusHolder;
    }
}
