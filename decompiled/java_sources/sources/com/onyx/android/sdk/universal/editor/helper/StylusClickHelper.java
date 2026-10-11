package com.onyx.android.sdk.universal.editor.helper;

import android.content.Intent;
import android.view.KeyEvent;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.touchfilm.MiuiTouchFilmUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.universal.editor.config.QuicklyFunTypeConst;
import com.onyx.android.sdk.universal.editor.receiver.QuicklyFunBroadCastReceiver;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u0006\u001a\u00020\u0004J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0002R\u0016\u0010\f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u000bR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0012\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u000b¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;", "", "Landroid/view/KeyEvent;", NotificationCompat.CATEGORY_EVENT, "", "handleStylusEvent", "releaseTouchStatus", "", "clickKey", "a", "", Constants.HASIDCALL_INDEX_SIG, "isInSingleClickTimeInterval", "", "b", "I", "doubleClickTimeKey", "c", "isLongPressActive", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StylusClickHelper {
    public static final long DOUBLE_CLICK_TIME_LIMIT = 200;
    public static final int STYLUS_BTN_PRIMARY = 93;
    public static final int STYLUS_BTN_SECONDARY = 92;
    public static final int STYLUS_KEY_CODE_HW_TOUCH = 718;
    public static final int STYLUS_KEY_CODE_LENOVO = 294;
    public static final int STYLUS_KEY_CODE_LENOVO_02 = 600;
    public static final int STYLUS_KEY_CODE_LENOVO_DOUBLE = 299;
    public static final int STYLUS_KEY_CODE_LENOVO_DOUBLE_02 = 601;
    public static final int STYLUS_KEY_CODE_LENOVO_LONG_PRESS = 604;
    public static final int STYLUS_KEY_CODE_XIAOMI_DOUBLE_CLICK = 195;
    public static final int STYLUS_KEY_CODE_XIAOMI_PINCH = 194;
    public static final int STYLUS_KEY_CODE_XIAOMI_SLIDE_DOWN = 197;
    public static final int STYLUS_KEY_CODE_XIAOMI_SLIDE_UP = 196;
    public static final int STYLUS_KEY_SAMSUNG_TRIGGER_CLICK = 168;
    public static final int STYLUS_KEY_SAMSUNG_TRIGGER_DOUBLE_CLICK = 169;

    /* renamed from: a, reason: from kotlin metadata */
    public boolean isInSingleClickTimeInterval;

    /* renamed from: b, reason: from kotlin metadata */
    public int doubleClickTimeKey;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean isLongPressActive;

    /* renamed from: a */
    public final void m41261a(String clickKey) {
        Intent intent = new Intent(QuicklyFunBroadCastReceiver.ACTION_ON_STYLUS_CLICK);
        intent.putExtra(QuicklyFunBroadCastReceiver.KEY_CODE_CLICK_KEY, clickKey);
        ResManager.INSTANCE.getAppContext().sendBroadcast(intent);
    }

    public final void handleStylusEvent(@Nullable KeyEvent event) {
        if (event == null || event.getAction() != 1) {
            return;
        }
        int keyCode = event.getKeyCode();
        if (keyCode == 92) {
            m41261a("settings_stylus_secondary_click");
            return;
        }
        if (keyCode != 93 && keyCode != 168) {
            if (keyCode != 169) {
                if (keyCode != 294) {
                    if (keyCode != 299) {
                        if (keyCode == 604) {
                            if (this.isLongPressActive) {
                                return;
                            }
                            this.isLongPressActive = true;
                            m41261a(QuicklyFunTypeConst.SETTINGS_STYLUS_LONG_PRESS);
                            return;
                        }
                        if (keyCode == 718) {
                            if (this.isInSingleClickTimeInterval) {
                                RxTimerUtil.INSTANCE.cancel(this.doubleClickTimeKey);
                                m41261a("settings_stylus_double_click");
                                this.isInSingleClickTimeInterval = false;
                                return;
                            } else {
                                this.isInSingleClickTimeInterval = true;
                                RxTimerUtil rxTimerUtil = RxTimerUtil.INSTANCE;
                                rxTimerUtil.cancel(this.doubleClickTimeKey);
                                this.doubleClickTimeKey = rxTimerUtil.timer(200L, TimeUnit.MILLISECONDS, new Function1<Long, Unit>() { // from class: com.onyx.android.sdk.universal.editor.helper.StylusClickHelper$handleStylusEvent$1$1
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                                        invoke(l.longValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(long j) {
                                        StylusClickHelper.this.m41261a("settings_stylus_primary_click");
                                        StylusClickHelper.this.isInSingleClickTimeInterval = false;
                                    }
                                });
                                return;
                            }
                        }
                        if (keyCode != 600) {
                            if (keyCode != 601) {
                                switch (keyCode) {
                                    case 194:
                                        if (MiuiTouchFilmUtils.onDispatchKeyEvent(event)) {
                                            m41261a(QuicklyFunTypeConst.SETTINGS_STYLUS_PINCH);
                                            return;
                                        }
                                        return;
                                    case 195:
                                        break;
                                    case 196:
                                        if (MiuiTouchFilmUtils.onDispatchKeyEvent(event)) {
                                            m41261a(QuicklyFunTypeConst.SETTINGS_STYLUS_SLIDE_UP);
                                            return;
                                        }
                                        return;
                                    case 197:
                                        if (MiuiTouchFilmUtils.onDispatchKeyEvent(event)) {
                                            m41261a(QuicklyFunTypeConst.SETTINGS_STYLUS_SLIDE_DOWN);
                                            return;
                                        }
                                        return;
                                    default:
                                        return;
                                }
                            }
                        }
                    }
                }
            }
            m41261a("settings_stylus_double_click");
            return;
        }
        m41261a("settings_stylus_primary_click");
    }

    public final void releaseTouchStatus() {
        this.isLongPressActive = false;
    }
}
