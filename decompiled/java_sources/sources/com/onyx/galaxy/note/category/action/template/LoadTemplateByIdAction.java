package com.onyx.galaxy.note.category.action.template;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.universal.editor.action.bkground.RxBaseTemplateAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction;", "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "", C6997f.f39671c, Constants.STRING_SIG, "templateId", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "getTemplateModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "setTemplateModel", "(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V", "templateModel", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LoadTemplateByIdAction extends RxBaseTemplateAction<LoadTemplateByIdAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String templateId;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public TemplateModel templateModel;

    /* renamed from: com.onyx.galaxy.note.category.action.template.LoadTemplateByIdAction$a */
    /* loaded from: classes9.dex */
    public static final class C11210a<T, R> implements Function {
        public C11210a() {
        }

        /* renamed from: a */
        public final void m42994a(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadTemplateByIdAction.this.m42993l();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m42994a((AccountDataBundle) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.LoadTemplateByIdAction$b */
    /* loaded from: classes9.dex */
    public static final class C11211b<T, R> implements Function {
        public C11211b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoadTemplateByIdAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadTemplateByIdAction.this;
        }
    }

    public LoadTemplateByIdAction(@NotNull String templateId) {
        Intrinsics.checkNotNullParameter(templateId, "templateId");
        this.templateId = templateId;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LoadTemplateByIdAction> create() {
        Observable<LoadTemplateByIdAction> map = AccountDataBundle.INSTANCE.loadOnyxAccountObservable().observeOn(getObserveOn()).map(new C11210a()).map(new C11211b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Nullable
    public final TemplateModel getTemplateModel() {
        return this.templateModel;
    }

    /* renamed from: l */
    public final void m42993l() {
        this.templateModel = KSyncBundle.INSTANCE.getDbProviderBundle().getTemplateProvider(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId())).loadTemplateListById(this.templateId);
    }

    public final void setTemplateModel(@Nullable TemplateModel templateModel) {
        this.templateModel = templateModel;
    }
}
