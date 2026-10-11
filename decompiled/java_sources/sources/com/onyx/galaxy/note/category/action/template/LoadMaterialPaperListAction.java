package com.onyx.galaxy.note.category.action.template;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.bean.TemplateCategory;
import com.onyx.android.sdk.replicator.note.bean.TemplateQueryBean;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.universal.editor.action.bkground.RxBaseTemplateAction;
import com.onyx.android.sdk.universal.editor.data.TemplateManagerBundle;
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

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0015\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\u0002¢\u0006\u0004\b\u0012\u0010\u0010J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002R(\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/template/LoadMaterialPaperListAction;", "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", CouchFieldKey.KEY_CATEGORY_ID, "m", "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;", C6997f.f39671c, "Ljava/util/List;", "getCategoryList", "()Ljava/util/List;", "setCategoryList", "(Ljava/util/List;)V", "categoryList", Constants.CONSTRUCTOR_NAME, "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadMaterialPaperListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadMaterialPaperListAction.kt\ncom/onyx/galaxy/note/category/action/template/LoadMaterialPaperListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,38:1\n1855#2,2:39\n*S KotlinDebug\n*F\n+ 1 LoadMaterialPaperListAction.kt\ncom/onyx/galaxy/note/category/action/template/LoadMaterialPaperListAction\n*L\n29#1:39,2\n*E\n"})
/* loaded from: classes9.dex */
public final class LoadMaterialPaperListAction extends RxBaseTemplateAction<List<? extends TemplateModel>> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public List<TemplateCategory> categoryList;

    /* renamed from: com.onyx.galaxy.note.category.action.template.LoadMaterialPaperListAction$a */
    /* loaded from: classes9.dex */
    public static final class C11205a<T, R> implements Function {
        public C11205a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<TemplateModel> apply(@NotNull TemplateManagerBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadMaterialPaperListAction.this.m42980l();
        }
    }

    public LoadMaterialPaperListAction(@NotNull List<TemplateCategory> categoryList) {
        Intrinsics.checkNotNullParameter(categoryList, "categoryList");
        this.categoryList = categoryList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<TemplateModel>> create() {
        Observable map = createObservable().observeOn(getObserveOn()).map(new C11205a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<TemplateCategory> getCategoryList() {
        return this.categoryList;
    }

    /* renamed from: l */
    public final List<TemplateModel> m42980l() {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = this.categoryList.iterator();
        while (it2.hasNext()) {
            arrayList.addAll(m42981m(((TemplateCategory) it2.next()).getUniqueId()));
        }
        return arrayList;
    }

    /* renamed from: m */
    public final List<TemplateModel> m42981m(String categoryId) {
        return KSyncBundle.INSTANCE.getUserTemplateProvider().loadTemplateListByCategory(new TemplateQueryBean(categoryId, null, null, null, 14, null));
    }

    public final void setCategoryList(@NotNull List<TemplateCategory> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.categoryList = list;
    }
}
