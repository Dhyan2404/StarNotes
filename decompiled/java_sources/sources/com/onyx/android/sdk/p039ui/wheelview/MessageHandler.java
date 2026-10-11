package com.onyx.android.sdk.p039ui.wheelview;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.p039ui.wheelview.WheelView;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/wheelview/MessageHandler;", "Landroid/os/Handler;", "Landroid/os/Message;", NotificationCompat.CATEGORY_MESSAGE, "", "handleMessage", "Lcom/onyx/android/sdk/ui/wheelview/WheelView;", "a", "Lcom/onyx/android/sdk/ui/wheelview/WheelView;", "wheelView", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/ui/wheelview/WheelView;)V", "Companion", "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class MessageHandler extends Handler {
    public static final int WHAT_INVALIDATE_LOOP_VIEW = 1000;
    public static final int WHAT_ITEM_SELECTED = 3000;
    public static final int WHAT_SMOOTH_SCROLL = 2000;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final WheelView wheelView;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MessageHandler(@NotNull WheelView wheelView) {
        super(Looper.getMainLooper());
        Intrinsics.checkNotNullParameter(wheelView, "wheelView");
        this.wheelView = wheelView;
    }

    @Override // android.os.Handler
    public void handleMessage(@NotNull Message msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        int i = msg.what;
        if (i == 1000) {
            this.wheelView.invalidate();
        } else if (i == 2000) {
            this.wheelView.smoothScroll(WheelView.ACTION.FLING);
        } else {
            if (i != 3000) {
                return;
            }
            this.wheelView.onItemSelected();
        }
    }
}
