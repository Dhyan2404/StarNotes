package com.onyx.galaxy.note.common.extension;

import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import androidx.fragment.app.FragmentActivity;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.extension.ActivityKt;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.universal.editor.events.app.RequestPermissionEvent;
import com.onyx.android.sdk.universal.editor.events.note.AudioPermissionGratedEvent;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.view.LoadingDialog;
import com.onyx.galaxy.note.common.view.LoginLoadingDialog;
import com.permissionx.guolindev.PermissionX;
import com.permissionx.guolindev.callback.RequestCallback;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\"\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t\u001a\n\u0010\n\u001a\u00020\u000b*\u00020\u0002\u001a\n\u0010\f\u001a\u00020\r*\u00020\u0002\u001a\n\u0010\u000e\u001a\u00020\u000f*\u00020\u0002\u001a\n\u0010\u0010\u001a\u00020\u0011*\u00020\u0002\u001a\u0018\u0010\u0012\u001a\u00020\u0013*\u00020\u00022\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015\u001a\u0018\u0010\u0017\u001a\u00020\u0016*\u00020\u00022\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015\u001a\u000e\u0010\u0019\u001a\u0004\u0018\u00010\u001a*\u0004\u0018\u00010\u0002\u001a\u0016\u0010\u001b\u001a\u00020\u0016*\u00020\u00022\n\u0010\u001c\u001a\u0006\u0012\u0002\b\u00030\u001d¨\u0006\u001e"}, m61528d2 = {"checkAudioPermissionGrated", "", "Landroid/content/Context;", "eventBus", "Lorg/greenrobot/eventbus/EventBus;", "checkPermissionGrated", "nextEvent", "", "permission", "", "createLoadingDialog", "Lcom/onyx/galaxy/note/common/view/LoadingDialog;", "createLoginLoadingDialog", "Lcom/onyx/galaxy/note/common/view/LoginLoadingDialog;", "getAudioManager", "Landroid/media/AudioManager;", "getSystemMusicVolumeRatio", "", "registerRingerModeChangeListener", "Landroid/content/BroadcastReceiver;", BreakpointSQLiteHelper.f39283i, "Lkotlin/Function0;", "", "requestMediaPermission", "action", "showLoadingDialog", "Landroid/app/Dialog;", "startActivity", "cls", "Ljava/lang/Class;", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class ContextExtKt {
    /* renamed from: b */
    public static final void m44998b(Function0 action, FragmentActivity activity, String permission, boolean z, List list, List list2) {
        Intrinsics.checkNotNullParameter(action, "$action");
        Intrinsics.checkNotNullParameter(activity, "$activity");
        Intrinsics.checkNotNullParameter(permission, "$permission");
        Intrinsics.checkNotNullParameter(list, "<anonymous parameter 1>");
        Intrinsics.checkNotNullParameter(list2, "<anonymous parameter 2>");
        if (z) {
            action.invoke();
        } else {
            ActivityKt.shouldShowGuideToPermissionSettings(activity, permission);
        }
    }

    public static final boolean checkAudioPermissionGrated(@NotNull Context context, @NotNull EventBus eventBus) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(eventBus, "eventBus");
        return checkPermissionGrated(context, eventBus, new AudioPermissionGratedEvent(), "android.permission.RECORD_AUDIO");
    }

    public static final boolean checkPermissionGrated(@NotNull Context context, @NotNull EventBus eventBus, @NotNull Object nextEvent, @NotNull String permission) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(eventBus, "eventBus");
        Intrinsics.checkNotNullParameter(nextEvent, "nextEvent");
        Intrinsics.checkNotNullParameter(permission, "permission");
        if (PermissionX.isGranted(context, permission)) {
            return true;
        }
        EventBusHolderKt.safelyPostEvent(eventBus, new RequestPermissionEvent(nextEvent).setPermissions(permission));
        return false;
    }

    @NotNull
    public static final LoadingDialog createLoadingDialog(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return new LoadingDialog(context);
    }

    @NotNull
    public static final LoginLoadingDialog createLoginLoadingDialog(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return new LoginLoadingDialog(context);
    }

    @NotNull
    public static final AudioManager getAudioManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Object systemService = context.getSystemService("audio");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.media.AudioManager");
        return (AudioManager) systemService;
    }

    public static final float getSystemMusicVolumeRatio(@NotNull Context context) {
        int coerceAtLeast;
        Intrinsics.checkNotNullParameter(context, "<this>");
        Object systemService = context.getSystemService("audio");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.media.AudioManager");
        AudioManager audioManager = (AudioManager) systemService;
        int streamVolume = audioManager.getStreamVolume(3);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(audioManager.getStreamMaxVolume(3), 1);
        return streamVolume / coerceAtLeast;
    }

    @NotNull
    public static final BroadcastReceiver registerRingerModeChangeListener(@NotNull Context context, @NotNull Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        ContextExtKt$registerRingerModeChangeListener$1 contextExtKt$registerRingerModeChangeListener$1 = new ContextExtKt$registerRingerModeChangeListener$1(block);
        context.registerReceiver(contextExtKt$registerRingerModeChangeListener$1, new IntentFilter("android.media.RINGER_MODE_CHANGED"));
        return contextExtKt$registerRingerModeChangeListener$1;
    }

    public static final void requestMediaPermission(@NotNull Context context, @NotNull final Function0<Unit> action) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity activitySafety = ContextKt.toActivitySafety(context);
        final FragmentActivity fragmentActivity = activitySafety instanceof FragmentActivity ? (FragmentActivity) activitySafety : null;
        if (fragmentActivity == null) {
            return;
        }
        final String str = BuildKt.isApiLevelAbove(33) ? "android.permission.READ_MEDIA_IMAGES" : "android.permission.READ_EXTERNAL_STORAGE";
        PermissionX.init(fragmentActivity).permissions(str).request(new RequestCallback() { // from class: com.sunia.HTREnginev2.qbe
            @Override // com.permissionx.guolindev.callback.RequestCallback
            public final void onResult(boolean z, List list, List list2) {
                ContextExtKt.m44998b(Function0.this, fragmentActivity, str, z, list, list2);
            }
        });
    }

    @Nullable
    public static final Dialog showLoadingDialog(@Nullable Context context) {
        if (context == null) {
            return null;
        }
        CommonDialog create = new CommonDialog.Builder(context).setDialogType(1).setMessage(C10651R.string.loading).setCancelable(false).create();
        create.show();
        return create;
    }

    public static final void startActivity(@NotNull Context context, @NotNull Class<?> cls) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(cls, "cls");
        context.startActivity(new Intent(context, cls));
    }
}
