package com.onyx.galaxy.note.category.action;

import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfo;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteTabDataProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u00102\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\u0010B\u000f\u0012\u0006\u0010\r\u001a\u00020\t¢\u0006\u0004\b\u000e\u0010\u000fJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002H\u0002R\u0014\u0010\r\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", "idList", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "m", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "currentNote", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadNoteTabListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadNoteTabListAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteTabListAction\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,117:1\n215#2,2:118\n41#3,5:120\n*S KotlinDebug\n*F\n+ 1 LoadNoteTabListAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteTabListAction\n*L\n61#1:118,2\n79#1:120,5\n*E\n"})
/* loaded from: classes9.dex */
public final class LoadNoteTabListAction extends RxBaseNoteAppAction<List<? extends NoteTabData>> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final SyncNoteModel currentNote;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\b¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction$Companion;", "", "()V", "toNoteTabData", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "noteModel", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "toNoteTabDatas", "", "noteModels", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nLoadNoteTabListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadNoteTabListAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteTabListAction$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,117:1\n1549#2:118\n1620#2,3:119\n*S KotlinDebug\n*F\n+ 1 LoadNoteTabListAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteTabListAction$Companion\n*L\n114#1:118\n114#1:119,3\n*E\n"})
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final NoteTabData toNoteTabData(@NotNull SyncNoteModel noteModel) {
            Intrinsics.checkNotNullParameter(noteModel, "noteModel");
            NoteTabData noteTabData = new NoteTabData();
            noteTabData.setTitle(StringKt.safelyGetStr(noteModel.getTitle()));
            noteTabData.setUniqueId(noteModel.getUniqueId());
            if (noteModel.getEncryption() != null) {
                noteTabData.setEncrypted(Boolean.valueOf(noteModel.hasEncryption()));
            }
            return noteTabData;
        }

        @NotNull
        public final List<NoteTabData> toNoteTabDatas(@NotNull List<? extends SyncNoteModel> noteModels) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(noteModels, "noteModels");
            List<? extends SyncNoteModel> list = noteModels;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(LoadNoteTabListAction.INSTANCE.toNoteTabData((SyncNoteModel) it2.next()));
            }
            return arrayList;
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadNoteTabListAction$a */
    /* loaded from: classes9.dex */
    public static final class C10883a<T, R> implements Function {
        public C10883a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<NoteTabData> apply(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadNoteTabListAction.this.m42355l();
        }
    }

    public LoadNoteTabListAction(@NotNull SyncNoteModel currentNote) {
        Intrinsics.checkNotNullParameter(currentNote, "currentNote");
        this.currentNote = currentNote;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<NoteTabData>> create() {
        Observable map = AccountDataBundle.INSTANCE.loadOnyxAccountObservable().observeOn(getObserveOn()).map(new C10883a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final List<NoteTabData> m42355l() {
        List mutableList;
        Map mutableMap;
        List<String> list;
        NoteTabDataProvider userNoteTabProvider = KSyncBundle.INSTANCE.getUserNoteTabProvider();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) userNoteTabProvider.loadTabDataList());
        mutableMap = MapsKt__MapsKt.toMutableMap(CollectionKt.toMap(mutableList, new Function1<NoteTabData, String>() { // from class: com.onyx.galaxy.note.category.action.LoadNoteTabListAction$load$tabDataMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull NoteTabData it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getUniqueId();
            }
        }));
        final NoteTabData noteTabData = INSTANCE.toNoteTabData(this.currentNote);
        if (!mutableMap.containsKey(this.currentNote.getUniqueId())) {
            mutableMap.put(this.currentNote.getUniqueId(), noteTabData);
        }
        list = CollectionsKt___CollectionsKt.toList(mutableMap.keySet());
        Map map = CollectionKt.toMap(m42356m(list), new Function1<SyncNoteModel, String>() { // from class: com.onyx.galaxy.note.category.action.LoadNoteTabListAction$load$noteModelMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull SyncNoteModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getUniqueId();
            }
        });
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : mutableMap.entrySet()) {
            NoteTabData noteTabData2 = (NoteTabData) entry.getValue();
            SyncNoteModel syncNoteModel = (SyncNoteModel) map.get(entry.getKey());
            if (syncNoteModel == null) {
                CollectionKt.safeAdd(arrayList, noteTabData2);
            } else {
                noteTabData2.setTitle(StringKt.safelyGetStr(syncNoteModel.getTitle()));
                if (syncNoteModel.getEncryption() != null) {
                    noteTabData2.setEncrypted(Boolean.valueOf(syncNoteModel.hasEncryption()));
                }
                CollectionKt.safeAdd(arrayList2, noteTabData2);
            }
        }
        if (!CollectionKt.contains(arrayList2, new Function1<NoteTabData, Boolean>() { // from class: com.onyx.galaxy.note.category.action.LoadNoteTabListAction$load$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull NoteTabData it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getUniqueId(), NoteTabData.this.getUniqueId()));
            }
        })) {
            arrayList2.add(noteTabData);
        }
        userNoteTabProvider.deleteTabData(arrayList);
        userNoteTabProvider.saveTabData(arrayList2);
        return arrayList2;
    }

    /* renamed from: m */
    public final List<SyncNoteModel> m42356m(List<String> idList) {
        List<String> list = idList;
        if (CollectionKt.isNullOrEmpty(list)) {
            List<SyncNoteModel> emptyList = Collections.emptyList();
            Intrinsics.checkNotNullExpressionValue(emptyList, "emptyList(...)");
            return emptyList;
        }
        ProviderInfo userNoteTreeProviderInfo = ProviderInfoUtils.INSTANCE.getUserNoteTreeProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId());
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.equalExpression("status", 1));
        cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, list));
        cBQueryArgs.setLimit(idList.size());
        return NoteModelProviderKt.loadNoteList(KSyncBundle.INSTANCE.getDbProviderBundle().getNoteProvider(userNoteTreeProviderInfo), cBQueryArgs);
    }
}
