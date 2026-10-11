package com.onyx.android.sdk.device;

import android.app.Activity;
import androidx.appcompat.widget.ActivityChooserModel;
import com.onyx.android.sdk.device.bean.NotchType;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001JJ\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u000528\u0010\u0006\u001a4\u0012\u0013\u0012\u00110\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0015\u0012\u0013\u0018\u00010\f¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u00030\u0007H&J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/device/INotch;", "", "getNotchRect", "", ActivityChooserModel.f1429r, "Landroid/app/Activity;", "callback", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "hasNotch", "Lcom/onyx/android/sdk/device/bean/NotchType;", "notchPosition", "setDisplayInNotch", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface INotch {
    void getNotchRect(@NotNull Activity activity, @NotNull Function2<? super Boolean, ? super NotchType, Unit> callback);

    boolean hasNotch(@NotNull Activity activity);

    void setDisplayInNotch(@NotNull Activity activity);
}
