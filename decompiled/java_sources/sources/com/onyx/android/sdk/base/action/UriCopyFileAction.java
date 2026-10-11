package com.onyx.android.sdk.base.action;

import android.content.Context;
import android.net.Uri;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.action.UriCopyFileAction;
import com.onyx.android.sdk.base.extension.UriKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.core.ObservableOnSubscribe;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.observables.ConnectableObservable;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u00172\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0017B#\u0012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b\u0012\u0006\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b\u0015\u0010\u0016J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u0016\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0002J\b\u0010\n\u001a\u00020\tH\u0002R \u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/base/action/UriCopyFileAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/observables/ConnectableObservable;", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/ObservableEmitter;", "emitter", "", "l", "", "m", "", "Landroid/net/Uri;", "Ljava/io/File;", "e", "Ljava/util/Map;", "fileByUriMap", "Landroid/content/Context;", C6997f.f39671c, "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Ljava/util/Map;Landroid/content/Context;)V", "Companion", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUriCopyFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UriCopyFileAction.kt\ncom/onyx/android/sdk/base/action/UriCopyFileAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n1#2:86\n*E\n"})
/* loaded from: classes7.dex */
public final class UriCopyFileAction extends RxBaseAction<Integer> {
    public static final int PROGRESS_FINISH = 100;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Map<Uri, File> fileByUriMap;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: com.onyx.android.sdk.base.action.UriCopyFileAction$a */
    /* loaded from: classes7.dex */
    public static final class C7114a<T, R> implements Function {
        public C7114a() {
        }

        /* renamed from: c */
        public static final void m31889c(UriCopyFileAction this$0, ObservableEmitter it2) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(it2, "it");
            this$0.m31886l(it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Integer> apply(@NotNull UriCopyFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            final UriCopyFileAction uriCopyFileAction = UriCopyFileAction.this;
            return Observable.create(new ObservableOnSubscribe() { // from class: com.sunia.HTREnginev2.byn
                @Override // io.reactivex.rxjava3.core.ObservableOnSubscribe
                public final void subscribe(ObservableEmitter observableEmitter) {
                    UriCopyFileAction.C7114a.m31889c(UriCopyFileAction.this, observableEmitter);
                }
            });
        }
    }

    public UriCopyFileAction(@NotNull Map<Uri, File> fileByUriMap, @NotNull Context context) {
        Intrinsics.checkNotNullParameter(fileByUriMap, "fileByUriMap");
        Intrinsics.checkNotNullParameter(context, "context");
        this.fileByUriMap = fileByUriMap;
        this.context = context;
    }

    /* renamed from: l */
    public final void m31886l(ObservableEmitter<Integer> emitter) {
        long m31887m = m31887m();
        long j = 0;
        for (Map.Entry<Uri, File> entry : this.fileByUriMap.entrySet()) {
            Uri key = entry.getKey();
            File value = entry.getValue();
            File parentFile = value.getParentFile();
            if (parentFile != null) {
                FileUtils.INSTANCE.mkdirs(parentFile);
            }
            InputStream openInputStream = this.context.getContentResolver().openInputStream(key);
            Intrinsics.checkNotNull(openInputStream);
            FileOutputStream fileOutputStream = new FileOutputStream(value);
            byte[] bArr = new byte[1024];
            while (true) {
                try {
                    try {
                        int read = openInputStream.read(bArr);
                        if (read > 0) {
                            fileOutputStream.write(bArr, 0, read);
                            j += read;
                            int i = (int) ((100 * j) / m31887m);
                            emitter.onNext(Integer.valueOf(i));
                            if (i == 100) {
                                emitter.onComplete();
                            }
                        }
                    } catch (IOException e) {
                        e.printStackTrace();
                        emitter.onError(e);
                    }
                } finally {
                    openInputStream.close();
                    fileOutputStream.close();
                    emitter.onComplete();
                }
            }
        }
    }

    /* renamed from: m */
    public final long m31887m() {
        Iterator<Uri> it2 = this.fileByUriMap.keySet().iterator();
        long j = 0;
        while (it2.hasNext()) {
            j += UriKt.getFileSize(it2.next(), this.context);
        }
        return j;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Integer> create() {
        ConnectableObservable publish = Observable.just(this).observeOn(Schedulers.m61350io()).flatMap(new C7114a()).observeOn(AndroidSchedulers.mainThread()).publish();
        Intrinsics.checkNotNullExpressionValue(publish, "publish(...)");
        return publish;
    }
}
