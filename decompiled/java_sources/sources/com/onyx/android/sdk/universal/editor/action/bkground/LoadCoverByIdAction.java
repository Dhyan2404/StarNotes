package com.onyx.android.sdk.universal.editor.action.bkground;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/bkground/LoadCoverByIdAction;", "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "", C6997f.f39671c, Constants.STRING_SIG, "coverId", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "getCoverModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "setCoverModel", "(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V", "coverModel", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadCoverByIdAction extends RxBaseTemplateAction<LoadCoverByIdAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String coverId;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public CoverModel coverModel;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.LoadCoverByIdAction$a */
    /* loaded from: classes8.dex */
    public static final class C8547a<T, R> implements Function {
        public C8547a() {
        }

        /* renamed from: a */
        public final void m37400a(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadCoverByIdAction.this.m37399l();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37400a((AccountDataBundle) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.LoadCoverByIdAction$b */
    /* loaded from: classes8.dex */
    public static final class C8548b<T, R> implements Function {
        public C8548b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoadCoverByIdAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadCoverByIdAction.this;
        }
    }

    public LoadCoverByIdAction(@NotNull String coverId) {
        Intrinsics.checkNotNullParameter(coverId, "coverId");
        this.coverId = coverId;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LoadCoverByIdAction> create() {
        Observable<LoadCoverByIdAction> map = AccountDataBundle.INSTANCE.loadOnyxAccountObservable().observeOn(getObserveOn()).map(new C8547a()).map(new C8548b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Nullable
    public final CoverModel getCoverModel() {
        return this.coverModel;
    }

    /* renamed from: l */
    public final void m37399l() {
        this.coverModel = KSyncBundle.INSTANCE.getDbProviderBundle().getCoverProvider(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId())).loadCoverById(this.coverId);
    }

    public final void setCoverModel(@Nullable CoverModel coverModel) {
        this.coverModel = coverModel;
    }
}
