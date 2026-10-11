package com.onyx.android.sdk.universal.editor.action.doc;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.data.constant.NoteConstant;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNoteProviderAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000eJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/doc/LoadNoteModelsAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", CouchFieldKey.KEY_PROVIDER, "l", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "e", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "queryArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadNoteModelsAction extends RxBaseAction<List<? extends SyncNoteModel>> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final CBQueryArgs queryArgs;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.LoadNoteModelsAction$a */
    /* loaded from: classes8.dex */
    public static final class C8659a<T, R> implements Function {
        public C8659a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<SyncNoteModel> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadNoteModelsAction.this.m37631l(it2);
        }
    }

    public LoadNoteModelsAction(@NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.queryArgs = queryArgs;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<? extends SyncNoteModel>> create() {
        Observable map = new EnsureNoteProviderAction().build().observeOn(KSyncBundle.INSTANCE.getObserveOn()).map(new C8659a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final List<SyncNoteModel> m37631l(NoteProvider provider) {
        CBQueryArgs m72249clone = this.queryArgs.m72249clone();
        m72249clone.setLimit(NoteConstant.INSTANCE.getSMALL_BATCH_DATA_COUNT());
        return NoteModelProviderKt.loadNoteListInBatch(provider, m72249clone);
    }
}
