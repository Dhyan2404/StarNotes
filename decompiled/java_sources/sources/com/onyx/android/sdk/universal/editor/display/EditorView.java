package com.onyx.android.sdk.universal.editor.display;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewCompat;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.device.CommonBaseDevice;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.universal.editor.events.app.ContentViewSizeChangedEvent;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010B\u001a\u00020A\u0012\u0006\u0010D\u001a\u00020C¢\u0006\u0004\bE\u0010FJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J0\u0010\r\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\bH\u0014J(\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\bH\u0014J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0006H\u0016J\u000e\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0001J\u0012\u0010\u0019\u001a\u00020\u00062\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016J\b\u0010\u001a\u001a\u00020\u0004H\u0014J\b\u0010\u001b\u001a\u00020\u0004H\u0014J\b\u0010\u001c\u001a\u00020\u0004H\u0002J\u0012\u0010\u001d\u001a\u00020\u00042\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002J\u0012\u0010\u001e\u001a\u00020\u00042\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002R$\u0010&\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R$\u0010.\u001a\u0004\u0018\u00010'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u0018\u00101\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100RA\u0010:\u001a!\u0012\u0015\u0012\u0013\u0018\u00010\u0017¢\u0006\f\b3\u0012\b\b4\u0012\u0004\b\b(\u0018\u0012\u0004\u0012\u00020\u0004\u0018\u0001028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R&\u0010@\u001a\u0012\u0012\u0004\u0012\u00020<0;j\b\u0012\u0004\u0012\u00020<`=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?¨\u0006G"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/EditorView;", "Landroid/view/View;", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "", "onDraw", "", "changed", "", "left", OneDriverConstants.TOP, gon.f71288n0, "bottom", "onLayout", "w", C6999h.f39688c, "oldw", "oldh", "onSizeChanged", "activated", "setActivated", "view", "setFocusRectView", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "dispatchTouchEvent", "onAttachedToWindow", "onDetachedFromWindow", "c", "a", "b", "Lcom/onyx/android/sdk/universal/editor/display/RenderManager;", "e", "Lcom/onyx/android/sdk/universal/editor/display/RenderManager;", "getRenderManager", "()Lcom/onyx/android/sdk/universal/editor/display/RenderManager;", "setRenderManager", "(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;)V", "renderManager", "Lorg/greenrobot/eventbus/EventBus;", C6997f.f39671c, "Lorg/greenrobot/eventbus/EventBus;", "getEventBus", "()Lorg/greenrobot/eventbus/EventBus;", "setEventBus", "(Lorg/greenrobot/eventbus/EventBus;)V", "eventBus", C6998g.f39679a, "Landroid/view/View;", "focusRectView", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "Lkotlin/jvm/functions/Function1;", "getDispatchTouchCallback", "()Lkotlin/jvm/functions/Function1;", "setDispatchTouchCallback", "(Lkotlin/jvm/functions/Function1;)V", "dispatchTouchCallback", "Ljava/util/ArrayList;", "Landroid/graphics/Rect;", "Lkotlin/collections/ArrayList;", "i", "Ljava/util/ArrayList;", "exclusionRectList", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class EditorView extends View {

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public RenderManager renderManager;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public EventBus eventBus;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public View focusRectView;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public Function1<? super MotionEvent, Unit> dispatchTouchCallback;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public ArrayList<Rect> exclusionRectList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditorView(@NotNull Context context, @NotNull AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        this.exclusionRectList = new ArrayList<>();
    }

    /* renamed from: a */
    public final void m40610a(MotionEvent event) {
        Integer valueOf = event != null ? Integer.valueOf(event.getActionMasked()) : null;
        if (valueOf != null && valueOf.intValue() == 0) {
            if (event.getToolType(0) == 2) {
                ViewCompat.setSystemGestureExclusionRects(this, this.exclusionRectList);
            } else {
                ViewCompat.setSystemGestureExclusionRects(this, new ArrayList());
            }
        }
    }

    /* renamed from: b */
    public final void m40611b(MotionEvent event) {
        Integer valueOf = event != null ? Integer.valueOf(event.getActionMasked()) : null;
        boolean z = true;
        if (valueOf != null && valueOf.intValue() == 0) {
            if (event.getToolType(0) == 2) {
                CommonBaseDevice currentDevice = DeviceFactory.INSTANCE.getCurrentDevice();
                Context context = getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                currentDevice.enableVibrate(context, true);
                return;
            }
            return;
        }
        if ((valueOf == null || valueOf.intValue() != 1) && (valueOf == null || valueOf.intValue() != 3)) {
            z = false;
        }
        if (z) {
            CommonBaseDevice currentDevice2 = DeviceFactory.INSTANCE.getCurrentDevice();
            Context context2 = getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
            currentDevice2.enableVibrate(context2, false);
        }
    }

    /* renamed from: c */
    public final void m40612c() {
        this.exclusionRectList.clear();
        this.exclusionRectList.add(new Rect(getLeft(), getTop(), getRight(), getBottom()));
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(@Nullable MotionEvent event) {
        Function1<? super MotionEvent, Unit> function1 = this.dispatchTouchCallback;
        if (function1 != null) {
            function1.invoke(event);
        }
        m40610a(event);
        m40611b(event);
        return super.dispatchTouchEvent(event);
    }

    @Nullable
    public final Function1<MotionEvent, Unit> getDispatchTouchCallback() {
        return this.dispatchTouchCallback;
    }

    @Nullable
    public final EventBus getEventBus() {
        return this.eventBus;
    }

    @Nullable
    public final RenderManager getRenderManager() {
        return this.renderManager;
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        DeviceFactory deviceFactory = DeviceFactory.INSTANCE;
        deviceFactory.getCurrentDevice().requestRefreshConfigOfView(this);
        CommonBaseDevice currentDevice = deviceFactory.getCurrentDevice();
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        currentDevice.initStylusVibrate(context);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        CommonBaseDevice currentDevice = DeviceFactory.INSTANCE.getCurrentDevice();
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        currentDevice.destroyStylusVibrate(context);
    }

    @Override // android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        try {
            RenderManager renderManager = this.renderManager;
            if (renderManager != null) {
                renderManager.onDraw(canvas);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.view.View
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (changed) {
            m40612c();
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        EventBus eventBus = this.eventBus;
        if (eventBus != null) {
            eventBus.post(new ContentViewSizeChangedEvent());
        }
    }

    @Override // android.view.View
    public void setActivated(boolean activated) {
        super.setActivated(activated);
        View view = this.focusRectView;
        if (view == null) {
            return;
        }
        view.setActivated(activated);
    }

    public final void setDispatchTouchCallback(@Nullable Function1<? super MotionEvent, Unit> function1) {
        this.dispatchTouchCallback = function1;
    }

    public final void setEventBus(@Nullable EventBus eventBus) {
        this.eventBus = eventBus;
    }

    public final void setFocusRectView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.focusRectView = view;
        invalidate();
    }

    public final void setRenderManager(@Nullable RenderManager renderManager) {
        this.renderManager = renderManager;
    }
}
