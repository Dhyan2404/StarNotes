package com.onyx.galaxy.note.category.action.template;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.data.common.data.template.SpaceArgs;
import com.onyx.android.sdk.data.common.data.template.TemplateArgs;
import com.onyx.android.sdk.genericshape.FillAttr;
import com.onyx.android.sdk.genericshape.GeoFactory;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.genericshape.PageMargins;
import com.onyx.android.sdk.genericshape.Properties;
import com.onyx.android.sdk.replicator.note.bean.TemplateResourceWrapper;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.universal.editor.action.bkground.RxBaseTemplateAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR$\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;", "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "model", "", "l", "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", C6997f.f39671c, "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "paperTemplateJsonBean", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "getTemplateModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "setTemplateModel", "(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V", "templateModel", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LoadTemplateByJsonBeanAction extends RxBaseTemplateAction<LoadTemplateByJsonBeanAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final TemplateJsonBean paperTemplateJsonBean;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public TemplateModel templateModel;

    /* renamed from: com.onyx.galaxy.note.category.action.template.LoadTemplateByJsonBeanAction$a */
    /* loaded from: classes9.dex */
    public static final class C11212a<T, R> implements Function {
        public C11212a() {
        }

        /* renamed from: a */
        public final void m42997a(@NotNull LoadTemplateByIdAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadTemplateByJsonBeanAction.this.m42996l(it2.getTemplateModel());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m42997a((LoadTemplateByIdAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.template.LoadTemplateByJsonBeanAction$b */
    /* loaded from: classes9.dex */
    public static final class C11213b<T, R> implements Function {
        public C11213b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoadTemplateByJsonBeanAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadTemplateByJsonBeanAction.this;
        }
    }

    public LoadTemplateByJsonBeanAction(@NotNull TemplateJsonBean paperTemplateJsonBean) {
        Intrinsics.checkNotNullParameter(paperTemplateJsonBean, "paperTemplateJsonBean");
        this.paperTemplateJsonBean = paperTemplateJsonBean;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LoadTemplateByJsonBeanAction> create() {
        Observable<LoadTemplateByJsonBeanAction> map = new LoadTemplateByIdAction(this.paperTemplateJsonBean.getUniqueId()).build().observeOn(getObserveOn()).map(new C11212a()).map(new C11213b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Nullable
    public final TemplateModel getTemplateModel() {
        return this.templateModel;
    }

    /* renamed from: l */
    public final void m42996l(TemplateModel model) {
        Properties properties;
        FillAttr fillAttr;
        Properties properties2;
        PageMargins pageMargins;
        if (model == null) {
            return;
        }
        this.templateModel = model;
        model.setSizeFormat(this.paperTemplateJsonBean.getSizeFormat());
        GeoLayout parseGeoLayout = GeoFactory.INSTANCE.parseGeoLayout(this.paperTemplateJsonBean.getGeoContent());
        if (parseGeoLayout != null && (properties2 = parseGeoLayout.getProperties()) != null && (pageMargins = properties2.getPageMargins()) != null) {
            float spacing = pageMargins.getSpacing();
            TemplateArgs templateArgs = model.getTemplateArgs();
            SpaceArgs spaceArgs = templateArgs != null ? templateArgs.getSpaceArgs() : null;
            if (spaceArgs != null) {
                spaceArgs.setSpaceValuePx(spacing);
            }
        }
        int i = 0;
        model.getTemplateResourceWrapper().setFromMMKV(false);
        TemplateResourceWrapper templateResourceWrapper = model.getTemplateResourceWrapper();
        if (parseGeoLayout != null && (properties = parseGeoLayout.getProperties()) != null && (fillAttr = properties.getFillAttr()) != null) {
            i = fillAttr.getColor();
        }
        templateResourceWrapper.selectByFillColor(Integer.valueOf(i));
    }

    public final void setTemplateModel(@Nullable TemplateModel templateModel) {
        this.templateModel = templateModel;
    }
}
