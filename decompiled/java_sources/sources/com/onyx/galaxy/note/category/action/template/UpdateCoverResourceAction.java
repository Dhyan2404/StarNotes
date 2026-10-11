package com.onyx.galaxy.note.category.action.template;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.note.p035db.CoverProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateResourceModel;
import com.onyx.android.sdk.universal.editor.action.bkground.RxBaseTemplateAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/template/UpdateCoverResourceAction;", "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;", "coverProvider", "l", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "coverModel", "", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;", C6998g.f39679a, "Ljava/util/List;", "list", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUpdateCoverResourceAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateCoverResourceAction.kt\ncom/onyx/galaxy/note/category/action/template/UpdateCoverResourceAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,51:1\n1549#2:52\n1620#2,3:53\n1855#2,2:56\n1620#2,3:58\n*S KotlinDebug\n*F\n+ 1 UpdateCoverResourceAction.kt\ncom/onyx/galaxy/note/category/action/template/UpdateCoverResourceAction\n*L\n31#1:52\n31#1:53,3\n33#1:56,2\n40#1:58,3\n*E\n"})
/* loaded from: classes9.dex */
public final class UpdateCoverResourceAction extends RxBaseTemplateAction<Boolean> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final CoverModel coverModel;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<TemplateResourceModel> list;

    /* renamed from: com.onyx.galaxy.note.category.action.template.UpdateCoverResourceAction$a */
    /* loaded from: classes9.dex */
    public static final class C11221a<T, R> implements Function {
        public C11221a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull CoverProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(UpdateCoverResourceAction.this.m43010l(it2));
        }
    }

    public UpdateCoverResourceAction(@NotNull CoverModel coverModel, @NotNull List<TemplateResourceModel> list) {
        Intrinsics.checkNotNullParameter(coverModel, "coverModel");
        Intrinsics.checkNotNullParameter(list, "list");
        this.coverModel = coverModel;
        this.list = list;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable map = createCoverProviderObservable().map(new C11221a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final boolean m43010l(CoverProvider coverProvider) {
        int collectionSizeOrDefault;
        List distinct;
        List<String> resourceIdList;
        CoverModel loadCoverById = coverProvider.loadCoverById(this.coverModel.getUniqueId());
        List<TemplateResourceModel> list = this.list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((TemplateResourceModel) it2.next()).getUniqueId());
        }
        Map map = CollectionKt.toMap(coverProvider.loadCoverResources(arrayList), new Function1<TemplateResourceModel, String>() { // from class: com.onyx.galaxy.note.category.action.template.UpdateCoverResourceAction$update$oldResourceMap$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull TemplateResourceModel it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return it3.getUniqueId();
            }
        });
        for (TemplateResourceModel templateResourceModel : this.list) {
            TemplateResourceModel templateResourceModel2 = (TemplateResourceModel) map.get(templateResourceModel.getUniqueId());
            if (templateResourceModel2 != null) {
                if (templateResourceModel.getFillColor() != templateResourceModel2.getFillColor()) {
                    templateResourceModel.setUniqueId(UUIDUtils.INSTANCE.shortUUID());
                }
            }
        }
        List<TemplateResourceModel> list2 = this.list;
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it3 = list2.iterator();
        while (it3.hasNext()) {
            arrayList2.add(((TemplateResourceModel) it3.next()).getUniqueId());
        }
        arrayList2.addAll(map.keySet());
        distinct = CollectionsKt___CollectionsKt.distinct(arrayList2);
        List list3 = distinct;
        CollectionKt.reset(this.coverModel.getResourceIdList(), list3);
        if (loadCoverById != null && (resourceIdList = loadCoverById.getResourceIdList()) != null) {
            CollectionKt.reset(resourceIdList, list3);
        }
        CoverProvider.saveTemplateResourceList$default(coverProvider, this.list, false, 2, null);
        if (loadCoverById == null) {
            return true;
        }
        coverProvider.save(loadCoverById);
        return true;
    }
}
