package com.onyx.galaxy.note.message.dialog;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.message.model.NotificationModel;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.category.event.CleanExpiredNotificationsEvent;
import com.onyx.galaxy.note.category.event.NotificationHostDestroyedEvent;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.message.dialog.NotificationBasePopup;
import com.onyx.galaxy.note.message.viewmodel.NotificationViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u0014\u001a\u00020\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0015¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u0006\u001a\u00020\u0004J\b\u0010\u0007\u001a\u00020\u0004H\u0014J\b\u0010\b\u001a\u00020\u0004H\u0014J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0007J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\fH\u0007J\b\u0010\u000e\u001a\u00020\u0004H\u0003R\u0017\u0010\u0014\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u001a\u001a\u00020\u00158\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "Landroid/view/View;", "view", "", "setContentView", "onClose", "onShow", "onDismiss", "Lcom/onyx/galaxy/note/category/event/CleanExpiredNotificationsEvent;", NotificationCompat.CATEGORY_EVENT, "onCleanExpiredNotifications", "Lcom/onyx/galaxy/note/category/event/NotificationHostDestroyedEvent;", "onNotificationHostDestroyed", "l", "Lcom/onyx/android/sdk/data/message/model/NotificationModel;", "q", "Lcom/onyx/android/sdk/data/message/model/NotificationModel;", "getNotification", "()Lcom/onyx/android/sdk/data/message/model/NotificationModel;", FunctionKey.NOTIFICATION, "Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;", "r", "Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;", "getViewModel", "()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;", "viewModel", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class NotificationBasePopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final NotificationModel notification;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final NotificationViewModel viewModel;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationBasePopup(@NotNull Context context, @NotNull NotificationModel notification, @NotNull NotificationViewModel viewModel) {
        super(context, null, 2, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        this.notification = notification;
        this.viewModel = viewModel;
    }

    /* renamed from: m */
    public static final boolean m50579m(NotificationBasePopup this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        View rootView = this$0.getContentView().getRootView();
        if (motionEvent.getAction() == 0) {
            if (motionEvent.getX() < 0.0f || motionEvent.getX() >= ((float) rootView.getMeasuredWidth()) || motionEvent.getY() < 0.0f || motionEvent.getY() >= ((float) rootView.getMeasuredHeight())) {
                return true;
            }
        } else if (motionEvent.getAction() == 4) {
            return true;
        }
        return false;
    }

    @NotNull
    public final NotificationModel getNotification() {
        return this.notification;
    }

    @NotNull
    public final NotificationViewModel getViewModel() {
        return this.viewModel;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: l */
    public final void m50580l() {
        setTouchInterceptor(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.i5k
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m50579m;
                m50579m = NotificationBasePopup.m50579m(NotificationBasePopup.this, view, motionEvent);
                return m50579m;
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCleanExpiredNotifications(@NotNull CleanExpiredNotificationsEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        dismiss();
    }

    public final void onClose() {
        this.viewModel.setCenterNotificationClosed(true);
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onDismiss() {
        GlobalBundle.INSTANCE.unregister(this);
        super.onDismiss();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNotificationHostDestroyed(@NotNull NotificationHostDestroyedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.viewModel.setCenterNotificationInterrupted(true);
        dismiss();
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onShow() {
        super.onShow();
        GlobalBundle.INSTANCE.register(this);
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow, android.widget.PopupWindow
    public void setContentView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.setContentView(view);
        m50580l();
    }
}
