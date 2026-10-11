package com.onyx.android.sdk.universal.editor.action.bkground;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.InsertPageAction;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.data.InsertPageArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0010B\u0019\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "coverModel", "l", "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", C6999h.f39688c, "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "templateJsonBean", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class AddCoverPageTemplateAction extends RxBaseAppAction<Boolean> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public final TemplateJsonBean templateJsonBean;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction$Companion;", "", "()V", "updateCoverPage", "Lio/reactivex/rxjava3/core/Observable;", "", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "templateJsonBean", "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {

        /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.AddCoverPageTemplateAction$Companion$a */
        /* loaded from: classes8.dex */
        public static final class C8523a<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ EditorBundle f48079e;

            /* renamed from: f */
            public final /* synthetic */ TemplateJsonBean f48080f;

            public C8523a(EditorBundle editorBundle, TemplateJsonBean templateJsonBean) {
                this.f48079e = editorBundle;
                this.f48080f = templateJsonBean;
            }

            /* renamed from: a */
            public final void m37367a(boolean z) {
                VirtualDocPolicy virtualPolicy = this.f48079e.getWorkBundle().getVirtualPolicy();
                VirtualPage virtualPage = virtualPolicy.getVirtualPage(0);
                if (virtualPage == null) {
                    return;
                }
                String contentId = virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentId();
                TemplateJsonBean templateJsonBean = this.f48080f;
                if (Intrinsics.areEqual(contentId, templateJsonBean != null ? templateJsonBean.getUniqueId() : null)) {
                    virtualPolicy.updateCoverPage(virtualPage);
                }
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            public /* bridge */ /* synthetic */ void accept(Object obj) {
                m37367a(((Boolean) obj).booleanValue());
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Observable<Boolean> updateCoverPage(@NotNull EditorBundle editorBundle, @Nullable TemplateJsonBean templateJsonBean) {
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Observable<Boolean> doOnNext = Observable.just(Boolean.TRUE).observeOn(EditorBundleKt.coreScheduler(editorBundle)).doOnNext(new C8523a(editorBundle, templateJsonBean));
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            return doOnNext;
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.AddCoverPageTemplateAction$a */
    /* loaded from: classes8.dex */
    public static final class C8524a<T, R> implements Function {
        public C8524a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull LoadCoverByJsonBeanAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddCoverPageTemplateAction.this.m37366l(it2.getCoverModel());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.AddCoverPageTemplateAction$b */
    /* loaded from: classes8.dex */
    public static final class C8525b<T, R> implements Function {
        public C8525b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull InsertPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddCoverPageTemplateAction.INSTANCE.updateCoverPage(AddCoverPageTemplateAction.this.getEditorBundle(), AddCoverPageTemplateAction.this.templateJsonBean);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddCoverPageTemplateAction(@NotNull EditorBundle editorBundle, @Nullable TemplateJsonBean templateJsonBean) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.templateJsonBean = templateJsonBean;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        TemplateJsonBean templateJsonBean = this.templateJsonBean;
        if (templateJsonBean == null) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable flatMap = new LoadCoverByJsonBeanAction(templateJsonBean).build().observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).flatMap(new C8524a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<Boolean> m37366l(CoverModel coverModel) {
        if (coverModel == null) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        InsertPageArgs insertPageArgs = new InsertPageArgs();
        insertPageArgs.setTemplateJsonBean(this.templateJsonBean);
        insertPageArgs.setInsertAt(0);
        insertPageArgs.setPageRect(Templates.INSTANCE.coverTemplateRect(coverModel));
        insertPageArgs.setAutoApplyPageMargin(getEditorBundle().getWorkBundle().getDocOptions().getApplyMarginToCover());
        VirtualPage virtualPage = getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPage(0);
        if (virtualPage != null) {
            float width = virtualPage.getBox().getOriginRectF().width() / insertPageArgs.getPageRect().width();
            if (!Float.isNaN(width)) {
                RectFKt.scaleRect(insertPageArgs.getPageRect(), width);
            }
        }
        Observable flatMap = new InsertPageAction(getEditorBundle(), insertPageArgs).build().flatMap(new C8525b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }
}
