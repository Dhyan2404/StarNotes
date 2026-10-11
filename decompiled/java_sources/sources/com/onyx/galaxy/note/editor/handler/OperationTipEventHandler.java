package com.onyx.galaxy.note.editor.handler;

import android.graphics.Rect;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.data.utils.JSONListOption;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.universal.common.events.ConfigurationChangedEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.layer.LoadNotePageLayersAction;
import com.onyx.android.sdk.universal.editor.data.EraserPropertyOption;
import com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler;
import com.onyx.android.sdk.universal.editor.events.app.PagesRemovedEvent;
import com.onyx.android.sdk.universal.editor.events.note.CurrentLayerHiddenEvent;
import com.onyx.android.sdk.universal.editor.events.note.CurrentLayerLockedEvent;
import com.onyx.android.sdk.universal.editor.events.note.EndEraseEvent;
import com.onyx.android.sdk.universal.editor.events.note.NoShapeSelectedEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowStylusFunctionInvalidEvent;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.popup.ToolOperationTipPopup;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010!\u001a\u00020 \u0012\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018¢\u0006\u0004\b\"\u0010#J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\tH\u0007J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\rH\u0007J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000fH\u0007J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0011H\u0007J\b\u0010\u0013\u001a\u00020\u0002H\u0002J\f\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u0014H\u0002J\b\u0010\u0017\u001a\u00020\u0016H\u0002R\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006$"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;", "", "destroy", "Lcom/onyx/android/sdk/universal/editor/events/note/EndEraseEvent;", NotificationCompat.CATEGORY_EVENT, "onEndEraseEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/NoShapeSelectedEvent;", "onNoShapeSelectedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/CurrentLayerLockedEvent;", "onCurrentLayerLockedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/CurrentLayerHiddenEvent;", "onCurrentLayerHiddenEvent", "Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;", "onConfigurationChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/PagesRemovedEvent;", "onPagesRemovedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ShowStylusFunctionInvalidEvent;", "onShowStylusFunctionInvalidEvent", "c", "Lio/reactivex/rxjava3/core/Observable;", "a", "Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;", "b", "Lkotlin/Function0;", "Landroid/graphics/Rect;", C6997f.f39671c, "Lkotlin/jvm/functions/Function0;", "getEditorContainerRectFunc", C6998g.f39679a, "Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;", "popup", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function0;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class OperationTipEventHandler extends BaseEventHandler {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Function0<Rect> getEditorContainerRectFunc;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public ToolOperationTipPopup popup;

    /* renamed from: com.onyx.galaxy.note.editor.handler.OperationTipEventHandler$a */
    /* loaded from: classes9.dex */
    public static final class C12101a<T> implements Predicate {

        /* renamed from: e */
        public static final C12101a<T> f58814e = new C12101a<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull PageInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getLayerCount() > 1;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.OperationTipEventHandler$b */
    /* loaded from: classes9.dex */
    public static final class C12102b<T> implements Consumer {
        public C12102b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OperationTipEventHandler.this.m46214b().showNoShapeErasedOnLayer();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.OperationTipEventHandler$c */
    /* loaded from: classes9.dex */
    public static final class C12103c<T> implements Consumer {
        public C12103c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OperationTipEventHandler.this.m46214b().showNoShapeSelectedOnLayer();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OperationTipEventHandler(@NotNull EditorBundle editorBundle, @NotNull Function0<Rect> getEditorContainerRectFunc) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(getEditorContainerRectFunc, "getEditorContainerRectFunc");
        this.getEditorContainerRectFunc = getEditorContainerRectFunc;
        GlobalBundle.INSTANCE.register(this);
    }

    /* renamed from: a */
    public final Observable<?> m46213a() {
        Observable<PageInfo> filter = new LoadNotePageLayersAction(getEditorBundle()).build().filter(C12101a.f58814e);
        Intrinsics.checkNotNullExpressionValue(filter, "filter(...)");
        return filter;
    }

    /* renamed from: b */
    public final ToolOperationTipPopup m46214b() {
        ToolOperationTipPopup toolOperationTipPopup = this.popup;
        if (toolOperationTipPopup != null) {
            return toolOperationTipPopup;
        }
        ToolOperationTipPopup toolOperationTipPopup2 = new ToolOperationTipPopup(getEditorBundle(), this.getEditorContainerRectFunc);
        this.popup = toolOperationTipPopup2;
        return toolOperationTipPopup2;
    }

    /* renamed from: c */
    public final void m46215c() {
        Observable<?> doOnNext = m46213a().doOnNext(new C12102b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler, com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void destroy() {
        ToolOperationTipPopup toolOperationTipPopup = this.popup;
        if (toolOperationTipPopup != null) {
            toolOperationTipPopup.destroy();
        }
        GlobalBundle.INSTANCE.unregister(this);
        super.destroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onConfigurationChangedEvent(@NotNull ConfigurationChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46214b().updatePositionIf();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCurrentLayerHiddenEvent(@NotNull CurrentLayerHiddenEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46214b().showCurrentLayerHidden();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCurrentLayerLockedEvent(@NotNull CurrentLayerLockedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46214b().showCurrentLayerLocked();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEndEraseEvent(@NotNull EndEraseEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getSingleTap()) {
            return;
        }
        JSONListOption<Integer> eraserElementsOnlyOption = EraserPropertyOption.INSTANCE.getEraserElementsOnlyOption();
        if (event.getRemovedShapes().isEmpty() && event.getHitTestShapeTypes().isEmpty()) {
            m46215c();
            return;
        }
        if (event.getRemovedShapes().isEmpty() && CollectionKt.contains(event.getHitTestShapeTypes(), new Function1<Integer, Boolean>() { // from class: com.onyx.galaxy.note.editor.handler.OperationTipEventHandler$onEndEraseEvent$1
            @NotNull
            public final Boolean invoke(int i) {
                return Boolean.valueOf(i == 16);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Integer num) {
                return invoke(num.intValue());
            }
        }) && !CollectionKt.contains(event.getHitTestShapeTypes(), new Function1<Integer, Boolean>() { // from class: com.onyx.galaxy.note.editor.handler.OperationTipEventHandler$onEndEraseEvent$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Integer num) {
                return invoke(num.intValue());
            }

            @NotNull
            public final Boolean invoke(int i) {
                return Boolean.valueOf(ShapeToolType.INSTANCE.isPenType(i));
            }
        })) {
            m46214b().showTextCanNotErase();
            return;
        }
        if (event.getRemovedShapes().isEmpty() && eraserElementsOnlyOption.contains((JSONListOption<Integer>) 39)) {
            m46214b().showOnlyEraseTape();
            return;
        }
        if (event.getRemovedShapes().isEmpty() && eraserElementsOnlyOption.contains((JSONListOption<Integer>) 15)) {
            m46214b().showOnlyEraseHighlight();
        } else if (event.getRemovedShapes().isEmpty()) {
            m46215c();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNoShapeSelectedEvent(@NotNull NoShapeSelectedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Observable<?> doOnNext = m46213a().doOnNext(new C12103c());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPagesRemovedEvent(@NotNull PagesRemovedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46214b().showPageRemovedMsg(event.getPageIdList());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowStylusFunctionInvalidEvent(@NotNull ShowStylusFunctionInvalidEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46214b().showStylusFunctionInvalid();
    }
}
