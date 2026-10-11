package com.onyx.galaxy.note.editor.handler;

import android.graphics.Matrix;
import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.neopdf.PdfUtils;
import com.onyx.android.sdk.note.common.data.NoteDrawingArgs;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.data.PageViewInfo;
import com.onyx.android.sdk.universal.editor.data.VirtualDocViewInfo;
import com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler;
import com.onyx.android.sdk.universal.editor.events.app.EditorBundleChangedEvent;
import com.onyx.android.sdk.universal.editor.events.app.HideRulerEvent;
import com.onyx.android.sdk.universal.editor.events.app.RulerCheckEvent;
import com.onyx.android.sdk.universal.editor.events.app.RulerEvent;
import com.onyx.android.sdk.universal.editor.events.app.RulerToolEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScaleResultEvent;
import com.onyx.android.sdk.universal.editor.events.app.VirtualDocViewInfoEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeTouchModeEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import com.onyx.android.sdk.universal.editor.gesture.TouchEventTransformer;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleFragment;
import com.onyx.galaxy.note.editor.view.ruler.RulerHelper;
import com.onyx.galaxy.note.editor.view.ruler.RulerView;
import com.onyx.galaxy.note.editor.viewmodel.NoteScribbleViewModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.poi.util.ExtUnits;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010?\u001a\u00020>\u0012\u0006\u00102\u001a\u00020.¢\u0006\u0004\b@\u0010AJ\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0007J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\bH\u0007J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\nH\u0007J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\fH\u0007J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u000eH\u0007J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0010H\u0007J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0012H\u0007J\u0018\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0006\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\u0010\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0006\u001a\u00020\u0014H\u0016J\u0018\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\b\u0010\u001c\u001a\u00020\u0003H\u0002J\b\u0010\u001d\u001a\u00020\u0003H\u0002J\u0010\u0010 \u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u001eH\u0002J\b\u0010!\u001a\u00020\u0003H\u0002J\b\u0010#\u001a\u00020\"H\u0002J\b\u0010$\u001a\u00020\u0003H\u0002J\b\u0010%\u001a\u00020\u0003H\u0002J\n\u0010'\u001a\u0004\u0018\u00010&H\u0002J\b\u0010(\u001a\u00020\u0003H\u0002J\u0010\u0010+\u001a\u00020)2\u0006\u0010*\u001a\u00020)H\u0002J\b\u0010,\u001a\u00020\"H\u0002J\u0010\u0010-\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0014H\u0002R\u0017\u00102\u001a\u00020.8\u0006¢\u0006\f\n\u0004\b#\u0010/\u001a\u0004\b0\u00101R\u0018\u00104\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u00103R\u0016\u00107\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u00106R\u0016\u0010:\u001a\u0002088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u00109R\u0016\u0010=\u001a\u00020;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010<¨\u0006B"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/RulerHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;", "Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;", "", "destroy", "Lcom/onyx/android/sdk/universal/editor/events/app/HideRulerEvent;", NotificationCompat.CATEGORY_EVENT, "onHideRulerEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/RulerCheckEvent;", "onRulerCheckEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/RulerEvent;", "onRulerEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/EditorBundleChangedEvent;", "onEditorBundleChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;", "onVirtualDocViewInfoEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;", "onChangeTouchModeEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ScaleResultEvent;", "onScaleResultEvent", "Landroid/view/MotionEvent;", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "processTouchData", "processMotionEvent", "Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;", "args", "processPenArgs", "e", "i", "", "scale", C4921e.f26537n, "l", "", C6997f.f39671c, "j", C6999h.f39688c, "Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;", "d", "a", "", ExtUnits.UNIT_PX, C6998g.f39679a, "c", "b", "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "getFragment", "()Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "fragment", "Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;", "rulerView", "", Constants.STRING_SIG, "lastDocId", "", "J", "adsorbTouchGroupId", "Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;", "Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;", "rulerHelper", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRulerHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RulerHandler.kt\ncom/onyx/galaxy/note/editor/handler/RulerHandler\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,273:1\n256#2,2:274\n256#2,2:276\n254#2:278\n254#2:279\n1#3:280\n*S KotlinDebug\n*F\n+ 1 RulerHandler.kt\ncom/onyx/galaxy/note/editor/handler/RulerHandler\n*L\n122#1:274,2\n134#1:276,2\n150#1:278\n180#1:279\n*E\n"})
/* loaded from: classes9.dex */
public final class RulerHandler extends BaseEventHandler implements TouchEventTransformer {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final NoteScribbleFragment fragment;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public RulerView rulerView;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public String lastDocId;

