package com.onyx.android.sdk.universal.editor.action.link;

import android.content.Intent;
import android.net.Uri;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.UriKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.reader.data.HitTestDocLinkArgs;
import com.onyx.android.sdk.reader.request.HitTestDocLinkRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.doc.VirtualPageConfig;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.ObtainVirtualPageRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010(\u001a\u00020'\u0012\u0006\u0010\u0012\u001a\u00020\r¢\u0006\u0004\b)\u0010*J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0002H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002R\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\u001eR\"\u0010&\u001a\u00020 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "m", "l", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "selection", "", "p", "Lcom/onyx/android/sdk/base/data/TouchPoint;", C6999h.f39688c, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getTouchPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "i", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "hitTestVirtualPageBoxInfo", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "j", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "hitTestVirtualPage", "", C4921e.f26537n, Constants.STRING_SIG, "contentPath", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "linkReaderSelection", "", Constants.HASIDCALL_INDEX_SIG, "getSuccess", Constants.BOOLEAN_VALUE_SIG, "setSuccess", "(Z)V", FirebaseAnalytics.Param.SUCCESS, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HitTestDocLinkAction extends RxBaseAppAction<HitTestDocLinkAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final TouchPoint touchPoint;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public BoxInfo hitTestVirtualPageBoxInfo;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public VirtualPage hitTestVirtualPage;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public String contentPath;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public ReaderSelection linkReaderSelection;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean success;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.HitTestDocLinkAction$a */
    /* loaded from: classes8.dex */
    public static final class C9632a<T, R> implements Function {
        public C9632a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BoxInfo> apply(@NotNull HitTestDocLinkAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HitTestDocLinkAction.this.m39404n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.HitTestDocLinkAction$b */
    /* loaded from: classes8.dex */
    public static final class C9633b<T, R> implements Function {
        public C9633b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HitTestDocLinkAction> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HitTestDocLinkAction.this.m39405o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.HitTestDocLinkAction$c */
    /* loaded from: classes8.dex */
    public static final class C9634c<T, R> implements Function {
        public C9634c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HitTestDocLinkAction> apply(@NotNull HitTestDocLinkAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HitTestDocLinkAction.this.m39403m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.HitTestDocLinkAction$d */
    /* loaded from: classes8.dex */
    public static final class C9635d<T, R> implements Function {
        public C9635d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HitTestDocLinkAction> apply(@NotNull HitTestDocLinkAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HitTestDocLinkAction.this.m39402l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.HitTestDocLinkAction$e */
    /* loaded from: classes8.dex */
    public static final class C9636e<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ ReaderSelection f50085f;

        public C9636e(ReaderSelection readerSelection) {
            this.f50085f = readerSelection;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull HitTestDocLinkAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HitTestDocLinkAction.this.m39406p(this.f50085f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.HitTestDocLinkAction$f */
    /* loaded from: classes8.dex */
    public static final class C9637f<T> implements Consumer {
        public C9637f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GotoPageByPositionAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HitTestDocLinkAction.this.setSuccess(true);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.HitTestDocLinkAction$g */
    /* loaded from: classes8.dex */
    public static final class C9638g<T, R> implements Function {
        public C9638g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HitTestDocLinkAction apply(@NotNull GotoPageByPositionAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HitTestDocLinkAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.HitTestDocLinkAction$h */
    /* loaded from: classes8.dex */
    public static final class C9639h<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ HitTestDocLinkRequest f50089f;

        public C9639h(HitTestDocLinkRequest hitTestDocLinkRequest) {
            this.f50089f = hitTestDocLinkRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull HitTestDocLinkRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HitTestDocLinkAction.this.linkReaderSelection = this.f50089f.getLinkTargetSelection();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.HitTestDocLinkAction$i */
    /* loaded from: classes8.dex */
    public static final class C9640i<T, R> implements Function {
        public C9640i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HitTestDocLinkAction apply(@NotNull HitTestDocLinkRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HitTestDocLinkAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.HitTestDocLinkAction$j */
    /* loaded from: classes8.dex */
    public static final class C9641j<T> implements Consumer {
        public C9641j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HitTestDocLinkAction.this.hitTestVirtualPageBoxInfo = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.HitTestDocLinkAction$k */
    /* loaded from: classes8.dex */
    public static final class C9642k<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ ObtainVirtualPageRequest f50093f;

        public C9642k(ObtainVirtualPageRequest obtainVirtualPageRequest) {
            this.f50093f = obtainVirtualPageRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ObtainVirtualPageRequest it2) {
            VirtualPageConfig virtualPageConfig;
            Intrinsics.checkNotNullParameter(it2, "it");
            HitTestDocLinkAction.this.hitTestVirtualPage = this.f50093f.getVirtualPage();
            HitTestDocLinkAction hitTestDocLinkAction = HitTestDocLinkAction.this;
            VirtualPage virtualPage = hitTestDocLinkAction.hitTestVirtualPage;
            hitTestDocLinkAction.contentPath = (virtualPage == null || (virtualPageConfig = virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String()) == null) ? null : virtualPageConfig.getContentPath();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.HitTestDocLinkAction$l */
    /* loaded from: classes8.dex */
    public static final class C9643l<T, R> implements Function {
        public C9643l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HitTestDocLinkAction apply(@NotNull ObtainVirtualPageRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HitTestDocLinkAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HitTestDocLinkAction(@NotNull EditorBundle editorBundle, @NotNull TouchPoint touchPoint) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        this.touchPoint = touchPoint;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HitTestDocLinkAction> create() {
        Observable<HitTestDocLinkAction> flatMap = Observable.just(this).flatMap(new C9632a()).flatMap(new C9633b()).flatMap(new C9634c()).flatMap(new C9635d());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    public final boolean getSuccess() {
        return this.success;
    }

    @NotNull
    public final TouchPoint getTouchPoint() {
        return this.touchPoint;
    }

    /* renamed from: l */
    public final Observable<HitTestDocLinkAction> m39402l() {
        ReaderSelection readerSelection = this.linkReaderSelection;
        if (readerSelection == null) {
            Observable<HitTestDocLinkAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        String str = this.contentPath;
        if (str == null) {
            Observable<HitTestDocLinkAction> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        int linkType = readerSelection.linkType();
        if (linkType == 1) {
            Observable<HitTestDocLinkAction> doOnNext = Observable.just(this).doOnNext(new C9636e(readerSelection));
            Intrinsics.checkNotNull(doOnNext);
            return doOnNext;
        }
        if (linkType != 3) {
            Observable<HitTestDocLinkAction> just3 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just3, "just(...)");
            return just3;
        }
        Observable map = new GotoPageByPositionAction(getEditorBundle(), str, readerSelection.selectionRange().getStartPosition()).build().doOnNext(new C9637f()).map(new C9638g());
        Intrinsics.checkNotNull(map);
        return map;
    }

    /* renamed from: m */
    public final Observable<HitTestDocLinkAction> m39403m() {
        BoxInfo boxInfo = this.hitTestVirtualPageBoxInfo;
        if (boxInfo == null) {
            Observable<HitTestDocLinkAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        String str = this.contentPath;
        if (str == null) {
            Observable<HitTestDocLinkAction> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        HitTestDocLinkRequest hitTestDocLinkRequest = new HitTestDocLinkRequest(EditorBundleKt.readerBundle(getEditorBundle()), new HitTestDocLinkArgs(this.touchPoint.copy(), boxInfo, str));
        Observable<HitTestDocLinkAction> map = RxBaseAppActionKt.submitRequestToReader(this, hitTestDocLinkRequest).doOnNext(new C9639h(hitTestDocLinkRequest)).map(new C9640i());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<BoxInfo> m39404n() {
        Observable<BoxInfo> doOnNext = CommonEditorActionsKt.hitTestVisibleBoxObservable(this, this.touchPoint).doOnNext(new C9641j());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: o */
    public final Observable<HitTestDocLinkAction> m39405o() {
        BoxInfo boxInfo = this.hitTestVirtualPageBoxInfo;
        if (boxInfo == null) {
            Observable<HitTestDocLinkAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        ObtainVirtualPageRequest obtainVirtualPageRequest = new ObtainVirtualPageRequest(getEditorBundle().getWorkBundle(), boxInfo);
        Observable<HitTestDocLinkAction> map = RxBaseAppActionKt.submitRequestToCore(this, obtainVirtualPageRequest).doOnNext(new C9642k(obtainVirtualPageRequest)).map(new C9643l());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final void m39406p(ReaderSelection selection) {
        String text = selection.text();
        Uri parse = Uri.parse(text);
        Intrinsics.checkNotNull(parse);
        if (!UriKt.isValidURI(parse) && StringKt.isWebUrl(text)) {
            parse = Uri.parse(StringKt.preAppendUrlScheme(selection.text()));
        }
        Intrinsics.checkNotNull(parse);
        if (!UriKt.isValidURI(parse)) {
            Debug.INSTANCE.m32044e(HitTestDocLinkAction.class, "openURI Invalid uri text: " + text, new Object[0]);
            return;
        }
        Intent addFlags = new Intent("android.intent.action.VIEW", parse).addFlags(268435456);
        Intrinsics.checkNotNullExpressionValue(addFlags, "addFlags(...)");
        if (BuildKt.isApiLevelAbove(24)) {
            addFlags.addFlags(4096);
        }
        ContextKt.startActivitySafely(getAppContext(), addFlags);
        this.success = true;
    }

    public final void setSuccess(boolean z) {
        this.success = z;
    }
}
