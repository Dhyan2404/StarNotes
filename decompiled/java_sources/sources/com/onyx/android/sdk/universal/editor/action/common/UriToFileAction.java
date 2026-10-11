package com.onyx.android.sdk.universal.editor.action.common;

import android.net.Uri;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.request.common.SaveUriToFileRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/common/UriToFileAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "Landroid/net/Uri;", "e", "Landroid/net/Uri;", "uri", "Ljava/io/File;", C6997f.f39671c, "Ljava/io/File;", "file", Constants.CONSTRUCTOR_NAME, "(Landroid/net/Uri;Ljava/io/File;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UriToFileAction extends RxBaseAction<Object> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Uri uri;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final File file;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.common.UriToFileAction$a */
    /* loaded from: classes8.dex */
    public static final class C8614a<T, R> implements Function {
        public C8614a() {
        }

        /* renamed from: a */
        public final void m37512a(@NotNull UriToFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UriToFileAction.this.m37511l();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37512a((UriToFileAction) obj);
            return Unit.INSTANCE;
        }
    }

    public UriToFileAction(@NotNull Uri uri, @NotNull File file) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(file, "file");
        this.uri = uri;
        this.file = file;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<Object> map = Observable.just(this).observeOn(Schedulers.m61350io()).map(new C8614a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m37511l() {
        SaveUriToFileRequest saveUriToFileRequest = new SaveUriToFileRequest(this.uri, null, 2, null);
        saveUriToFileRequest.setFilePath(this.file.getAbsolutePath());
        saveUriToFileRequest.execute2();
    }
}
