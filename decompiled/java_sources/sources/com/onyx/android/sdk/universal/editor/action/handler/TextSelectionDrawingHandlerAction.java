package com.onyx.android.sdk.universal.editor.action.handler;

import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.geometry.extension.TouchPointKt;
import com.onyx.android.sdk.reader.api.ReaderPosition;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.reader.api.ReaderWritingModeKt;
import com.onyx.android.sdk.reader.data.SelectOnScreenArgs;
import com.onyx.android.sdk.reader.impl.ReaderPositionImpl;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.excerpt.SelectOnScreenAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.events.note.HideTextSelectionMenuEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowTextSelectionMenuEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartTextSelectionArgs;
import com.onyx.android.sdk.universal.editor.events.note.TextSelectionInfo;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import com.onyx.android.sdk.universal.editor.view.TextSelectionHighlightViewHandler;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010G\u001a\u00020F\u0012\u0006\u0010I\u001a\u00020H¢\u0006\u0004\bJ\u0010KJ\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\u0007\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0018\u0010\f\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\r\u001a\u00020\u0005H\u0002J\b\u0010\u000e\u001a\u00020\u0005H\u0002J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0003H\u0002J\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u000f\u001a\u00020\u0003H\u0002J\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0012H\u0002J\u0010\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\u0018\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\u0014\u0010\u001d\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0011H\u0014J\b\u0010\u001e\u001a\u00020\u0005H\u0016J\u0018\u0010!\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\nH\u0016J\u0010\u0010\"\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u0003H\u0014J\u0006\u0010#\u001a\u00020\u0005J\u000e\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$J\u0006\u0010'\u001a\u00020\u0005J\u0006\u0010(\u001a\u00020\u0005J\u0010\u0010)\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u0003H\u0014J\u0010\u0010*\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u0003H\u0014J\u0006\u0010+\u001a\u00020\u0015J\u0006\u0010,\u001a\u00020\u0005R\u0016\u0010 \u001a\u00020\n8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b-\u0010.R\u0014\u00101\u001a\u00020/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u00100R\u0016\u00103\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u00102R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u00104R\u0016\u00107\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u00106R\u0016\u0010:\u001a\u0002088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u00109R\u0016\u0010;\u001a\u0002088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u00109R\u0016\u0010>\u001a\u00020<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010=R\u0016\u0010@\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010?R\"\u0010E\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010?\u001a\u0004\bA\u0010B\"\u0004\bC\u0010D¨\u0006L"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;", "", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "dataList", "", "p", "q", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxInfo", GoogleApiAvailabilityLight.f29016b, "r", "m", Keywords.FUNC_CURRENT_STRING, "t", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;", "s", "action", "", "u", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "selection", C4921e.f26528e, "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "l", BaiduYunConstant.CREATE, "dispose", "touchData", "virtualBoxInfo", "onTouchContentOutside", "onTouchDown", "postHideMenuEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;", "args", "startTextSelection", "quitTextSelection", Constants.RESET, "onTouchMove", "onTouchUp", "hasSelection", "onThemeUpdated", C4921e.f26537n, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;", "Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;", "highlightViewHandler", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "downPoint", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "", Constants.STRING_SIG, "contentPath", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "startPosition", "endPosition", "", "I", "draggingCursorIndex", Constants.HASIDCALL_INDEX_SIG, "selectAfterMove", "getHideMenuIfQuit", Constants.BOOLEAN_VALUE_SIG, "setHideMenuIfQuit", "(Z)V", "hideMenuIfQuit", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "touchReader", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TextSelectionDrawingHandlerAction extends BaseShapeHandlerAction<List<? extends TouchData>> {

    /* renamed from: k, reason: from kotlin metadata */
    public BoxInfo virtualBoxInfo;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final TextSelectionHighlightViewHandler highlightViewHandler;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public TouchPoint downPoint;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public ReaderSelection selection;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public String contentPath;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public ReaderPosition startPosition;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public ReaderPosition endPosition;

    /* renamed from: r, reason: from kotlin metadata */
    public int draggingCursorIndex;

    /* renamed from: s, reason: from kotlin metadata */
    public boolean selectAfterMove;

    /* renamed from: t, reason: from kotlin metadata */
    public boolean hideMenuIfQuit;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextSelectionDrawingHandlerAction$a */
    /* loaded from: classes8.dex */
    public static final class C9326a<T> implements Predicate {

        /* renamed from: e */
        public static final C9326a<T> f49472e = new C9326a<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.isEmpty();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextSelectionDrawingHandlerAction$b */
    /* loaded from: classes8.dex */
    public static final class C9327b<T> implements Consumer {
        public C9327b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextSelectionDrawingHandlerAction.this.m38744p(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextSelectionDrawingHandlerAction$c */
    /* loaded from: classes8.dex */
    public static final class C9328c<T> implements Predicate {
        public C9328c() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TextSelectionDrawingHandlerAction.this.isTouchDone(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextSelectionDrawingHandlerAction$d */
    /* loaded from: classes8.dex */
    public static final class C9329d<T> implements Consumer {
        public C9329d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextSelectionDrawingHandlerAction.this.m38745q(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextSelectionDrawingHandlerAction$e */
    /* loaded from: classes8.dex */
    public static final class C9330e<T> implements Predicate {
        public C9330e() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull SelectOnScreenAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TextSelectionDrawingHandlerAction.this.m38749u(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextSelectionDrawingHandlerAction$f */
    /* loaded from: classes8.dex */
    public static final class C9331f<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ SelectOnScreenArgs f49478f;

        public C9331f(SelectOnScreenArgs selectOnScreenArgs) {
            this.f49478f = selectOnScreenArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SelectOnScreenAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            if (TextSelectionDrawingHandlerAction.this.draggingCursorIndex != -1) {
                this.f49478f.setStartPosition(TextSelectionDrawingHandlerAction.this.startPosition);
                this.f49478f.setEndPosition(TextSelectionDrawingHandlerAction.this.endPosition);
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextSelectionDrawingHandlerAction$g */
    /* loaded from: classes8.dex */
    public static final class C9332g<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ SelectOnScreenArgs f49480f;

        public C9332g(SelectOnScreenArgs selectOnScreenArgs) {
            this.f49480f = selectOnScreenArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SelectOnScreenAction> apply(@NotNull SelectOnScreenAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new SelectOnScreenAction(TextSelectionDrawingHandlerAction.this.getEditorBundle(), this.f49480f).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextSelectionDrawingHandlerAction$h */
    /* loaded from: classes8.dex */
    public static final class C9333h<T> implements Consumer {
        public C9333h() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SelectOnScreenAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ReaderSelection selection = it2.getSelection();
            if (selection != null) {
                TextSelectionDrawingHandlerAction.this.selection = selection;
            }
            TextSelectionDrawingHandlerAction.this.contentPath = it2.getContentPath();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextSelectionDrawingHandlerAction(@NotNull EditorBundle editorBundle, @NotNull ScribbleTouchReader touchReader) {
        super(editorBundle, touchReader);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchReader, "touchReader");
        this.highlightViewHandler = new TextSelectionHighlightViewHandler();
        this.downPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        this.contentPath = "";
        ReaderPositionImpl.Companion companion = ReaderPositionImpl.INSTANCE;
        this.startPosition = companion.getDummy();
        this.endPosition = companion.getDummy();
        this.draggingCursorIndex = -1;
        this.hideMenuIfQuit = true;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<TouchData>> create() {
        Observable<List<TouchData>> doOnNext = RxjavaKt.touchBuffer$default(subscribeTouchData(), 0L, 0, getMainUIScheduler(), 3, null).filter(C9326a.f49472e).doOnNext(new C9327b()).filter(new C9328c()).doOnNext(new C9329d());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction, io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        super.dispose();
        m38746r();
    }

    public final boolean getHideMenuIfQuit() {
        return this.hideMenuIfQuit;
    }

    public final boolean hasSelection() {
        return this.selection != null;
    }

    /* renamed from: l */
    public final void m38740l(Canvas canvas, ReaderSelection selection) {
        TextSelectionHighlightViewHandler textSelectionHighlightViewHandler = this.highlightViewHandler;
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            boxInfo = null;
        }
        textSelectionHighlightViewHandler.drawHighlight(canvas, boxInfo, selection);
    }

    /* renamed from: m */
    public final void m38741m() {
        this.highlightViewHandler.initPaint();
    }

    /* renamed from: n */
    public final void m38742n(TouchPoint touchPoint, BoxInfo boxInfo) {
        this.downPoint.set(touchPoint);
        this.selection = null;
        this.contentPath = "";
        m38741m();
        this.virtualBoxInfo = boxInfo;
    }

    /* renamed from: o */
    public final void m38743o(final ReaderSelection selection) {
        RenderManager.addRenderer$default(EditorBundleKt.renderManager(getEditorBundle()), RenderManager.RENDER_KEY_TEXT_SELECTION, new RenderManager.Renderer() { // from class: com.onyx.android.sdk.universal.editor.action.handler.TextSelectionDrawingHandlerAction$lowLatencyRender$1
            @Override // com.onyx.android.sdk.universal.editor.display.RenderManager.Renderer
            public void onDraw(@NotNull Canvas canvas) {
                Intrinsics.checkNotNullParameter(canvas, "canvas");
                TextSelectionDrawingHandlerAction.this.m38740l(canvas, selection);
            }
        }, false, 4, null);
    }

    public final void onThemeUpdated() {
        this.highlightViewHandler.onThemeUpdated();
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchContentOutside(@NotNull TouchData touchData, @NotNull BoxInfo virtualBoxInfo) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        super.onTouchContentOutside(touchData, virtualBoxInfo);
        quitTextSelection();
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchDown(@NotNull TouchData touchData) {
        Object last;
        Object first;
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        postHideMenuEvent();
        ReaderSelection readerSelection = this.selection;
        if (readerSelection == null) {
            m38742n(touchData.getTouchPoint(), touchData.ensureBoxInfo());
            return;
        }
        int hitTestCursor = this.highlightViewHandler.hitTestCursor(readerSelection.rectangles(), ReaderWritingModeKt.isVertical(readerSelection.writingMode()), touchData);
        this.draggingCursorIndex = hitTestCursor;
        if (hitTestCursor == 0) {
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) readerSelection.charRectList());
            RectF rectF = (RectF) last;
            this.downPoint.set(new TouchPoint(rectF.centerX(), rectF.centerY()));
        } else if (hitTestCursor != 1) {
            m38742n(touchData.getTouchPoint(), touchData.ensureBoxInfo());
        } else {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) readerSelection.charRectList());
            RectF rectF2 = (RectF) first;
            this.downPoint.set(new TouchPoint(rectF2.centerX(), rectF2.centerY()));
        }
        if (this.startPosition.getIntPosition() > this.endPosition.getIntPosition()) {
            ReaderPosition readerPosition = this.endPosition;
            this.endPosition = this.startPosition;
            this.startPosition = readerPosition;
        }
        this.selectAfterMove = false;
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchMove(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        if (!this.selectAfterMove || isMoved(getDown(), touchData)) {
            this.selectAfterMove = false;
            m38748t(touchData);
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchUp(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        this.selectAfterMove = false;
    }

    /* renamed from: p */
    public final void m38744p(List<TouchData> dataList) {
        ReaderSelection readerSelection = this.selection;
        if (readerSelection == null) {
            return;
        }
        m38743o(readerSelection);
    }

    public final void postHideMenuEvent() {
        EditorBundleKt.postEvent(getEditorBundle(), new HideTextSelectionMenuEvent());
    }

    /* renamed from: q */
    public final void m38745q(List<TouchData> dataList) {
        if (singleTapUp(dataList)) {
            quitTextSelection();
            return;
        }
        ReaderSelection readerSelection = this.selection;
        if (readerSelection == null) {
            quitTextSelection();
            return;
        }
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            boxInfo = null;
        }
        EditorBundleKt.postEvent(getEditorBundle(), new ShowTextSelectionMenuEvent(new TextSelectionInfo(readerSelection, boxInfo)));
    }

    public final void quitTextSelection() {
        EditorBundleKt.shapeHandlerManager(getEditorBundle()).restoreUserProvider();
        reset();
        RxjavaKt.subscribeWithDefault$default(DisplayActionsKt.display(this), null, null, null, 7, null);
    }

    /* renamed from: r */
    public final void m38746r() {
        boolean z = this.selection != null;
        reset();
        if (this.hideMenuIfQuit && z) {
            postHideMenuEvent();
        }
        if (z) {
            RxjavaKt.subscribeWithDefault$default(DisplayActionsKt.display(this), null, null, null, 7, null);
        }
    }

    public final void reset() {
        RenderManager.removeRenderer$default(EditorBundleKt.renderManager(getEditorBundle()), RenderManager.RENDER_KEY_TEXT_SELECTION, false, 2, null);
        this.downPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        this.selection = null;
        this.contentPath = "";
    }

    /* renamed from: s */
    public final Observable<SelectOnScreenAction> m38747s(TouchData current) {
        PointF pointF = TouchPointKt.toPointF(current.getTouchPoint());
        String str = this.contentPath;
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            boxInfo = null;
        }
        Observable<SelectOnScreenAction> filter = new SelectOnScreenAction(getEditorBundle(), new SelectOnScreenArgs(str, boxInfo, pointF, pointF, true, false, null, null, 224, null)).build().filter(new C9330e());
        Intrinsics.checkNotNullExpressionValue(filter, "filter(...)");
        return filter;
    }

    public final void setHideMenuIfQuit(boolean z) {
        this.hideMenuIfQuit = z;
    }

    public final void startTextSelection(@NotNull StartTextSelectionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        setHitTestBoxInfo(args.getVirtualBoxInfo());
        TouchPoint copy = args.getTouchPoint().copy();
        copy.m72174setTimestamp(copy.getTimestamp() - 500);
        setDown(TouchPointKt.toDownTouchData$default(copy, null, args.getVirtualBoxInfo(), 1, null));
        m38742n(copy, args.getVirtualBoxInfo());
        this.contentPath = args.getContentPath();
        this.selection = args.getSelection();
        this.startPosition = args.getSelection().selectionRange().getStartPosition();
        this.endPosition = args.getSelection().selectionRange().getEndPosition();
        this.draggingCursorIndex = 1;
        this.selectAfterMove = args.getSelectAfterMove();
        m38743o(args.getSelection());
    }

    /* renamed from: t */
    public final void m38748t(TouchData current) {
        BoxInfo boxInfo;
        TouchPoint touchPoint = current.getTouchPoint();
        BoxInfo boxInfo2 = this.virtualBoxInfo;
        if (boxInfo2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            boxInfo2 = null;
        }
        if (boxInfo2.getContentInfo() == null) {
            return;
        }
        new RectF(this.downPoint.getX(), this.downPoint.getY(), touchPoint.getX(), touchPoint.getY());
        String str = this.contentPath;
        BoxInfo boxInfo3 = this.virtualBoxInfo;
        if (boxInfo3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            boxInfo = null;
        } else {
            boxInfo = boxInfo3;
        }
        SelectOnScreenArgs selectOnScreenArgs = new SelectOnScreenArgs(str, boxInfo, TouchPointKt.toPointF(this.downPoint), TouchPointKt.toPointF(touchPoint), true, false, null, null, 224, null);
        Observable doOnNext = m38747s(current).doOnNext(new C9331f(selectOnScreenArgs)).flatMap(new C9332g(selectOnScreenArgs)).doOnNext(new C9333h());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
    }

    /* renamed from: u */
    public final boolean m38749u(SelectOnScreenAction action) {
        ReaderSelection selection = action.getSelection();
        if (selection == null) {
            return false;
        }
        ReaderPosition startPosition = selection.selectionRange().getStartPosition();
        ReaderPosition endPosition = selection.selectionRange().getEndPosition();
        int i = this.draggingCursorIndex;
        if (i == 0) {
            this.startPosition = startPosition;
        } else if (i != 1) {
            if (startPosition.getIntPosition() < this.startPosition.getIntPosition()) {
                this.startPosition = startPosition;
            }
            if (endPosition.getIntPosition() > this.endPosition.getIntPosition()) {
                this.endPosition = endPosition;
            }
        } else {
            this.endPosition = startPosition;
        }
        return true;
    }
}
