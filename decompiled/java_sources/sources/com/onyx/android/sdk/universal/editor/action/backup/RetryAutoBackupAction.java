package com.onyx.android.sdk.universal.editor.action.backup;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.p035db.AutoBackupProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.AutoBackupModel;
import com.onyx.android.sdk.replicator.note.p035db.model.AutoBackupTask;
import com.onyx.android.sdk.universal.editor.AutoBackupTaskBundle;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.common.EnsureAutoBackupProviderAction;
import com.onyx.android.sdk.universal.p042ui.data.AutoBackupContext;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000b\u0012\u0006\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\n\u001a\u00020\tH\u0002R\u0017\u0010\u0010\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;", "Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, C4921e.f26528e, "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;", "autoBackupModel", "", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "m", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;", "autoBackupContext", "Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;", CouchFieldKey.KEY_PROVIDER, Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RetryAutoBackupAction extends RxBaseBackupAction<RetryAutoBackupAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final AutoBackupContext autoBackupContext;

    /* renamed from: h, reason: from kotlin metadata */
    public AutoBackupProvider provider;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.RetryAutoBackupAction$a */
    /* loaded from: classes8.dex */
    public static final class C8508a<T, R> implements Function {

        /* renamed from: e */
        public static final C8508a<T, R> f48056e = new C8508a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AutoBackupProvider> apply(@NotNull RetryAutoBackupAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new EnsureAutoBackupProviderAction().build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.RetryAutoBackupAction$b */
    /* loaded from: classes8.dex */
    public static final class C8509b<T> implements Consumer {
        public C8509b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AutoBackupProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RetryAutoBackupAction.this.provider = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.RetryAutoBackupAction$c */
    /* loaded from: classes8.dex */
    public static final class C8510c<T, R> implements Function {
        public C8510c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends RetryAutoBackupAction> apply(@NotNull AutoBackupProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RetryAutoBackupAction.this.m37338o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.RetryAutoBackupAction$d */
    /* loaded from: classes8.dex */
    public static final class C8511d<T> implements Consumer {
        public C8511d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AutoBackupModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RetryAutoBackupAction.this.m37337n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.RetryAutoBackupAction$e */
    /* loaded from: classes8.dex */
    public static final class C8512e<T, R> implements Function {
        public C8512e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RetryAutoBackupAction apply(@NotNull AutoBackupModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RetryAutoBackupAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RetryAutoBackupAction(@NotNull EditorBundle editorBundle, @NotNull AutoBackupContext autoBackupContext) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(autoBackupContext, "autoBackupContext");
        this.editorBundle = editorBundle;
        this.autoBackupContext = autoBackupContext;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<RetryAutoBackupAction> create() {
        if (this.autoBackupContext.backupEnabled()) {
            Observable<RetryAutoBackupAction> flatMap = Observable.just(this).delay(30L, TimeUnit.SECONDS).flatMap(C8508a.f48056e).doOnNext(new C8509b()).flatMap(new C8510c());
            Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
            return flatMap;
        }
        Observable<RetryAutoBackupAction> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    /* renamed from: m */
    public final CBQueryArgs m37336m() {
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.notEqualExpression("status", 0));
        cBQueryArgs.andWith(couchUtils.equalExpression("documentId", this.autoBackupContext.getDocumentId()));
        cBQueryArgs.setVarargOrdering(couchUtils.getOrdering("updatedAt", false));
        return cBQueryArgs;
    }

    /* renamed from: n */
    public final void m37337n(AutoBackupModel autoBackupModel) {
        AutoBackupTaskBundle.INSTANCE.insertAutoBackupTask(new AutoBackupTask(autoBackupModel.getDocumentId(), autoBackupModel.isLocalBackup(), autoBackupModel.isCloudBackup()));
    }

    /* renamed from: o */
    public final Observable<RetryAutoBackupAction> m37338o() {
        AutoBackupProvider autoBackupProvider = this.provider;
        if (autoBackupProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            autoBackupProvider = null;
        }
        List<AutoBackupModel> loadAutoBackupList = autoBackupProvider.loadAutoBackupList(m37336m());
        if (loadAutoBackupList.isEmpty()) {
            Observable<RetryAutoBackupAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<RetryAutoBackupAction> map = Observable.fromIterable(loadAutoBackupList).doOnNext(new C8511d()).map(new C8512e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
