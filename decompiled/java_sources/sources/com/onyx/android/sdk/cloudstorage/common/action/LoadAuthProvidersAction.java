package com.onyx.android.sdk.cloudstorage.common.action;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.CloudStorageManager;
import com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.common.CloudStorageProviderFactory;
import com.onyx.android.sdk.cloudstorage.provider.common.utils.ProviderAccountModelUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/common/action/LoadAuthProvidersAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "accountList", "l", "Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;", "e", "Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;", "storageManager", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadAuthProvidersAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadAuthProvidersAction.kt\ncom/onyx/android/sdk/cloudstorage/common/action/LoadAuthProvidersAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,35:1\n1549#2:36\n1620#2,3:37\n*S KotlinDebug\n*F\n+ 1 LoadAuthProvidersAction.kt\ncom/onyx/android/sdk/cloudstorage/common/action/LoadAuthProvidersAction\n*L\n31#1:36\n31#1:37,3\n*E\n"})
/* loaded from: classes7.dex */
public final class LoadAuthProvidersAction extends RxBaseAction<List<CloudStorageProvider>> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final CloudStorageManager storageManager;

    /* renamed from: com.onyx.android.sdk.cloudstorage.common.action.LoadAuthProvidersAction$a */
    /* loaded from: classes7.dex */
    public static final class C7160a<T, R> implements Function {

        /* renamed from: e */
        public static final C7160a<T, R> f41057e = new C7160a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<ProviderAccountModel> apply(@NotNull CloudStorageManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ProviderAccountModelUtils.INSTANCE.queryAccountInfo();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.common.action.LoadAuthProvidersAction$b */
    /* loaded from: classes7.dex */
    public static final class C7161b<T, R> implements Function {
        public C7161b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CloudStorageProvider> apply(@NotNull List<ProviderAccountModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadAuthProvidersAction.this.m32266l(it2);
        }
    }

    public LoadAuthProvidersAction(@NotNull CloudStorageManager storageManager) {
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        this.storageManager = storageManager;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<CloudStorageProvider>> create() {
        Observable<List<CloudStorageProvider>> map = this.storageManager.createObservable().map(C7160a.f41057e).map(new C7161b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final List<CloudStorageProvider> m32266l(List<ProviderAccountModel> accountList) {
        int collectionSizeOrDefault;
        List<CloudStorageProvider> mutableList;
        List<ProviderAccountModel> list = accountList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(CloudStorageProviderFactory.INSTANCE.newType((ProviderAccountModel) it2.next()));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return mutableList;
    }
}
