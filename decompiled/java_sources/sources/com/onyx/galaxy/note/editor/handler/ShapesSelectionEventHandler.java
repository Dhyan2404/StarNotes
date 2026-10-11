package com.onyx.galaxy.note.editor.handler;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.WindowLocation;
import com.onyx.android.sdk.base.extension.PopupLocator;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.common.error.ErrorType;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler;
import com.onyx.android.sdk.universal.editor.events.note.CloseSelectionMenuEvent;
import com.onyx.android.sdk.universal.editor.events.note.DismissExcerptPopupEvent;
import com.onyx.android.sdk.universal.editor.events.note.DismissShapeSelectionStyleMenuEvent;
import com.onyx.android.sdk.universal.editor.events.note.HandleQuickCopyDragEvent;
import com.onyx.android.sdk.universal.editor.events.note.HideAnnotationSelectionMenuEvent;
import com.onyx.android.sdk.universal.editor.events.note.HideEditTextShapeSelectionMenuEvent;
import com.onyx.android.sdk.universal.editor.events.note.HideTextSelectionMenuEvent;
import com.onyx.android.sdk.universal.editor.events.note.HideUniversalShapeSelectionEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionInsertStickerDoneEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionInsertStickerErrorEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionInsertStickerStartEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowAnnotationSelectionMenuEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowEditTextShapeSelectionMenuEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowExcerptPopupArgs;
import com.onyx.android.sdk.universal.editor.events.note.ShowExcerptPopupEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowInkBeautifyPopupEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowSelectMoveLayerPopupEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowShapeHighlightAnimationEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowShapeSelectionStyleMenuEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowTextSelectionMenuEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowUniversalShapeSelectionEvent;
import com.onyx.android.sdk.universal.editor.events.note.TransformChangedEvent;
import com.onyx.android.sdk.universal.editor.events.note.TransformQuitedEvent;
import com.onyx.android.sdk.universal.editor.events.note.UpdateTransformVisibleRectEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.extension.PopupWindowKt;
import com.onyx.galaxy.note.common.view.LoadingDialog;
import com.onyx.galaxy.note.editor.action.QuickCopyHandleAction;
import com.onyx.galaxy.note.editor.action.layer.ShowMoveToLayerPopupAction;
import com.onyx.galaxy.note.editor.handler.ShapesSelectionEventHandler;
import com.onyx.galaxy.note.editor.menu.PagedSelectionMenu;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleFragment;
import com.onyx.galaxy.note.editor.view.popup.AdjustShapeStylePopup;
import com.onyx.galaxy.note.editor.view.popup.InkBeautifyPopup;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Ø\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010O\u001a\u00020N\u0012\u0006\u0010B\u001a\u00020@¢\u0006\u0004\bP\u0010QJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0004H\u0002J\u0016\u0010\n\u001a\u00020\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\b\u0010\u000b\u001a\u00020\u0005H\u0002J\u001c\u0010\u000f\u001a\u00020\u00052\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00050\fH\u0002J\b\u0010\u0010\u001a\u00020\u0005H\u0002J\b\u0010\u0011\u001a\u00020\u0005H\u0002J\b\u0010\u0013\u001a\u00020\u0012H\u0002J\b\u0010\u0014\u001a\u00020\rH\u0002J\u0010\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0015H\u0007J\u0010\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0018H\u0007J\u0010\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u001aH\u0007J\u0010\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u001cH\u0007J\u0010\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u001eH\u0007J\u0010\u0010!\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020 H\u0007J\u0010\u0010#\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\"H\u0007J\u0010\u0010%\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020$H\u0007J\u0010\u0010'\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020&H\u0007J\u0010\u0010)\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020(H\u0007J\u0010\u0010+\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020*H\u0007J\u0010\u0010-\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020,H\u0007J\u0010\u0010/\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020.H\u0007J\u0010\u00101\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u000200H\u0007J\u0010\u00103\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u000202H\u0007J\u0010\u00105\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u000204H\u0007J\u0010\u00107\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u000206H\u0007J\u0010\u00109\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u000208H\u0007J\u0010\u0010;\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020:H\u0007J\u0010\u0010=\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020<H\u0007J\u0010\u0010?\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020>H\u0007R\u0014\u0010B\u001a\u00020@8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010AR\u0016\u0010E\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u0010H\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010GR\u001e\u0010J\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010IR\u0018\u0010M\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010L¨\u0006R"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;", "Landroid/graphics/Rect;", "e", "", "", "i", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", C6999h.f39688c, C4921e.f26537n, "Lkotlin/Function1;", "Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;", "viewHandler", "j", "b", C6997f.f39671c, "Landroid/graphics/RectF;", "c", "d", "Lcom/onyx/android/sdk/universal/editor/events/note/ShowInkBeautifyPopupEvent;", NotificationCompat.CATEGORY_EVENT, "onShowInkBeautifyPopupEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ShowShapeSelectionStyleMenuEvent;", "onShowShapeSelectionStyleMenuEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;", "onTransformChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ShowTextSelectionMenuEvent;", "onShowTextSelectionMenuEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/HideTextSelectionMenuEvent;", "onHideTextSelectionMenuEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ShowAnnotationSelectionMenuEvent;", "onShowAnnotationSelectionMenuEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ShowEditTextShapeSelectionMenuEvent;", "onShowEditTextShapeSelectionMenuEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ShowUniversalShapeSelectionEvent;", "onShowUniversalShapeSelectionEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupEvent;", "onShowExcerptPopupEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/DismissExcerptPopupEvent;", "onDismissExcerptPopupEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/HideUniversalShapeSelectionEvent;", "onHideUniversalShapeSelectionEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/HideAnnotationSelectionMenuEvent;", "onHideAnnotationSelectionMenuEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/HideEditTextShapeSelectionMenuEvent;", "onHideEditTextShapeSelectionMenuEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/TransformQuitedEvent;", "onTransformQuitedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/CloseSelectionMenuEvent;", "onCloseSelectionMenuEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/DismissShapeSelectionStyleMenuEvent;", "onDismissShapeSelectionStyleMenuEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;", "onHandleQuickCopyDragEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ShowSelectMoveLayerPopupEvent;", "onShowSelectMoveLayerPopupEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionInsertStickerStartEvent;", "onSelectionInsertStickerStartEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionInsertStickerDoneEvent;", "onSelectionInsertStickerDoneEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionInsertStickerErrorEvent;", "onSelectionInsertStickerErrorEvent", "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "scribbleFragment", C6998g.f39679a, "Landroid/graphics/RectF;", "selectionRect", "Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;", "Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;", "shapeStyleMenuPopUpWindow", "Ljava/util/List;", "selectShapes", "Lcom/onyx/galaxy/note/common/view/LoadingDialog;", "Lcom/onyx/galaxy/note/common/view/LoadingDialog;", "stickerLoadingDialog", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapesSelectionEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapesSelectionEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler\n+ 2 Point.kt\nandroidx/core/graphics/PointKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,358:1\n187#2:359\n344#3,3:360\n11095#4:363\n11430#4,3:364\n*S KotlinDebug\n*F\n+ 1 ShapesSelectionEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler\n*L\n89#1:359\n90#1:360,3\n327#1:363\n327#1:364,3\n*E\n"})
/* loaded from: classes9.dex */
public final class ShapesSelectionEventHandler extends BaseEventHandler {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final NoteScribbleFragment scribbleFragment;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public RectF selectionRect;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public AdjustShapeStylePopup shapeStyleMenuPopUpWindow;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public List<? extends Shape> selectShapes;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public LoadingDialog stickerLoadingDialog;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShapesSelectionEventHandler(@NotNull EditorBundle editorBundle, @NotNull NoteScribbleFragment scribbleFragment) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(scribbleFragment, "scribbleFragment");
        this.scribbleFragment = scribbleFragment;
        this.selectionRect = new RectF();
    }

    /* renamed from: g */
    public static final void m46292g(ShapesSelectionEventHandler this$0, List copyData, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(copyData, "$copyData");
        this$0.m46298h(copyData);
    }

    /* renamed from: b */
    public final void m46293b() {
        this.scribbleFragment.closeSelectionMenu$note_overseasRelease();
    }

    /* renamed from: c */
    public final RectF m46294c() {
        return this.scribbleFragment.getSelectionMenuDisplayRect$note_overseasRelease();
    }

    /* renamed from: d */
    public final PagedSelectionMenu m46295d() {
        return this.scribbleFragment.getSelectionMenuView$note_overseasRelease();
    }

    /* renamed from: e */
    public final Rect m46296e() {
        PointF pointF = new PointF(getEditorBundle().getDisplayBundle().getActivityOffset());
        RectF copyAndOffset = RectKt.copyAndOffset(this.selectionRect, pointF.x, pointF.y);
        Rect rect = new Rect();
        copyAndOffset.roundOut(rect);
        return rect;
    }

    /* renamed from: f */
    public final void m46297f() {
        this.scribbleFragment.hideSelectionMenu$note_overseasRelease();
    }

    /* renamed from: h */
    public final void m46298h(List<? extends Shape> shapes) {
        RectF localVisibleRectF;
        PagedSelectionMenu m46295d = m46295d();
        m46295d.setEditorBundle(getEditorBundle());
        m46295d.setMaxMenuWidth((int) m46294c().width());
        PagedSelectionMenu.updateSelectedShapes$default(m46295d, shapes, false, 2, null);
        m46301k();
        ViewKt.setViewVisibleOrInvisible(m46295d, true);
        RectF visibleContentRectF = m46295d.getVisibleContentRectF();
        View editorView = EditorBundleKt.editorView(getEditorBundle());
        if (editorView == null || (localVisibleRectF = ViewKt.localVisibleRectF(editorView)) == null) {
            return;
        }
        EditorBundleKt.postEvent(getEditorBundle(), new UpdateTransformVisibleRectEvent(m46295d.getArrowDirection() == 1 ? new RectF(localVisibleRectF.left, localVisibleRectF.top, localVisibleRectF.right, visibleContentRectF.top) : new RectF(localVisibleRectF.left, visibleContentRectF.bottom, localVisibleRectF.right, localVisibleRectF.bottom)));
    }

    /* renamed from: i */
    public final void m46299i(Throwable e) {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        String type = OnyxErrorHandler.transform$default(onyxErrorHandler, onyxErrorHandler.mergeTimeoutError(e), null, 1, null).getType();
        if (Intrinsics.areEqual(type, ErrorType.REACH_FILE_COUNT_LIMIT)) {
            ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) ResManager.INSTANCE.getFormatString(C10651R.string.sticker_reach_max_upload_count, 20), false, 2, (Object) null);
        } else if (Intrinsics.areEqual(type, ErrorType.FORMAT_NOT_SUPPORTED)) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.sticker_bitmap_file_unsupported, false, 2, (Object) null);
        } else {
            ToastUtils.show$default(ToastUtils.INSTANCE, C8045R.string.add_sticker_failed, false, 2, (Object) null);
        }
    }

    /* renamed from: j */
    public final void m46300j(Function1<? super PagedSelectionMenu, Unit> viewHandler) {
        PagedSelectionMenu m46295d = m46295d();
        m46295d.setEditorBundle(getEditorBundle());
        m46295d.setMaxMenuWidth((int) m46294c().width());
        viewHandler.invoke(m46295d);
        this.selectionRect = m46295d.getSelectionRect();
        m46301k();
        ViewKt.setViewVisibleOrInvisible(m46295d, true);
    }

    /* renamed from: k */
    public final void m46301k() {
        PagedSelectionMenu m46295d = m46295d();
        int[] editorViewOffsetLocation = this.scribbleFragment.getEditorViewOffsetLocation();
        ArrayList arrayList = new ArrayList(editorViewOffsetLocation.length);
        for (int i : editorViewOffsetLocation) {
            arrayList.add(Float.valueOf(i));
        }
        m46295d.updateLocation(RectFKt.transform$default(RectFKt.copy(this.selectionRect), null, Float.valueOf(-ResManager.INSTANCE.getDimension(C7384R.dimen.dp_12)), null, null, 13, null), RectFKt.copy(m46294c()), arrayList);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCloseSelectionMenuEvent(@NotNull CloseSelectionMenuEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46293b();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDismissExcerptPopupEvent(@NotNull DismissExcerptPopupEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46293b();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDismissShapeSelectionStyleMenuEvent(@NotNull DismissShapeSelectionStyleMenuEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        AdjustShapeStylePopup adjustShapeStylePopup = this.shapeStyleMenuPopUpWindow;
        if (adjustShapeStylePopup != null) {
            adjustShapeStylePopup.dismiss();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHandleQuickCopyDragEvent(@NotNull HandleQuickCopyDragEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        final List<? extends Shape> list = this.selectShapes;
        if (list == null) {
            return;
        }
        Observable<Boolean> observeOn = new QuickCopyHandleAction(this.scribbleFragment.getEditorBundleManager(), list, event).build().observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        RxjavaKt.doOnNextIf(observeOn, new Function1<Boolean, Boolean>() { // from class: com.onyx.galaxy.note.editor.handler.ShapesSelectionEventHandler$onHandleQuickCopyDragEvent$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Boolean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.booleanValue());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.zmm
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                ShapesSelectionEventHandler.m46292g(ShapesSelectionEventHandler.this, list, ((Boolean) obj).booleanValue());
            }
        }).subscribe();
        this.selectShapes = null;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHideAnnotationSelectionMenuEvent(@NotNull HideAnnotationSelectionMenuEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46293b();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHideEditTextShapeSelectionMenuEvent(@NotNull HideEditTextShapeSelectionMenuEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46293b();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHideTextSelectionMenuEvent(@NotNull HideTextSelectionMenuEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46293b();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHideUniversalShapeSelectionEvent(@NotNull HideUniversalShapeSelectionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46293b();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectionInsertStickerDoneEvent(@NotNull SelectionInsertStickerDoneEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        LoadingDialog loadingDialog = this.stickerLoadingDialog;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        this.stickerLoadingDialog = null;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectionInsertStickerErrorEvent(@NotNull SelectionInsertStickerErrorEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46299i(event.getError());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectionInsertStickerStartEvent(@NotNull SelectionInsertStickerStartEvent event) {
        LoadingDialog createLoadingDialog;
        Intrinsics.checkNotNullParameter(event, "event");
        LoadingDialog loadingDialog = this.stickerLoadingDialog;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        Context context = this.scribbleFragment.getContext();
        if (context == null || (createLoadingDialog = ContextExtKt.createLoadingDialog(context)) == null) {
            return;
        }
        createLoadingDialog.updateTitle(C10651R.string.sticker_message_uploading);
        this.stickerLoadingDialog = createLoadingDialog;
        createLoadingDialog.show();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowAnnotationSelectionMenuEvent(@NotNull final ShowAnnotationSelectionMenuEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        PagedSelectionMenu m46295d = m46295d();
        if (ViewKt.isVisible(m46295d)) {
            m46295d.setFixMenuPosition$note_overseasRelease(true);
        }
        m46300j(new Function1<PagedSelectionMenu, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.ShapesSelectionEventHandler$onShowAnnotationSelectionMenuEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(PagedSelectionMenu pagedSelectionMenu) {
                invoke2(pagedSelectionMenu);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull PagedSelectionMenu it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                it2.updateAnnotationSelection(ShowAnnotationSelectionMenuEvent.this.getAndroidx.credentials.provider.utils.PrivilegedApp.i java.lang.String());
            }
        });
        m46295d.setFixMenuPosition$note_overseasRelease(false);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowEditTextShapeSelectionMenuEvent(@NotNull final ShowEditTextShapeSelectionMenuEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46300j(new Function1<PagedSelectionMenu, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.ShapesSelectionEventHandler$onShowEditTextShapeSelectionMenuEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(PagedSelectionMenu pagedSelectionMenu) {
                invoke2(pagedSelectionMenu);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull PagedSelectionMenu it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                it2.updateEditTextShapeSelection(ShowEditTextShapeSelectionMenuEvent.this.getShapeList(), ShowEditTextShapeSelectionMenuEvent.this.getVirtualPageBoxInfo());
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowExcerptPopupEvent(@NotNull ShowExcerptPopupEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        final ShowExcerptPopupArgs args = event.getArgs();
        m46300j(new Function1<PagedSelectionMenu, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.ShapesSelectionEventHandler$onShowExcerptPopupEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(PagedSelectionMenu pagedSelectionMenu) {
                invoke2(pagedSelectionMenu);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull PagedSelectionMenu it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                it2.updateExcerptSelection(ShowExcerptPopupArgs.this);
            }
        });
        if (args.getShowHighlight()) {
            EditorBundleKt.postEvent(getEditorBundle(), new ShowShapeHighlightAnimationEvent(args.getHitTestShape()));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowInkBeautifyPopupEvent(@NotNull ShowInkBeautifyPopupEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Rect m46296e = m46296e();
        event.getInkBeautifyArgs().setSelectionRectInActivity(m46296e);
        ViewLocator viewLocator = ViewLocator.INSTANCE;
        View activityContentView = viewLocator.getActivityContentView(event.getInkBeautifyArgs().getActivityContext());
        InkBeautifyPopup inkBeautifyPopup = new InkBeautifyPopup(event.getInkBeautifyArgs());
        ResManager resManager = ResManager.INSTANCE;
        WindowLocation windowLocationSmartly$default = PopupWindowKt.getWindowLocationSmartly$default(inkBeautifyPopup, m46296e, viewLocator.rectInActivity(activityContentView), resManager.getDimension(C7384R.dimen.dp_302), resManager.getDimension(C7384R.dimen.dp_349), null, 16, null);
        PopupLocator popupLocator = PopupLocator.INSTANCE;
        PopupLocator.show$default(popupLocator, inkBeautifyPopup, popupLocator.getWindowLocation((PopupLocator) inkBeautifyPopup, m46296e, windowLocationSmartly$default.getDstDockPoint(), windowLocationSmartly$default.getSrcDockPoint(), windowLocationSmartly$default.getDx(), windowLocationSmartly$default.getDy(), activityContentView), null, 2, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowSelectMoveLayerPopupEvent(@NotNull ShowSelectMoveLayerPopupEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Context context = this.scribbleFragment.getSelectionMenuView$note_overseasRelease().getContext();
        if (context == null) {
            return;
        }
        RxBaseAction.execute$default(new ShowMoveToLayerPopupAction(getEditorBundle(), context, this.selectionRect, event.getAnchorView(), event.getShapes()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowShapeSelectionStyleMenuEvent(@NotNull ShowShapeSelectionStyleMenuEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getShapes().isEmpty()) {
            return;
        }
        RectFKt.copy(this.selectionRect);
        int[] editorViewOffsetLocation = this.scribbleFragment.getEditorViewOffsetLocation();
        Context requireContext = this.scribbleFragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        AdjustShapeStylePopup adjustShapeStylePopup = new AdjustShapeStylePopup(requireContext, getEditorBundle(), event.getShapes());
        this.shapeStyleMenuPopUpWindow = adjustShapeStylePopup;
        adjustShapeStylePopup.setViewShape(this.scribbleFragment.getPenViewModel$note_overseasRelease().getPenType().getValue());
        TintConstraintLayout clTitleBarContainer = this.scribbleFragment.getBinding$note_overseasRelease().clTitleBarContainer;
        Intrinsics.checkNotNullExpressionValue(clTitleBarContainer, "clTitleBarContainer");
        Rect globalVisibleRect = ViewKt.globalVisibleRect(this.scribbleFragment.getBinding$note_overseasRelease().shapeAndTool.getToolDragView());
        int height = clTitleBarContainer.getHeight();
        ConstraintLayout root = this.scribbleFragment.getBinding$note_overseasRelease().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        Rect copy = RectFKt.copy(ViewKt.globalVisibleRect(root));
        boolean z = globalVisibleRect.width() > globalVisibleRect.height();
        boolean z2 = !z && globalVisibleRect.left == 0;
        copy.offset(editorViewOffsetLocation[0], editorViewOffsetLocation[1]);
        copy.top += height;
        if (z2) {
            copy.left += globalVisibleRect.width();
        }
        if (z) {
            copy.top += globalVisibleRect.height();
        }
        AdjustShapeStylePopup adjustShapeStylePopup2 = this.shapeStyleMenuPopUpWindow;
        if (adjustShapeStylePopup2 == null) {
            return;
        }
        ViewLocator viewLocator = ViewLocator.INSTANCE;
        View contentView = adjustShapeStylePopup2.getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        View activityContentView = viewLocator.getActivityContentView(contentView);
        ResManager resManager = ResManager.INSTANCE;
        float dimension = resManager.getDimension(C7384R.dimen.dp_340);
        float dimension2 = resManager.getDimension(C7384R.dimen.dp_480);
        float dimension3 = resManager.getDimension(C7384R.dimen.dp_10);
        Rect m46296e = m46296e();
        WindowLocation windowLocationSmartly = PopupWindowKt.getWindowLocationSmartly(adjustShapeStylePopup2, m46296e, viewLocator.rectInActivity(activityContentView), dimension, dimension2, Float.valueOf(dimension3));
        PopupLocator popupLocator = PopupLocator.INSTANCE;
        PopupLocator.show$default(popupLocator, adjustShapeStylePopup2, popupLocator.getWindowLocation((PopupLocator) adjustShapeStylePopup2, m46296e, windowLocationSmartly.getDstDockPoint(), windowLocationSmartly.getSrcDockPoint(), windowLocationSmartly.getDx(), windowLocationSmartly.getDy(), activityContentView), null, 2, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowTextSelectionMenuEvent(@NotNull final ShowTextSelectionMenuEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46300j(new Function1<PagedSelectionMenu, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.ShapesSelectionEventHandler$onShowTextSelectionMenuEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(PagedSelectionMenu pagedSelectionMenu) {
                invoke2(pagedSelectionMenu);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull PagedSelectionMenu it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                it2.updateTextSelection(ShowTextSelectionMenuEvent.this.getAndroidx.credentials.provider.utils.PrivilegedApp.i java.lang.String());
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowUniversalShapeSelectionEvent(@NotNull final ShowUniversalShapeSelectionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46300j(new Function1<PagedSelectionMenu, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.ShapesSelectionEventHandler$onShowUniversalShapeSelectionEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(PagedSelectionMenu pagedSelectionMenu) {
                invoke2(pagedSelectionMenu);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull PagedSelectionMenu it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                it2.updateUniversalShapeSelection(ShowUniversalShapeSelectionEvent.this.getShapes(), ShowUniversalShapeSelectionEvent.this.getVirtualPageBoxInfo());
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTransformChangedEvent(@NotNull TransformChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RectF boundRect = event.getSelectionRect().getBoundRect();
        Matrix renderMatrix = event.getSelectionRect().getRenderMatrix();
        if (renderMatrix != null) {
            renderMatrix.mapRect(boundRect);
        }
        this.selectionRect = event.getSelectionRect().redressSelectionRect(boundRect);
        this.selectShapes = event.getTransformShapes();
        if (event.getTransforming()) {
            m46297f();
        } else if (!event.getTransformShapes().isEmpty()) {
            m46298h(event.getTransformShapes());
        } else {
            m46293b();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTransformQuitedEvent(@NotNull TransformQuitedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46293b();
    }
}
