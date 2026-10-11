package com.onyx.android.sdk.universal.editor.action.bkground;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.genericshape.FillAttr;
import com.onyx.android.sdk.genericshape.GeoFactory;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.genericshape.Properties;
import com.onyx.android.sdk.replicator.note.bean.TemplateResourceWrapper;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR$\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/bkground/LoadCoverByJsonBeanAction;", "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "model", "", "l", "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", C6997f.f39671c, "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "coverTemplateJsonBean", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "getCoverModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "setCoverModel", "(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V", "coverModel", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadCoverByJsonBeanAction extends RxBaseTemplateAction<LoadCoverByJsonBeanAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final TemplateJsonBean coverTemplateJsonBean;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public CoverModel coverModel;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.LoadCoverByJsonBeanAction$a */
    /* loaded from: classes8.dex */
    public static final class C8549a<T, R> implements Function {
        public C8549a() {
        }

        /* renamed from: a */
        public final void m37403a(@NotNull LoadCoverByIdAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadCoverByJsonBeanAction.this.m37402l(it2.getCoverModel());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37403a((LoadCoverByIdAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.LoadCoverByJsonBeanAction$b */
    /* loaded from: classes8.dex */
    public static final class C8550b<T, R> implements Function {
        public C8550b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoadCoverByJsonBeanAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadCoverByJsonBeanAction.this;
        }
    }

    public LoadCoverByJsonBeanAction(@NotNull TemplateJsonBean coverTemplateJsonBean) {
        Intrinsics.checkNotNullParameter(coverTemplateJsonBean, "coverTemplateJsonBean");
        this.coverTemplateJsonBean = coverTemplateJsonBean;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LoadCoverByJsonBeanAction> create() {
        Observable<LoadCoverByJsonBeanAction> map = new LoadCoverByIdAction(this.coverTemplateJsonBean.getUniqueId()).build().observeOn(getObserveOn()).map(new C8549a()).map(new C8550b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Nullable
    public final CoverModel getCoverModel() {
        return this.coverModel;
    }

    /* renamed from: l */
    public final void m37402l(CoverModel model) {
        Properties properties;
        FillAttr fillAttr;
        if (model == null) {
            return;
        }
        this.coverModel = model;
        model.setSizeFormat(this.coverTemplateJsonBean.getSizeFormat());
        int i = 0;
        model.getTemplateResourceWrapper().setFromMMKV(false);
        TemplateResourceWrapper templateResourceWrapper = model.getTemplateResourceWrapper();
        GeoLayout parseGeoLayout = GeoFactory.INSTANCE.parseGeoLayout(this.coverTemplateJsonBean.getGeoContent());
        if (parseGeoLayout != null && (properties = parseGeoLayout.getProperties()) != null && (fillAttr = properties.getFillAttr()) != null) {
            i = fillAttr.getColor();
        }
        templateResourceWrapper.selectByFillColor(Integer.valueOf(i));
    }

    public final void setCoverModel(@Nullable CoverModel coverModel) {
        this.coverModel = coverModel;
    }
}
