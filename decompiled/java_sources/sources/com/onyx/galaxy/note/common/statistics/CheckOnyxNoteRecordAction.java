package com.onyx.galaxy.note.common.statistics;

import com.couchbase.lite.SelectResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.OnyxNoteRecordModel;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.p029db.OnyxStatisticDBBundle;
import com.onyx.android.sdk.p029db.OnyxStatisticNoteRecordProviderKt;
import com.onyx.android.sdk.p029db.OnyxStatisticProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0005H\u0002R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000e0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "m", GoogleApiAvailabilityLight.f29016b, "", "", C6998g.f39679a, "Ljava/util/List;", "uploadedRecordIds", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", C6999h.f39688c, "noteModels", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "i", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteProvider", "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;", "j", "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;", "onyxStatisticProvider", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCheckOnyxNoteRecordAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckOnyxNoteRecordAction.kt\ncom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,81:1\n1549#2:82\n1620#2,3:83\n1549#2:86\n1620#2,3:87\n*S KotlinDebug\n*F\n+ 1 CheckOnyxNoteRecordAction.kt\ncom/onyx/galaxy/note/common/statistics/CheckOnyxNoteRecordAction\n*L\n52#1:82\n52#1:83,3\n77#1:86\n77#1:87,3\n*E\n"})
/* loaded from: classes9.dex */
public final class CheckOnyxNoteRecordAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<String> uploadedRecordIds = new ArrayList();

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<SyncNoteModel> noteModels = new ArrayList();

    /* renamed from: i, reason: from kotlin metadata */
    public NoteProvider noteProvider;

    /* renamed from: j, reason: from kotlin metadata */
    public OnyxStatisticProvider onyxStatisticProvider;

    /* renamed from: com.onyx.galaxy.note.common.statistics.CheckOnyxNoteRecordAction$a */
    /* loaded from: classes9.dex */
    public static final class C11624a<T> implements Consumer {
        public C11624a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CheckOnyxNoteRecordAction.this.noteProvider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.CheckOnyxNoteRecordAction$b */
    /* loaded from: classes9.dex */
    public static final class C11625b<T, R> implements Function {

        /* renamed from: e */
        public static final C11625b<T, R> f56091e = new C11625b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OnyxStatisticProvider apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OnyxStatisticDBBundle.INSTANCE.getOnyxStatisticProvider();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.CheckOnyxNoteRecordAction$c */
    /* loaded from: classes9.dex */
    public static final class C11626c<T> implements Consumer {
        public C11626c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OnyxStatisticProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CheckOnyxNoteRecordAction.this.onyxStatisticProvider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.CheckOnyxNoteRecordAction$d */
    /* loaded from: classes9.dex */
    public static final class C11627d<T, R> implements Function {
        public C11627d() {
        }

        /* renamed from: a */
        public final void m45047a(@NotNull OnyxStatisticProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CheckOnyxNoteRecordAction.this.m45041l();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m45047a((OnyxStatisticProvider) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.CheckOnyxNoteRecordAction$e */
    /* loaded from: classes9.dex */
    public static final class C11628e<T> implements Consumer {
        public C11628e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CheckOnyxNoteRecordAction.this.m45042m();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.CheckOnyxNoteRecordAction$f */
    /* loaded from: classes9.dex */
    public static final class C11629f<T> implements Consumer {
        public C11629f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CheckOnyxNoteRecordAction.this.m45043n();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.CheckOnyxNoteRecordAction$g */
    /* loaded from: classes9.dex */
    public static final class C11630g<T, R> implements Function {

        /* renamed from: e */
        public static final C11630g<T, R> f56096e = new C11630g<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<NoteProvider> doOnNext = createNoteProviderObservable().doOnNext(new C11624a());
        OnyxStatisticDBBundle onyxStatisticDBBundle = OnyxStatisticDBBundle.INSTANCE;
        Observable<Boolean> map = doOnNext.observeOn(onyxStatisticDBBundle.getObserveOn()).map(C11625b.f56091e).doOnNext(new C11626c()).map(new C11627d()).observeOn(getObserveOn()).doOnNext(new C11628e()).observeOn(onyxStatisticDBBundle.getObserveOn()).doOnNext(new C11629f()).map(C11630g.f56096e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m45041l() {
        int collectionSizeOrDefault;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        cBQueryArgs.m72251setLimit(100);
        cBQueryArgs.andWith(CouchUtils.INSTANCE.equalExpression(OnyxNoteRecordModel.KEY_IS_UPLOADED, Boolean.TRUE));
        OnyxStatisticProvider onyxStatisticProvider = this.onyxStatisticProvider;
        if (onyxStatisticProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("onyxStatisticProvider");
            onyxStatisticProvider = null;
        }
        List<OnyxNoteRecordModel> loadOnyxNoteRecordList = OnyxStatisticNoteRecordProviderKt.loadOnyxNoteRecordList(onyxStatisticProvider, cBQueryArgs);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadOnyxNoteRecordList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadOnyxNoteRecordList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((OnyxNoteRecordModel) it2.next()).getUniqueId());
        }
        this.uploadedRecordIds.addAll(arrayList);
    }

    /* renamed from: m */
    public final void m45042m() {
        SelectResult.C2166As property = SelectResult.property(CouchFieldKey.KEY_UNIQUE_ID);
        Intrinsics.checkNotNullExpressionValue(property, "property(...)");
        SelectResult.C2166As property2 = SelectResult.property(CouchFieldKey.KEY_NOTE_POINT_SIZE);
        Intrinsics.checkNotNullExpressionValue(property2, "property(...)");
        SelectResult[] selectResultArr = {property, property2};
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        cBQueryArgs.m72251setLimit(100);
        if (true ^ this.uploadedRecordIds.isEmpty()) {
            cBQueryArgs.andWith(CouchUtils.INSTANCE.notInExpression(CouchFieldKey.KEY_UNIQUE_ID, this.uploadedRecordIds));
        }
        cBQueryArgs.setSelectResults(selectResultArr);
        List<SyncNoteModel> list = this.noteModels;
        NoteProvider noteProvider = this.noteProvider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteProvider");
            noteProvider = null;
        }
        list.addAll(NoteModelProviderKt.loadNoteListInBatch(noteProvider, cBQueryArgs));
    }

    /* renamed from: n */
    public final void m45043n() {
        int collectionSizeOrDefault;
        if (this.noteModels.isEmpty()) {
            return;
        }
        List<SyncNoteModel> list = this.noteModels;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(new OnyxNoteRecordModel(((SyncNoteModel) it2.next()).getUniqueId(), false));
        }
        OnyxStatisticProvider onyxStatisticProvider = this.onyxStatisticProvider;
        if (onyxStatisticProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("onyxStatisticProvider");
            onyxStatisticProvider = null;
        }
        OnyxStatisticNoteRecordProviderKt.saveOnyxNoteRecordList(onyxStatisticProvider, arrayList);
    }
}
