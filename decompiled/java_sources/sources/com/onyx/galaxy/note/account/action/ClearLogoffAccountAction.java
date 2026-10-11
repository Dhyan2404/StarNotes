package com.onyx.galaxy.note.account.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.action.BaseRxAccountAction;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.account.request.cloud.CheckAccountStatusRequest;
import com.onyx.android.sdk.data.couchbase.CouchDBManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0016\u0010\t\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/action/ClearLogoffAccountAction;", "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "", "l", "inactiveList", "", "m", "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;", "e", "Ljava/util/List;", "localAccountList", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nClearLogoffAccountAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClearLogoffAccountAction.kt\ncom/onyx/galaxy/note/account/action/ClearLogoffAccountAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n1549#2:55\n1620#2,3:56\n766#2:59\n857#2,2:60\n1855#2,2:62\n*S KotlinDebug\n*F\n+ 1 ClearLogoffAccountAction.kt\ncom/onyx/galaxy/note/account/action/ClearLogoffAccountAction\n*L\n33#1:55\n33#1:56,3\n44#1:59\n44#1:60,2\n48#1:62,2\n*E\n"})
/* loaded from: classes9.dex */
public final class ClearLogoffAccountAction extends BaseRxAccountAction<ClearLogoffAccountAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<OnyxAccountModel> localAccountList = AccountDataBundle.INSTANCE.getRecentLoginLocalAccountList();

    /* renamed from: com.onyx.galaxy.note.account.action.ClearLogoffAccountAction$a */
    /* loaded from: classes9.dex */
    public static final class C10662a<T, R> implements Function {
        public C10662a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<String> apply(@NotNull ClearLogoffAccountAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ClearLogoffAccountAction.this.m41743l();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.ClearLogoffAccountAction$b */
    /* loaded from: classes9.dex */
    public static final class C10663b<T> implements Consumer {
        public C10663b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ClearLogoffAccountAction.this.m41744m(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.ClearLogoffAccountAction$c */
    /* loaded from: classes9.dex */
    public static final class C10664c<T, R> implements Function {
        public C10664c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ClearLogoffAccountAction apply(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ClearLogoffAccountAction.this;
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ClearLogoffAccountAction> create() {
        Observable<ClearLogoffAccountAction> map = Observable.just(this).observeOn(getCloudScheduler()).map(new C10662a()).observeOn(getDataScheduler()).doOnNext(new C10663b()).map(new C10664c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final List<String> m41743l() {
        int collectionSizeOrDefault;
        List<String> emptyList;
        List<OnyxAccountModel> list = this.localAccountList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((OnyxAccountModel) it2.next()).getUniqueId());
        }
        if (!arrayList.isEmpty()) {
            return new CheckAccountStatusRequest(arrayList).execute().getInactiveItems();
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    /* renamed from: m */
    public final void m41744m(List<String> inactiveList) {
        if (inactiveList.isEmpty()) {
            return;
        }
        List<OnyxAccountModel> list = this.localAccountList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (inactiveList.contains(((OnyxAccountModel) obj).getUniqueId())) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((OnyxAccountModel) it2.next()).setLogoff(true);
        }
        CouchDBManager.INSTANCE.getOnyxAccountProvider().saveAccountList(arrayList);
        AccountDataBundle.INSTANCE.loadRecentLoginAccountList();
    }
}
