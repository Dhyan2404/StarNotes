package com.onyx.galaxy.note.category.action.cover;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.bean.CoverCategory;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverCategoryModel;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverPaperExtKt;
import com.onyx.android.sdk.universal.editor.action.bkground.RxBaseTemplateAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0015\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u001d\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/cover/LoadCoverCategoryListAction;", "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "", "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", C6997f.f39671c, "Ljava/util/List;", "getTypes", "()Ljava/util/List;", "types", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadCoverCategoryListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadCoverCategoryListAction.kt\ncom/onyx/galaxy/note/category/action/cover/LoadCoverCategoryListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,24:1\n1549#2:25\n1620#2,3:26\n*S KotlinDebug\n*F\n+ 1 LoadCoverCategoryListAction.kt\ncom/onyx/galaxy/note/category/action/cover/LoadCoverCategoryListAction\n*L\n22#1:25\n22#1:26,3\n*E\n"})
/* loaded from: classes9.dex */
public final class LoadCoverCategoryListAction extends RxBaseTemplateAction<List<? extends CoverCategory>> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<Integer> types;

    /* renamed from: com.onyx.galaxy.note.category.action.cover.LoadCoverCategoryListAction$a */
    /* loaded from: classes9.dex */
    public static final class C11035a<T, R> implements Function {
        public C11035a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CoverCategory> apply(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadCoverCategoryListAction.this.m42650l();
        }
    }

    public LoadCoverCategoryListAction(@NotNull List<Integer> types) {
        Intrinsics.checkNotNullParameter(types, "types");
        this.types = types;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<CoverCategory>> create() {
        Observable map = AccountDataBundle.INSTANCE.loadOnyxAccountObservable().observeOn(getObserveOn()).map(new C11035a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<Integer> getTypes() {
        return this.types;
    }

    /* renamed from: l */
    public final List<CoverCategory> m42650l() {
        int collectionSizeOrDefault;
        List<CoverCategoryModel> loadCoverCategoryList = KSyncBundle.INSTANCE.getDbProviderBundle().getCoverProvider(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId())).loadCoverCategoryList(this.types);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadCoverCategoryList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadCoverCategoryList.iterator();
        while (it2.hasNext()) {
            arrayList.add(CoverPaperExtKt.convertToCoverCategory((CoverCategoryModel) it2.next()));
        }
        return arrayList;
    }
}
