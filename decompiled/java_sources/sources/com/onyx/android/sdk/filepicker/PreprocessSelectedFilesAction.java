package com.onyx.android.sdk.filepicker;

import android.net.Uri;
import com.onyx.android.sdk.base.action.CopyUriToFileAction;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.path.CommonPaths;
import com.onyx.android.sdk.data.serverconvert.action.RxBaseCovertAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0015\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\t\u0010\nJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0016R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction;", "Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;", "", "Lcom/onyx/android/sdk/filepicker/DocumentBean;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "e", "Ljava/util/List;", "documentBeanList", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "sdk-imagepicker_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class PreprocessSelectedFilesAction extends RxBaseCovertAction<List<? extends DocumentBean>> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<DocumentBean> documentBeanList;

    @SourceDebugExtension({"SMAP\nPreprocessSelectedFilesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreprocessSelectedFilesAction.kt\ncom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction$create$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,27:1\n1549#2:28\n1620#2,3:29\n*S KotlinDebug\n*F\n+ 1 PreprocessSelectedFilesAction.kt\ncom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction$create$1\n*L\n18#1:28\n18#1:29,3\n*E\n"})
    /* renamed from: com.onyx.android.sdk.filepicker.PreprocessSelectedFilesAction$a */
    /* loaded from: classes7.dex */
    public static final class C7392a<T, R> implements Function {

        /* renamed from: e */
        public static final C7392a<T, R> f42163e = new C7392a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Map<Uri, File>> apply(@NotNull List<DocumentBean> it2) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(it2, "it");
            File asFile = Paths.INSTANCE.asFile(CommonPaths.INSTANCE.importCacheDir());
            List<DocumentBean> list = it2;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it3 = list.iterator();
            while (it3.hasNext()) {
                arrayList.add(((DocumentBean) it3.next()).getPath());
            }
            return new CopyUriToFileAction(asFile, arrayList).build();
        }
    }

    @SourceDebugExtension({"SMAP\nPreprocessSelectedFilesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreprocessSelectedFilesAction.kt\ncom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction$create$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,27:1\n1855#2,2:28\n*S KotlinDebug\n*F\n+ 1 PreprocessSelectedFilesAction.kt\ncom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction$create$2\n*L\n20#1:28,2\n*E\n"})
    /* renamed from: com.onyx.android.sdk.filepicker.PreprocessSelectedFilesAction$b */
    /* loaded from: classes7.dex */
    public static final class C7393b<T> implements Consumer {
        public C7393b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Map<Uri, ? extends File> map) {
            Intrinsics.checkNotNullParameter(map, "map");
            for (DocumentBean documentBean : PreprocessSelectedFilesAction.this.documentBeanList) {
                documentBean.setFile(map.get(documentBean.getPath()));
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.filepicker.PreprocessSelectedFilesAction$c */
    /* loaded from: classes7.dex */
    public static final class C7394c<T, R> implements Function {
        public C7394c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<DocumentBean> apply(@NotNull Map<Uri, ? extends File> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PreprocessSelectedFilesAction.this.documentBeanList;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PreprocessSelectedFilesAction(@NotNull List<DocumentBean> documentBeanList) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(documentBeanList, "documentBeanList");
        this.documentBeanList = documentBeanList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<DocumentBean>> create() {
        if (this.documentBeanList.isEmpty()) {
            Observable<List<DocumentBean>> just = Observable.just(this.documentBeanList);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<List<DocumentBean>> map = Observable.just(this.documentBeanList).observeOn(getObserveOnMultiThread()).flatMap(C7392a.f42163e).doOnNext(new C7393b()).map(new C7394c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
