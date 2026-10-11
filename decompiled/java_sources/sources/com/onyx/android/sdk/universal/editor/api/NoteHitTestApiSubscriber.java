package com.onyx.android.sdk.universal.editor.api;

import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.shape.object.AudioShape;
import com.onyx.android.sdk.note.common.shape.object.ReferenceShape;
import com.onyx.android.sdk.replicator.note.data.link.LinkDocBean;
import com.onyx.android.sdk.universal.editor.action.excerpt.HandleHitTestExcerptShapeAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.link.HitTestDocLinkAction;
import com.onyx.android.sdk.universal.editor.action.selection.LongPressAction;
import com.onyx.android.sdk.universal.editor.action.selection.StartAnnotationSelectionAction;
import com.onyx.android.sdk.universal.editor.action.shape.GotoLinkAction;
import com.onyx.android.sdk.universal.editor.action.shape.GotoShapeLinkAction;
import com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestAudioLinkShapeAction;
import com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestAudioShapeAction;
import com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestEditTextShapeAction;
import com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestLinkShapeAction;
import com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestShapeAndStartTransformAction;
import com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestTapeShapeAction;
import com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestUniversalShapeAction;
import com.onyx.android.sdk.universal.editor.action.shape.HitTestShapeAction;
import com.onyx.android.sdk.universal.editor.api.NoteHitTestApiSubscriber;
import com.onyx.android.sdk.universal.editor.events.app.DismissLongPressPopupEvent;
import com.onyx.android.sdk.universal.editor.events.app.ExitLongPressEvent;
import com.onyx.android.sdk.universal.editor.events.app.LongPressEvent;
import com.onyx.android.sdk.universal.editor.events.app.ShowTagShapePopupEvent;
import com.onyx.android.sdk.universal.editor.events.app.SingleTapUpEvent;
import com.onyx.android.sdk.universal.editor.events.app.TouchCancelEvent;
import com.onyx.android.sdk.universal.editor.events.app.TouchUpEvent;
import com.onyx.android.sdk.universal.editor.events.note.CurrentLayerLockedEvent;
import com.onyx.android.sdk.universal.editor.events.note.GotoLinkEvent;
import com.onyx.android.sdk.universal.editor.events.note.GotoShapeLinkEvent;
import com.onyx.android.sdk.universal.editor.events.note.HitTestLinkAudioEvent;
import com.onyx.android.sdk.universal.editor.events.note.HitTestLinkNoteEvent;
import com.onyx.android.sdk.universal.editor.events.note.SplitScreenOpenShapeLinkEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartAnnotationSelectionArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.page.FindVisibleBoxInfoByNotePageIdRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b5\u00106J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0006H\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\bH\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\nH\u0007J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\fH\u0007J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0007J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0011H\u0007J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0013H\u0007J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0015H\u0007J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0017H\u0007J\b\u0010\u0019\u001a\u00020\u0004H\u0002J\u0018\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u000f\u001a\u00020\u001cH\u0002J\u0010\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001fH\u0002J\u0010\u0010\"\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001fH\u0002J\u0010\u0010$\u001a\u00020#2\u0006\u0010\u000f\u001a\u00020\u001cH\u0002J\u0018\u0010'\u001a\u00020\u00042\u0006\u0010&\u001a\u00020%2\u0006\u0010\u000f\u001a\u00020\u001cH\u0002J\u0018\u0010(\u001a\u00020\u00042\u0006\u0010&\u001a\u00020%2\u0006\u0010\u000f\u001a\u00020\u001cH\u0002J\u0018\u0010)\u001a\u00020\u00042\u0006\u0010&\u001a\u00020%2\u0006\u0010\u000f\u001a\u00020\u001cH\u0002J\u0018\u0010*\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u000f\u001a\u00020\u001cH\u0002J \u0010+\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010&\u001a\u00020%2\u0006\u0010\u000f\u001a\u00020\u001cH\u0002J\u0010\u0010,\u001a\u00020#2\u0006\u0010\u000f\u001a\u00020\u001cH\u0002R\"\u00104\u001a\u00020-8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103¨\u00067"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;", "Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;", "Lcom/onyx/android/sdk/universal/editor/events/app/SingleTapUpEvent;", NotificationCompat.CATEGORY_EVENT, "", "onSingleTapUpEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/LongPressEvent;", "onLongPressEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ExitLongPressEvent;", "onExitLongPressEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/TouchUpEvent;", "onTouchUpEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/TouchCancelEvent;", "onTouchCancelEvent", "Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;", "shape", "onAudioShapeHitTest", "Lcom/onyx/android/sdk/universal/editor/events/note/HitTestLinkNoteEvent;", "onHitTestLinkNoteEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/HitTestLinkAudioEvent;", "onHitTestLinkAudioEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/GotoShapeLinkEvent;", "onGotoShapeLinkEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/GotoLinkEvent;", "onGotoLinkEvent", C6998g.f39679a, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxInfo", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "c", "b", "Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;", "action", "e", "d", "", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "j", "l", "m", C4921e.f26537n, "i", C6999h.f39688c, "", "a", "I", "getStartDragExcerptTimerKey", "()I", "setStartDragExcerptTimerKey", "(I)V", "startDragExcerptTimerKey", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NoteHitTestApiSubscriber extends BaseApiSubscriber {

    /* renamed from: a, reason: from kotlin metadata */
    public int startDragExcerptTimerKey = -1;

    /* renamed from: com.onyx.android.sdk.universal.editor.api.NoteHitTestApiSubscriber$a */
    /* loaded from: classes8.dex */
    public static final class C10307a<T> implements Consumer {
        public C10307a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LongPressAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteHitTestApiSubscriber.this.setStartDragExcerptTimerKey(it2.getStartDragExcerptTimerKey());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.api.NoteHitTestApiSubscriber$b */
    /* loaded from: classes8.dex */
    public static final class C10308b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ BoxInfo f51282e;

        public C10308b(BoxInfo boxInfo) {
            this.f51282e = boxInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BoxInfo apply(@NotNull FindVisibleBoxInfoByNotePageIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BoxInfo virtualPageBoxInfo = it2.getVirtualPageBoxInfo();
            return virtualPageBoxInfo == null ? this.f51282e : virtualPageBoxInfo;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.api.NoteHitTestApiSubscriber$c */
    /* loaded from: classes8.dex */
    public static final class C10309c<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Shape f51284f;

        public C10309c(Shape shape) {
            this.f51284f = shape;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteHitTestApiSubscriber.this.m40597k(it2, this.f51284f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.api.NoteHitTestApiSubscriber$d */
    /* loaded from: classes8.dex */
    public static final class C10310d<T> implements Consumer {
        public C10310d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull HitTestShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteHitTestApiSubscriber.this.m40592e(it2);
        }
    }

    /* renamed from: f */
    public static final boolean m40588f(HitTestShapeAction this_apply, Shape it2) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(it2, "it");
        return EditorBundleKt.handlerManager(this_apply.getEditorBundle()).supportSingleTapClick(it2);
    }

    /* renamed from: b */
    public final void m40589b(SingleTapUpEvent event) {
        if (EditorBundleKt.handlerManager(getEditorBundle()).isSupportTouchEdit()) {
            EditorBundleKt.postEvent(getEditorBundle(), new CurrentLayerLockedEvent());
        }
    }

    /* renamed from: c */
    public final void m40590c(BoxInfo boxInfo, Shape shape) {
        EditorBundleKt.postEvent(getEditorBundle(), new ShowTagShapePopupEvent(boxInfo, shape));
    }

    /* renamed from: d */
    public final void m40591d(HitTestShapeAction action) {
        Shape hitTestShape;
        if (action.getHitTestVirtualPage() == null || (hitTestShape = action.getHitTestShape()) == null) {
            return;
        }
        TouchPoint touchPoint = action.getTouchPoint();
        Shape targetShape = ShapeTypes.INSTANCE.getTargetShape(hitTestShape);
        if (m40600n(targetShape)) {
            m40598l(touchPoint, hitTestShape);
        } else {
            action.setHitTestShape(targetShape);
            m40592e(action);
        }
    }

    /* renamed from: e */
    public final void m40592e(HitTestShapeAction action) {
        BoxInfo hitTestVirtualPage;
        Shape targetShape;
        Shape hitTestShape = action.getHitTestShape();
        if (hitTestShape == null || (hitTestVirtualPage = action.getHitTestVirtualPage()) == null) {
            return;
        }
        TouchPoint touchPoint = action.getTouchPoint();
        if (m40594h(hitTestShape)) {
            int type = hitTestShape.getType();
            if (type == 9) {
                m40595i(hitTestVirtualPage, touchPoint, hitTestShape);
                return;
            }
            if (type != 19) {
                if (type == 33) {
                    RxBaseAction.execute$default(new HandleHitTestLinkShapeAction(getEditorBundle(), hitTestShape, touchPoint), null, null, null, 7, null);
                    return;
                }
                if (type != 35) {
                    if (type == 2000) {
                        ReferenceShape referenceShape = hitTestShape instanceof ReferenceShape ? (ReferenceShape) hitTestShape : null;
                        if (referenceShape == null || (targetShape = referenceShape.getTargetShape()) == null || ShapeTypes.INSTANCE.isReferenceShape(targetShape)) {
                            return;
                        }
                        m40591d(action);
                        return;
                    }
                    if (type == 15) {
                        if (ShapePersistOptionsKt.isLineSubShapeType(hitTestShape, 36)) {
                            m40598l(touchPoint, hitTestShape);
                            return;
                        }
                        return;
                    }
                    if (type == 16) {
                        m40596j(touchPoint, hitTestShape);
                        return;
                    }
                    if (type != 44) {
                        if (type != 45) {
                            switch (type) {
                                case 39:
                                    RxBaseAction.execute$default(new HandleHitTestTapeShapeAction(getEditorBundle(), hitTestShape, touchPoint), null, null, null, 7, null);
                                    return;
                                case 40:
                                    m40599m(touchPoint, hitTestShape);
                                    return;
                                case 41:
                                    break;
                                case 42:
                                    break;
                                default:
                                    Debug.INSTANCE.m32035d(NoteHitTestApiSubscriber.class, "onShapeSingleTapUp: " + AnyKt.toSimpleNameString(hitTestShape), new Object[0]);
                                    EditorBundleKt.postEvent(getEditorBundle(), hitTestShape);
                                    return;
                            }
                        }
                    }
                    EditorBundleKt.findVisibleBoxInfoByNotePageId(getEditorBundle(), hitTestShape.getPageUniqueId(), true).map(new C10308b(hitTestVirtualPage)).doOnNext(new C10309c(hitTestShape)).subscribe();
                    return;
                }
            }
            m40598l(touchPoint, hitTestShape);
        }
    }

    /* renamed from: g */
    public final void m40593g() {
        RxTimerUtil.INSTANCE.cancel(this.startDragExcerptTimerKey);
    }

    public final int getStartDragExcerptTimerKey() {
        return this.startDragExcerptTimerKey;
    }

    /* renamed from: h */
    public final boolean m40594h(Shape shape) {
        List listOf;
        ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
        Shape targetShape = shapeTypes.getTargetShape(shape);
        if (EditorBundleKt.handlerManager(getEditorBundle()).isSupportTouchEdit()) {
            return (shapeTypes.isImageShape(targetShape) && ShapePersistOptionsKt.isLocked(targetShape)) ? false : true;
        }
        if (!shapeTypes.isImageShape(targetShape)) {
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{40, 16});
            if (!listOf.contains(Integer.valueOf(targetShape.getType()))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    public final void m40595i(BoxInfo boxInfo, TouchPoint touchPoint, Shape shape) {
        RxBaseAction.execute$default(new StartAnnotationSelectionAction(getEditorBundle(), new StartAnnotationSelectionArgs(boxInfo, touchPoint, shape)), null, null, null, 7, null);
    }

    /* renamed from: j */
    public final void m40596j(TouchPoint touchPoint, Shape shape) {
        RxBaseAction.execute$default(new HandleHitTestEditTextShapeAction(getEditorBundle(), shape, touchPoint), null, null, null, 7, null);
    }

    /* renamed from: k */
    public final void m40597k(BoxInfo boxInfo, Shape shape) {
        RxBaseAction.execute$default(new HandleHitTestExcerptShapeAction(getEditorBundle(), boxInfo, shape), null, null, null, 7, null);
    }

    /* renamed from: l */
    public final void m40598l(TouchPoint touchPoint, Shape shape) {
        RxBaseAction.execute$default(new HandleHitTestShapeAndStartTransformAction(getEditorBundle(), shape, touchPoint), null, null, null, 7, null);
    }

    /* renamed from: m */
    public final void m40599m(TouchPoint touchPoint, Shape shape) {
        RxBaseAction.execute$default(new HandleHitTestUniversalShapeAction(getEditorBundle(), shape, touchPoint), null, null, null, 7, null);
    }

    /* renamed from: n */
    public final boolean m40600n(Shape shape) {
        int type = shape.getType();
        return type != 15 ? type == 19 || type == 33 || type == 35 || type == 42 || type == 45 : ShapePersistOptionsKt.isLineSubShapeType(shape, 36);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAudioShapeHitTest(@NotNull AudioShape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        RxBaseAction.execute$default(new HandleHitTestAudioShapeAction(getEditorBundle(), shape), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onExitLongPressEvent(@NotNull ExitLongPressEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m40593g();
        EditorBundleKt.postEvent(getEditorBundle(), new DismissLongPressPopupEvent(null));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onGotoLinkEvent(@NotNull GotoLinkEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new GotoLinkAction(getEditorBundle(), event.getLinkBean(), false, 4, null), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onGotoShapeLinkEvent(@NotNull GotoShapeLinkEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        new GotoShapeLinkAction(getEditorBundle(), event.getLinkBean()).build().subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHitTestLinkAudioEvent(@NotNull HitTestLinkAudioEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new HandleHitTestAudioLinkShapeAction(getEditorBundle(), event.getLinkBean()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHitTestLinkNoteEvent(@NotNull HitTestLinkNoteEvent event) {
        String documentId;
        Intrinsics.checkNotNullParameter(event, "event");
        LinkDocBean docBean = event.getLinkBean().getDocBean();
        if (docBean == null || (documentId = docBean.getDocumentId()) == null) {
            return;
        }
        if (!Intrinsics.areEqual(documentId, EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getDocumentUniqueId())) {
            EditorBundleKt.postEvent(getEditorBundle(), new SplitScreenOpenShapeLinkEvent(event.getLinkBean()));
        } else if (event.getLinkBean().isLinkPageType()) {
            CommonEditorActionsKt.gotoPageOrShape(getEditorBundle(), event.getLinkBean());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onLongPressEvent(@NotNull LongPressEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m40593g();
        Observable<LongPressAction> doOnNext = new LongPressAction(getEditorBundle(), event.getTouchPoint()).build().doOnNext(new C10307a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSingleTapUpEvent(@NotNull SingleTapUpEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (EditorBundleKt.isCurNoteLayerLocked(getEditorBundle())) {
            m40589b(event);
            return;
        }
        if (!getEditorBundle().getUiBundle().getHandlerManager().getShapeHandlerManager().onSingleTapUp(event.getTouchPoint()) && getEditorBundle().getUiBundle().getHandlerManager().isShapeTouchEnabled()) {
            final HitTestShapeAction hitTestShapeAction = new HitTestShapeAction(getEditorBundle(), event.getTouchPoint());
            hitTestShapeAction.setPredicate(new Predicate() { // from class: com.sunia.HTREnginev2.hwj
                @Override // io.reactivex.rxjava3.functions.Predicate
                public final boolean test(Object obj) {
                    boolean m40588f;
                    m40588f = NoteHitTestApiSubscriber.m40588f(HitTestShapeAction.this, (Shape) obj);
                    return m40588f;
                }
            });
            Observable<HitTestShapeAction> doOnNext = hitTestShapeAction.build().doOnNext(new C10310d());
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            RxjavaKt.subscribeWithDefault$default(RxjavaKt.flatMapIf(doOnNext, new Function1<HitTestShapeAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.api.NoteHitTestApiSubscriber$onSingleTapUpEvent$3
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull HitTestShapeAction it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(it2.getHitTestShape() == null);
                }
            }, new HitTestDocLinkAction(getEditorBundle(), event.getTouchPoint()).build()), null, null, null, 7, null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTouchCancelEvent(@NotNull TouchCancelEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m40593g();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTouchUpEvent(@NotNull TouchUpEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m40593g();
    }

    public final void setStartDragExcerptTimerKey(int i) {
        this.startDragExcerptTimerKey = i;
    }
}
