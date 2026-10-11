package com.onyx.android.sdk.universal.editor.handler.shape;

import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.note.common.data.shape.ExcerptType;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.handler.BaseExcerptShapeHandlerAction;
import com.onyx.android.sdk.universal.editor.action.handler.RectExcerptShapeDrawingHandlerAction;
import com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.events.note.DeleteExcerptResultEvent;
import com.onyx.android.sdk.universal.editor.events.note.DismissShapeHighlightAnimationEvent;
import com.onyx.android.sdk.universal.editor.events.note.ExitExcerptEditEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitExcerptSelectionEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartExcerptEditArgs;
import com.onyx.android.sdk.universal.editor.events.note.SwitchExcerptTypeEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.Disposable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 22\u00020\u0001:\u00012B\u000f\u0012\u0006\u0010/\u001a\u00020.¢\u0006\u0004\b0\u00101J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0002H\u0016J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016J\u0012\u0010\f\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016J\u0010\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0013H\u0007J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0015H\u0007J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0017H\u0007J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0019H\u0007J\b\u0010\u001b\u001a\u00020\u0002H\u0016J\n\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0002J\b\u0010\u001e\u001a\u00020\u0002H\u0002J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0002J\b\u0010\"\u001a\u00020\nH\u0002R \u0010&\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u001c0#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010%R\u0016\u0010)\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,¨\u00063"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;", "Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;", "", "onActivate", "onDeactivate", "destroy", "Landroid/view/View;", "view", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "onTouchEvent", "isProcessing", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "onSingleTapUp", "Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;", "args", "startExcerptEdit", "Lcom/onyx/android/sdk/universal/editor/events/note/SwitchExcerptTypeEvent;", "onSwitchExcerptTypeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ExitExcerptEditEvent;", "onExitExcerptEditEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/QuitExcerptSelectionEvent;", "onQuitAnnotationSelectionEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptResultEvent;", "onDeleteExcerptEvent", "cancelAction", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;", "b", "d", "Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;", "type", "a", "c", "", "", "Ljava/util/Map;", "shapeHandlerActionMap", "e", Constants.STRING_SIG, "activeHandler", "Lio/reactivex/rxjava3/disposables/Disposable;", C6997f.f39671c, "Lio/reactivex/rxjava3/disposables/Disposable;", "disposable", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nExcerptHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExcerptHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,152:1\n1855#2,2:153\n*S KotlinDebug\n*F\n+ 1 ExcerptHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler\n*L\n67#1:153,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ExcerptHandler extends BaseShapeHandler {

    @NotNull
    public static final String RECT_EXCERPT = "rect_excerpt";

    @NotNull
    public static final String TEXT_EXCERPT = "text_excerpt";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Map<String, BaseExcerptShapeHandlerAction> shapeHandlerActionMap;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public String activeHandler;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Disposable disposable;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ExcerptType.values().length];
            try {
                iArr[ExcerptType.RECTANGLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ExcerptType.TEXT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExcerptHandler(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.shapeHandlerActionMap = linkedHashMap;
        this.activeHandler = "";
        linkedHashMap.put(TEXT_EXCERPT, new TextExcerptShapeDrawingHandlerAction(editorBundle, getTouchReader()));
        linkedHashMap.put(RECT_EXCERPT, new RectExcerptShapeDrawingHandlerAction(editorBundle, getTouchReader()));
    }

    /* renamed from: a */
    public final void m41027a(ExcerptType type) {
        String str;
        Observable<List<? extends TouchData>> build;
        int i = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i == 1) {
            str = RECT_EXCERPT;
        } else {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            str = TEXT_EXCERPT;
        }
        BaseExcerptShapeHandlerAction baseExcerptShapeHandlerAction = this.shapeHandlerActionMap.get(this.activeHandler);
        if (baseExcerptShapeHandlerAction != null) {
            baseExcerptShapeHandlerAction.dispose();
        }
        Disposable disposable = this.disposable;
        if (disposable != null) {
            disposable.dispose();
        }
        BaseExcerptShapeHandlerAction baseExcerptShapeHandlerAction2 = this.shapeHandlerActionMap.get(str);
        this.disposable = (baseExcerptShapeHandlerAction2 == null || (build = baseExcerptShapeHandlerAction2.build()) == null) ? null : RxjavaKt.subscribeWithDefault$default(build, null, null, null, 7, null);
        this.activeHandler = str;
    }

    /* renamed from: b */
    public final BaseExcerptShapeHandlerAction m41028b() {
        return this.shapeHandlerActionMap.get(this.activeHandler);
    }

    /* renamed from: c */
    public final boolean m41029c() {
        BaseExcerptShapeHandlerAction m41028b = m41028b();
        if (m41028b != null) {
            return m41028b.isEditMode();
        }
        return false;
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void cancelAction() {
        BaseExcerptShapeHandlerAction m41028b = m41028b();
        if (m41028b != null) {
            m41028b.cancelAction();
        }
    }

    /* renamed from: d */
    public final void m41030d() {
        if (m41029c() || EditorBundleKt.handlerManager(getEditorBundle()).isSupportTouchEdit()) {
            getTouchReader().setEventFilter((m41029c() || EditorBundleKt.handlerManager(getEditorBundle()).isSupportFingerTouchEdit()) ? false : true);
        } else {
            getTouchReader().setEventFilter(ScribbleTouchReader.INSTANCE.getDISABLE_EVENT_FILTER());
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void destroy() {
        super.destroy();
        Iterator<T> it2 = this.shapeHandlerActionMap.values().iterator();
        while (it2.hasNext()) {
            ((BaseExcerptShapeHandlerAction) it2.next()).dispose();
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public boolean isProcessing(@Nullable MotionEvent event) {
        return m41029c();
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onActivate() {
        super.onActivate();
        m41027a(MMKVNote.INSTANCE.getExcerptShapeAttrOption().get().getType());
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onDeactivate() {
        EditorBundleKt.renderManager(getEditorBundle()).removeRenderSilent(RenderManager.RENDER_KEY_RECT_EXCERPT);
        EditorBundleKt.renderManager(getEditorBundle()).removeRenderSilent(RenderManager.RENDER_KEY_TRANSFORM);
        EditorBundleKt.renderManager(getEditorBundle()).removeRenderSilent(RenderManager.RENDER_KEY_TEXT_EXCERPT);
        super.onDeactivate();
        BaseExcerptShapeHandlerAction m41028b = m41028b();
        if (m41028b != null) {
            m41028b.dispose();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteExcerptEvent(@NotNull DeleteExcerptResultEvent event) {
        String uniqueId;
        BaseExcerptShapeHandlerAction m41028b;
        Intrinsics.checkNotNullParameter(event, "event");
        ExcerptInfoBean excerptInfoBean = event.getCom.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING java.lang.String().getExcerptInfoBean();
        if (excerptInfoBean == null || (uniqueId = excerptInfoBean.getUniqueId()) == null || (m41028b = m41028b()) == null) {
            return;
        }
        m41028b.cancelEditIfDeleted(uniqueId);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onExitExcerptEditEvent(@NotNull ExitExcerptEditEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundleKt.shapeHandlerManager(getEditorBundle()).restoreUserProvider();
        if (Intrinsics.areEqual(EditorBundleKt.shapeHandlerManager(getEditorBundle()).getActiveHandler(), this)) {
            m41027a(MMKVNote.INSTANCE.getExcerptShapeAttrOption().get().getType());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onQuitAnnotationSelectionEvent(@NotNull QuitExcerptSelectionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        BaseExcerptShapeHandlerAction m41028b = m41028b();
        if (m41028b != null) {
            m41028b.quitEdit(event.getSaveChanged(), event.getOnSaveCallback());
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public boolean onSingleTapUp(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        BaseExcerptShapeHandlerAction m41028b = m41028b();
        if (m41028b != null) {
            return m41028b.onSingleTapUp(touchPoint);
        }
        return false;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSwitchExcerptTypeEvent(@NotNull SwitchExcerptTypeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41027a(event.getNewType());
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public boolean onTouchEvent(@NotNull View view, @NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(event, "event");
        if (MotionEventKt.isDownAction(event)) {
            m41030d();
        }
        return super.onTouchEvent(view, event);
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void startExcerptEdit(@NotNull StartExcerptEditArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        super.startExcerptEdit(args);
        EditorBundleKt.postEvent(getEditorBundle(), new DismissShapeHighlightAnimationEvent());
        m41027a(ExcerptType.INSTANCE.fromShapeType(args.getShape().getType()));
        BaseExcerptShapeHandlerAction m41028b = m41028b();
        if (m41028b != null) {
            m41028b.startExcerptEdit(args);
        }
    }
}
