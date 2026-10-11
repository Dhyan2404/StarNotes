package com.onyx.android.sdk.filepicker;

import android.net.Uri;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.UriKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.base.utils.UriUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B#\u0012\u001a\u0010\u0010\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000b0\n¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R(\u0010\u0010\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000b0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001d\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00040\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/filepicker/DocumentBean;", "documentBean", "", GoogleApiAvailabilityLight.f29016b, "l", "m", "", "Lkotlin/Pair;", "Landroid/net/Uri;", "", "e", "Ljava/util/List;", "uris", "", C6997f.f39671c, "getResult", "()Ljava/util/List;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "sdk-imagepicker_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class QueryInfoFromUriAction extends RxBaseAction<QueryInfoFromUriAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<Pair<Uri, String>> uris;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<DocumentBean> result;

    /* renamed from: com.onyx.android.sdk.filepicker.QueryInfoFromUriAction$a */
    /* loaded from: classes7.dex */
    public static final class C7396a<T, R> implements Function {
        public C7396a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DocumentBean apply(@NotNull Pair<? extends Uri, String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Uri first = it2.getFirst();
            String second = it2.getSecond();
            DocumentBean documentBean = new DocumentBean(it2.hashCode(), null, first, second == null ? "" : second, null, null, null, 114, null);
            QueryInfoFromUriAction.this.getResult().add(documentBean);
            return documentBean;
        }
    }

    /* renamed from: com.onyx.android.sdk.filepicker.QueryInfoFromUriAction$b */
    /* loaded from: classes7.dex */
    public static final class C7397b<T, R> implements Function {
        public C7397b() {
        }

        /* renamed from: a */
        public final void m33099a(@NotNull DocumentBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            QueryInfoFromUriAction.this.m33097n(it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m33099a((DocumentBean) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.filepicker.QueryInfoFromUriAction$c */
    /* loaded from: classes7.dex */
    public static final class C7398c<T, R> implements Function {
        public C7398c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final QueryInfoFromUriAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return QueryInfoFromUriAction.this;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public QueryInfoFromUriAction(@NotNull List<? extends Pair<? extends Uri, String>> uris) {
        Intrinsics.checkNotNullParameter(uris, "uris");
        this.uris = uris;
        this.result = new ArrayList();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<QueryInfoFromUriAction> create() {
        if (this.uris.isEmpty()) {
            Observable<QueryInfoFromUriAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = Observable.fromIterable(this.uris).map(new C7396a()).observeOn(Schedulers.m61350io()).map(new C7397b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable<QueryInfoFromUriAction> map2 = RxjavaKt.takeLastOne(map).observeOn(AndroidSchedulers.mainThread()).map(new C7398c());
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    @NotNull
    public final List<DocumentBean> getResult() {
        return this.result;
    }

    /* renamed from: l */
    public final void m33095l(DocumentBean documentBean) {
        Uri path = documentBean.getPath();
        if (!Intrinsics.areEqual(documentBean.getExtension(), FileExtensionUtils.EXTENSION_TYPE_BIN)) {
            documentBean.setMimeType(UriUtils.INSTANCE.getMimeType(path));
        }
        documentBean.setName(UriKt.getFileName(path, getAppContext()));
    }

    /* renamed from: m */
    public final void m33096m(DocumentBean documentBean) {
        File file = androidx.core.net.UriKt.toFile(documentBean.getPath());
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        documentBean.setName(name);
        documentBean.setSize(String.valueOf(file.length()));
        FileExtensionUtils fileExtensionUtils = FileExtensionUtils.INSTANCE;
        String extension = FilenameUtils.getExtension(file.getAbsolutePath());
        Intrinsics.checkNotNullExpressionValue(extension, "getExtension(...)");
        String mimeType = fileExtensionUtils.mimeType(extension);
        if (mimeType == null) {
            mimeType = "application/octet-stream";
        }
        documentBean.setMimeType(mimeType);
    }

    /* renamed from: n */
    public final void m33097n(DocumentBean documentBean) {
        boolean equals;
        equals = StringsKt__StringsJVMKt.equals(documentBean.getPath().getScheme(), "file", true);
        if (equals) {
            m33096m(documentBean);
        } else {
            m33095l(documentBean);
        }
    }
}
