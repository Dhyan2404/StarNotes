package com.onyx.galaxy.note.category.action.template;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateRecentUseModel;
import com.onyx.android.sdk.universal.editor.action.bkground.RxBaseTemplateAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/template/AddRecentUseTemplateAction;", "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", C6997f.f39671c, "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "templateJsonBean", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class AddRecentUseTemplateAction extends RxBaseTemplateAction<TemplateRecentUseModel> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final TemplateJsonBean templateJsonBean;

    /* renamed from: com.onyx.galaxy.note.category.action.template.AddRecentUseTemplateAction$a */
    /* loaded from: classes9.dex */
    public static final class C11182a<T, R> implements Function {
        public C11182a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TemplateRecentUseModel apply(@NotNull AddRecentUseTemplateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddRecentUseTemplateAction.this.m42935l();
        }
    }

    public AddRecentUseTemplateAction(@NotNull TemplateJsonBean templateJsonBean) {
        Intrinsics.checkNotNullParameter(templateJsonBean, "templateJsonBean");
        this.templateJsonBean = templateJsonBean;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<TemplateRecentUseModel> create() {
        Observable<TemplateRecentUseModel> map = Observable.just(this).observeOn(getObserveOn()).map(new C11182a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final TemplateRecentUseModel m42935l() {
        TemplateRecentUseModel create = TemplateRecentUseModel.INSTANCE.create(this.templateJsonBean);
        KSyncBundle.INSTANCE.getUserTemplateProvider().addRecentUseTemplate(create);
        return create;
    }
}
