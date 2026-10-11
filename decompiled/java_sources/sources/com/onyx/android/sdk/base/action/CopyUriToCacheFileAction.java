package com.onyx.android.sdk.base.action;

import android.net.Uri;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.UriUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0015\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u001d\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/base/action/CopyUriToCacheFileAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Ljava/io/File;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Landroid/net/Uri;", "e", "Ljava/util/List;", "getUris", "()Ljava/util/List;", "uris", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCopyUriToCacheFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyUriToCacheFileAction.kt\ncom/onyx/android/sdk/base/action/CopyUriToCacheFileAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,27:1\n1855#2,2:28\n*S KotlinDebug\n*F\n+ 1 CopyUriToCacheFileAction.kt\ncom/onyx/android/sdk/base/action/CopyUriToCacheFileAction\n*L\n19#1:28,2\n*E\n"})
/* loaded from: classes7.dex */
public final class CopyUriToCacheFileAction extends RxBaseAction<List<? extends File>> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<Uri> uris;

    /* renamed from: com.onyx.android.sdk.base.action.CopyUriToCacheFileAction$a */
    /* loaded from: classes7.dex */
    public static final class C7108a<T, R> implements Function {
        public C7108a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<File> apply(@NotNull CopyUriToCacheFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CopyUriToCacheFileAction.this.m31872l();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CopyUriToCacheFileAction(@NotNull List<? extends Uri> uris) {
        Intrinsics.checkNotNullParameter(uris, "uris");
        this.uris = uris;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<? extends File>> create() {
        Observable<List<? extends File>> map = Observable.just(this).observeOn(Schedulers.m61350io()).map(new C7108a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<Uri> getUris() {
        return this.uris;
    }

    /* renamed from: l */
    public final List<File> m31872l() {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = this.uris.iterator();
        while (it2.hasNext()) {
            File copyUri2Cache = UriUtils.INSTANCE.copyUri2Cache((Uri) it2.next());
            if (copyUri2Cache != null) {
                arrayList.add(copyUri2Cache);
            }
        }
        return arrayList;
    }
}
