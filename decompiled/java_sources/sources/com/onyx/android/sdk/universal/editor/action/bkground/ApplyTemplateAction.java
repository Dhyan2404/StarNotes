package com.onyx.android.sdk.universal.editor.action.bkground;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.replicator.note.bean.ApplyTemplateInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RenderRequestManagerKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.thumbnail.SaveThumbnailAction;
import com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateThumbnailOrientationAction;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.doc.VirtualPageConfig;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.page.GotoPageRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010#\u001a\u00020\"\u0012\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b$\u0010%J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0006J\b\u0010\n\u001a\u00020\tH\u0002J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0016\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u00022\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010\u001e\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "isEnabledGoToCurrentPage", "", "pageIndex", "gotoCurrentPage", "", "p", "m", C4921e.f26528e, "q", "s", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "geoLayout", "r", "Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;", "applyTemplateInfo", "i", "I", "getPageIndex", "()I", "setPageIndex", "(I)V", "j", Constants.HASIDCALL_INDEX_SIG, "isAddCover", Constants.BOOLEAN_VALUE_SIG, "setAddCover", "(Z)V", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ApplyTemplateAction extends RxBaseAppAction<ApplyTemplateAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public ApplyTemplateInfo applyTemplateInfo;

    /* renamed from: i, reason: from kotlin metadata */
    public int pageIndex;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean isAddCover;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$a */
    /* loaded from: classes8.dex */
    public static final class C8526a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ SaveThumbnailAction f48086e;

        public C8526a(SaveThumbnailAction saveThumbnailAction) {
            this.f48086e = saveThumbnailAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f48086e.build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$b */
    /* loaded from: classes8.dex */
    public static final class C8527b<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ SaveThumbnailAction f48088f;

        public C8527b(SaveThumbnailAction saveThumbnailAction) {
            this.f48088f = saveThumbnailAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdateThumbnailOrientationAction> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new UpdateThumbnailOrientationAction(ApplyTemplateAction.this.getEditorBundle(), this.f48088f.getOrientation(), false, 4, null).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$c */
    /* loaded from: classes8.dex */
    public static final class C8528c<T, R> implements Function {
        public C8528c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ApplyTemplateAction apply(@NotNull UpdateThumbnailOrientationAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ApplyTemplateAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$d */
    /* loaded from: classes8.dex */
    public static final class C8529d<T> implements Consumer {
        public C8529d() {
        }

        /* renamed from: a */
        public final void m37381a(boolean z) {
            ApplyTemplateAction.this.setAddCover(true);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m37381a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$e */
    /* loaded from: classes8.dex */
    public static final class C8530e<T, R> implements Function {
        public C8530e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ApplyTemplateAction apply(@NotNull ModifyPagesTemplateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ApplyTemplateAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$f */
    /* loaded from: classes8.dex */
    public static final class C8531f<T, R> implements Function {
        public C8531f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.display(ApplyTemplateAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$g */
    /* loaded from: classes8.dex */
    public static final class C8532g<T, R> implements Function {
        public C8532g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.postVirtualDocViewInfo(ApplyTemplateAction.this.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$h */
    /* loaded from: classes8.dex */
    public static final class C8533h<T, R> implements Function {
        public C8533h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ApplyTemplateAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ApplyTemplateAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$i */
    /* loaded from: classes8.dex */
    public static final class C8534i<T, R> implements Function {
        public C8534i() {
        }

        /* renamed from: a */
        public final void m37386a(@NotNull ApplyTemplateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ApplyTemplateAction.this.m37374p();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37386a((ApplyTemplateAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$j */
    /* loaded from: classes8.dex */
    public static final class C8535j<T, R> implements Function {
        public C8535j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ApplyTemplateAction> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ApplyTemplateAction.this.m37372m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$k */
    /* loaded from: classes8.dex */
    public static final class C8536k<T, R> implements Function {
        public C8536k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ApplyTemplateAction> apply(@NotNull ApplyTemplateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ApplyTemplateAction.this.m37373o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$l */
    /* loaded from: classes8.dex */
    public static final class C8537l<T, R> implements Function {
        public C8537l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ApplyTemplateAction> apply(@NotNull ApplyTemplateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ApplyTemplateAction.this.m37375q();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$m */
    /* loaded from: classes8.dex */
    public static final class C8538m<T> implements Consumer {
        public C8538m() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ApplyTemplateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderRequestManagerKt.safeClearAllSliceCache(ApplyTemplateAction.this.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$n */
    /* loaded from: classes8.dex */
    public static final class C8539n<T, R> implements Function {
        public C8539n() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ApplyTemplateAction apply(@NotNull GotoPageRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ApplyTemplateAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$o */
    /* loaded from: classes8.dex */
    public static final class C8540o<T, R> implements Function {
        public C8540o() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ApplyTemplateAction apply(@NotNull ModifyDocDefaultTemplateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ApplyTemplateAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$p */
    /* loaded from: classes8.dex */
    public static final class C8541p<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ GeoLayout f48102e;

        /* renamed from: f */
        public final /* synthetic */ ApplyTemplateAction f48103f;

        public C8541p(GeoLayout geoLayout, ApplyTemplateAction applyTemplateAction) {
            this.f48102e = geoLayout;
            this.f48103f = applyTemplateAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GeoLayout it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            JSONUtils jSONUtils = JSONUtils.INSTANCE;
            EditorBundleKt.noteBundle(this.f48103f.getEditorBundle()).getGeoLayoutShaderWrapper().setGeoLayout((GeoLayout) jSONUtils.parseObject(jSONUtils.toJson(this.f48102e), GeoLayout.class));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$q */
    /* loaded from: classes8.dex */
    public static final class C8542q<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Ref.ObjectRef<GeoLayout> f48104e;

        public C8542q(Ref.ObjectRef<GeoLayout> objectRef) {
            this.f48104e = objectRef;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GeoLayout geoLayout = this.f48104e.element;
            if (geoLayout != null) {
                geoLayout.clearMargins();
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$r */
    /* loaded from: classes8.dex */
    public static final class C8543r<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Ref.ObjectRef<GeoLayout> f48106f;

        public C8543r(Ref.ObjectRef<GeoLayout> objectRef) {
            this.f48106f = objectRef;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.renderManager(ApplyTemplateAction.this.getEditorBundle()).setBackground(this.f48106f.element);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$s */
    /* loaded from: classes8.dex */
    public static final class C8544s<T, R> implements Function {
        public C8544s() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ApplyTemplateAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ApplyTemplateAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApplyTemplateAction(@NotNull EditorBundle editorBundle, @NotNull ApplyTemplateInfo applyTemplateInfo) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(applyTemplateInfo, "applyTemplateInfo");
        this.applyTemplateInfo = applyTemplateInfo;
        this.pageIndex = EditorBundleKt.currentPageIndex(editorBundle);
    }

    public static /* synthetic */ Observable gotoCurrentPage$default(ApplyTemplateAction applyTemplateAction, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = EditorBundleKt.currentPageIndex(applyTemplateAction.getEditorBundle());
        }
        return applyTemplateAction.gotoCurrentPage(i);
    }

    /* renamed from: n */
    public static final void m37371n(ApplyTemplateAction this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.pageIndex++;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ApplyTemplateAction> create() {
        Observable doOnNext = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C8534i()).flatMap(new C8535j()).flatMap(new C8536k()).flatMap(new C8537l()).observeOn(getMainUIScheduler()).doOnNext(new C8538m());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<ApplyTemplateAction> map = RxjavaKt.flatMapIf(RxjavaKt.flatMapIf(doOnNext, new Function1<ApplyTemplateAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$create$6
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ApplyTemplateAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(ApplyTemplateAction.this.isEnabledGoToCurrentPage());
            }
        }, new Function1<ApplyTemplateAction, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$create$7
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull ApplyTemplateAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return ApplyTemplateAction.gotoCurrentPage$default(ApplyTemplateAction.this, 0, 1, null);
            }
        }), new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$create$8
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(EditorBundleKt.getUiFeature(ApplyTemplateAction.this.getEditorBundle()).supportPageBackground());
            }
        }, new Function1<Object, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$create$9
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Object it2) {
                Observable<? extends Object> m37377s;
                Intrinsics.checkNotNullParameter(it2, "it");
                m37377s = ApplyTemplateAction.this.m37377s();
                return m37377s;
            }
        }).flatMap(new C8531f()).flatMap(new C8532g()).map(new C8533h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    @NotNull
    public final Observable<ApplyTemplateAction> gotoCurrentPage(int pageIndex) {
        Observable<ApplyTemplateAction> map = RxBaseAppActionKt.submitRequestToCore(this, new GotoPageRequest(getEditorBundle().getWorkBundle(), pageIndex)).map(new C8539n());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: isAddCover, reason: from getter */
    public final boolean getIsAddCover() {
        return this.isAddCover;
    }

    public final boolean isEnabledGoToCurrentPage() {
        return this.applyTemplateInfo.getApplyAllPaper() && EditorBundleKt.getUiFeature(getEditorBundle()).supportMultiPage();
    }

    /* renamed from: m */
    public final Observable<ApplyTemplateAction> m37372m() {
        ArrayList arrayListOf;
        Observable build;
        VirtualPageConfig virtualPageConfig;
        TemplateJsonBean coverTemplateJsonBean = this.applyTemplateInfo.getCoverTemplateJsonBean();
        if (coverTemplateJsonBean == null) {
            Observable<ApplyTemplateAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        VirtualPage coverPage = getEditorBundle().getWorkBundle().getVirtualPolicy().getCoverPage();
        String pageId = (coverPage == null || (virtualPageConfig = coverPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String()) == null) ? null : virtualPageConfig.getPageId();
        if (pageId == null || pageId.length() == 0) {
            Observable<Boolean> doOnNext = new AddCoverPageTemplateAction(getEditorBundle(), coverTemplateJsonBean).build().doOnNext(new C8529d());
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            build = RxjavaKt.doOnNextIfTrue(doOnNext, new Consumer() { // from class: com.sunia.HTREnginev2.jd
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(Object obj) {
                    ApplyTemplateAction.m37371n(ApplyTemplateAction.this, ((Boolean) obj).booleanValue());
                }
            });
        } else {
            EditorBundle editorBundle = getEditorBundle();
            arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(pageId);
            build = new ModifyPagesTemplateAction(editorBundle, coverTemplateJsonBean, arrayListOf).build();
        }
        SaveThumbnailAction saveThumbnailAction = new SaveThumbnailAction(getEditorBundle());
        Observable<ApplyTemplateAction> map = build.flatMap(new C8526a(saveThumbnailAction)).flatMap(new C8527b(saveThumbnailAction)).map(new C8528c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final Observable<ApplyTemplateAction> m37373o() {
        VirtualPageConfig virtualPageConfig;
        String pageId;
        if (!this.applyTemplateInfo.getApplyAllPaper() && !this.applyTemplateInfo.getApplyCurrentPaper()) {
            Observable<ApplyTemplateAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        TemplateJsonBean paperTemplateJsonBean = this.applyTemplateInfo.getPaperTemplateJsonBean();
        if (paperTemplateJsonBean == null) {
            Observable<ApplyTemplateAction> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        ArrayList arrayList = new ArrayList();
        if (this.applyTemplateInfo.getApplyAllPaper()) {
            int virtualPageCount = getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPageCount();
            for (int i = 0; i < virtualPageCount; i++) {
                VirtualPage virtualPage = getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPage(i);
                if (virtualPage != null && !getEditorBundle().getWorkBundle().getVirtualPolicy().isCoverPage(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId())) {
                    arrayList.add(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId());
                }
            }
        } else {
            VirtualPage virtualPage2 = getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPage(this.pageIndex);
            if (virtualPage2 == null || (virtualPageConfig = virtualPage2.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String()) == null || (pageId = virtualPageConfig.getPageId()) == null) {
                Observable<ApplyTemplateAction> just3 = Observable.just(this);
                Intrinsics.checkNotNullExpressionValue(just3, "just(...)");
                return just3;
            }
            if (!getEditorBundle().getWorkBundle().getVirtualPolicy().isCoverPage(pageId)) {
                arrayList.add(pageId);
            }
        }
        Observable map = new ModifyPagesTemplateAction(getEditorBundle(), paperTemplateJsonBean, arrayList).build().map(new C8530e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final void m37374p() {
    }

    /* renamed from: q */
    public final Observable<ApplyTemplateAction> m37375q() {
        if (this.applyTemplateInfo.getPaperTemplateJsonBean() == null || !(this.applyTemplateInfo.getApplyAllPaper() || this.applyTemplateInfo.getApplyDefaultPaper())) {
            Observable<ApplyTemplateAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = new ModifyDocDefaultTemplateAction(getEditorBundle(), this.applyTemplateInfo.getPaperTemplateJsonBean()).build().map(new C8540o());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: r */
    public final Observable<?> m37376r(GeoLayout geoLayout) {
        if (geoLayout == null) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<?> observeOn = Observable.just(geoLayout).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C8541p(geoLayout, this)).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: s */
    public final Observable<ApplyTemplateAction> m37377s() {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Observable doOnNext = DocCommonActionsKt.createCoreObservable(this, new Function1<WorkBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$updateRenderBackground$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(WorkBundle workBundle) {
                invoke2(workBundle);
                return Unit.INSTANCE;
            }

            /* JADX WARN: Type inference failed for: r1v5, types: [com.onyx.android.sdk.genericshape.GeoLayout, T] */
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull WorkBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                objectRef.element = this.getEditorBundle().getWorkBundle().getVirtualPolicy().loadGeoLayoutBackground();
            }
        }).doOnNext(new C8542q(objectRef)).doOnNext(new C8543r(objectRef));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable map = RxjavaKt.flatMapIf(doOnNext, new Function1<Unit, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$updateRenderBackground$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Unit it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(objectRef.element != null);
            }
        }, new Function1<Unit, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction$updateRenderBackground$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Unit it2) {
                Observable<? extends Object> m37376r;
                Intrinsics.checkNotNullParameter(it2, "it");
                m37376r = ApplyTemplateAction.this.m37376r(objectRef.element);
                return m37376r;
            }
        }).map(new C8544s());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setAddCover(boolean z) {
        this.isAddCover = z;
    }

    public final void setPageIndex(int i) {
        this.pageIndex = i;
    }
}
