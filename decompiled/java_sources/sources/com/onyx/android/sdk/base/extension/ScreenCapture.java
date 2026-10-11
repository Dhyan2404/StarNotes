package com.onyx.android.sdk.base.extension;

import android.content.Context;
import android.content.Intent;
import android.media.projection.MediaProjectionConfig;
import android.media.projection.MediaProjectionManager;
import android.os.Bundle;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.annotation.CallSuper;
import androidx.core.content.ContextCompat;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.v6l;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u00002\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00030\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0014\u0010\u0015J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002H\u0017J\"\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\u0006\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004H\u0016R\u0016\u0010\u000f\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/base/extension/ScreenCapture;", "Landroidx/activity/result/contract/ActivityResultContract;", "Landroid/os/Bundle;", "Ljava/util/concurrent/atomic/AtomicReference;", "Landroid/content/Intent;", "Landroid/content/Context;", "context", "input", "createIntent", "", "resultCode", v6l.f87196g, "parseResult", "a", "Landroid/os/Bundle;", "args", "Landroid/media/projection/MediaProjectionManager;", "b", "Landroid/media/projection/MediaProjectionManager;", "mediaProjectionManager", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public class ScreenCapture extends ActivityResultContract<Bundle, AtomicReference<Intent>> {

    /* renamed from: a, reason: from kotlin metadata */
    public Bundle args;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public MediaProjectionManager mediaProjectionManager;

    public ScreenCapture(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.mediaProjectionManager = (MediaProjectionManager) ContextCompat.getSystemService(context, MediaProjectionManager.class);
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    @CallSuper
    @NotNull
    public Intent createIntent(@NotNull Context context, @NotNull Bundle input) {
        Intent createScreenCaptureIntent;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(input, "input");
        this.args = input;
        if (BuildKt.isApiLevelBelow(34)) {
            MediaProjectionManager mediaProjectionManager = this.mediaProjectionManager;
            Intrinsics.checkNotNull(mediaProjectionManager);
            Intent createScreenCaptureIntent2 = mediaProjectionManager.createScreenCaptureIntent();
            Intrinsics.checkNotNullExpressionValue(createScreenCaptureIntent2, "createScreenCaptureIntent(...)");
            return createScreenCaptureIntent2;
        }
        MediaProjectionConfig createConfigForDefaultDisplay = MediaProjectionConfig.createConfigForDefaultDisplay();
        Intrinsics.checkNotNullExpressionValue(createConfigForDefaultDisplay, "createConfigForDefaultDisplay(...)");
        MediaProjectionManager mediaProjectionManager2 = this.mediaProjectionManager;
        Intrinsics.checkNotNull(mediaProjectionManager2);
        createScreenCaptureIntent = mediaProjectionManager2.createScreenCaptureIntent(createConfigForDefaultDisplay);
        Intrinsics.checkNotNullExpressionValue(createScreenCaptureIntent, "createScreenCaptureIntent(...)");
        return createScreenCaptureIntent;
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    @NotNull
    public AtomicReference<Intent> parseResult(int resultCode, @Nullable Intent intent) {
        if (resultCode == -1 && intent != null) {
            Bundle bundle = this.args;
            if (bundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("args");
                bundle = null;
            }
            intent.putExtras(bundle);
            return new AtomicReference<>(intent);
        }
        return new AtomicReference<>();
    }
}
