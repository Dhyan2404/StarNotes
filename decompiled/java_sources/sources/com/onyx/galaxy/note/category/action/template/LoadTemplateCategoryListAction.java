package com.onyx.galaxy.note.category.action.template;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.bean.TemplateCategory;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverPaperExtKt;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateCategoryModel;
import com.onyx.android.sdk.universal.editor.action.bkground.RxBaseTemplateAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001d\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001d\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction;", "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "", "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "boundlessPaperOnly", "", C6998g.f39679a, "Ljava/util/List;", "getTypes", "()Ljava/util/List;", "types", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ZLjava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadTemplateCategoryListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadTemplateCategoryListAction.kt\ncom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,30:1\n1549#2:31\n1620#2,3:32\n*S KotlinDebug\n*F\n+ 1 LoadTemplateCategoryListAction.kt\ncom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction\n*L\n28#1:31\n28#1:32,3\n*E\n"})
/* loaded from: classes9.dex */
public final class LoadTemplateCategoryListAction extends RxBaseTemplateAction<List<? extends TemplateCategory>> {

    /* renamed from: f, reason: from kotlin metadata */
    public final boolean boundlessPaperOnly;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<Integer> types;

    /* renamed from: com.onyx.galaxy.note.category.action.template.LoadTemplateCategoryListAction$a */
    /* loaded from: classes9.dex */
    public static final class C11214a<T, R> implements Function {
        public C11214a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<TemplateCategory> apply(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadTemplateCategoryListAction.this.m42999l();
        }
    }

    public LoadTemplateCategoryListAction(boolean z, @NotNull List<Integer> types) {
        Intrinsics.checkNotNullParameter(types, "types");
        this.boundlessPaperOnly = z;
        this.types = types;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<TemplateCategory>> create() {
        Observable map = AccountDataBundle.INSTANCE.loadOnyxAccountObservable().observeOn(getObserveOn()).map(new C11214a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<Integer> getTypes() {
        return this.types;
    }

    /* renamed from: l */
    public final List<TemplateCategory> m42999l() {
        int collectionSizeOrDefault;
        List<TemplateCategoryModel> loadTemplateCategoryList = KSyncBundle.INSTANCE.getDbProviderBundle().getTemplateProvider(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId())).loadTemplateCategoryList(this.boundlessPaperOnly ? CollectionsKt__CollectionsJVMKt.listOf("BASE") : null, this.types);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadTemplateCategoryList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadTemplateCategoryList.iterator();
        while (it2.hasNext()) {
            arrayList.add(CoverPaperExtKt.convertToTemplateCategory((TemplateCategoryModel) it2.next()));
        }
        return arrayList;
    }
}
