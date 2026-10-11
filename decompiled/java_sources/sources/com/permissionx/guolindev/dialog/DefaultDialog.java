package com.permissionx.guolindev.dialog;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.PorterDuff;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.C1126e;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.permissionx.guolindev.C13081R;
import com.permissionx.guolindev.PermissionX;
import com.permissionx.guolindev.databinding.PermissionxDefaultDialogLayoutBinding;
import com.permissionx.guolindev.databinding.PermissionxPermissionItemBinding;
import com.permissionx.guolindev.request.RequestBackgroundLocationPermission;
import com.permissionx.guolindev.request.RequestBodySensorsBackgroundPermission;
import com.permissionx.guolindev.request.RequestInstallPackagesPermission;
import com.permissionx.guolindev.request.RequestManageExternalStoragePermission;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010)\u001a\u00020(\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\u0019\u001a\u00020\n\u0012\u0006\u0010\u001b\u001a\u00020\n\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010!\u001a\u00020\u001e\u0012\u0006\u0010#\u001a\u00020\u001e¢\u0006\u0004\b*\u0010+J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\n\u0010\b\u001a\u0004\u0018\u00010\u0006H\u0016J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016J\u000f\u0010\u000f\u001a\u00020\fH\u0000¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u0010\u001a\u00020\u0004H\u0002J\b\u0010\u0011\u001a\u00020\u0004H\u0002J\b\u0010\u0012\u001a\u00020\u0004H\u0002J\b\u0010\u0013\u001a\u00020\fH\u0002R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0019\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u0018R\u0016\u0010\u001d\u001a\u0004\u0018\u00010\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u0018R\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010#\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010 R\u0016\u0010'\u001a\u00020$8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006,"}, m61528d2 = {"Lcom/permissionx/guolindev/dialog/DefaultDialog;", "Lcom/permissionx/guolindev/dialog/RationaleDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "Landroid/view/View;", "getPositiveButton", "getNegativeButton", "", "", "getPermissionsToRequest", "", "isPermissionLayoutEmpty$permissionx_release", Constants.BOOLEAN_VALUE_SIG, "isPermissionLayoutEmpty", "c", "a", "d", "b", "e", "Ljava/util/List;", "permissions", C6997f.f39671c, Constants.STRING_SIG, "message", C6998g.f39679a, "positiveText", C6999h.f39688c, "negativeText", "", "i", "I", "lightColor", "j", "darkColor", "Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;", C4921e.f26537n, "Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;", "binding", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V", "permissionx_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes17.dex */
public final class DefaultDialog extends RationaleDialog {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<String> permissions;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String message;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final String positiveText;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public final String negativeText;

    /* renamed from: i, reason: from kotlin metadata */
    public final int lightColor;

    /* renamed from: j, reason: from kotlin metadata */
    public final int darkColor;

    /* renamed from: k, reason: from kotlin metadata */
    public PermissionxDefaultDialogLayoutBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultDialog(@NotNull Context context, @NotNull List<String> permissions, @NotNull String message, @NotNull String positiveText, @Nullable String str, int i, int i2) {
        super(context, C13081R.style.PermissionXDefaultDialog);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(positiveText, "positiveText");
        this.permissions = permissions;
        this.message = message;
        this.positiveText = positiveText;
        this.negativeText = str;
        this.lightColor = i;
        this.darkColor = i2;
    }

    /* renamed from: a */
    public final void m52248a() {
        HashSet hashSet = new HashSet();
        int i = Build.VERSION.SDK_INT;
        for (String str : this.permissions) {
            String str2 = i == 29 ? PermissionMapKt.getPermissionMapOnQ().get(str) : i == 30 ? PermissionMapKt.getPermissionMapOnR().get(str) : i == 31 ? PermissionMapKt.getPermissionMapOnS().get(str) : i == 33 ? PermissionMapKt.getPermissionMapOnT().get(str) : PermissionMapKt.getPermissionMapOnT().get(str);
            if ((PermissionMapKt.getAllSpecialPermissions().contains(str) && !hashSet.contains(str)) || (str2 != null && !hashSet.contains(str2))) {
                LayoutInflater layoutInflater = getLayoutInflater();
                PermissionxDefaultDialogLayoutBinding permissionxDefaultDialogLayoutBinding = this.binding;
                PermissionxDefaultDialogLayoutBinding permissionxDefaultDialogLayoutBinding2 = null;
                if (permissionxDefaultDialogLayoutBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    permissionxDefaultDialogLayoutBinding = null;
                }
                PermissionxPermissionItemBinding inflate = PermissionxPermissionItemBinding.inflate(layoutInflater, permissionxDefaultDialogLayoutBinding.permissionsLayout, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(layoutInflater, …permissionsLayout, false)");
                if (Intrinsics.areEqual(str, RequestBackgroundLocationPermission.ACCESS_BACKGROUND_LOCATION)) {
                    inflate.permissionText.setText(getContext().getString(C13081R.string.permissionx_access_background_location));
                    ImageView imageView = inflate.permissionIcon;
                    PackageManager packageManager = getContext().getPackageManager();
                    Intrinsics.checkNotNull(str2);
                    imageView.setImageResource(packageManager.getPermissionGroupInfo(str2, 0).icon);
                } else if (Intrinsics.areEqual(str, "android.permission.SYSTEM_ALERT_WINDOW")) {
                    inflate.permissionText.setText(getContext().getString(C13081R.string.permissionx_system_alert_window));
                    inflate.permissionIcon.setImageResource(C13081R.drawable.permissionx_ic_alert);
                } else if (Intrinsics.areEqual(str, "android.permission.WRITE_SETTINGS")) {
                    inflate.permissionText.setText(getContext().getString(C13081R.string.permissionx_write_settings));
                    inflate.permissionIcon.setImageResource(C13081R.drawable.permissionx_ic_setting);
                } else if (Intrinsics.areEqual(str, RequestManageExternalStoragePermission.MANAGE_EXTERNAL_STORAGE)) {
                    inflate.permissionText.setText(getContext().getString(C13081R.string.permissionx_manage_external_storage));
                    ImageView imageView2 = inflate.permissionIcon;
                    PackageManager packageManager2 = getContext().getPackageManager();
                    Intrinsics.checkNotNull(str2);
                    imageView2.setImageResource(packageManager2.getPermissionGroupInfo(str2, 0).icon);
                } else if (Intrinsics.areEqual(str, RequestInstallPackagesPermission.REQUEST_INSTALL_PACKAGES)) {
                    inflate.permissionText.setText(getContext().getString(C13081R.string.permissionx_request_install_packages));
                    inflate.permissionIcon.setImageResource(C13081R.drawable.permissionx_ic_install);
                } else if (Intrinsics.areEqual(str, PermissionX.permission.POST_NOTIFICATIONS) && Build.VERSION.SDK_INT < 33) {
                    inflate.permissionText.setText(getContext().getString(C13081R.string.permissionx_post_notification));
                    inflate.permissionIcon.setImageResource(C13081R.drawable.permissionx_ic_notification);
                } else if (Intrinsics.areEqual(str, RequestBodySensorsBackgroundPermission.BODY_SENSORS_BACKGROUND)) {
                    inflate.permissionText.setText(getContext().getString(C13081R.string.permissionx_body_sensor_background));
                    ImageView imageView3 = inflate.permissionIcon;
                    PackageManager packageManager3 = getContext().getPackageManager();
                    Intrinsics.checkNotNull(str2);
                    imageView3.setImageResource(packageManager3.getPermissionGroupInfo(str2, 0).icon);
                } else {
                    TextView textView = inflate.permissionText;
                    Context context = getContext();
                    PackageManager packageManager4 = getContext().getPackageManager();
                    Intrinsics.checkNotNull(str2);
                    textView.setText(context.getString(packageManager4.getPermissionGroupInfo(str2, 0).labelRes));
                    inflate.permissionIcon.setImageResource(getContext().getPackageManager().getPermissionGroupInfo(str2, 0).icon);
                }
                if (m52249b()) {
                    int i2 = this.darkColor;
                    if (i2 != -1) {
                        inflate.permissionIcon.setColorFilter(i2, PorterDuff.Mode.SRC_ATOP);
                    }
                } else {
                    int i3 = this.lightColor;
                    if (i3 != -1) {
                        inflate.permissionIcon.setColorFilter(i3, PorterDuff.Mode.SRC_ATOP);
                    }
                }
                PermissionxDefaultDialogLayoutBinding permissionxDefaultDialogLayoutBinding3 = this.binding;
                if (permissionxDefaultDialogLayoutBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    permissionxDefaultDialogLayoutBinding2 = permissionxDefaultDialogLayoutBinding3;
                }
                permissionxDefaultDialogLayoutBinding2.permissionsLayout.addView(inflate.getRoot());
                if (str2 != null) {
                    str = str2;
                }
                hashSet.add(str);
            }
        }
    }

    /* renamed from: b */
    public final boolean m52249b() {
        return (getContext().getResources().getConfiguration().uiMode & 48) == 32;
    }

    /* renamed from: c */
    public final void m52250c() {
        PermissionxDefaultDialogLayoutBinding permissionxDefaultDialogLayoutBinding = this.binding;
        PermissionxDefaultDialogLayoutBinding permissionxDefaultDialogLayoutBinding2 = null;
        if (permissionxDefaultDialogLayoutBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            permissionxDefaultDialogLayoutBinding = null;
        }
        permissionxDefaultDialogLayoutBinding.messageText.setText(this.message);
        PermissionxDefaultDialogLayoutBinding permissionxDefaultDialogLayoutBinding3 = this.binding;
        if (permissionxDefaultDialogLayoutBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            permissionxDefaultDialogLayoutBinding3 = null;
        }
        permissionxDefaultDialogLayoutBinding3.positiveBtn.setText(this.positiveText);
        if (this.negativeText != null) {
            PermissionxDefaultDialogLayoutBinding permissionxDefaultDialogLayoutBinding4 = this.binding;
            if (permissionxDefaultDialogLayoutBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                permissionxDefaultDialogLayoutBinding4 = null;
            }
            permissionxDefaultDialogLayoutBinding4.negativeLayout.setVisibility(0);
            PermissionxDefaultDialogLayoutBinding permissionxDefaultDialogLayoutBinding5 = this.binding;
            if (permissionxDefaultDialogLayoutBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                permissionxDefaultDialogLayoutBinding5 = null;
            }
            permissionxDefaultDialogLayoutBinding5.negativeBtn.setText(this.negativeText);
        } else {
            PermissionxDefaultDialogLayoutBinding permissionxDefaultDialogLayoutBinding6 = this.binding;
            if (permissionxDefaultDialogLayoutBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                permissionxDefaultDialogLayoutBinding6 = null;
            }
            permissionxDefaultDialogLayoutBinding6.negativeLayout.setVisibility(8);
        }
        if (m52249b()) {
            if (this.darkColor != -1) {
                PermissionxDefaultDialogLayoutBinding permissionxDefaultDialogLayoutBinding7 = this.binding;
                if (permissionxDefaultDialogLayoutBinding7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    permissionxDefaultDialogLayoutBinding7 = null;
                }
                permissionxDefaultDialogLayoutBinding7.positiveBtn.setTextColor(this.darkColor);
                PermissionxDefaultDialogLayoutBinding permissionxDefaultDialogLayoutBinding8 = this.binding;
                if (permissionxDefaultDialogLayoutBinding8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    permissionxDefaultDialogLayoutBinding2 = permissionxDefaultDialogLayoutBinding8;
                }
                permissionxDefaultDialogLayoutBinding2.negativeBtn.setTextColor(this.darkColor);
                return;
            }
            return;
        }
        if (this.lightColor != -1) {
            PermissionxDefaultDialogLayoutBinding permissionxDefaultDialogLayoutBinding9 = this.binding;
            if (permissionxDefaultDialogLayoutBinding9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                permissionxDefaultDialogLayoutBinding9 = null;
            }
            permissionxDefaultDialogLayoutBinding9.positiveBtn.setTextColor(this.lightColor);
            PermissionxDefaultDialogLayoutBinding permissionxDefaultDialogLayoutBinding10 = this.binding;
            if (permissionxDefaultDialogLayoutBinding10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                permissionxDefaultDialogLayoutBinding2 = permissionxDefaultDialogLayoutBinding10;
            }
            permissionxDefaultDialogLayoutBinding2.negativeBtn.setTextColor(this.lightColor);
        }
    }

    /* renamed from: d */
    public final void m52251d() {
        int i = getContext().getResources().getDisplayMetrics().widthPixels;
        if (i < getContext().getResources().getDisplayMetrics().heightPixels) {
            Window window = getWindow();
            if (window != null) {
                WindowManager.LayoutParams attributes = window.getAttributes();
                window.setGravity(17);
                attributes.width = (int) (i * 0.86d);
                window.setAttributes(attributes);
                return;
            }
            return;
        }
        Window window2 = getWindow();
        if (window2 != null) {
            WindowManager.LayoutParams attributes2 = window2.getAttributes();
            window2.setGravity(17);
            attributes2.width = (int) (i * 0.6d);
            window2.setAttributes(attributes2);
        }
    }

    @Override // com.permissionx.guolindev.dialog.RationaleDialog
    @Nullable
    public View getNegativeButton() {
        PermissionxDefaultDialogLayoutBinding permissionxDefaultDialogLayoutBinding = null;
        if (this.negativeText == null) {
            return null;
        }
        PermissionxDefaultDialogLayoutBinding permissionxDefaultDialogLayoutBinding2 = this.binding;
        if (permissionxDefaultDialogLayoutBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            permissionxDefaultDialogLayoutBinding = permissionxDefaultDialogLayoutBinding2;
        }
        return permissionxDefaultDialogLayoutBinding.negativeBtn;
    }

    @Override // com.permissionx.guolindev.dialog.RationaleDialog
    @NotNull
    public List<String> getPermissionsToRequest() {
        return this.permissions;
    }

    @Override // com.permissionx.guolindev.dialog.RationaleDialog
    @NotNull
    public View getPositiveButton() {
        PermissionxDefaultDialogLayoutBinding permissionxDefaultDialogLayoutBinding = this.binding;
        if (permissionxDefaultDialogLayoutBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            permissionxDefaultDialogLayoutBinding = null;
        }
        Button button = permissionxDefaultDialogLayoutBinding.positiveBtn;
        Intrinsics.checkNotNullExpressionValue(button, "binding.positiveBtn");
        return button;
    }

    public final boolean isPermissionLayoutEmpty$permissionx_release() {
        PermissionxDefaultDialogLayoutBinding permissionxDefaultDialogLayoutBinding = this.binding;
        if (permissionxDefaultDialogLayoutBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            permissionxDefaultDialogLayoutBinding = null;
        }
        return permissionxDefaultDialogLayoutBinding.permissionsLayout.getChildCount() == 0;
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063239, this, savedInstanceState);
    }
}
