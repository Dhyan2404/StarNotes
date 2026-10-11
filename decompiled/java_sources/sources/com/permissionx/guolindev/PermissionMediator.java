package com.permissionx.guolindev;

import android.os.Build;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.permissionx.guolindev.PermissionX;
import com.permissionx.guolindev.dialog.PermissionMapKt;
import com.permissionx.guolindev.request.PermissionBuilder;
import com.permissionx.guolindev.request.RequestBackgroundLocationPermission;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u0010\u0010\u0011B\u0011\b\u0016\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u0012J\u0014\u0010\u0004\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J!\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0006\"\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0007R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0013"}, m61528d2 = {"Lcom/permissionx/guolindev/PermissionMediator;", "", "", "", "permissions", "Lcom/permissionx/guolindev/request/PermissionBuilder;", "", "([Ljava/lang/String;)Lcom/permissionx/guolindev/request/PermissionBuilder;", "Landroidx/fragment/app/FragmentActivity;", "a", "Landroidx/fragment/app/FragmentActivity;", ActivityChooserModel.f1429r, "Landroidx/fragment/app/Fragment;", "b", "Landroidx/fragment/app/Fragment;", "fragment", Constants.CONSTRUCTOR_NAME, "(Landroidx/fragment/app/FragmentActivity;)V", "(Landroidx/fragment/app/Fragment;)V", "permissionx_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes9.dex */
public final class PermissionMediator {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public FragmentActivity activity;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public Fragment fragment;

    public PermissionMediator(@NotNull FragmentActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.activity = activity;
    }

    @NotNull
    public final PermissionBuilder permissions(@NotNull List<String> permissions) {
        int i;
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        int i2 = Build.VERSION.SDK_INT;
        FragmentActivity fragmentActivity = this.activity;
        if (fragmentActivity != null) {
            Intrinsics.checkNotNull(fragmentActivity);
            i = fragmentActivity.getApplicationInfo().targetSdkVersion;
        } else {
            Fragment fragment = this.fragment;
            Intrinsics.checkNotNull(fragment);
            i = fragment.requireContext().getApplicationInfo().targetSdkVersion;
        }
        for (String str : permissions) {
            if (PermissionMapKt.getAllSpecialPermissions().contains(str)) {
                linkedHashSet2.add(str);
            } else {
                linkedHashSet.add(str);
            }
        }
        if (linkedHashSet2.contains(RequestBackgroundLocationPermission.ACCESS_BACKGROUND_LOCATION) && (i2 == 29 || (i2 == 30 && i < 30))) {
            linkedHashSet2.remove(RequestBackgroundLocationPermission.ACCESS_BACKGROUND_LOCATION);
            linkedHashSet.add(RequestBackgroundLocationPermission.ACCESS_BACKGROUND_LOCATION);
        }
        if (linkedHashSet2.contains(PermissionX.permission.POST_NOTIFICATIONS) && i2 >= 33 && i >= 33) {
            linkedHashSet2.remove(PermissionX.permission.POST_NOTIFICATIONS);
            linkedHashSet.add(PermissionX.permission.POST_NOTIFICATIONS);
        }
        return new PermissionBuilder(this.activity, this.fragment, linkedHashSet, linkedHashSet2);
    }

    public PermissionMediator(@NotNull Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.fragment = fragment;
    }

    @NotNull
    public final PermissionBuilder permissions(@NotNull String... permissions) {
        List<String> listOf;
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        listOf = CollectionsKt__CollectionsKt.listOf(Arrays.copyOf(permissions, permissions.length));
        return permissions(listOf);
    }
}
