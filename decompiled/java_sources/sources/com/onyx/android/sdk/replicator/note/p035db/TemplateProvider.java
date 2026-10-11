package com.onyx.android.sdk.replicator.note.p035db;

import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.couchbase.lite.Collection;
import com.couchbase.lite.Database;
import com.couchbase.lite.SelectResult;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.bean.TemplateQueryBean;
import com.onyx.android.sdk.replicator.note.bean.TemplateResourceWrapper;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateCategoryModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateRecentUseModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateResourceModel;
import com.onyx.android.sdk.replicator.note.utils.TemplateResourcesKt;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010@\u001a\u00020?¢\u0006\u0004\bA\u0010BJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\b\u001a\u00020\u0007J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0006\u0010\r\u001a\u00020\fJ\u0010\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0006\u0010\r\u001a\u00020\fJ\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\t2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\f0\tJ\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0013\u001a\u00020\u0012J\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\n0\t2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\n0\tJ\u000e\u0010\u0018\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\fJ\u000e\u0010\u0019\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\fJ\u0012\u0010\u001b\u001a\u0004\u0018\u00010\n2\b\u0010\u001a\u001a\u0004\u0018\u00010\nJ\u001a\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\t2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\f0\tJ\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001d0\tJ\u000e\u0010!\u001a\u00020 2\u0006\u0010\u001a\u001a\u00020\nJ\u001e\u0010$\u001a\u00020#2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\b\u0002\u0010\"\u001a\u00020\u0017J\u001e\u0010%\u001a\u00020#2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u001d0\t2\b\b\u0002\u0010\"\u001a\u00020\u0017J\u001e\u0010'\u001a\u00020#2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020&0\t2\b\b\u0002\u0010\"\u001a\u00020\u0017J,\u0010+\u001a\b\u0012\u0004\u0012\u00020&0\t2\u0010\b\u0002\u0010(\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\t2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020)0\tJ\u0014\u0010-\u001a\u00020\u00172\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\n0\tJ\u001c\u00101\u001a\b\u0012\u0004\u0012\u0002000\t2\u0006\u0010.\u001a\u00020)2\u0006\u0010/\u001a\u00020)J\u000e\u00103\u001a\u0002002\u0006\u00102\u001a\u000200J\u0006\u00104\u001a\u00020 J\u0006\u00105\u001a\u00020 J\u0006\u00106\u001a\u00020 J\u000e\u00108\u001a\u00020\u00172\u0006\u00107\u001a\u00020\fJ\u0006\u00109\u001a\u00020 J\u0010\u0010;\u001a\u00020 2\b\b\u0002\u0010:\u001a\u00020\fJ\u000e\u0010=\u001a\u00020 2\u0006\u0010<\u001a\u00020\fJ\u000e\u0010>\u001a\u00020 2\u0006\u0010<\u001a\u00020\f¨\u0006C"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "Lcom/couchbase/lite/Collection;", "b", "a", "d", "c", "Lcom/onyx/android/sdk/replicator/note/bean/TemplateQueryBean;", "templateQueryBean", "", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "loadTemplateListByCategory", "", "templateId", "loadTemplateListById", "loadEnableTemplateById", "templateIdList", "loadTemplateListByIdList", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "cbQueryArgs", "loadTemplateList", "list", "loadTemplatesResource", "", "checkTemplateModelExist", "checkTemplateModelEnable", "templateModel", "loadTemplateResource", "uniqueIdList", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;", "loadTemplateResources", "loadOfficialTemplateResourceColors", "", "saveTemplate", "isUpgrade", "", "saveTemplateList", "saveTemplateResourceList", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;", "saveTemplateCategoryList", "categoryIdList", "", "types", "loadTemplateCategoryList", "templateModelList", SyncConstant.SYNC_ACTION_REMOVE, TypedValues.CycleType.S_WAVE_OFFSET, "limit", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;", "loadRecentUseTemplates", "model", "addRecentUseTemplate", "removeOfficialTemplateModel", "removeOfficialTemplateCategory", "removeOfficialTemplateResource", "title", "checkTemplateNameRepeat", "purgeCustomTemplateModel", CouchFieldKey.KEY_UID, "purgeCustomTemplateResource", CouchFieldKey.KEY_CATEGORY_ID, "removeTemplateCategoryAndTemplate", "removeTemplateByCategory", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTemplateProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateProvider.kt\ncom/onyx/android/sdk/replicator/note/db/TemplateProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,257:1\n48#2,5:258\n48#2,5:267\n48#2,5:272\n137#2,3:281\n48#2,5:284\n128#2:289\n129#2,3:295\n137#2,3:302\n48#2,5:305\n128#2:310\n129#2,3:316\n137#2,3:323\n48#2,5:326\n128#2:331\n129#2,3:337\n48#2,5:340\n48#2,5:345\n48#2,5:350\n48#2,5:359\n48#2,5:368\n48#2,5:377\n1855#3,2:263\n1855#3,2:265\n1549#3:277\n1620#3,3:278\n766#3:290\n857#3:291\n288#3,2:292\n858#3:294\n1549#3:298\n1620#3,3:299\n766#3:311\n857#3:312\n288#3,2:313\n858#3:315\n1549#3:319\n1620#3,3:320\n766#3:332\n857#3:333\n288#3,2:334\n858#3:336\n1549#3:355\n1620#3,3:356\n1549#3:364\n1620#3,3:365\n1549#3:373\n1620#3,3:374\n1855#3,2:382\n1549#3:384\n1620#3,3:385\n*S KotlinDebug\n*F\n+ 1 TemplateProvider.kt\ncom/onyx/android/sdk/replicator/note/db/TemplateProvider\n*L\n73#1:258,5\n108#1:267,5\n116#1:272,5\n129#1:281,3\n129#1:284,5\n130#1:289\n130#1:295,3\n142#1:302,3\n142#1:305,5\n143#1:310\n143#1:316,3\n155#1:323,3\n155#1:326,5\n156#1:331\n156#1:337,3\n169#1:340,5\n186#1:345,5\n191#1:350,5\n209#1:359,5\n219#1:368,5\n241#1:377,5\n78#1:263,2\n95#1:265,2\n128#1:277\n128#1:278,3\n130#1:290\n130#1:291\n131#1:292,2\n130#1:294\n141#1:298\n141#1:299,3\n143#1:311\n143#1:312\n144#1:313,2\n143#1:315\n154#1:319\n154#1:320,3\n156#1:332\n156#1:333\n157#1:334,2\n156#1:336\n203#1:355\n203#1:356,3\n212#1:364\n212#1:365,3\n220#1:373\n220#1:374,3\n242#1:382,2\n243#1:384\n243#1:385,3\n*E\n"})
/* loaded from: classes8.dex */
public final class TemplateProvider extends BaseCouchProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TemplateProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ List loadTemplateCategoryList$default(TemplateProvider templateProvider, List list, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = null;
        }
        return templateProvider.loadTemplateCategoryList(list, list2);
    }

    public static /* synthetic */ void purgeCustomTemplateResource$default(TemplateProvider templateProvider, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = AccountDataBundle.INSTANCE.getSyncUserId();
        }
        templateProvider.purgeCustomTemplateResource(str);
    }

    public static /* synthetic */ long saveTemplateCategoryList$default(TemplateProvider templateProvider, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return templateProvider.saveTemplateCategoryList(list, z);
    }

    public static /* synthetic */ long saveTemplateList$default(TemplateProvider templateProvider, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return templateProvider.saveTemplateList(list, z);
    }

    public static /* synthetic */ long saveTemplateResourceList$default(TemplateProvider templateProvider, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return templateProvider.saveTemplateResourceList(list, z);
    }

    /* renamed from: a */
    public final Collection m35185a() {
        return ensureCollection(SyncConstant.COLLECTION_TEMPLATE_CATEGORY_MODEL);
    }

    @NotNull
    public final TemplateRecentUseModel addRecentUseTemplate(@NotNull TemplateRecentUseModel model) {
        String str;
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(model, "model");
        CBQueryArgs loadSameRecentUseTemplateQuery = TemplateQueryArgsExtKt.loadSameRecentUseTemplateQuery(model);
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35187c = m35187c();
        if (m35187c == null || (str = m35187c.getName()) == null) {
            str = "_default";
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m35187c, loadSameRecentUseTemplateQuery), TemplateRecentUseModel.class, str));
        TemplateRecentUseModel templateRecentUseModel = (TemplateRecentUseModel) firstOrNull;
        if (templateRecentUseModel != null) {
            model = templateRecentUseModel;
        }
        model.beforeSave();
        model.ensureUniqueIdExist();
        couchCollections.saveDocument(m35187c(), (Collection) model);
        return model;
    }

    /* renamed from: b */
    public final Collection m35186b() {
        return ensureCollection(SyncConstant.COLLECTION_TEMPLATE_MODEL);
    }

    /* renamed from: c */
    public final Collection m35187c() {
        return ensureCollection(SyncConstant.COLLECTION_TEMPLATE_RECENT_USE_MODEL);
    }

    public final boolean checkTemplateModelEnable(@NotNull String templateId) {
        Intrinsics.checkNotNullParameter(templateId, "templateId");
        return loadEnableTemplateById(templateId) != null;
    }

    public final boolean checkTemplateModelExist(@NotNull String templateId) {
        Intrinsics.checkNotNullParameter(templateId, "templateId");
        return loadTemplateListById(templateId) != null;
    }

    public final boolean checkTemplateNameRepeat(@NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return !loadTemplateList(cBQueryArgs.andWith(couchUtils.equalExpression("title", title)).andWith(couchUtils.equalExpression("status", 0))).isEmpty();
    }

    /* renamed from: d */
    public final Collection m35188d() {
        return ensureCollection(SyncConstant.COLLECTION_TEMPLATE_RESOURCE_MODEL);
    }

    @Nullable
    public final TemplateModel loadEnableTemplateById(@NotNull String templateId) {
        List listOf;
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(templateId, "templateId");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(templateId);
        CBQueryArgs loadTemplateByIdListQuery = TemplateQueryArgsExtKt.loadTemplateByIdListQuery(listOf);
        loadTemplateByIdListQuery.andWith(CouchUtils.INSTANCE.equalExpression("status", 0));
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) loadTemplateList(loadTemplateByIdListQuery));
        return (TemplateModel) firstOrNull;
    }

    @NotNull
    public final List<TemplateResourceModel> loadOfficialTemplateResourceColors() {
        String str;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression("source", 0));
        SelectResult.C2166As property = SelectResult.property(CouchFieldKey.KEY_FILL_COLOR);
        Intrinsics.checkNotNullExpressionValue(property, "property(...)");
        CBQueryArgs distinct = andWith.setVarargSelectResults(property).setDistinct(true);
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35188d = m35188d();
        if (m35188d == null || (str = m35188d.getName()) == null) {
            str = "_default";
        }
        return couchUtils.fromResultList(couchCollections.queryResultList(m35188d, distinct), TemplateResourceModel.class, str);
    }

    @NotNull
    public final List<TemplateRecentUseModel> loadRecentUseTemplates(int offset, int limit) {
        String str;
        CBQueryArgs loadRecentUseTemplatesQuery = TemplateQueryArgsExtKt.loadRecentUseTemplatesQuery(offset, limit);
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35187c = m35187c();
        if (m35187c == null || (str = m35187c.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m35187c, loadRecentUseTemplatesQuery), TemplateRecentUseModel.class, str);
    }

    @NotNull
    public final List<TemplateCategoryModel> loadTemplateCategoryList(@Nullable List<String> categoryIdList, @NotNull List<Integer> types) {
        String str;
        Intrinsics.checkNotNullParameter(types, "types");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.inExpression("source", types));
        if (categoryIdList != null) {
            cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, categoryIdList));
        }
        cBQueryArgs.setVarargOrdering(couchUtils.getOrdering(CouchFieldKey.KEY_ORDER_INDEX, true));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35185a = m35185a();
        if (m35185a == null || (str = m35185a.getName()) == null) {
            str = "_default";
        }
        return couchUtils.fromResultList(couchCollections.queryResultList(m35185a, cBQueryArgs), TemplateCategoryModel.class, str);
    }

    @NotNull
    public final List<TemplateModel> loadTemplateList(@NotNull CBQueryArgs cbQueryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(cbQueryArgs, "cbQueryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35186b = m35186b();
        if (m35186b == null || (str = m35186b.getName()) == null) {
            str = "_default";
        }
        return loadTemplatesResource(CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m35186b, cbQueryArgs), TemplateModel.class, str));
    }

    @NotNull
    public final List<TemplateModel> loadTemplateListByCategory(@NotNull TemplateQueryBean templateQueryBean) {
        Intrinsics.checkNotNullParameter(templateQueryBean, "templateQueryBean");
        return loadTemplateList(TemplateQueryArgsExtKt.loadTemplateListByCategoryQuery(templateQueryBean));
    }

    @Nullable
    public final TemplateModel loadTemplateListById(@NotNull String templateId) {
        List<String> listOf;
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(templateId, "templateId");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(templateId);
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) loadTemplateListByIdList(listOf));
        return (TemplateModel) firstOrNull;
    }

    @NotNull
    public final List<TemplateModel> loadTemplateListByIdList(@NotNull List<String> templateIdList) {
        Intrinsics.checkNotNullParameter(templateIdList, "templateIdList");
        return loadTemplateList(TemplateQueryArgsExtKt.loadTemplateByIdListQuery(templateIdList));
    }

    @Nullable
    public final TemplateModel loadTemplateResource(@Nullable TemplateModel templateModel) {
        if (templateModel == null) {
            return null;
        }
        Map map = CollectionKt.toMap(loadTemplateResources(templateModel.getResourceIdList()), new Function1<TemplateResourceModel, String>() { // from class: com.onyx.android.sdk.replicator.note.db.TemplateProvider$loadTemplateResource$templateResourceMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull TemplateResourceModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getUniqueId();
            }
        });
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = templateModel.getResourceIdList().iterator();
        while (it2.hasNext()) {
            CollectionKt.safeAdd(arrayList, map.get((String) it2.next()));
        }
        TemplateResourceWrapper templateResourceWrapper = new TemplateResourceWrapper();
        templateResourceWrapper.setResourceList(arrayList);
        templateResourceWrapper.setTemplateUniqueId(TemplateResourceWrapper.INSTANCE.generateResourceId(templateModel.getCategoryId(), templateModel.getUniqueId()));
        templateModel.setTemplateResourceWrapper(templateResourceWrapper);
        return templateModel;
    }

    @NotNull
    public final List<TemplateResourceModel> loadTemplateResources(@NotNull List<String> uniqueIdList) {
        String str;
        Intrinsics.checkNotNullParameter(uniqueIdList, "uniqueIdList");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, uniqueIdList));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35188d = m35188d();
        if (m35188d == null || (str = m35188d.getName()) == null) {
            str = "_default";
        }
        return couchUtils.fromResultList(couchCollections.queryResultList(m35188d, andWith), TemplateResourceModel.class, str);
    }

    @NotNull
    public final List<TemplateModel> loadTemplatesResource(@NotNull List<TemplateModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            loadTemplateResource((TemplateModel) it2.next());
        }
        return list;
    }

    public final void purgeCustomTemplateModel() {
        CouchCollections.INSTANCE.deleteByExpression(m35186b(), getDatabase(), new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression("source", 1)));
    }

    public final void purgeCustomTemplateResource(@NotNull String uid) {
        String str;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(uid, "uid");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression("source", 1)).andWith(couchUtils.equalExpression("type", 0));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35188d = m35188d();
        if (m35188d == null || (str = m35188d.getName()) == null) {
            str = "_default";
        }
        List fromResultList = couchUtils.fromResultList(couchCollections.queryResultList(m35188d, andWith), TemplateResourceModel.class, str);
        Iterator it2 = fromResultList.iterator();
        while (it2.hasNext()) {
            TemplateResourcesKt.deleteRelatedFile((TemplateResourceModel) it2.next(), uid);
        }
        CouchCollections couchCollections2 = CouchCollections.INSTANCE;
        Collection m35188d2 = m35188d();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(fromResultList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it3 = fromResultList.iterator();
        while (it3.hasNext()) {
            arrayList.add(((TemplateResourceModel) it3.next()).getUniqueId());
        }
        couchCollections2.deleteListByIds(m35188d2, arrayList);
    }

    public final boolean remove(@NotNull List<TemplateModel> templateModelList) {
        Intrinsics.checkNotNullParameter(templateModelList, "templateModelList");
        for (TemplateModel templateModel : templateModelList) {
            templateModel.setStatus(1);
            templateModel.resetRevisionId();
        }
        saveTemplateList$default(this, templateModelList, false, 2, null);
        return true;
    }

    public final void removeOfficialTemplateCategory() {
        String str;
        int collectionSizeOrDefault;
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35185a = m35185a();
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression("source", 0));
        if (m35185a == null || (str = m35185a.getName()) == null) {
            str = "_default";
        }
        List fromResultList = couchUtils.fromResultList(couchCollections.queryResultList(m35185a, andWith), TemplateCategoryModel.class, str);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(fromResultList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = fromResultList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((TemplateCategoryModel) it2.next()).getUniqueId());
        }
        CouchCollections.INSTANCE.deleteListByIds(m35185a(), arrayList);
    }

    public final void removeOfficialTemplateModel() {
        int collectionSizeOrDefault;
        List<TemplateModel> loadTemplateList = loadTemplateList(new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression("source", 0)));
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadTemplateList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadTemplateList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((TemplateModel) it2.next()).getUniqueId());
        }
        CouchCollections.INSTANCE.deleteListByIds(m35186b(), arrayList);
    }

    public final void removeOfficialTemplateResource() {
        String str;
        int collectionSizeOrDefault;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression("source", 0)).andWith(couchUtils.equalExpression("type", 0));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35188d = m35188d();
        if (m35188d == null || (str = m35188d.getName()) == null) {
            str = "_default";
        }
        List fromResultList = couchUtils.fromResultList(couchCollections.queryResultList(m35188d, andWith), TemplateResourceModel.class, str);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(fromResultList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = fromResultList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((TemplateResourceModel) it2.next()).getUniqueId());
        }
        CouchCollections.INSTANCE.deleteListByIds(m35188d(), arrayList);
    }

    public final void removeTemplateByCategory(@NotNull String categoryId) {
        Intrinsics.checkNotNullParameter(categoryId, "categoryId");
        List<TemplateModel> loadTemplateListByCategory = loadTemplateListByCategory(new TemplateQueryBean(categoryId, null, null, null, 14, null));
        if (!loadTemplateListByCategory.isEmpty()) {
            remove(loadTemplateListByCategory);
        }
    }

    public final void removeTemplateCategoryAndTemplate(@NotNull String categoryId) {
        Intrinsics.checkNotNullParameter(categoryId, "categoryId");
        removeTemplateByCategory(categoryId);
        CouchCollections.INSTANCE.deleteById(m35185a(), categoryId);
    }

    public final void saveTemplate(@NotNull TemplateModel templateModel) {
        Intrinsics.checkNotNullParameter(templateModel, "templateModel");
        CouchCollections.INSTANCE.saveDocument(m35186b(), (Collection) templateModel);
    }

    public final long saveTemplateCategoryList(@NotNull List<TemplateCategoryModel> list, boolean isUpgrade) {
        int collectionSizeOrDefault;
        Object obj;
        Intrinsics.checkNotNullParameter(list, "list");
        Collection m35185a = m35185a();
        if (!isUpgrade) {
            return CouchCollections.INSTANCE.saveList(m35185a, getDatabase(), list);
        }
        List<TemplateCategoryModel> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((TemplateCategoryModel) it2.next()).getUniqueId());
        }
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, arrayList));
        String name = m35185a.getName();
        if (name == null) {
            name = "_default";
        }
        Intrinsics.checkNotNull(name);
        List fromResultList = couchUtils.fromResultList(couchCollections.queryResultList(m35185a, andWith), TemplateCategoryModel.class, name);
        Database database = getDatabase();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list) {
            TemplateCategoryModel templateCategoryModel = (TemplateCategoryModel) ((BaseReplicatorModel) obj2);
            Iterator it3 = fromResultList.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it3.next();
                if (Intrinsics.areEqual(((TemplateCategoryModel) obj).getUniqueId(), templateCategoryModel.getUniqueId())) {
                    break;
                }
            }
            TemplateCategoryModel templateCategoryModel2 = (TemplateCategoryModel) obj;
            boolean z = true;
            if (templateCategoryModel2 != null && templateCategoryModel.getVersion() <= templateCategoryModel2.getVersion()) {
                z = false;
            }
            if (z) {
                arrayList2.add(obj2);
            }
        }
        Log.d(Collection.class.getSimpleName(), "updated size: " + Reflection.getOrCreateKotlinClass(TemplateCategoryModel.class).getSimpleName() + ' ' + arrayList2.size());
        couchCollections.saveList(m35185a, database, arrayList2);
        return arrayList2.size();
    }

    public final long saveTemplateList(@NotNull List<TemplateModel> list, boolean isUpgrade) {
        int collectionSizeOrDefault;
        Object obj;
        Intrinsics.checkNotNullParameter(list, "list");
        Collection m35186b = m35186b();
        if (!isUpgrade) {
            return CouchCollections.INSTANCE.saveList(m35186b, getDatabase(), list);
        }
        List<TemplateModel> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((TemplateModel) it2.next()).getUniqueId());
        }
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, arrayList));
        String name = m35186b.getName();
        if (name == null) {
            name = "_default";
        }
        Intrinsics.checkNotNull(name);
        List fromResultList = couchUtils.fromResultList(couchCollections.queryResultList(m35186b, andWith), TemplateModel.class, name);
        Database database = getDatabase();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list) {
            TemplateModel templateModel = (TemplateModel) ((BaseReplicatorModel) obj2);
            Iterator it3 = fromResultList.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it3.next();
                if (Intrinsics.areEqual(((TemplateModel) obj).getUniqueId(), templateModel.getUniqueId())) {
                    break;
                }
            }
            TemplateModel templateModel2 = (TemplateModel) obj;
            boolean z = true;
            if (templateModel2 != null && templateModel.getVersion() <= templateModel2.getVersion() && templateModel.getStatus() == templateModel2.getStatus()) {
                z = false;
            }
            if (z) {
                arrayList2.add(obj2);
            }
        }
        Log.d(Collection.class.getSimpleName(), "updated size: " + Reflection.getOrCreateKotlinClass(TemplateModel.class).getSimpleName() + ' ' + arrayList2.size());
        couchCollections.saveList(m35186b, database, arrayList2);
        return arrayList2.size();
    }

    public final long saveTemplateResourceList(@NotNull List<TemplateResourceModel> list, boolean isUpgrade) {
        int collectionSizeOrDefault;
        Object obj;
        Intrinsics.checkNotNullParameter(list, "list");
        Collection m35188d = m35188d();
        if (!isUpgrade) {
            return CouchCollections.INSTANCE.saveList(m35188d, getDatabase(), list);
        }
        List<TemplateResourceModel> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((TemplateResourceModel) it2.next()).getUniqueId());
        }
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, arrayList));
        String name = m35188d.getName();
        if (name == null) {
            name = "_default";
        }
        Intrinsics.checkNotNull(name);
        List fromResultList = couchUtils.fromResultList(couchCollections.queryResultList(m35188d, andWith), TemplateResourceModel.class, name);
        Database database = getDatabase();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list) {
            TemplateResourceModel templateResourceModel = (TemplateResourceModel) ((BaseReplicatorModel) obj2);
            Iterator it3 = fromResultList.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it3.next();
                if (Intrinsics.areEqual(((TemplateResourceModel) obj).getUniqueId(), templateResourceModel.getUniqueId())) {
                    break;
                }
            }
            TemplateResourceModel templateResourceModel2 = (TemplateResourceModel) obj;
            boolean z = true;
            if (templateResourceModel2 != null && templateResourceModel.getVersion() <= templateResourceModel2.getVersion()) {
                z = false;
            }
            if (z) {
                arrayList2.add(obj2);
            }
        }
        Log.d(Collection.class.getSimpleName(), "updated size: " + Reflection.getOrCreateKotlinClass(TemplateResourceModel.class).getSimpleName() + ' ' + arrayList2.size());
        couchCollections.saveList(m35188d, database, arrayList2);
        return arrayList2.size();
    }
}
