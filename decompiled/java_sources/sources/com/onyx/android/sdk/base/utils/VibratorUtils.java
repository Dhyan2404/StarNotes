package com.onyx.android.sdk.base.utils;

import android.os.VibrationEffect;
import android.os.Vibrator;
import androidx.annotation.FloatRange;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.sunia.HTREnginev2.b1o;
import com.sunia.HTREnginev2.c1o;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/VibratorUtils;", "", "()V", "vibrator", "", "milliseconds", "", "amplitude", "", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class VibratorUtils {

    @NotNull
    public static final VibratorUtils INSTANCE = new VibratorUtils();

    public final void vibrator(long milliseconds, @FloatRange(from = 0.1d, m280to = 1.0d) float amplitude) {
        Object defaultVibrator = BuildKt.isApiLevelAbove(31) ? c1o.m53383a(ResManager.INSTANCE.getAppContext().getSystemService(b1o.m53154a())).getDefaultVibrator() : ResManager.INSTANCE.getAppContext().getSystemService("vibrator");
        if (defaultVibrator == null) {
            return;
        }
        Vibrator vibrator = (Vibrator) defaultVibrator;
        if (vibrator.hasVibrator()) {
            if (!BuildKt.isApiLevelAbove(29)) {
                vibrator.vibrate(milliseconds);
                return;
            }
            boolean hasAmplitudeControl = vibrator.hasAmplitudeControl();
            Debug.INSTANCE.m32037d("is amplitude support :" + hasAmplitudeControl);
            vibrator.vibrate(VibrationEffect.createOneShot(milliseconds, (int) (amplitude * ((float) 255))));
        }
    }
}
