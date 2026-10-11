package com.onyx.galaxy.note.editor.handler;

import android.view.View;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.p018rx.RxFilter;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.draft.QueryShapeLocationBarInfoAction;
import com.onyx.android.sdk.universal.editor.action.draft.ResetShapeLocationBeanAction;
import com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler;
import com.onyx.android.sdk.universal.editor.events.app.DocumentOpenSuccessEvent;
import com.onyx.android.sdk.universal.editor.events.app.EditorContainerLayoutChangedEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScaleBeginEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScrollBeginEvent;
import com.onyx.android.sdk.universal.editor.events.app.VirtualDocViewInfoEvent;
import com.onyx.android.sdk.universal.editor.events.note.MoveToNextShapeRegionEvent;
import com.onyx.android.sdk.universal.editor.events.note.MoveToOriginEvent;
import com.onyx.android.sdk.universal.editor.events.note.MoveToPrevShapeRegionEvent;
import com.onyx.android.sdk.universal.editor.events.note.UpdateShapeLocationBarEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.editor.event.SidebarDisplayStateChangedEvent;
import com.onyx.galaxy.note.editor.event.SidebarWidthChangedEvent;
import com.onyx.galaxy.note.editor.handler.ShapesLocationBarEventHandler;
import com.onyx.galaxy.note.editor.view.custom.ShapesLocationBar;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010#\u001a\u00020\"\u0012\u0006\u0010\u001d\u001a\u00020\u001a¢\u0006\u0004\b$\u0010%J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\tH\u0007J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\rH\u0007J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000fH\u0007J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0011H\u0007J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0013H\u0007J\b\u0010\u0015\u001a\u00020\u0002H\u0002J\b\u0010\u0016\u001a\u00020\u0002H\u0002J\b\u0010\u0017\u001a\u00020\u0002H\u0002J\b\u0010\u0019\u001a\u00020\u0018H\u0002R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001a\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00180\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;", "", "destroy", "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;", NotificationCompat.CATEGORY_EVENT, "onDocumentOpenSuccessEvent", "Lcom/onyx/galaxy/note/editor/event/SidebarDisplayStateChangedEvent;", "onSidebarDisplayStateChangedEvent", "Lcom/onyx/galaxy/note/editor/event/SidebarWidthChangedEvent;", "onSidebarWidthChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;", "onVirtualDocViewInfoEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;", "onScrollBeginEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ScaleBeginEvent;", "onScaleBeginEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateShapeLocationBarEvent;", "onUpdateShapeLocationBarEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/EditorContainerLayoutChangedEvent;", "onEditorContainerLayoutChangedEvent", C4921e.f26537n, "l", "i", "", "j", "Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;", C6997f.f39671c, "Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;", "shapesLocationBar", "Lcom/onyx/android/sdk/base/rx/RxFilter;", C6998g.f39679a, "Lcom/onyx/android/sdk/base/rx/RxFilter;", "updateFilter", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ShapesLocationBarEventHandler extends BaseEventHandler {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public ShapesLocationBar shapesLocationBar;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final RxFilter<Boolean> updateFilter;

    /* renamed from: com.onyx.galaxy.note.editor.handler.ShapesLocationBarEventHandler$a */
    /* loaded from: classes9.dex */
    public static final class C12106a<T> implements Consumer {
        public C12106a() {
        }

        /* renamed from: a */
        public final void m46288a(boolean z) {
            ShapesLocationBarEventHandler.this.m46286k();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m46288a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.ShapesLocationBarEventHandler$b */
    /* loaded from: classes9.dex */
    public static final class C12107b<T> implements Consumer {
        public C12107b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ResetShapeLocationBeanAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ShapesLocationBarEventHandler.this.m46287l();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.ShapesLocationBarEventHandler$c */
    /* loaded from: classes9.dex */
    public static final class C12108c<T> implements Consumer {
        public C12108c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull QueryShapeLocationBarInfoAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ShapesLocationBarEventHandler.this.shapesLocationBar.getBinding().next.setEnabled(it2.getCanNextShape());
            ShapesLocationBarEventHandler.this.shapesLocationBar.getBinding().prev.setEnabled(it2.getCanPrevShape());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShapesLocationBarEventHandler(@NotNull final EditorBundle editorBundle, @NotNull ShapesLocationBar shapesLocationBar) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shapesLocationBar, "shapesLocationBar");
        this.shapesLocationBar = shapesLocationBar;
        this.updateFilter = new RxFilter<>();
        this.shapesLocationBar.getBinding().prev.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.vmm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShapesLocationBarEventHandler.m46280e(EditorBundle.this, view);
            }
        });
        this.shapesLocationBar.getBinding().origin.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.wmm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShapesLocationBarEventHandler.m46281f(EditorBundle.this, view);
            }
        });
        this.shapesLocationBar.getBinding().next.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.xmm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShapesLocationBarEventHandler.m46282g(EditorBundle.this, view);
            }
        });
    }

    /* renamed from: e */
    public static final void m46280e(EditorBundle editorBundle, View view) {
        Intrinsics.checkNotNullParameter(editorBundle, "$editorBundle");
        EditorBundleKt.postEvent(editorBundle, new MoveToPrevShapeRegionEvent());
    }

    /* renamed from: f */
    public static final void m46281f(EditorBundle editorBundle, View view) {
        Intrinsics.checkNotNullParameter(editorBundle, "$editorBundle");
        EditorBundleKt.postEvent(editorBundle, new MoveToOriginEvent());
    }

    /* renamed from: g */
    public static final void m46282g(EditorBundle editorBundle, View view) {
        Intrinsics.checkNotNullParameter(editorBundle, "$editorBundle");
        EditorBundleKt.postEvent(editorBundle, new MoveToNextShapeRegionEvent());
    }

    /* renamed from: h */
    public static final void m46283h(ShapesLocationBarEventHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.shapesLocationBar.resetLocation();
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler, com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void destroy() {
        super.destroy();
        this.updateFilter.dispose();
    }

    /* renamed from: i */
    public final void m46284i() {
        this.updateFilter.dispose();
        this.updateFilter.subscribeDebounce(500L, new C12106a());
    }

    /* renamed from: j */
    public final boolean m46285j() {
        return EditorBundleKt.getUiFeature(getEditorBundle()).supportShapesLocationBar();
    }

    /* renamed from: k */
    public final void m46286k() {
        new ResetShapeLocationBeanAction(getEditorBundle()).build().doOnNext(new C12107b()).subscribe();
    }

    /* renamed from: l */
    public final void m46287l() {
        if (m46285j()) {
            Observable<QueryShapeLocationBarInfoAction> doOnNext = new QueryShapeLocationBarInfoAction(getEditorBundle()).build().doOnNext(new C12108c());
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDocumentOpenSuccessEvent(@NotNull DocumentOpenSuccessEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ViewKt.setViewVisibleOrGone(this.shapesLocationBar, m46285j());
        if (ViewKt.isVisible(this.shapesLocationBar)) {
            m46284i();
        } else {
            this.updateFilter.dispose();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditorContainerLayoutChangedEvent(@NotNull EditorContainerLayoutChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m46285j()) {
            this.shapesLocationBar.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.ymm
                @Override // java.lang.Runnable
                public final void run() {
                    ShapesLocationBarEventHandler.m46283h(ShapesLocationBarEventHandler.this);
                }
            }, 100L);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScaleBeginEvent(@NotNull ScaleBeginEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m46285j()) {
            RxBaseAction.execute$default(new ResetShapeLocationBeanAction(getEditorBundle()), null, null, null, 7, null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScrollBeginEvent(@NotNull ScrollBeginEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m46285j()) {
            RxBaseAction.execute$default(new ResetShapeLocationBeanAction(getEditorBundle()), null, null, null, 7, null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSidebarDisplayStateChangedEvent(@NotNull SidebarDisplayStateChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getShow()) {
            this.shapesLocationBar.updateBySideBar(event.getAndroidx.credentials.provider.utils.PrivilegedApp.i java.lang.String());
        } else {
            this.shapesLocationBar.restorePositionIf();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSidebarWidthChangedEvent(@NotNull SidebarWidthChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.shapesLocationBar.updateBySideBar(event.getAndroidx.credentials.provider.utils.PrivilegedApp.i java.lang.String());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdateShapeLocationBarEvent(@NotNull UpdateShapeLocationBarEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m46285j()) {
            this.updateFilter.onNext(Boolean.TRUE);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVirtualDocViewInfoEvent(@NotNull VirtualDocViewInfoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.isScrolling()) {
            return;
        }
        m46287l();
    }
}
