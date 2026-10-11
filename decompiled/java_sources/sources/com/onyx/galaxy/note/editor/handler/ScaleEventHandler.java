package com.onyx.galaxy.note.editor.handler;

import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.theme.utils.SystemThemeChangedEvent;
import com.onyx.android.sdk.theme.utils.ThemeBundle;
import com.onyx.android.sdk.universal.common.events.ConfigurationChangedEvent;
import com.onyx.android.sdk.universal.common.events.ThemeChangedEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.config.ScaleConfig;
import com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler;
import com.onyx.android.sdk.universal.editor.events.app.ScaleDisabledEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScaleEnableEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScaleResultEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.popup.ScaleIndicatorPopup;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\tH\u0007J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\rH\u0007J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000fH\u0007J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/ScaleEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;", "", "destroy", "Lcom/onyx/android/sdk/universal/editor/events/app/ScaleResultEvent;", NotificationCompat.CATEGORY_EVENT, "onScaleResultEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ScaleEnableEvent;", "onScaleEnableEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ScaleDisabledEvent;", "onScaleDisabledEvent", "Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;", "onConfigurationChangedEvent", "Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;", "onThemeChangedEvent", "Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;", "onSystemThemeChangedEvent", "Lcom/onyx/galaxy/note/editor/view/popup/ScaleIndicatorPopup;", "a", C6997f.f39671c, "Lcom/onyx/galaxy/note/editor/view/popup/ScaleIndicatorPopup;", "scaleIndicator", "", C6998g.f39679a, "I", "indicatorOffset", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ScaleEventHandler extends BaseEventHandler {

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public ScaleIndicatorPopup scaleIndicator;

    /* renamed from: g, reason: from kotlin metadata */
    public final int indicatorOffset;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScaleEventHandler(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.indicatorOffset = ResManager.INSTANCE.getInteger(C10651R.integer.scale_indicator_y_offset);
        ThemeBundle.INSTANCE.register(this);
        GlobalBundle.INSTANCE.register(this);
    }

    /* renamed from: a */
    public final ScaleIndicatorPopup m46275a() {
        ScaleIndicatorPopup scaleIndicatorPopup = this.scaleIndicator;
        if (scaleIndicatorPopup != null) {
            return scaleIndicatorPopup;
        }
        Activity activity = getEditorBundle().getUiBundle().getActivityHelper().getAndroidx.appcompat.widget.ActivityChooserModel.r java.lang.String();
        if (activity == null) {
            return null;
        }
        ScaleIndicatorPopup scaleIndicatorPopup2 = new ScaleIndicatorPopup(activity, getEditorBundle());
        this.scaleIndicator = scaleIndicatorPopup2;
        return scaleIndicatorPopup2;
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler, com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void destroy() {
        super.destroy();
        ThemeBundle.INSTANCE.unRegister(this);
        GlobalBundle.INSTANCE.unregister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onConfigurationChangedEvent(@NotNull ConfigurationChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ScaleIndicatorPopup scaleIndicatorPopup = this.scaleIndicator;
        if (scaleIndicatorPopup != null) {
            scaleIndicatorPopup.dismiss();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScaleDisabledEvent(@NotNull ScaleDisabledEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundleKt.postEvent(getEditorBundle(), new ScaleResultEvent(EditorBundleKt.currentDisplayScale(getEditorBundle())));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScaleEnableEvent(@NotNull ScaleEnableEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getEditorBundle().getUiBundle().getHandlerManager().setEnabledScale(event.getEnable());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScaleResultEvent(@NotNull ScaleResultEvent event) {
        View editorView;
        Intrinsics.checkNotNullParameter(event, "event");
        ScaleIndicatorPopup m46275a = m46275a();
        if (m46275a == null || (editorView = EditorBundleKt.editorView(getEditorBundle())) == null) {
            return;
        }
        if (!m46275a.isShowing()) {
            Rect globalVisibleRect = ViewKt.globalVisibleRect(editorView);
            m46275a.setXYOffset(globalVisibleRect.centerX(), globalVisibleRect.top + this.indicatorOffset);
        }
        m46275a.show(ScaleConfig.INSTANCE.displayRoundScale(event.getScale()));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSystemThemeChangedEvent(@NotNull SystemThemeChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ScaleIndicatorPopup scaleIndicatorPopup = this.scaleIndicator;
        if (scaleIndicatorPopup != null) {
            scaleIndicatorPopup.resetTheme();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onThemeChangedEvent(@NotNull ThemeChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ScaleIndicatorPopup scaleIndicatorPopup = this.scaleIndicator;
        if (scaleIndicatorPopup != null) {
            scaleIndicatorPopup.resetTheme();
        }
    }
}
