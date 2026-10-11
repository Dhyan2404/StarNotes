package com.onyx.android.sdk.universal.editor.action.page;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.path.TemplatePaths;
import com.onyx.android.sdk.genericshape.GeoLayoutMargin;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.MarginStyle;
import com.onyx.android.sdk.replicator.note.p035db.model.PageMarginConfig;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualDocOptions;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RenderRequestManagerKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.shape.UpdateCrossPageShapesByMarginAction;
import com.onyx.android.sdk.universal.editor.action.thumbnail.SaveThumbnailAction;
import com.onyx.android.sdk.universal.editor.data.PageMarginArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.ReloadBoxManagerWithSettingsRequest;
import com.onyx.android.sdk.universal.editor.request.ScaleToPageRequest;
import com.onyx.android.sdk.universal.editor.request.page.UpdatePageMarginRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u001b\u0010\u001cJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\b\u0010\r\u001a\u00020\u0000H\u0002J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00060\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", GoogleApiAvailabilityLight.f29016b, "", "templateResourceId", "", "m", "u", C4921e.f26528e, "r", "s", "Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;", "args", "t", "q", "p", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;", "", "i", "Ljava/util/Set;", "marginTemplateFiles", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UpdatePageMarginAction extends RxBaseAppAction<UpdatePageMarginAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final PageMarginArgs args;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Set<String> marginTemplateFiles;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction$a */
    /* loaded from: classes8.dex */
    public static final class C9742a<T, R> implements Function {
        public C9742a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdatePageMarginAction apply(@NotNull Set<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdatePageMarginAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction$b */
    /* loaded from: classes8.dex */
    public static final class C9743b<T, R> implements Function {
        public C9743b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull UpdatePageMarginAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new SaveThumbnailAction(UpdatePageMarginAction.this.getEditorBundle()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction$c */
    /* loaded from: classes8.dex */
    public static final class C9744c<T, R> implements Function {
        public C9744c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.saveDocInfo(UpdatePageMarginAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction$d */
    /* loaded from: classes8.dex */
    public static final class C9745d<T, R> implements Function {
        public C9745d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdatePageMarginAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdatePageMarginAction.this.m39588n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction$e */
    /* loaded from: classes8.dex */
    public static final class C9746e<T, R> implements Function {
        public C9746e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdatePageMarginAction apply(@NotNull UpdatePageMarginAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdatePageMarginAction.this.m39593s();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction$f */
    /* loaded from: classes8.dex */
    public static final class C9747f<T, R> implements Function {
        public C9747f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdatePageMarginAction> apply(@NotNull UpdatePageMarginAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdatePageMarginAction.this.m39586l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction$g */
    /* loaded from: classes8.dex */
    public static final class C9748g<T, R> implements Function {
        public C9748g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdatePageMarginAction> apply(@NotNull UpdatePageMarginAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdatePageMarginAction updatePageMarginAction = UpdatePageMarginAction.this;
            return updatePageMarginAction.m39591q(updatePageMarginAction.args);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction$h */
    /* loaded from: classes8.dex */
    public static final class C9749h<T, R> implements Function {
        public C9749h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdatePageMarginAction> apply(@NotNull UpdatePageMarginAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdatePageMarginAction.this.m39595u();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction$i */
    /* loaded from: classes8.dex */
    public static final class C9750i<T, R> implements Function {
        public C9750i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdatePageMarginAction> apply(@NotNull UpdatePageMarginAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdatePageMarginAction.this.m39589o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction$j */
    /* loaded from: classes8.dex */
    public static final class C9751j<T, R> implements Function {
        public C9751j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdatePageMarginAction> apply(@NotNull UpdatePageMarginAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdatePageMarginAction.this.m39592r();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction$k */
    /* loaded from: classes8.dex */
    public static final class C9752k<T, R> implements Function {
        public C9752k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdateCrossPageShapesByMarginAction> apply(@NotNull UpdatePageMarginAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new UpdateCrossPageShapesByMarginAction(UpdatePageMarginAction.this.getEditorBundle(), UpdatePageMarginAction.this.args).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction$l */
    /* loaded from: classes8.dex */
    public static final class C9753l<T, R> implements Function {
        public C9753l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull UpdateCrossPageShapesByMarginAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderRequestManagerKt.safeClearAllNoteSliceCache(UpdatePageMarginAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction$m */
    /* loaded from: classes8.dex */
    public static final class C9754m<T, R> implements Function {
        public C9754m() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.display(UpdatePageMarginAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction$n */
    /* loaded from: classes8.dex */
    public static final class C9755n<T, R> implements Function {
        public C9755n() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdatePageMarginAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdatePageMarginAction updatePageMarginAction = UpdatePageMarginAction.this;
            return updatePageMarginAction.m39590p(updatePageMarginAction.args);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction$o */
    /* loaded from: classes8.dex */
    public static final class C9756o<T, R> implements Function {
        public C9756o() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull UpdatePageMarginAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(UpdatePageMarginAction.this.marginTemplateFiles);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction$p */
    /* loaded from: classes8.dex */
    public static final class C9757p<T> implements Consumer {
        public C9757p() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdatePageMarginAction.this.m39587m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction$q */
    /* loaded from: classes8.dex */
    public static final class C9758q<T, R> implements Function {
        public C9758q() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdatePageMarginAction apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdatePageMarginAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction$r */
    /* loaded from: classes8.dex */
    public static final class C9759r<T, R> implements Function {
        public C9759r() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdatePageMarginAction apply(@NotNull ReloadBoxManagerWithSettingsRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdatePageMarginAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction$s */
    /* loaded from: classes8.dex */
    public static final class C9760s<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ PageMarginArgs f50270f;

        public C9760s(PageMarginArgs pageMarginArgs) {
            this.f50270f = pageMarginArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull UpdatePageMarginAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdatePageMarginAction.this.m39594t(this.f50270f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction$t */
    /* loaded from: classes8.dex */
    public static final class C9761t<T, R> implements Function {
        public C9761t() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdatePageMarginAction apply(@NotNull ScaleToPageRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdatePageMarginAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction$u */
    /* loaded from: classes8.dex */
    public static final class C9762u<T, R> implements Function {
        public C9762u() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdatePageMarginAction apply(@NotNull UpdatePageMarginRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdatePageMarginAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdatePageMarginAction(@NotNull EditorBundle editorBundle, @NotNull PageMarginArgs args) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
        this.marginTemplateFiles = new LinkedHashSet();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<UpdatePageMarginAction> create() {
        Observable<UpdatePageMarginAction> map = Observable.just(this).flatMap(new C9747f()).flatMap(new C9748g()).flatMap(new C9749h()).flatMap(new C9750i()).flatMap(new C9751j()).flatMap(new C9752k()).flatMap(new C9753l()).flatMap(new C9754m()).flatMap(new C9755n()).flatMap(new C9743b()).flatMap(new C9744c()).flatMap(new C9745d()).map(new C9746e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<UpdatePageMarginAction> m39586l() {
        Observable<UpdatePageMarginAction> map = DocCommonActionsKt.createCoreObservable(this, new Function1<WorkBundle, Set<String>>() { // from class: com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction$collectMarginTemplateFiles$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Set<String> invoke(@NotNull WorkBundle it2) {
                String templateResourceId;
                VirtualPage coverPage;
                BoxInfo box;
                MarginStyle marginStyle;
                String templateResourceId2;
                Intrinsics.checkNotNullParameter(it2, "it");
                VirtualDocPolicy virtualPolicy = UpdatePageMarginAction.this.getEditorBundle().getWorkBundle().getVirtualPolicy();
                if (UpdatePageMarginAction.this.args.getApplyAll()) {
                    if (UpdatePageMarginAction.this.args.getApplyToCover() && (coverPage = virtualPolicy.getCoverPage()) != null && (box = coverPage.getBox()) != null && (marginStyle = box.getMarginStyle()) != null && (templateResourceId2 = marginStyle.getTemplateResourceId()) != null) {
                        UpdatePageMarginAction.this.marginTemplateFiles.add(templateResourceId2);
                    }
                    List<VirtualPage> virtualPageList = virtualPolicy.getVirtualPageList();
                    UpdatePageMarginAction updatePageMarginAction = UpdatePageMarginAction.this;
                    for (VirtualPage virtualPage : virtualPageList) {
                        if (!virtualPolicy.isCoverPage(virtualPage.getBox().getId()) && (templateResourceId = virtualPage.getBox().getMarginStyle().getTemplateResourceId()) != null) {
                            updatePageMarginAction.marginTemplateFiles.add(templateResourceId);
                        }
                    }
                }
                return UpdatePageMarginAction.this.marginTemplateFiles;
            }
        }).map(new C9742a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final void m39587m(String templateResourceId) {
        File file = TemplatePaths.INSTANCE.appDocPageMarginTemplateJsonPath(EditorBundleKt.docId(getEditorBundle()), templateResourceId).toFile();
        if (file.exists()) {
            FileUtils fileUtils = FileUtils.INSTANCE;
            Intrinsics.checkNotNull(file);
            fileUtils.deleteFile(file);
        }
    }

    /* renamed from: n */
    public final Observable<UpdatePageMarginAction> m39588n() {
        if (this.marginTemplateFiles.isEmpty()) {
            Observable<UpdatePageMarginAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable doOnNext = Observable.just(this).observeOn(Schedulers.m61350io()).flatMap(new C9756o()).doOnNext(new C9757p());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<UpdatePageMarginAction> map = RxjavaKt.takeLastOne(doOnNext).observeOn(getMainUIScheduler()).map(new C9758q());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final Observable<UpdatePageMarginAction> m39589o() {
        Observable<UpdatePageMarginAction> map = RxBaseAppActionKt.submitRequestToCore(this, new ReloadBoxManagerWithSettingsRequest(getEditorBundle().getWorkBundle())).map(new C9759r());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final Observable<UpdatePageMarginAction> m39590p(final PageMarginArgs args) {
        return DocCommonActionsKt.createCoreObservable(getEditorBundle(), new Function1<WorkBundle, UpdatePageMarginAction>() { // from class: com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction$saveMarginConfig$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final UpdatePageMarginAction invoke(@NotNull WorkBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                VirtualDocOptions docOptions = it2.getDocOptions();
                PageMarginArgs pageMarginArgs = args;
                docOptions.setApplyMarginToCover(pageMarginArgs.getApplyToCover());
                docOptions.setApplyMarginToAll(pageMarginArgs.getApplyAll());
                if (pageMarginArgs.getApplyAll()) {
                    docOptions.setAutoApplyPageMargin(true);
                    PageMarginConfig pageMarginConfig = new PageMarginConfig();
                    MarginStyle marginStyle = new MarginStyle(pageMarginArgs.getMarginColor(), pageMarginArgs.getTemplateResource(), 0, 4, null);
                    marginStyle.setTemplateSpace(pageMarginArgs.getTemplateSpace());
                    marginStyle.setTemplateResourceId(pageMarginArgs.getTemplateResourceId());
                    pageMarginConfig.setStyle(marginStyle);
                    pageMarginConfig.setMargin(pageMarginArgs.getMarginPercent());
                    docOptions.setPageMarginConfig(pageMarginConfig);
                }
                return UpdatePageMarginAction.this;
            }
        });
    }

    /* renamed from: q */
    public final Observable<UpdatePageMarginAction> m39591q(PageMarginArgs args) {
        String templateResource = args.getTemplateResource();
        if ((templateResource == null || templateResource.length() == 0) || !args.getMarginPercent().hasMargin()) {
            Observable<UpdatePageMarginAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<UpdatePageMarginAction> observeOn = Observable.just(this).observeOn(Schedulers.m61350io()).doOnNext(new C9760s(args)).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: r */
    public final Observable<UpdatePageMarginAction> m39592r() {
        Observable<UpdatePageMarginAction> map = RxBaseAppActionKt.submitRequestToCore(this, new ScaleToPageRequest(getEditorBundle().getWorkBundle())).map(new C9761t());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: s */
    public final UpdatePageMarginAction m39593s() {
        if (this.args.getApplyAll()) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C8045R.string.all_page_margin_adjustments_complete, false, 2, (Object) null);
        }
        return this;
    }

    /* renamed from: t */
    public final void m39594t(PageMarginArgs args) {
        String templateResourceId;
        GeoLayoutMargin.Companion companion;
        GeoLayoutMargin loadFromRes;
        String templateResource = args.getTemplateResource();
        if (templateResource == null || (templateResourceId = args.getTemplateResourceId()) == null || (loadFromRes = (companion = GeoLayoutMargin.INSTANCE).loadFromRes(templateResource)) == null) {
            return;
        }
        TemplateModel.Companion.updateMarginTemplate$default(TemplateModel.INSTANCE, loadFromRes, false, 2, null);
        File file = TemplatePaths.INSTANCE.appDocPageMarginTemplateJsonPath(EditorBundleKt.docId(getEditorBundle()), templateResourceId).toFile();
        Intrinsics.checkNotNullExpressionValue(file, "toFile(...)");
        companion.saveToFile(loadFromRes, file);
    }

    /* renamed from: u */
    public final Observable<UpdatePageMarginAction> m39595u() {
        Observable<UpdatePageMarginAction> map = RxBaseAppActionKt.submitRequestToCore(this, new UpdatePageMarginRequest(getEditorBundle().getWorkBundle(), this.args)).map(new C9762u());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
