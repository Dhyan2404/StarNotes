package com.onyx.galaxy.note.common.statistics;

import com.blankj.utilcode.util.LogUtils;
import com.couchbase.lite.SelectResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.OnyxNoteModel;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.p029db.OnyxStatisticDBBundle;
import com.onyx.android.sdk.p029db.OnyxStatisticNoteProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0005¢\u0006\u0004\b\u0017\u0010\u0018J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\t\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u0005H\u0002J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\u0005H\u0002R\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/data/OnyxNoteModel;", "newOnyxNoteModels", "", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "syncNoteModels", "", "l", "m", "", C6998g.f39679a, "Ljava/util/List;", "noteIds", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", CouchFieldKey.KEY_PROVIDER, Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSaveOnyxStatisticNoteModelAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveOnyxStatisticNoteModelAction.kt\ncom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,70:1\n1855#2,2:71\n37#3,2:73\n*S KotlinDebug\n*F\n+ 1 SaveOnyxStatisticNoteModelAction.kt\ncom/onyx/galaxy/note/common/statistics/SaveOnyxStatisticNoteModelAction\n*L\n46#1:71,2\n65#1:73,2\n*E\n"})
/* loaded from: classes9.dex */
public final class SaveOnyxStatisticNoteModelAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<String> noteIds;

    /* renamed from: h, reason: from kotlin metadata */
    public NoteProvider provider;

    /* renamed from: com.onyx.galaxy.note.common.statistics.SaveOnyxStatisticNoteModelAction$a */
    /* loaded from: classes9.dex */
    public static final class C11639a<T> implements Consumer {
        public C11639a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveOnyxStatisticNoteModelAction.this.provider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.SaveOnyxStatisticNoteModelAction$b */
    /* loaded from: classes9.dex */
    public static final class C11640b<T, R> implements Function {
        public C11640b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<SyncNoteModel> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveOnyxStatisticNoteModelAction.this.m45068m();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.SaveOnyxStatisticNoteModelAction$c */
    /* loaded from: classes9.dex */
    public static final class C11641c<T, R> implements Function {
        public C11641c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<OnyxNoteModel> apply(@NotNull List<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveOnyxStatisticNoteModelAction.this.m45067l(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.SaveOnyxStatisticNoteModelAction$d */
    /* loaded from: classes9.dex */
    public static final class C11642d<T, R> implements Function {
        public C11642d() {
        }

        /* renamed from: a */
        public final void m45073a(@NotNull List<OnyxNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveOnyxStatisticNoteModelAction.this.m45069n(it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m45073a((List) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.SaveOnyxStatisticNoteModelAction$e */
    /* loaded from: classes9.dex */
    public static final class C11643e<T, R> implements Function {

        /* renamed from: e */
        public static final C11643e<T, R> f56140e = new C11643e<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    public SaveOnyxStatisticNoteModelAction(@NotNull List<String> noteIds) {
        Intrinsics.checkNotNullParameter(noteIds, "noteIds");
        this.noteIds = noteIds;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = createNoteProviderObservable().doOnNext(new C11639a()).map(new C11640b()).map(new C11641c()).observeOn(OnyxStatisticDBBundle.INSTANCE.getOnyxStatisticScheduler().getObserveOn()).map(new C11642d()).map(C11643e.f56140e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final List<OnyxNoteModel> m45067l(List<? extends SyncNoteModel> syncNoteModels) {
        boolean isBlank;
        ArrayList arrayList = new ArrayList();
        for (SyncNoteModel syncNoteModel : syncNoteModels) {
            isBlank = StringsKt__StringsJVMKt.isBlank(syncNoteModel.getUniqueId());
            if (isBlank) {
                LogUtils.file("filter the SyncNoteModel which uniqueId is empty.");
            } else {
                arrayList.add(new OnyxNoteModel(syncNoteModel.getUniqueId(), syncNoteModel.getNotePointSize(), syncNoteModel.isForceDeleted() ? 2 : 0));
            }
        }
        return arrayList;
    }

    /* renamed from: m */
    public final List<SyncNoteModel> m45068m() {
        List mutableListOf;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, this.noteIds));
        cBQueryArgs.andWith(couchUtils.equalExpression("type", 1));
        SelectResult.C2166As property = SelectResult.property(CouchFieldKey.KEY_UNIQUE_ID);
        Intrinsics.checkNotNullExpressionValue(property, "property(...)");
        SelectResult.C2166As property2 = SelectResult.property("status");
        Intrinsics.checkNotNullExpressionValue(property2, "property(...)");
        SelectResult.C2166As property3 = SelectResult.property(CouchFieldKey.KEY_NOTE_POINT_SIZE);
        Intrinsics.checkNotNullExpressionValue(property3, "property(...)");
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(property, property2, property3);
        cBQueryArgs.setSelectResults((SelectResult[]) mutableListOf.toArray(new SelectResult[0]));
        NoteProvider noteProvider = this.provider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            noteProvider = null;
        }
        return NoteModelProviderKt.loadNoteListInBatch(noteProvider, cBQueryArgs);
    }

    /* renamed from: n */
    public final void m45069n(List<OnyxNoteModel> newOnyxNoteModels) {
        OnyxStatisticNoteProviderKt.saveOnyxNoteList(OnyxStatisticDBBundle.INSTANCE.getOnyxStatisticProvider(), newOnyxNoteModels);
    }
}
