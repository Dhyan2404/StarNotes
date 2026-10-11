package com.onyx.galaxy.note.editor.action.layer;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Size;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.DockPoint;
import com.onyx.android.sdk.base.data.WindowLocation;
import com.onyx.android.sdk.base.extension.Activity;
import com.onyx.android.sdk.base.extension.PopupLocator;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.data.page.LayerInfo;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.layer.LoadNotePageLayersAction;
import com.onyx.android.sdk.universal.editor.action.shape.GetReferenceShapeAction;
import com.onyx.galaxy.note.editor.view.popup.SelectMoveToLayerPopup;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B5\u0012\u0006\u0010#\u001a\u00020\"\u0012\u0006\u0010\u0011\u001a\u00020\f\u0012\u0006\u0010\u0017\u001a\u00020\u0012\u0012\u0006\u0010\u001d\u001a\u00020\u0018\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b$\u0010%J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0007H\u0002R\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0017\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0017\u0010\u001d\u001a\u00020\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/layer/ShowMoveToLayerPopupAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "Lcom/onyx/galaxy/note/editor/view/popup/SelectMoveToLayerPopup;", "l", "popup", "", "m", "Landroid/content/Context;", C6999h.f39688c, "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "Landroid/graphics/RectF;", "i", "Landroid/graphics/RectF;", "getSelectionRect", "()Landroid/graphics/RectF;", "selectionRect", "Landroid/view/View;", "j", "Landroid/view/View;", "getAnchorView", "()Landroid/view/View;", "anchorView", C4921e.f26537n, "Ljava/util/List;", "getShapes", "()Ljava/util/List;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Landroid/graphics/RectF;Landroid/view/View;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ShowMoveToLayerPopupAction extends RxBaseAppAction<ShowMoveToLayerPopupAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final RectF selectionRect;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final View anchorView;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapes;

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.ShowMoveToLayerPopupAction$a */
    /* loaded from: classes9.dex */
    public static final class C11977a<T, R> implements Function {

        /* renamed from: e */
        public static final C11977a<T, R> f58412e = new C11977a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.mergeShapeList(true);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.ShowMoveToLayerPopupAction$b */
    /* loaded from: classes9.dex */
    public static final class C11978b<T, R> implements Function {
        public C11978b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SelectMoveToLayerPopup> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ShowMoveToLayerPopupAction.this.m45929l(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.ShowMoveToLayerPopupAction$c */
    /* loaded from: classes9.dex */
    public static final class C11979c<T> implements Consumer {
        public C11979c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SelectMoveToLayerPopup it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ShowMoveToLayerPopupAction.this.m45930m(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.ShowMoveToLayerPopupAction$d */
    /* loaded from: classes9.dex */
    public static final class C11980d<T, R> implements Function {
        public C11980d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ShowMoveToLayerPopupAction apply(@NotNull SelectMoveToLayerPopup it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ShowMoveToLayerPopupAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.ShowMoveToLayerPopupAction$e */
    /* loaded from: classes9.dex */
    public static final class C11981e<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ SelectMoveToLayerPopup f58416e;

        public C11981e(SelectMoveToLayerPopup selectMoveToLayerPopup) {
            this.f58416e = selectMoveToLayerPopup;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull PageInfo it2) {
            List<LayerInfo> reversed;
            Intrinsics.checkNotNullParameter(it2, "it");
            SelectMoveToLayerPopup selectMoveToLayerPopup = this.f58416e;
            reversed = CollectionsKt___CollectionsKt.reversed(it2.getLayerList());
            selectMoveToLayerPopup.setData(reversed, it2.getCurrentLayerId());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.layer.ShowMoveToLayerPopupAction$f */
    /* loaded from: classes9.dex */
    public static final class C11982f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ SelectMoveToLayerPopup f58417e;

        public C11982f(SelectMoveToLayerPopup selectMoveToLayerPopup) {
            this.f58417e = selectMoveToLayerPopup;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SelectMoveToLayerPopup apply(@NotNull PageInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f58417e;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ShowMoveToLayerPopupAction(@NotNull EditorBundle editorBundle, @NotNull Context context, @NotNull RectF selectionRect, @NotNull View anchorView, @NotNull List<? extends Shape> shapes) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(selectionRect, "selectionRect");
        Intrinsics.checkNotNullParameter(anchorView, "anchorView");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        this.context = context;
        this.selectionRect = selectionRect;
        this.anchorView = anchorView;
        this.shapes = shapes;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ShowMoveToLayerPopupAction> create() {
        Observable<ShowMoveToLayerPopupAction> map = new GetReferenceShapeAction(getEditorBundle(), this.shapes).build().map(C11977a.f58412e).flatMap(new C11978b()).doOnNext(new C11979c()).map(new C11980d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final View getAnchorView() {
        return this.anchorView;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @NotNull
    public final RectF getSelectionRect() {
        return this.selectionRect;
    }

    @NotNull
    public final List<Shape> getShapes() {
        return this.shapes;
    }

    /* renamed from: l */
    public final Observable<SelectMoveToLayerPopup> m45929l(List<? extends Shape> shapes) {
        SelectMoveToLayerPopup selectMoveToLayerPopup = new SelectMoveToLayerPopup(this.context, shapes, getEditorBundle());
        Observable map = new LoadNotePageLayersAction(getEditorBundle()).build().observeOn(getMainUIScheduler()).doOnNext(new C11981e(selectMoveToLayerPopup)).map(new C11982f(selectMoveToLayerPopup));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final void m45930m(SelectMoveToLayerPopup popup) {
        WindowLocation windowLocation;
        WindowLocation windowLocation2;
        WindowLocation windowLocation3;
        View contentView = popup.getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        Size measureSize$default = ViewKt.getMeasureSize$default(contentView, 0, 0, 3, null);
        PopupLocator popupLocator = PopupLocator.INSTANCE;
        Rect globalVisibleRect = ViewKt.globalVisibleRect(this.anchorView);
        DockPoint dockPoint = DockPoint.BOTTOM_CENTER;
        DockPoint dockPoint2 = DockPoint.TOP_CENTER;
        windowLocation = popupLocator.getWindowLocation((PopupLocator) popup, (r14 & 1) != 0 ? new Rect() : globalVisibleRect, (r14 & 2) != 0 ? DockPoint.BOTTOM_CENTER : dockPoint, (r14 & 4) != 0 ? DockPoint.TOP_CENTER : dockPoint2, (r14 & 8) != 0 ? 0 : 0, (r14 & 16) == 0 ? 0 : 0, (r14 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : this.anchorView);
        if (windowLocation.getY() + measureSize$default.getHeight() >= ViewKt.globalVisibleRect(Activity.INSTANCE.getTopContentView()).bottom) {
            windowLocation3 = popupLocator.getWindowLocation((PopupLocator) popup, (r14 & 1) != 0 ? new Rect() : ViewKt.globalVisibleRect(this.anchorView), (r14 & 2) != 0 ? DockPoint.BOTTOM_CENTER : dockPoint2, (r14 & 4) != 0 ? DockPoint.TOP_CENTER : dockPoint, (r14 & 8) != 0 ? 0 : 0, (r14 & 16) == 0 ? 0 : 0, (r14 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : this.anchorView);
            windowLocation2 = windowLocation3;
        } else {
            windowLocation2 = windowLocation;
        }
        PopupLocator.show$default(popupLocator, popup, windowLocation2, null, 2, null);
    }
}
