package com.onyx.galaxy.note.category.action.template;

import com.alibaba.fastjson2.TypeReference;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.RawResourceUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.data.template.OfficialCoverConst;
import com.onyx.android.sdk.data.common.data.template.TemplateCoverConstant;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.bean.CoverJsonList;
import com.onyx.android.sdk.replicator.note.bean.TemplateJsonList;
import com.onyx.android.sdk.replicator.note.bean.TemplateResourceWrapper;
import com.onyx.android.sdk.replicator.note.p035db.CoverProvider;
import com.onyx.android.sdk.replicator.note.p035db.TemplateProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverCategoryModel;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateCategoryModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.action.bkground.RxBaseTemplateAction;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.category.data.ImportDataStrategy;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0013¢\u0006\u0004\b \u0010!J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u0012\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\nH\u0002J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\nH\u0002J\u000e\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\nH\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001a\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00180\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;", "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", GoogleApiAvailabilityLight.f29016b, "m", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "coverModel", "l", "", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;", C4921e.f26528e, "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;", "q", "Lcom/onyx/android/sdk/replicator/note/bean/TemplateJsonList;", "r", "Lcom/onyx/android/sdk/replicator/note/bean/CoverJsonList;", "p", "Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;", C6997f.f39671c, "Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;", "importDataStrategy", "", "Ljava/lang/reflect/Field;", C6998g.f39679a, "[Ljava/lang/reflect/Field;", "rawResFields", "", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "isVersionLatest", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nImportOfficialTemplateCoverToDBAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportOfficialTemplateCoverToDBAction.kt\ncom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,156:1\n1603#2,9:157\n1855#2:166\n1856#2:168\n1612#2:169\n1855#2,2:170\n1603#2,9:172\n1855#2:181\n1856#2:183\n1612#2:184\n1855#2,2:185\n1#3:167\n1#3:182\n*S KotlinDebug\n*F\n+ 1 ImportOfficialTemplateCoverToDBAction.kt\ncom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction\n*L\n66#1:157,9\n66#1:166\n66#1:168\n66#1:169\n68#1:170,2\n88#1:172,9\n88#1:181\n88#1:183\n88#1:184\n90#1:185,2\n66#1:167\n88#1:182\n*E\n"})
/* loaded from: classes9.dex */
public final class ImportOfficialTemplateCoverToDBAction extends RxBaseTemplateAction<ImportOfficialTemplateCoverToDBAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final ImportDataStrategy importDataStrategy;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Field[] rawResFields;

    /* renamed from: h, reason: from kotlin metadata */
    public boolean isVersionLatest;

    /* renamed from: com.onyx.galaxy.note.category.action.template.ImportOfficialTemplateCoverToDBAction$a */
    /* loaded from: classes9.dex */
    public static final class C11198a<T, R> implements Function {
        public C11198a() {
        }

        /* renamed from: a */
        public final void m42972a(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportOfficialTemplateCoverToDBAction.this.m42967n();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m42972a((AccountDataBundle) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.ImportOfficialTemplateCoverToDBAction$b */
    /* loaded from: classes9.dex */
    public static final class C11199b<T, R> implements Function {
        public C11199b() {
        }

        /* renamed from: a */
        public final void m42973a(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportOfficialTemplateCoverToDBAction.this.m42966m();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m42973a((Unit) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.ImportOfficialTemplateCoverToDBAction$c */
    /* loaded from: classes9.dex */
    public static final class C11200c<T, R> implements Function {
        public C11200c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ImportOfficialTemplateCoverToDBAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportOfficialTemplateCoverToDBAction.this;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ImportOfficialTemplateCoverToDBAction() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ImportOfficialTemplateCoverToDBAction> create() {
        Observable map = AccountDataBundle.INSTANCE.loadOnyxAccountObservable().observeOn(getObserveOn()).map(new C11198a()).map(new C11199b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable map2 = RxjavaKt.flatMapIf(map, new Function1<Unit, Boolean>() { // from class: com.onyx.galaxy.note.category.action.template.ImportOfficialTemplateCoverToDBAction$create$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Unit it2) {
                boolean z;
                Intrinsics.checkNotNullParameter(it2, "it");
                z = ImportOfficialTemplateCoverToDBAction.this.isVersionLatest;
                return Boolean.valueOf(!z);
            }
        }, new Function1<Unit, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.category.action.template.ImportOfficialTemplateCoverToDBAction$create$4
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Unit it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new CleanDeprecatedTemplateRecordAction().build();
            }
        }).map(new C11200c());
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    /* renamed from: l */
    public final void m42965l(CoverModel coverModel) {
        boolean contains$default;
        Integer num;
        if (coverModel != null) {
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) coverModel.getCategoryId(), (CharSequence) "SIMPLE", false, 2, (Object) null);
            if (!contains$default || (num = OfficialCoverConst.INSTANCE.getMap().get(coverModel.getTitleResName())) == null) {
                return;
            }
            TemplateResourceWrapper.Companion companion = TemplateResourceWrapper.INSTANCE;
            MMKVUtils.INSTANCE.get().putInt(companion.generateResourceIndexKey(companion.generateResourceId(coverModel.getCategoryId(), coverModel.getUniqueId())), num.intValue());
        }
    }

    /* renamed from: m */
    public final void m42966m() {
        List<CoverModel> list;
        AccountDataBundle accountDataBundle = AccountDataBundle.INSTANCE;
        String syncUserId = accountDataBundle.getSyncUserId();
        if (this.importDataStrategy == ImportDataStrategy.COMPARE_REVISION && TemplateCoverConstant.INSTANCE.isLatestCoverRevision(MMKVNote.INSTANCE.getUserCoverRevision(syncUserId))) {
            return;
        }
        this.isVersionLatest = false;
        CoverProvider coverProvider = KSyncBundle.INSTANCE.getDbProviderBundle().getCoverProvider(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(accountDataBundle.getSyncUserId()));
        List<CoverJsonList> m42969p = m42969p();
        List<CoverCategoryModel> m42968o = m42968o();
        List<CoverJsonList> list2 = m42969p;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            CoverModel coverModel = ((CoverJsonList) it2.next()).getCoverModel();
            if (coverModel != null) {
                arrayList.add(coverModel);
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (CoverJsonList coverJsonList : list2) {
            m42965l(coverJsonList.getCoverModel());
            CollectionKt.safeAddAll(arrayList2, coverJsonList.getTemplateResourceList());
        }
        coverProvider.saveCoverCategoryList(m42968o, true);
        coverProvider.saveCoverList(list, true);
        coverProvider.saveTemplateResourceList(arrayList2, true);
        MMKVNote.INSTANCE.setUserCoverRevision(syncUserId, 18);
    }

    /* renamed from: n */
    public final void m42967n() {
        List<TemplateModel> list;
        AccountDataBundle accountDataBundle = AccountDataBundle.INSTANCE;
        String syncUserId = accountDataBundle.getSyncUserId();
        if (this.importDataStrategy == ImportDataStrategy.COMPARE_REVISION && TemplateCoverConstant.INSTANCE.isLatestTemplateRevision(MMKVNote.INSTANCE.getUserTemplateRevision(syncUserId))) {
            return;
        }
        this.isVersionLatest = false;
        TemplateProvider templateProvider = KSyncBundle.INSTANCE.getDbProviderBundle().getTemplateProvider(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(accountDataBundle.getSyncUserId()));
        List<TemplateJsonList> m42971r = m42971r();
        List<TemplateCategoryModel> m42970q = m42970q();
        List<TemplateJsonList> list2 = m42971r;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            TemplateModel templateModel = ((TemplateJsonList) it2.next()).getTemplateModel();
            if (templateModel != null) {
                arrayList.add(templateModel);
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it3 = list2.iterator();
        while (it3.hasNext()) {
            CollectionKt.safeAddAll(arrayList2, ((TemplateJsonList) it3.next()).getTemplateResourceList());
        }
        templateProvider.saveTemplateCategoryList(m42970q, true);
        templateProvider.saveTemplateList(list, true);
        templateProvider.saveTemplateResourceList(arrayList2, true);
        MMKVNote.INSTANCE.setUserTemplateRevision(syncUserId, 24);
    }

    /* renamed from: o */
    public final List<CoverCategoryModel> m42968o() {
        ResManager resManager = ResManager.INSTANCE;
        List<CoverCategoryModel> list = (List) JSONUtils.INSTANCE.parseObject(RawResourceUtil.INSTANCE.contentOfRawResource(resManager.getAppContext(), resManager.getRawIdentifier(TemplateCoverConstant.COVER_CATEGORY_JSON_FILE_NAME)), new TypeReference<List<? extends CoverCategoryModel>>() { // from class: com.onyx.galaxy.note.category.action.template.ImportOfficialTemplateCoverToDBAction$loadCoverCategoryListFromRes$1
        });
        return list == null ? new ArrayList() : list;
    }

    /* renamed from: p */
    public final List<CoverJsonList> m42969p() {
        boolean startsWith$default;
        ArrayList arrayList = new ArrayList();
        for (Field field : this.rawResFields) {
            String name = field.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(name, "cover", false, 2, null);
            if (startsWith$default) {
                ResManager resManager = ResManager.INSTANCE;
                CoverJsonList coverJsonList = (CoverJsonList) JSONUtils.INSTANCE.parseObject(RawResourceUtil.INSTANCE.contentOfRawResource(resManager.getAppContext(), resManager.getRawIdentifier(name)), CoverJsonList.class);
                if (coverJsonList != null) {
                    CollectionKt.safeAdd(arrayList, coverJsonList);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: q */
    public final List<TemplateCategoryModel> m42970q() {
        ResManager resManager = ResManager.INSTANCE;
        List<TemplateCategoryModel> list = (List) JSONUtils.INSTANCE.parseObject(RawResourceUtil.INSTANCE.contentOfRawResource(resManager.getAppContext(), resManager.getRawIdentifier(TemplateCoverConstant.TEMPLATE_CATEGORY_JSON_FILE_NAME)), new TypeReference<List<? extends TemplateCategoryModel>>() { // from class: com.onyx.galaxy.note.category.action.template.ImportOfficialTemplateCoverToDBAction$loadTemplateCategoryListFromRes$1
        });
        return list == null ? new ArrayList() : list;
    }

    /* renamed from: r */
    public final List<TemplateJsonList> m42971r() {
        boolean startsWith$default;
        ArrayList arrayList = new ArrayList();
        for (Field field : this.rawResFields) {
            String name = field.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(name, "template", false, 2, null);
            if (startsWith$default) {
                ResManager resManager = ResManager.INSTANCE;
                TemplateJsonList templateJsonList = (TemplateJsonList) JSONUtils.INSTANCE.parseObject(RawResourceUtil.INSTANCE.contentOfRawResource(resManager.getAppContext(), resManager.getRawIdentifier(name)), TemplateJsonList.class);
                if (templateJsonList != null) {
                    CollectionKt.safeAdd(arrayList, templateJsonList);
                }
            }
        }
        return arrayList;
    }

    public ImportOfficialTemplateCoverToDBAction(@NotNull ImportDataStrategy importDataStrategy) {
        Intrinsics.checkNotNullParameter(importDataStrategy, "importDataStrategy");
        this.importDataStrategy = importDataStrategy;
        Field[] fields = C8045R.raw.class.getFields();
        Intrinsics.checkNotNullExpressionValue(fields, "getFields(...)");
        this.rawResFields = fields;
        this.isVersionLatest = true;
    }

    public /* synthetic */ ImportOfficialTemplateCoverToDBAction(ImportDataStrategy importDataStrategy, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ImportDataStrategy.COMPARE_REVISION : importDataStrategy);
    }
}
