package com.onyx.galaxy.note.category.action.template;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.onyx.android.sdk.replicator.note.bean.TemplateCategory;
import com.onyx.android.sdk.replicator.note.bean.TemplateQueryBean;
import com.onyx.android.sdk.replicator.note.p035db.TemplateProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.universal.editor.action.bkground.RxBaseTemplateAction;
import com.onyx.android.sdk.universal.editor.data.TemplateManagerBundle;
import com.onyx.galaxy.note.category.data.TemplateSourceType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B-\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\u0006\u0010\u001d\u001a\u00020\u0018¢\u0006\u0004\b\u001e\u0010\u001fJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002R\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0017\u0010\u001d\u001a\u00020\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/template/LoadAllOfficialPaperListAction;", "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", CouchFieldKey.KEY_CATEGORY_ID, "m", "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;", C6997f.f39671c, "Ljava/util/List;", "categoryList", "", C6998g.f39679a, "I", "getOrientation", "()I", "orientation", "", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "boundlessPaperOnly", "Lcom/onyx/galaxy/note/category/data/TemplateSourceType;", "i", "Lcom/onyx/galaxy/note/category/data/TemplateSourceType;", "getTemplateSourceType", "()Lcom/onyx/galaxy/note/category/data/TemplateSourceType;", "templateSourceType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;IZLcom/onyx/galaxy/note/category/data/TemplateSourceType;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadAllOfficialPaperListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadAllOfficialPaperListAction.kt\ncom/onyx/galaxy/note/category/action/template/LoadAllOfficialPaperListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n1855#2,2:55\n*S KotlinDebug\n*F\n+ 1 LoadAllOfficialPaperListAction.kt\ncom/onyx/galaxy/note/category/action/template/LoadAllOfficialPaperListAction\n*L\n29#1:55,2\n*E\n"})
/* loaded from: classes9.dex */
public final class LoadAllOfficialPaperListAction extends RxBaseTemplateAction<List<? extends TemplateModel>> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public List<TemplateCategory> categoryList;

    /* renamed from: g, reason: from kotlin metadata */
    public final int orientation;

    /* renamed from: h, reason: from kotlin metadata */
    public final boolean boundlessPaperOnly;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final TemplateSourceType templateSourceType;

    /* renamed from: com.onyx.galaxy.note.category.action.template.LoadAllOfficialPaperListAction$a */
    /* loaded from: classes9.dex */
    public static final class C11203a<T, R> implements Function {
        public C11203a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<TemplateModel> apply(@NotNull TemplateManagerBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadAllOfficialPaperListAction.this.m42975l();
        }
    }

    public LoadAllOfficialPaperListAction(@NotNull List<TemplateCategory> categoryList, int i, boolean z, @NotNull TemplateSourceType templateSourceType) {
        Intrinsics.checkNotNullParameter(categoryList, "categoryList");
        Intrinsics.checkNotNullParameter(templateSourceType, "templateSourceType");
        this.categoryList = categoryList;
        this.orientation = i;
        this.boundlessPaperOnly = z;
        this.templateSourceType = templateSourceType;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<TemplateModel>> create() {
        Observable map = createObservable().observeOn(getObserveOn()).map(new C11203a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final int getOrientation() {
        return this.orientation;
    }

    @NotNull
    public final TemplateSourceType getTemplateSourceType() {
        return this.templateSourceType;
    }

    /* renamed from: l */
    public final List<TemplateModel> m42975l() {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = this.categoryList.iterator();
        while (it2.hasNext()) {
            arrayList.addAll(m42976m(((TemplateCategory) it2.next()).getUniqueId()));
        }
        return arrayList;
    }

    /* renamed from: m */
    public final List<TemplateModel> m42976m(String categoryId) {
        List<String> listOf;
        Integer valueOf = Integer.valueOf(this.orientation);
        TemplateProvider templateProvider = KSyncBundle.INSTANCE.getDbProviderBundle().getTemplateProvider(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId()));
        TemplateQueryBean templateQueryBean = new TemplateQueryBean(categoryId, null, null, null, 14, null);
        if (this.boundlessPaperOnly) {
            templateQueryBean.setOrientation(null);
            templateQueryBean.setSizeFormat(SizeFormat.BOUNDLESS.getSizeFormatName());
        } else {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(SizeFormat.BOUNDLESS.getSizeFormatName());
            templateQueryBean.setExcludeSizeFormat(listOf);
        }
        if (this.templateSourceType == TemplateSourceType.MATERIALS) {
            valueOf = null;
        }
        templateQueryBean.setOrientation(valueOf);
        return templateProvider.loadTemplateListByCategory(templateQueryBean);
    }
}
