package com.onyx.galaxy.note.editor.handler;

import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler;
import com.onyx.android.sdk.universal.editor.events.app.MouseScaleEvent;
import com.onyx.android.sdk.universal.editor.events.app.MouseScrollEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScaleReset;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.onyx.galaxy.note.editor.view.drag.EditorViewDragLayout;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.apache.commons.lang3.Range;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u001d2\u00020\u0001:\u0001\fB\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0006H\u0007J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\bH\u0002R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/MouseEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;", "Lcom/onyx/android/sdk/universal/editor/events/app/MouseScrollEvent;", NotificationCompat.CATEGORY_EVENT, "", "onMouseScrollEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/MouseScaleEvent;", "onMouseScaleEvent", "", "scroll", "b", "scale", "a", "Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;", C6997f.f39671c, "Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;", "editorViewDragLayout", "", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "isMouseScrolling", "", C6999h.f39688c, "I", "rxMouseScrollCancelKey", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V", "i", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class MouseEventHandler extends BaseEventHandler {

    @Deprecated
    public static final int SCALE_STEP_MOUSE = 40;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final EditorViewDragLayout editorViewDragLayout;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean isMouseScrolling;

    /* renamed from: h, reason: from kotlin metadata */
    public int rxMouseScrollCancelKey;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MouseEventHandler(@NotNull EditorBundle editorBundle, @NotNull EditorViewDragLayout editorViewDragLayout) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(editorViewDragLayout, "editorViewDragLayout");
        this.editorViewDragLayout = editorViewDragLayout;
        this.rxMouseScrollCancelKey = -1;
    }

    /* renamed from: a */
    public final void m46208a(float scale) {
        float actualScale = EditorBundleKt.actualScale(getEditorBundle());
        Range<Float> scaleRange = WorkBundleKt.scaleRange(getEditorBundle().getWorkBundle());
        EditorBundle editorBundle = getEditorBundle();
        Float minimum = scaleRange.getMinimum();
        Intrinsics.checkNotNullExpressionValue(minimum, "getMinimum(...)");
        float actualScale2 = EditorBundleKt.actualScale(editorBundle, minimum.floatValue());
        EditorBundle editorBundle2 = getEditorBundle();
        Float maximum = scaleRange.getMaximum();
        Intrinsics.checkNotNullExpressionValue(maximum, "getMaximum(...)");
        float actualScale3 = EditorBundleKt.actualScale(editorBundle2, maximum.floatValue());
        if (actualScale > actualScale2 || scale >= 0.0f) {
            if (actualScale < actualScale3 || scale <= 0.0f) {
                float f = (actualScale3 - actualScale2) / 40;
                EditorBundleKt.postEvent(getEditorBundle(), new ScaleReset(scale > 0.0f ? RangesKt___RangesKt.coerceAtMost(actualScale3, actualScale + f) : RangesKt___RangesKt.coerceAtLeast(actualScale2, actualScale - f), 0.0f, 0.0f, 6, null));
            }
        }
    }

    /* renamed from: b */
    public final void m46209b(float scroll) {
        RxTimerUtil rxTimerUtil = RxTimerUtil.INSTANCE;
        rxTimerUtil.cancel(this.rxMouseScrollCancelKey);
        this.rxMouseScrollCancelKey = rxTimerUtil.shortTimer(new Function1<Long, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.MouseEventHandler$onMouseScroll$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                invoke(l.longValue());
                return Unit.INSTANCE;
            }

            public final void invoke(long j) {
                EditorViewDragLayout editorViewDragLayout;
                editorViewDragLayout = MouseEventHandler.this.editorViewDragLayout;
                editorViewDragLayout.getPageScroller().onOuterScrollEnd();
                MouseEventHandler.this.isMouseScrolling = false;
            }
        });
        if (this.isMouseScrolling) {
            this.editorViewDragLayout.getPageScroller().onOuterScrolling(-scroll);
        } else {
            this.editorViewDragLayout.getPageScroller().onOuterScrollBegin();
            this.isMouseScrolling = true;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMouseScaleEvent(@NotNull MouseScaleEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46208a(event.getScale());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMouseScrollEvent(@NotNull MouseScrollEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46209b(event.getScroll());
    }
}
