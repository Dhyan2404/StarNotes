package com.onyx.galaxy.note.category.action.cover;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.bean.CoverCategory;
import com.onyx.android.sdk.replicator.note.bean.TemplateQueryBean;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.universal.editor.action.bkground.RxBaseTemplateAction;
import com.onyx.galaxy.note.category.data.TemplateSourceType;
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

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B%\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\u0006\u0010\u0019\u001a\u00020\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002R\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0019\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/cover/LoadAllOfficialCoverListAction;", "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", CouchFieldKey.KEY_CATEGORY_ID, "m", "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;", C6997f.f39671c, "Ljava/util/List;", "categoryList", "", C6998g.f39679a, "I", "getOrientation", "()I", "orientation", "Lcom/onyx/galaxy/note/category/data/TemplateSourceType;", C6999h.f39688c, "Lcom/onyx/galaxy/note/category/data/TemplateSourceType;", "getSourceType", "()Lcom/onyx/galaxy/note/category/data/TemplateSourceType;", "sourceType", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;ILcom/onyx/galaxy/note/category/data/TemplateSourceType;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadAllOfficialCoverListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadAllOfficialCoverListAction.kt\ncom/onyx/galaxy/note/category/action/cover/LoadAllOfficialCoverListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,39:1\n1855#2,2:40\n*S KotlinDebug\n*F\n+ 1 LoadAllOfficialCoverListAction.kt\ncom/onyx/galaxy/note/category/action/cover/LoadAllOfficialCoverListAction\n*L\n23#1:40,2\n*E\n"})
/* loaded from: classes9.dex */
public final class LoadAllOfficialCoverListAction extends RxBaseTemplateAction<List<? extends CoverModel>> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public List<CoverCategory> categoryList;

    /* renamed from: g, reason: from kotlin metadata */
    public final int orientation;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final TemplateSourceType sourceType;

    /* renamed from: com.onyx.galaxy.note.category.action.cover.LoadAllOfficialCoverListAction$a */
    /* loaded from: classes9.dex */
    public static final class C11034a<T, R> implements Function {
        public C11034a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CoverModel> apply(@NotNull LoadAllOfficialCoverListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadAllOfficialCoverListAction.this.m42647l();
        }
    }

    public LoadAllOfficialCoverListAction(@NotNull List<CoverCategory> categoryList, int i, @NotNull TemplateSourceType sourceType) {
        Intrinsics.checkNotNullParameter(categoryList, "categoryList");
        Intrinsics.checkNotNullParameter(sourceType, "sourceType");
        this.categoryList = categoryList;
        this.orientation = i;
        this.sourceType = sourceType;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<CoverModel>> create() {
        Observable<List<CoverModel>> map = Observable.just(this).observeOn(getObserveOn()).map(new C11034a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final int getOrientation() {
        return this.orientation;
    }

    @NotNull
    public final TemplateSourceType getSourceType() {
        return this.sourceType;
    }

    /* renamed from: l */
    public final List<CoverModel> m42647l() {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = this.categoryList.iterator();
        while (it2.hasNext()) {
            arrayList.addAll(m42648m(((CoverCategory) it2.next()).getUniqueId()));
        }
        return arrayList;
    }

    /* renamed from: m */
    public final List<CoverModel> m42648m(String categoryId) {
        return KSyncBundle.INSTANCE.getDbProviderBundle().getCoverProvider(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId())).loadListByCategory(new TemplateQueryBean(categoryId, this.sourceType == TemplateSourceType.MATERIALS ? null : Integer.valueOf(this.orientation), null, null, 12, null));
    }
}
