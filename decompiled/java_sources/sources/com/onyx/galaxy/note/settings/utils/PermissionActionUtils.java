package com.onyx.galaxy.note.settings.utils;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import com.onyx.android.sdk.base.data.config.GlobalConfig;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.galaxy.note.settings.action.RequestPermissionsAction;
import com.onyx.galaxy.note.settings.data.PermissionRequestConst;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004J\u001e\u0010\t\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004J\u001e\u0010\n\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004J\u001e\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004J\u001e\u0010\f\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\u000e\u001a\u00020\rJ\u0018\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u000fj\b\u0012\u0004\u0012\u00020\u0004`\u0010H\u0002¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;", "", "Landroid/content/Context;", "activityContext", "", "functionStr", "intentStr", "Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;", "requestStoragePermissionAction", "requestAudioPermissionAction", "requestCameraPermissionAction", "requestImagePermission", "requestFloatingWindowPermission", "", "isStorageManagerPermissionEnabled", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "a", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PermissionActionUtils {

    @NotNull
    public static final PermissionActionUtils INSTANCE = new PermissionActionUtils();

    /* renamed from: a */
    public final ArrayList<String> m51184a() {
        ArrayList<String> arrayListOf;
        ArrayList<String> arrayListOf2;
        if (BuildKt.isApiLevelAbove(33)) {
            arrayListOf2 = CollectionsKt__CollectionsKt.arrayListOf("android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO");
            return arrayListOf2;
        }
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf("android.permission.WRITE_EXTERNAL_STORAGE");
        return arrayListOf;
    }

    public final boolean isStorageManagerPermissionEnabled() {
        return GlobalConfig.INSTANCE.isStorageManagerEnable();
    }

    @NotNull
    public final RequestPermissionsAction requestAudioPermissionAction(@NotNull Context activityContext, @NotNull String functionStr, @NotNull String intentStr) {
        ArrayList arrayListOf;
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(functionStr, "functionStr");
        Intrinsics.checkNotNullParameter(intentStr, "intentStr");
        AppCompatActivity appCompatActivitySafety = ContextKt.toAppCompatActivitySafety(activityContext);
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf("android.permission.RECORD_AUDIO");
        return new RequestPermissionsAction(appCompatActivitySafety, arrayListOf, functionStr, intentStr);
    }

    @NotNull
    public final RequestPermissionsAction requestCameraPermissionAction(@NotNull Context activityContext, @NotNull String functionStr, @NotNull String intentStr) {
        ArrayList arrayListOf;
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(functionStr, "functionStr");
        Intrinsics.checkNotNullParameter(intentStr, "intentStr");
        AppCompatActivity appCompatActivitySafety = ContextKt.toAppCompatActivitySafety(activityContext);
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf("android.permission.CAMERA");
        return new RequestPermissionsAction(appCompatActivitySafety, arrayListOf, functionStr, intentStr);
    }

    @NotNull
    public final RequestPermissionsAction requestFloatingWindowPermission(@NotNull Context activityContext, @NotNull String functionStr, @NotNull String intentStr) {
        ArrayList arrayListOf;
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(functionStr, "functionStr");
        Intrinsics.checkNotNullParameter(intentStr, "intentStr");
        AppCompatActivity appCompatActivitySafety = ContextKt.toAppCompatActivitySafety(activityContext);
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(PermissionRequestConst.PERMISSION_FLOATING_WINDOW);
        return new RequestPermissionsAction(appCompatActivitySafety, arrayListOf, functionStr, intentStr);
    }

    @NotNull
    public final RequestPermissionsAction requestImagePermission(@NotNull Context activityContext, @NotNull String functionStr, @NotNull String intentStr) {
        ArrayList arrayListOf;
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(functionStr, "functionStr");
        Intrinsics.checkNotNullParameter(intentStr, "intentStr");
        AppCompatActivity appCompatActivitySafety = ContextKt.toAppCompatActivitySafety(activityContext);
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(PermissionRequestConst.PERMISSION_IMAGE);
        return new RequestPermissionsAction(appCompatActivitySafety, arrayListOf, functionStr, intentStr);
    }

    @NotNull
    public final RequestPermissionsAction requestStoragePermissionAction(@NotNull Context activityContext, @NotNull String functionStr, @NotNull String intentStr) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(functionStr, "functionStr");
        Intrinsics.checkNotNullParameter(intentStr, "intentStr");
        return new RequestPermissionsAction(ContextKt.toAppCompatActivitySafety(activityContext), isStorageManagerPermissionEnabled() ? CollectionsKt__CollectionsKt.arrayListOf(PermissionRequestConst.PERMISSION_STORAGE) : m51184a(), functionStr, intentStr);
    }
}
