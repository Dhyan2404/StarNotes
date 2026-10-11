package com.onyx.galaxy.note.category.action.cover;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.bean.CoverCategory;
import com.onyx.android.sdk.replicator.note.bean.TemplateQueryBean;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.universal.editor.action.bkground.RxBaseTemplateAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0015\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002R\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/cover/LoadMaterialCoverListAction;", "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", CouchFieldKey.KEY_CATEGORY_ID, "m", "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;", C6997f.f39671c, "Ljava/util/List;", "categoryList", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadMaterialCoverListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadMaterialCoverListAction.kt\ncom/onyx/galaxy/note/category/action/cover/LoadMaterialCoverListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,37:1\n1855#2,2:38\n*S KotlinDebug\n*F\n+ 1 LoadMaterialCoverListAction.kt\ncom/onyx/galaxy/note/category/action/cover/LoadMaterialCoverListAction\n*L\n28#1:38,2\n*E\n"})
/* loaded from: classes9.dex */
public final class LoadMaterialCoverListAction extends RxBaseTemplateAction<List<? extends CoverModel>> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public List<CoverCategory> categoryList;

    /* renamed from: com.onyx.galaxy.note.category.action.cover.LoadMaterialCoverListAction$a */
    /* loaded from: classes9.dex */
    public static final class C11039a<T, R> implements Function {
        public C11039a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CoverModel> apply(@NotNull LoadMaterialCoverListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadMaterialCoverListAction.this.m42657l();
        }
    }

    public LoadMaterialCoverListAction(@NotNull List<CoverCategory> categoryList) {
        Intrinsics.checkNotNullParameter(categoryList, "categoryList");
        this.categoryList = categoryList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<CoverModel>> create() {
        Observable<List<CoverModel>> map = Observable.just(this).observeOn(getObserveOn()).map(new C11039a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final List<CoverModel> m42657l() {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = this.categoryList.iterator();
        while (it2.hasNext()) {
            arrayList.addAll(m42658m(((CoverCategory) it2.next()).getUniqueId()));
        }
        return arrayList;
    }

    /* renamed from: m */
    public final List<CoverModel> m42658m(String categoryId) {
        return KSyncBundle.INSTANCE.getUserCoverProvider().loadListByCategory(new TemplateQueryBean(categoryId, null, null, null, 14, null));
    }
}
