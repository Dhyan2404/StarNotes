package com.onyx.android.sdk.universal.editor.action.handler;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.geometry.extension.TouchPointKt;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.note.HideAnnotationSelectionMenuEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartAnnotationSelectionArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\u000b\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0016J\u0010\u0010\f\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0003H\u0014J\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u0010\u001a\u00020\u0006J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0003H\u0014J\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0003H\u0014J\u0016\u0010\u0014\u001a\u00020\u00062\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\u0015\u001a\u00020\u00062\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\b\u0010\u0016\u001a\u00020\u0006H\u0002J\b\u0010\u0017\u001a\u00020\u0006H\u0002¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/AnnotationSelectionDrawingHandlerAction;", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;", "", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "dispose", "touchData", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "onTouchContentOutside", "onTouchDown", "Lcom/onyx/android/sdk/universal/editor/events/note/StartAnnotationSelectionArgs;", "args", "startAnnotationSelection", "quitAnnotationSelection", "onTouchMove", "onTouchUp", "dataList", "l", "m", "postHideMenuEvent", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "touchReader", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class AnnotationSelectionDrawingHandlerAction extends BaseShapeHandlerAction<List<? extends TouchData>> {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.AnnotationSelectionDrawingHandlerAction$a */
    /* loaded from: classes8.dex */
    public static final class C9129a<T> implements Predicate {

        /* renamed from: e */
        public static final C9129a<T> f49099e = new C9129a<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.isEmpty();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.AnnotationSelectionDrawingHandlerAction$b */
    /* loaded from: classes8.dex */
    public static final class C9130b<T> implements Consumer {
        public C9130b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AnnotationSelectionDrawingHandlerAction.this.m38381l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.AnnotationSelectionDrawingHandlerAction$c */
    /* loaded from: classes8.dex */
    public static final class C9131c<T> implements Predicate {
        public C9131c() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AnnotationSelectionDrawingHandlerAction.this.isTouchDone(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.AnnotationSelectionDrawingHandlerAction$d */
    /* loaded from: classes8.dex */
    public static final class C9132d<T> implements Consumer {
        public C9132d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AnnotationSelectionDrawingHandlerAction.this.m38382m(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnnotationSelectionDrawingHandlerAction(@NotNull EditorBundle editorBundle, @NotNull ScribbleTouchReader touchReader) {
        super(editorBundle, touchReader);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchReader, "touchReader");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<TouchData>> create() {
        Observable<List<TouchData>> doOnNext = RxjavaKt.touchBuffer$default(subscribeTouchData(), 0L, 0, getMainUIScheduler(), 3, null).filter(C9129a.f49099e).doOnNext(new C9130b()).filter(new C9131c()).doOnNext(new C9132d());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction, io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        super.dispose();
        m38383n();
    }

    /* renamed from: l */
    public final void m38381l(List<TouchData> dataList) {
    }

    /* renamed from: m */
    public final void m38382m(List<TouchData> dataList) {
        quitAnnotationSelection();
        singleTapUp(dataList);
    }

    /* renamed from: n */
    public final void m38383n() {
        postHideMenuEvent();
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchContentOutside(@NotNull TouchData touchData, @NotNull BoxInfo virtualBoxInfo) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        super.onTouchContentOutside(touchData, virtualBoxInfo);
        quitAnnotationSelection();
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchDown(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchMove(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchUp(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
    }

    public final void postHideMenuEvent() {
        EditorBundleKt.postEvent(getEditorBundle(), new HideAnnotationSelectionMenuEvent());
    }

    public final void quitAnnotationSelection() {
        EditorBundleKt.shapeHandlerManager(getEditorBundle()).restoreUserProvider();
    }

    public final void startAnnotationSelection(@NotNull StartAnnotationSelectionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        setHitTestBoxInfo(args.getVirtualBoxInfo());
        setDown(TouchPointKt.toDownTouchData$default(args.getTouchPoint(), null, args.getVirtualBoxInfo(), 1, null));
    }
}
