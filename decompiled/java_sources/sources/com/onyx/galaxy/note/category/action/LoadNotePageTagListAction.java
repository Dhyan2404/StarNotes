package com.onyx.galaxy.note.category.action;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NotePageTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.PageTagModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.galaxy.note.category.data.NoteSelectType;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.common.extension.NoteQueryArgsKt;
import com.onyx.galaxy.note.settings.data.NoteConfigKt;
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
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0017\u001a\u00020\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0016J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J*\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u001e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/LoadNotePageTagListAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteProvider", "l", "pageTagList", "", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "m", "", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", C6998g.f39679a, "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "queryArgs", "Lcom/onyx/galaxy/note/category/data/NoteSelectType;", C6999h.f39688c, "Lcom/onyx/galaxy/note/category/data/NoteSelectType;", "selectType", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadNotePageTagListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadNotePageTagListAction.kt\ncom/onyx/galaxy/note/category/action/LoadNotePageTagListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,83:1\n766#2:84\n857#2,2:85\n1855#2,2:87\n1549#2:89\n1620#2,3:90\n1855#2:94\n1549#2:95\n1620#2,3:96\n1856#2:99\n1#3:93\n*S KotlinDebug\n*F\n+ 1 LoadNotePageTagListAction.kt\ncom/onyx/galaxy/note/category/action/LoadNotePageTagListAction\n*L\n47#1:84\n47#1:85,2\n49#1:87,2\n61#1:89\n61#1:90,3\n75#1:94\n77#1:95\n77#1:96,3\n75#1:99\n*E\n"})
/* loaded from: classes9.dex */
public final class LoadNotePageTagListAction extends BaseNoteManagementAction<List<? extends PageTagModel>> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public CBQueryArgs queryArgs;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final NoteSelectType selectType;

    /* renamed from: com.onyx.galaxy.note.category.action.LoadNotePageTagListAction$a */
    /* loaded from: classes9.dex */
    public static final class C10880a<T, R> implements Function {
        public C10880a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<PageTagModel> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadNotePageTagListAction.this.m42343l(it2);
        }
    }

    public LoadNotePageTagListAction(@NotNull CBQueryArgs queryArgs, @NotNull NoteSelectType selectType) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        Intrinsics.checkNotNullParameter(selectType, "selectType");
        this.queryArgs = queryArgs;
        this.selectType = selectType;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<PageTagModel>> create() {
        Observable<List<PageTagModel>> observeOn = createNoteProviderObservable().map(new C10880a()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final List<PageTagModel> m42343l(NoteProvider noteProvider) {
        List<? extends PageTagModel> loadPageTagList = NotePageTagProviderKt.loadPageTagList(noteProvider, this.queryArgs);
        Map<String, SyncNoteModel> m42344m = m42344m(noteProvider, loadPageTagList);
        ArrayList<PageTagModel> arrayList = new ArrayList();
        for (Object obj : loadPageTagList) {
            if (m42344m.containsKey(((PageTagModel) obj).getDocumentId())) {
                arrayList.add(obj);
            }
        }
        for (final PageTagModel pageTagModel : arrayList) {
            SyncNoteModel syncNoteModel = m42344m.get(pageTagModel.getDocumentId());
            pageTagModel.setDocTitle(StringKt.ifEmpty(syncNoteModel != null ? syncNoteModel.getTitle() : null, new Function0<String>() { // from class: com.onyx.galaxy.note.category.action.LoadNotePageTagListAction$load$2$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final String invoke() {
                    return PageTagModel.this.getPageUniqueId();
                }
            }));
        }
        m42345n(noteProvider, arrayList);
        return arrayList;
    }

    /* renamed from: m */
    public final Map<String, SyncNoteModel> m42344m(NoteProvider noteProvider, List<? extends PageTagModel> pageTagList) {
        int collectionSizeOrDefault;
        List distinct;
        Map<String, SyncNoteModel> emptyMap;
        List<? extends PageTagModel> list = pageTagList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((PageTagModel) it2.next()).getDocumentId());
        }
        distinct = CollectionsKt___CollectionsKt.distinct(arrayList);
        List list2 = distinct;
        if (!CollectionKt.isNullOrEmpty(list2)) {
            return CollectionKt.toMap(NoteModelProviderKt.loadNoteList(noteProvider, NoteQueryArgsKt.andWithSelectType(NoteConfigKt.getCommonNoteArgs().setMaxLimit().andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_UNIQUE_ID, list2)), this.selectType)), new Function1<SyncNoteModel, String>() { // from class: com.onyx.galaxy.note.category.action.LoadNotePageTagListAction$loadNoteModelMap$2
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final String invoke(@NotNull SyncNoteModel it3) {
                    Intrinsics.checkNotNullParameter(it3, "it");
                    return it3.getUniqueId();
                }
            });
        }
        emptyMap = MapsKt__MapsKt.emptyMap();
        return emptyMap;
    }

    /* renamed from: n */
    public final void m42345n(NoteProvider noteProvider, List<? extends PageTagModel> pageTagList) {
        int collectionSizeOrDefault;
        List list;
        List distinct;
        for (PageTagModel pageTagModel : pageTagList) {
            List<PageTagModel> loadPageTagList = NotePageTagProviderKt.loadPageTagList(noteProvider, pageTagModel.getDocumentId(), pageTagModel.getPageUniqueId());
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadPageTagList, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = loadPageTagList.iterator();
            while (it2.hasNext()) {
                arrayList.add(((PageTagModel) it2.next()).getTagId());
            }
            list = CollectionsKt___CollectionsKt.toList(arrayList);
            distinct = CollectionsKt___CollectionsKt.distinct(list);
            CollectionKt.safeAddAll(pageTagModel.getPageAllTagIdList(), distinct);
        }
    }
}
