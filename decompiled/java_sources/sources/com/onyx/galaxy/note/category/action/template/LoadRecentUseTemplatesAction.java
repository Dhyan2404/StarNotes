package com.onyx.galaxy.note.category.action.template;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.genericshape.GeoFactory;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.genericshape.PageMargins;
import com.onyx.android.sdk.genericshape.Properties;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.onyx.android.sdk.replicator.note.bean.TemplateResourceWrapper;
import com.onyx.android.sdk.replicator.note.p035db.TemplateProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateRecentUseModel;
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

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0012\u001a\u00020\r¢\u0006\u0004\b\u0013\u0010\u0014J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u001c\u0010\n\u001a\u0004\u0018\u00010\u00032\u0006\u0010\b\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u0003H\u0002J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u0003H\u0002R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u000f¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction;", "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;", "recentUseTemplate", "templateModel", "l", "", "m", "", C6997f.f39671c, "I", TypedValues.CycleType.S_WAVE_OFFSET, C6998g.f39679a, "limit", Constants.CONSTRUCTOR_NAME, "(II)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadRecentUseTemplatesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadRecentUseTemplatesAction.kt\ncom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,73:1\n1549#2:74\n1620#2,3:75\n1603#2,9:78\n1855#2:87\n1856#2:89\n1612#2:90\n766#2:91\n857#2,2:92\n1#3:88\n*S KotlinDebug\n*F\n+ 1 LoadRecentUseTemplatesAction.kt\ncom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction\n*L\n37#1:74\n37#1:75,3\n41#1:78,9\n41#1:87\n41#1:89\n41#1:90\n42#1:91\n42#1:92,2\n41#1:88\n*E\n"})
/* loaded from: classes9.dex */
public final class LoadRecentUseTemplatesAction extends RxBaseTemplateAction<List<? extends TemplateModel>> {

    /* renamed from: f, reason: from kotlin metadata */
    public final int offset;

    /* renamed from: g, reason: from kotlin metadata */
    public final int limit;

    /* renamed from: com.onyx.galaxy.note.category.action.template.LoadRecentUseTemplatesAction$a */
    /* loaded from: classes9.dex */
    public static final class C11209a<T, R> implements Function {
        public C11209a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<TemplateModel> apply(@NotNull LoadRecentUseTemplatesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadRecentUseTemplatesAction.this.m42991n();
        }
    }

    public LoadRecentUseTemplatesAction(int i, int i2) {
        this.offset = i;
        this.limit = i2;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<TemplateModel>> create() {
        Observable<List<TemplateModel>> map = Observable.just(this).observeOn(getObserveOn()).map(new C11209a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final TemplateModel m42989l(TemplateRecentUseModel recentUseTemplate, TemplateModel templateModel) {
        Properties properties;
        PageMargins pageMargins;
        Integer fillColor;
        TemplateModel templateModel2 = (TemplateModel) JSONUtils.INSTANCE.clone(templateModel, TemplateModel.class);
        if (templateModel2 == null) {
            return null;
        }
        TemplateResourceWrapper templateResourceWrapper = new TemplateResourceWrapper();
        int i = 0;
        templateResourceWrapper.setFromMMKV(false);
        templateResourceWrapper.setTemplateUniqueId(TemplateResourceWrapper.INSTANCE.generateResourceId(templateModel != null ? templateModel.getCategoryId() : null, templateModel != null ? templateModel.getUniqueId() : null));
        Intrinsics.checkNotNull(templateModel);
        templateResourceWrapper.setResourceList(templateModel.getTemplateResourceWrapper().getResourceList());
        GeoLayout parseGeoLayout = GeoFactory.INSTANCE.parseGeoLayout(recentUseTemplate.getGeoContent());
        if (parseGeoLayout != null && (fillColor = parseGeoLayout.getFillColor()) != null) {
            i = fillColor.intValue();
        }
        templateResourceWrapper.selectByFillColor(Integer.valueOf(i));
        templateResourceWrapper.setCurSpacing((parseGeoLayout == null || (properties = parseGeoLayout.getProperties()) == null || (pageMargins = properties.getPageMargins()) == null) ? 0.0f : pageMargins.getSpacing());
        templateModel2.setTemplateResourceWrapper(templateResourceWrapper);
        return templateModel2;
    }

    /* renamed from: m */
    public final boolean m42990m(TemplateModel templateModel) {
        if (SizeFormat.INSTANCE.isCustom(templateModel.getSizeFormat())) {
            return FileUtils.INSTANCE.isFileExist(templateModel.getTemplateResourceWrapper().getCurAbsolutePath());
        }
        return true;
    }

    /* renamed from: n */
    public final List<TemplateModel> m42991n() {
        int collectionSizeOrDefault;
        List<TemplateModel> list;
        TemplateProvider userTemplateProvider = KSyncBundle.INSTANCE.getUserTemplateProvider();
        List<TemplateRecentUseModel> loadRecentUseTemplates = userTemplateProvider.loadRecentUseTemplates(this.offset, this.limit);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadRecentUseTemplates, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadRecentUseTemplates.iterator();
        while (it2.hasNext()) {
            arrayList.add(((TemplateRecentUseModel) it2.next()).getContentId());
        }
        Map map = CollectionKt.toMap(userTemplateProvider.loadTemplateListByIdList(arrayList), new Function1<TemplateModel, String>() { // from class: com.onyx.galaxy.note.category.action.template.LoadRecentUseTemplatesAction$load$templateMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull TemplateModel it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return it3.getUniqueId();
            }
        });
        ArrayList arrayList2 = new ArrayList();
        for (TemplateRecentUseModel templateRecentUseModel : loadRecentUseTemplates) {
            TemplateModel m42989l = m42989l(templateRecentUseModel, (TemplateModel) map.get(templateRecentUseModel.getContentId()));
            if (m42989l != null) {
                arrayList2.add(m42989l);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : arrayList2) {
            if (m42990m((TemplateModel) obj)) {
                arrayList3.add(obj);
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList3);
        return list;
    }
}
