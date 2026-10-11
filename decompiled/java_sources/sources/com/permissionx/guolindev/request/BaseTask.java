package com.permissionx.guolindev.request;

import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import com.permissionx.guolindev.PermissionX;
import com.permissionx.guolindev.callback.RequestCallback;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\b \u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0013\u0010\u0014J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\u0016\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00018\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\u000f\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u0012\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/permissionx/guolindev/request/BaseTask;", "Lcom/permissionx/guolindev/request/ChainTask;", "Lcom/permissionx/guolindev/request/ExplainScope;", "getExplainScope", "Lcom/permissionx/guolindev/request/ForwardScope;", "getForwardScope", "", "finish", "Lcom/permissionx/guolindev/request/PermissionBuilder;", "pb", "Lcom/permissionx/guolindev/request/PermissionBuilder;", Constants.NEXT, "Lcom/permissionx/guolindev/request/ChainTask;", "a", "Lcom/permissionx/guolindev/request/ExplainScope;", "explainReasonScope", "b", "Lcom/permissionx/guolindev/request/ForwardScope;", "forwardToSettingsScope", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/permissionx/guolindev/request/PermissionBuilder;)V", "permissionx_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes9.dex */
public abstract class BaseTask implements ChainTask {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public ExplainScope explainReasonScope;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public ForwardScope forwardToSettingsScope;

    @JvmField
    @Nullable
    public ChainTask next;

    @JvmField
    @NotNull
    public PermissionBuilder pb;

    public BaseTask(@NotNull PermissionBuilder pb) {
        Intrinsics.checkNotNullParameter(pb, "pb");
        this.pb = pb;
        this.explainReasonScope = new ExplainScope(pb, this);
        this.forwardToSettingsScope = new ForwardScope(this.pb, this);
        this.explainReasonScope = new ExplainScope(this.pb, this);
        this.forwardToSettingsScope = new ForwardScope(this.pb, this);
    }

    @Override // com.permissionx.guolindev.request.ChainTask
    public void finish() {
        Unit unit;
        boolean isExternalStorageManager;
        ChainTask chainTask = this.next;
        if (chainTask != null) {
            chainTask.request();
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.pb.deniedPermissions);
            arrayList.addAll(this.pb.permanentDeniedPermissions);
            arrayList.addAll(this.pb.permissionsWontRequest);
            if (this.pb.shouldRequestBackgroundLocationPermission()) {
                if (PermissionX.isGranted(this.pb.getActivity(), RequestBackgroundLocationPermission.ACCESS_BACKGROUND_LOCATION)) {
                    this.pb.grantedPermissions.add(RequestBackgroundLocationPermission.ACCESS_BACKGROUND_LOCATION);
                } else {
                    arrayList.add(RequestBackgroundLocationPermission.ACCESS_BACKGROUND_LOCATION);
                }
            }
            if (this.pb.shouldRequestSystemAlertWindowPermission() && this.pb.getTargetSdkVersion() >= 23) {
                if (Settings.canDrawOverlays(this.pb.getActivity())) {
                    this.pb.grantedPermissions.add("android.permission.SYSTEM_ALERT_WINDOW");
                } else {
                    arrayList.add("android.permission.SYSTEM_ALERT_WINDOW");
                }
            }
            if (this.pb.shouldRequestWriteSettingsPermission() && this.pb.getTargetSdkVersion() >= 23) {
                if (Settings.System.canWrite(this.pb.getActivity())) {
                    this.pb.grantedPermissions.add("android.permission.WRITE_SETTINGS");
                } else {
                    arrayList.add("android.permission.WRITE_SETTINGS");
                }
            }
            if (this.pb.shouldRequestManageExternalStoragePermission()) {
                if (Build.VERSION.SDK_INT >= 30) {
                    isExternalStorageManager = Environment.isExternalStorageManager();
                    if (isExternalStorageManager) {
                        this.pb.grantedPermissions.add(RequestManageExternalStoragePermission.MANAGE_EXTERNAL_STORAGE);
                    }
                }
                arrayList.add(RequestManageExternalStoragePermission.MANAGE_EXTERNAL_STORAGE);
            }
            if (this.pb.shouldRequestInstallPackagesPermission()) {
                if (this.pb.getTargetSdkVersion() < 26) {
                    arrayList.add(RequestInstallPackagesPermission.REQUEST_INSTALL_PACKAGES);
                } else if (this.pb.getActivity().getPackageManager().canRequestPackageInstalls()) {
                    this.pb.grantedPermissions.add(RequestInstallPackagesPermission.REQUEST_INSTALL_PACKAGES);
                } else {
                    arrayList.add(RequestInstallPackagesPermission.REQUEST_INSTALL_PACKAGES);
                }
            }
            if (this.pb.shouldRequestNotificationPermission()) {
                if (PermissionX.areNotificationsEnabled(this.pb.getActivity())) {
                    this.pb.grantedPermissions.add(PermissionX.permission.POST_NOTIFICATIONS);
                } else {
                    arrayList.add(PermissionX.permission.POST_NOTIFICATIONS);
                }
            }
            if (this.pb.shouldRequestBodySensorsBackgroundPermission()) {
                if (PermissionX.isGranted(this.pb.getActivity(), RequestBodySensorsBackgroundPermission.BODY_SENSORS_BACKGROUND)) {
                    this.pb.grantedPermissions.add(RequestBodySensorsBackgroundPermission.BODY_SENSORS_BACKGROUND);
                } else {
                    arrayList.add(RequestBodySensorsBackgroundPermission.BODY_SENSORS_BACKGROUND);
                }
            }
            RequestCallback requestCallback = this.pb.requestCallback;
            if (requestCallback != null) {
                Intrinsics.checkNotNull(requestCallback);
                requestCallback.onResult(arrayList.isEmpty(), new ArrayList(this.pb.grantedPermissions), arrayList);
            }
            this.pb.endRequest$permissionx_release();
        }
    }

    @Override // com.permissionx.guolindev.request.ChainTask
    @NotNull
    /* renamed from: getExplainScope, reason: from getter */
    public ExplainScope getExplainReasonScope() {
        return this.explainReasonScope;
    }

    @Override // com.permissionx.guolindev.request.ChainTask
    @NotNull
    /* renamed from: getForwardScope, reason: from getter */
    public ForwardScope getForwardToSettingsScope() {
        return this.forwardToSettingsScope;
    }
}
