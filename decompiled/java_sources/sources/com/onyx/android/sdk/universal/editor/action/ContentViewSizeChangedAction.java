package com.onyx.android.sdk.universal.editor.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.request.UpdateNoteViewSizeRequest;
import com.onyx.android.sdk.reader.request.UpdateReaderViewSizeRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.events.app.ContentViewSizeUpdateDoneEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.UpdateViewSizeRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/ContentViewSizeChangedAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, C4921e.f26528e, "Lcom/onyx/android/sdk/base/data/Size;", "newSize", "l", GoogleApiAvailabilityLight.f29016b, "m", "", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "rotationChanged", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ContentViewSizeChangedAction extends RxBaseAppAction<ContentViewSizeChangedAction> {

    /* renamed from: h, reason: from kotlin metadata */
    public boolean rotationChanged;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ContentViewSizeChangedAction$a */
    /* loaded from: classes8.dex */
    public static final class C8164a<T> implements Predicate {
        public C8164a() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull ContentViewSizeChangedAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EditorBundleKt.isDocumentOpen(ContentViewSizeChangedAction.this.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ContentViewSizeChangedAction$b */
    /* loaded from: classes8.dex */
    public static final class C8165b<T> implements Predicate {
        public C8165b() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull ContentViewSizeChangedAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !ContentViewSizeChangedAction.this.getEditorBundle().getUiBundle().getUiStateInfo().getIsClosingDocumentAfterExitSplitScreen();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ContentViewSizeChangedAction$c */
    /* loaded from: classes8.dex */
    public static final class C8166c<T, R> implements Function {
        public C8166c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ContentViewSizeChangedAction> apply(@NotNull ContentViewSizeChangedAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ContentViewSizeChangedAction.this.m36732o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ContentViewSizeChangedAction$d */
    /* loaded from: classes8.dex */
    public static final class C8167d<T, R> implements Function {
        public C8167d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull ContentViewSizeChangedAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.display(ContentViewSizeChangedAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ContentViewSizeChangedAction$e */
    /* loaded from: classes8.dex */
    public static final class C8168e<T, R> implements Function {
        public C8168e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.postVirtualDocViewInfo(ContentViewSizeChangedAction.this.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ContentViewSizeChangedAction$f */
    /* loaded from: classes8.dex */
    public static final class C8169f<T> implements Consumer {
        public C8169f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(ContentViewSizeChangedAction.this.getEditorBundle(), new ContentViewSizeUpdateDoneEvent(ContentViewSizeChangedAction.this.rotationChanged));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ContentViewSizeChangedAction$g */
    /* loaded from: classes8.dex */
    public static final class C8170g<T, R> implements Function {
        public C8170g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ContentViewSizeChangedAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ContentViewSizeChangedAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ContentViewSizeChangedAction$h */
    /* loaded from: classes8.dex */
    public static final class C8171h<T> implements Consumer {
        public C8171h() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull UpdateViewSizeRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ContentViewSizeChangedAction.this.rotationChanged = it2.getRotationChanged();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ContentViewSizeChangedAction$i */
    /* loaded from: classes8.dex */
    public static final class C8172i<T, R> implements Function {
        public C8172i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ContentViewSizeChangedAction apply(@NotNull UpdateViewSizeRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ContentViewSizeChangedAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ContentViewSizeChangedAction$j */
    /* loaded from: classes8.dex */
    public static final class C8173j<T, R> implements Function {
        public C8173j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ContentViewSizeChangedAction apply(@NotNull UpdateNoteViewSizeRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ContentViewSizeChangedAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ContentViewSizeChangedAction$k */
    /* loaded from: classes8.dex */
    public static final class C8174k<T, R> implements Function {
        public C8174k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ContentViewSizeChangedAction apply(@NotNull UpdateReaderViewSizeRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ContentViewSizeChangedAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ContentViewSizeChangedAction$l */
    /* loaded from: classes8.dex */
    public static final class C8175l<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Size f47590f;

        public C8175l(Size size) {
            this.f47590f = size;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ContentViewSizeChangedAction> apply(@NotNull ContentViewSizeChangedAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ContentViewSizeChangedAction.this.m36730m(this.f47590f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ContentViewSizeChangedAction$m */
    /* loaded from: classes8.dex */
    public static final class C8176m<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Size f47592f;

        public C8176m(Size size) {
            this.f47592f = size;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ContentViewSizeChangedAction> apply(@NotNull ContentViewSizeChangedAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ContentViewSizeChangedAction.this.m36731n(this.f47592f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ContentViewSizeChangedAction$n */
    /* loaded from: classes8.dex */
    public static final class C8177n<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Size f47594f;

        public C8177n(Size size) {
            this.f47594f = size;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ContentViewSizeChangedAction> apply(@NotNull ContentViewSizeChangedAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ContentViewSizeChangedAction.this.m36729l(this.f47594f);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContentViewSizeChangedAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ContentViewSizeChangedAction> create() {
        Observable<ContentViewSizeChangedAction> map = Observable.just(this).filter(new C8164a()).filter(new C8165b()).flatMap(new C8166c()).flatMap(new C8167d()).flatMap(new C8168e()).doOnNext(new C8169f()).map(new C8170g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<ContentViewSizeChangedAction> m36729l(Size newSize) {
        UpdateViewSizeRequest updateViewSizeRequest = new UpdateViewSizeRequest(getEditorBundle());
        updateViewSizeRequest.setSize(Size.copy$default(newSize, 0, 0, 3, null));
        updateViewSizeRequest.setLockScaleByUser(!getEditorBundle().getUiBundle().getHandlerManager().getIsEnabledScale());
        Observable<ContentViewSizeChangedAction> map = RxBaseAppActionKt.submitRequestToCore(this, updateViewSizeRequest).doOnNext(new C8171h()).map(new C8172i());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<ContentViewSizeChangedAction> m36730m(Size newSize) {
        UpdateNoteViewSizeRequest updateNoteViewSizeRequest = new UpdateNoteViewSizeRequest(EditorBundleKt.noteBundle(getEditorBundle()));
        updateNoteViewSizeRequest.setSize(Size.copy$default(newSize, 0, 0, 3, null));
        Observable<ContentViewSizeChangedAction> map = RxBaseAppActionKt.submitRequestToNote(this, updateNoteViewSizeRequest).map(new C8173j());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<ContentViewSizeChangedAction> m36731n(Size newSize) {
        UpdateReaderViewSizeRequest updateReaderViewSizeRequest = new UpdateReaderViewSizeRequest(EditorBundleKt.readerBundle(getEditorBundle()));
        updateReaderViewSizeRequest.setSize(Size.copy$default(newSize, 0, 0, 3, null));
        Observable<ContentViewSizeChangedAction> map = RxBaseAppActionKt.submitRequestToReader(this, updateReaderViewSizeRequest).map(new C8174k());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final Observable<ContentViewSizeChangedAction> m36732o() {
        Size viewSize = EditorBundleKt.viewSize(getEditorBundle());
        RenderManager.resizeCache$default(EditorBundleKt.renderManager(getEditorBundle()), null, 1, null);
        Observable<ContentViewSizeChangedAction> flatMap = Observable.just(this).flatMap(new C8175l(viewSize)).flatMap(new C8176m(viewSize)).flatMap(new C8177n(viewSize));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }
}