    /* renamed from: i, reason: from kotlin metadata */
    public long adsorbTouchGroupId;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public RulerHelper rulerHelper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RulerHandler(@NotNull EditorBundle editorBundle, @NotNull NoteScribbleFragment fragment) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.fragment = fragment;
        this.lastDocId = EditorBundleKt.docId(editorBundle);
        this.rulerHelper = new RulerHelper();
        DocCollectionBundle.INSTANCE.ensureRegister(this);
        GlobalBundle.INSTANCE.register(this);
    }

    /* renamed from: a */
    public final void m46263a() {
        boolean rulerStatus = this.fragment.getViewModel().getRulerStatus(EditorBundleKt.docId(getEditorBundle()));
        if (rulerStatus == m46268f()) {
            m46274l();
        } else if (rulerStatus) {
            m46271i();
        } else {
            m46267e();
        }
    }

    /* renamed from: b */
    public final void m46264b(MotionEvent event) {
        RulerView rulerView = this.rulerView;
        if (rulerView != null && event.getAction() == 0) {
            this.rulerHelper.handleDownAction(getEditorBundle(), rulerView.getRulerRect(), rulerView.getRulerMatrix());
        }
    }

    /* renamed from: c */
    public final boolean m46265c() {
        return m46268f() && this.fragment.getPenViewModel$note_overseasRelease().isPenDrawing();
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x001c, code lost:
    
        r5 = null;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.onyx.galaxy.note.editor.view.ruler.RulerView m46266d() {
        /*
            r5 = this;
            com.onyx.android.sdk.universal.editor.EditorBundle r5 = r5.getEditorBundle()
            android.view.View r5 = com.onyx.android.sdk.universal.editor.extension.EditorBundleKt.editorView(r5)
            r0 = 0
            if (r5 == 0) goto L10
            android.view.ViewParent r5 = r5.getParent()
            goto L11
        L10:
            r5 = r0
        L11:
            if (r5 != 0) goto L14
            return r0
        L14:
            boolean r1 = r5 instanceof android.view.ViewGroup
            if (r1 == 0) goto L1b
            android.view.ViewGroup r5 = (android.view.ViewGroup) r5
            goto L1c
        L1b:
            r5 = r0
        L1c:
            if (r5 == 0) goto L3e
            int r1 = r5.getChildCount()
            r2 = 0
        L23:
            if (r2 >= r1) goto L33
            android.view.View r3 = r5.getChildAt(r2)
            boolean r4 = r3 instanceof com.onyx.galaxy.note.editor.view.ruler.RulerView
            if (r4 == 0) goto L30
            com.onyx.galaxy.note.editor.view.ruler.RulerView r3 = (com.onyx.galaxy.note.editor.view.ruler.RulerView) r3
            return r3
        L30:
            int r2 = r2 + 1
            goto L23
        L33:
            android.view.ViewParent r5 = r5.getParent()
            boolean r1 = r5 instanceof android.view.ViewGroup
            if (r1 == 0) goto L1b
            android.view.ViewGroup r5 = (android.view.ViewGroup) r5
            goto L1c
        L3e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.handler.RulerHandler.m46266d():com.onyx.galaxy.note.editor.view.ruler.RulerView");
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler, com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void destroy() {
        DocCollectionBundle.INSTANCE.ensureUnRegister(this);
        GlobalBundle.INSTANCE.unregister(this);
        super.destroy();
    }

    /* renamed from: e */
    public final void m46267e() {
        if (m46268f()) {
            m46272j();
            RulerView rulerView = this.rulerView;
            if (rulerView != null) {
                rulerView.setVisibility(8);
            }
            this.fragment.getViewModel().updateRulerStatus(this.lastDocId, false);
            this.fragment.getViewModel().updateRulerMatrix(this.lastDocId, new Matrix());
            m46274l();
            RulerView rulerView2 = this.rulerView;
            if (rulerView2 != null) {
                rulerView2.setRulerListener(null);
            }
        }
    }

    /* renamed from: f */
    public final boolean m46268f() {
        RulerView rulerView = this.rulerView;
        return rulerView != null && rulerView.getVisibility() == 0;
    }

    /* renamed from: g */
    public final int m46269g(int px) {
        return px / 10;
    }

    @NotNull
    public final NoteScribbleFragment getFragment() {
        return this.fragment;
    }

    /* renamed from: h */
    public final void m46270h() {
        getEditorBundle().getUiBundle().getHandlerManager().setRulerTransformHandler(this);
    }

    /* renamed from: i */
    public final void m46271i() {
        RulerView m46266d = m46266d();
        if (m46266d == null) {
            return;
        }
        this.rulerView = m46266d;
        m46266d.setRulerMatrix(this.fragment.getViewModel().getRulerMatrix(this.lastDocId));
        m46266d.setVisibility(0);
        m46273k(getEditorBundle().getDisplayBundle().getVirtualDocViewInfo().currentDisplayScale());
        m46270h();
        this.fragment.getViewModel().updateRulerStatus(this.lastDocId, true);
        m46274l();
        m46266d.setRulerListener(new RulerView.RulerListener() { // from class: com.onyx.galaxy.note.editor.handler.RulerHandler$showRuler$1
            @Override // com.onyx.galaxy.note.editor.view.ruler.RulerView.RulerListener
            public void onTransform(@NotNull RulerView view, @NotNull Matrix matrix) {
                String str;
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(matrix, "matrix");
                NoteScribbleViewModel viewModel = RulerHandler.this.getFragment().getViewModel();
                str = RulerHandler.this.lastDocId;
                viewModel.updateRulerMatrix(str, matrix);
            }
        });
    }

    /* renamed from: j */
    public final void m46272j() {
        getEditorBundle().getUiBundle().getHandlerManager().setRulerTransformHandler(null);
    }

    /* renamed from: k */
    public final void m46273k(float scale) {
        BoxInfo contentInfo;
        RulerView rulerView = this.rulerView;
        if (rulerView == null) {
            return;
        }
        int i = 0;
        if (rulerView.getVisibility() == 0) {
            BoxInfo currentVisibleBoxInfo = EditorBundleKt.currentVisibleBoxInfo(getEditorBundle());
            PageViewInfo pageViewInfo = EditorBundleKt.virtualDocViewInfo(getEditorBundle()).getPageViewInfoMap().get(currentVisibleBoxInfo.getId());
            if (pageViewInfo == null) {
                return;
            }
            if (ContentConstants.INSTANCE.isPDF(pageViewInfo.getContentType()) && (contentInfo = currentVisibleBoxInfo.getContentInfo()) != null) {
                i = PdfUtils.INSTANCE.pdfPxToMM((int) Math.round(contentInfo.getOriginRectF().width() * 10));
            }
            if (i == 0) {
                i = (int) currentVisibleBoxInfo.getOriginRectF().width();
            }
            VirtualDocViewInfo virtualDocViewInfo = getEditorBundle().getDisplayBundle().getVirtualDocViewInfo();
            rulerView.updatePageSize(currentVisibleBoxInfo.getOriginRectF().width() * ((virtualDocViewInfo.getViewport().getActualScale() * scale) / virtualDocViewInfo.currentDisplayScale()), m46269g(i));
        }
    }

    /* renamed from: l */
    public final void m46274l() {
        GlobalBundle.INSTANCE.postEvent(new RulerToolEvent(m46268f()));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeTouchModeEvent(@NotNull ChangeTouchModeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getNewTouchMode().isReadingMode()) {
            m46267e();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditorBundleChangedEvent(@NotNull EditorBundleChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (Intrinsics.areEqual(EditorBundleKt.docId(event.getCurrent()), EditorBundleKt.docId(getEditorBundle()))) {
            m46263a();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHideRulerEvent(@NotNull HideRulerEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46267e();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRulerCheckEvent(@NotNull RulerCheckEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46274l();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRulerEvent(@NotNull RulerEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (Intrinsics.areEqual(EditorBundleKt.docId(this.fragment.getEditorBundleManager().focusEditorBundle()), EditorBundleKt.docId(getEditorBundle()))) {
            if (m46268f()) {
                m46267e();
            } else {
                m46271i();
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScaleResultEvent(@NotNull ScaleResultEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46273k(event.getScale());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVirtualDocViewInfoEvent(@NotNull VirtualDocViewInfoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        boolean rulerStatus = this.fragment.getViewModel().getRulerStatus(event.getVirtualDocViewInfo().getDocId());
        if (rulerStatus == m46268f() && Intrinsics.areEqual(this.lastDocId, event.getVirtualDocViewInfo().getDocId())) {
            m46273k(getEditorBundle().getDisplayBundle().getVirtualDocViewInfo().currentDisplayScale());
            return;
        }
        this.lastDocId = event.getVirtualDocViewInfo().getDocId();
        if (rulerStatus) {
            m46271i();
        } else {
            m46267e();
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.gesture.TouchEventTransformer
    @NotNull
    public MotionEvent processMotionEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m46265c()) {
            m46264b(event);
            TouchPoint hitTestPoint = this.rulerHelper.hitTestPoint(event);
            if (hitTestPoint != null) {
                event.setLocation(hitTestPoint.getX(), hitTestPoint.getY());
            }
        }
        return event;
    }

    @Override // com.onyx.android.sdk.universal.editor.gesture.TouchEventTransformer
    @NotNull
    public NoteDrawingArgs processPenArgs(@NotNull NoteDrawingArgs args, @NotNull TouchData touchData) {
        PenArgs penArgs;
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        if (this.adsorbTouchGroupId != touchData.getGroupId() || ScribbleTouchReader.INSTANCE.isInvalidGroupId(this.adsorbTouchGroupId)) {
            return args;
        }
        NoteDrawingArgs m72293clone = args.m72293clone();
        PenArgs penArgs2 = m72293clone.getPenArgs();
        if (penArgs2 == null || (penArgs = penArgs2.m72358clone()) == null) {
            penArgs = null;
        } else {
            penArgs.clearPressureAndVelocityAttr();
        }
        m72293clone.setPenArgs(penArgs);
        return m72293clone;
    }

    @Override // com.onyx.android.sdk.universal.editor.gesture.TouchEventTransformer
    @NotNull
    public TouchData processTouchData(@NotNull MotionEvent event, @NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        TouchPoint touchPoint = null;
        if (m46265c()) {
            m46264b(event);
            TouchPoint hitTestPoint = this.rulerHelper.hitTestPoint(event);
            if (hitTestPoint != null) {
                TouchPoint predictPoint = touchData.getPredictPoint();
                if (predictPoint != null) {
                    predictPoint.set(hitTestPoint.getX(), hitTestPoint.getY());
                }
                touchData.getTouchPoint().set(hitTestPoint.getX(), hitTestPoint.getY());
                touchPoint = hitTestPoint;
            }
        }
        if (event.getAction() == 0 && touchPoint != null) {
            this.adsorbTouchGroupId = touchData.getGroupId();
        }
        return touchData;
    }
}
