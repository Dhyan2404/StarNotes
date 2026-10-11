package com.permissionx.guolindev.request;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.Log;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.fragment.app.Fragment;
import com.permissionx.guolindev.PermissionX;
import com.permissionx.guolindev.callback.ExplainReasonCallback;
import com.permissionx.guolindev.callback.ExplainReasonCallbackWithBeforeParam;
import com.permissionx.guolindev.request.InvisibleFragment;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bE\u0010FJ\u001c\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\n\u001a\u00020\u0006H\u0002J\b\u0010\u000b\u001a\u00020\u0006H\u0002J\b\u0010\f\u001a\u00020\u0006H\u0002J\b\u0010\r\u001a\u00020\u0006H\u0002J\b\u0010\u000e\u001a\u00020\u0006H\u0002J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002J\u0016\u0010\u0013\u001a\u00020\u00062\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00060\u0011H\u0002J$\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00142\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00030\u00162\u0006\u0010\u0019\u001a\u00020\u0018J\u0016\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0018J\u0016\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0018J\u0016\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0018J\u0018\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0018H\u0007J\u0016\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0018J\u0016\u0010 \u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0018J\u0016\u0010!\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0018J\u0006\u0010\"\u001a\u00020\u0006J\b\u0010#\u001a\u00020\u0006H\u0016R\u0014\u0010'\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010*\u001a\u00020\u00148\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010-\u001a\u00020\u00188\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b+\u0010,R.\u00103\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003 0*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010/0/0.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\"\u00105\u001a\u0010\u0012\f\u0012\n 0*\u0004\u0018\u00010\u00030\u00030.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00102R\"\u00108\u001a\u0010\u0012\f\u0012\n 0*\u0004\u0018\u000106060.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00102R\"\u0010:\u001a\u0010\u0012\f\u0012\n 0*\u0004\u0018\u000106060.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u00102R\"\u0010<\u001a\u0010\u0012\f\u0012\n 0*\u0004\u0018\u000106060.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u00102R\"\u0010>\u001a\u0010\u0012\f\u0012\n 0*\u0004\u0018\u000106060.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u00102R\"\u0010@\u001a\u0010\u0012\f\u0012\n 0*\u0004\u0018\u000106060.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u00102R\"\u0010B\u001a\u0010\u0012\f\u0012\n 0*\u0004\u0018\u00010\u00030\u00030.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u00102R\"\u0010D\u001a\u0010\u0012\f\u0012\n 0*\u0004\u0018\u000106060.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u00102¨\u0006G"}, m61528d2 = {"Lcom/permissionx/guolindev/request/InvisibleFragment;", "Landroidx/fragment/app/Fragment;", "", "", "", "grantResults", "", "A0", "granted", "w0", "C0", "D0", "z0", "y0", "B0", "x0", "u0", "Lkotlin/Function0;", "callback", "E0", "Lcom/permissionx/guolindev/request/PermissionBuilder;", "permissionBuilder", "", "permissions", "Lcom/permissionx/guolindev/request/ChainTask;", "chainTask", "requestNow", "requestAccessBackgroundLocationPermissionNow", "requestSystemAlertWindowPermissionNow", "requestWriteSettingsPermissionNow", "requestManageExternalStoragePermissionNow", "requestInstallPackagesPermissionNow", "requestNotificationPermissionNow", "requestBodySensorsBackgroundPermissionNow", "forwardToSettings", "onDestroy", "Landroid/os/Handler;", "c1", "Landroid/os/Handler;", Constants.TRANSLET_OUTPUT_PNAME, "d1", "Lcom/permissionx/guolindev/request/PermissionBuilder;", "pb", "e1", "Lcom/permissionx/guolindev/request/ChainTask;", "task", "Landroidx/activity/result/ActivityResultLauncher;", "", "kotlin.jvm.PlatformType", "f1", "Landroidx/activity/result/ActivityResultLauncher;", "requestNormalPermissionLauncher", "g1", "requestBackgroundLocationLauncher", "Landroid/content/Intent;", "h1", "requestSystemAlertWindowLauncher", "i1", "requestWriteSettingsLauncher", "j1", "requestManageExternalStorageLauncher", "k1", "requestInstallPackagesLauncher", "l1", "requestNotificationLauncher", "m1", "requestBodySensorsBackgroundLauncher", "n1", "forwardToSettingsLauncher", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "permissionx_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes9.dex */
public final class InvisibleFragment extends Fragment {

    /* renamed from: c1, reason: from kotlin metadata */
    @NotNull
    public final Handler handler = new Handler(Looper.getMainLooper());

    /* renamed from: d1, reason: from kotlin metadata */
    public PermissionBuilder pb;

    /* renamed from: e1, reason: from kotlin metadata */
    public ChainTask task;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final ActivityResultLauncher<String[]> requestNormalPermissionLauncher;

    /* renamed from: g1, reason: from kotlin metadata */
    @NotNull
    public final ActivityResultLauncher<String> requestBackgroundLocationLauncher;

    /* renamed from: h1, reason: from kotlin metadata */
    @NotNull
    public final ActivityResultLauncher<Intent> requestSystemAlertWindowLauncher;

    /* renamed from: i1, reason: from kotlin metadata */
    @NotNull
    public final ActivityResultLauncher<Intent> requestWriteSettingsLauncher;

    /* renamed from: j1, reason: from kotlin metadata */
    @NotNull
    public final ActivityResultLauncher<Intent> requestManageExternalStorageLauncher;

    /* renamed from: k1, reason: from kotlin metadata */
    @NotNull
    public final ActivityResultLauncher<Intent> requestInstallPackagesLauncher;

    /* renamed from: l1, reason: from kotlin metadata */
    @NotNull
    public final ActivityResultLauncher<Intent> requestNotificationLauncher;

    /* renamed from: m1, reason: from kotlin metadata */
    @NotNull
    public final ActivityResultLauncher<String> requestBodySensorsBackgroundLauncher;

    /* renamed from: n1, reason: from kotlin metadata */
    @NotNull
    public final ActivityResultLauncher<Intent> forwardToSettingsLauncher;

    public InvisibleFragment() {
        ActivityResultLauncher<String[]> registerForActivityResult = registerForActivityResult(new ActivityResultContracts.RequestMultiplePermissions(), new ActivityResultCallback() { // from class: com.sunia.HTREnginev2.rpi
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                InvisibleFragment.m52257K0(InvisibleFragment.this, (Map) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…)\n            }\n        }");
        this.requestNormalPermissionLauncher = registerForActivityResult;
        ActivityResultLauncher<String> registerForActivityResult2 = registerForActivityResult(new ActivityResultContracts.RequestPermission(), new ActivityResultCallback() { // from class: com.sunia.HTREnginev2.spi
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                InvisibleFragment.m52253G0(InvisibleFragment.this, (Boolean) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult2, "registerForActivityResul…)\n            }\n        }");
        this.requestBackgroundLocationLauncher = registerForActivityResult2;
        ActivityResultLauncher<Intent> registerForActivityResult3 = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.sunia.HTREnginev2.tpi
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                InvisibleFragment.m52259M0(InvisibleFragment.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult3, "registerForActivityResul…)\n            }\n        }");
        this.requestSystemAlertWindowLauncher = registerForActivityResult3;
        ActivityResultLauncher<Intent> registerForActivityResult4 = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.sunia.HTREnginev2.upi
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                InvisibleFragment.m52260N0(InvisibleFragment.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult4, "registerForActivityResul…)\n            }\n        }");
        this.requestWriteSettingsLauncher = registerForActivityResult4;
        ActivityResultLauncher<Intent> registerForActivityResult5 = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.sunia.HTREnginev2.vpi
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                InvisibleFragment.m52256J0(InvisibleFragment.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult5, "registerForActivityResul…)\n            }\n        }");
        this.requestManageExternalStorageLauncher = registerForActivityResult5;
        ActivityResultLauncher<Intent> registerForActivityResult6 = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.sunia.HTREnginev2.wpi
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                InvisibleFragment.m52255I0(InvisibleFragment.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult6, "registerForActivityResul…)\n            }\n        }");
        this.requestInstallPackagesLauncher = registerForActivityResult6;
        ActivityResultLauncher<Intent> registerForActivityResult7 = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.sunia.HTREnginev2.xpi
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                InvisibleFragment.m52258L0(InvisibleFragment.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult7, "registerForActivityResul…)\n            }\n        }");
        this.requestNotificationLauncher = registerForActivityResult7;
        ActivityResultLauncher<String> registerForActivityResult8 = registerForActivityResult(new ActivityResultContracts.RequestPermission(), new ActivityResultCallback() { // from class: com.sunia.HTREnginev2.ypi
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                InvisibleFragment.m52254H0(InvisibleFragment.this, (Boolean) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult8, "registerForActivityResul…)\n            }\n        }");
        this.requestBodySensorsBackgroundLauncher = registerForActivityResult8;
        ActivityResultLauncher<Intent> registerForActivityResult9 = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.sunia.HTREnginev2.zpi
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                InvisibleFragment.m52271v0(InvisibleFragment.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult9, "registerForActivityResul…)\n            }\n        }");
        this.forwardToSettingsLauncher = registerForActivityResult9;
    }

    /* renamed from: F0 */
    public static final void m52252F0(Function0 callback) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        callback.invoke();
    }

    /* renamed from: G0 */
    public static final void m52253G0(final InvisibleFragment this$0, final Boolean bool) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m52276E0(new Function0<Unit>() { // from class: com.permissionx.guolindev.request.InvisibleFragment$requestBackgroundLocationLauncher$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                InvisibleFragment invisibleFragment = InvisibleFragment.this;
                Boolean granted = bool;
                Intrinsics.checkNotNullExpressionValue(granted, "granted");
                invisibleFragment.m52278w0(granted.booleanValue());
            }
        });
    }

    /* renamed from: H0 */
    public static final void m52254H0(final InvisibleFragment this$0, final Boolean bool) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m52276E0(new Function0<Unit>() { // from class: com.permissionx.guolindev.request.InvisibleFragment$requestBodySensorsBackgroundLauncher$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                InvisibleFragment invisibleFragment = InvisibleFragment.this;
                Boolean granted = bool;
                Intrinsics.checkNotNullExpressionValue(granted, "granted");
                invisibleFragment.m52279x0(granted.booleanValue());
            }
        });
    }

    /* renamed from: I0 */
    public static final void m52255I0(final InvisibleFragment this$0, ActivityResult activityResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m52276E0(new Function0<Unit>() { // from class: com.permissionx.guolindev.request.InvisibleFragment$requestInstallPackagesLauncher$1$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                InvisibleFragment.this.m52280y0();
            }
        });
    }

    /* renamed from: J0 */
    public static final void m52256J0(final InvisibleFragment this$0, ActivityResult activityResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m52276E0(new Function0<Unit>() { // from class: com.permissionx.guolindev.request.InvisibleFragment$requestManageExternalStorageLauncher$1$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                InvisibleFragment.this.m52281z0();
            }
        });
    }

    /* renamed from: K0 */
    public static final void m52257K0(final InvisibleFragment this$0, final Map map) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m52276E0(new Function0<Unit>() { // from class: com.permissionx.guolindev.request.InvisibleFragment$requestNormalPermissionLauncher$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                InvisibleFragment invisibleFragment = InvisibleFragment.this;
                Map<String, Boolean> grantResults = map;
                Intrinsics.checkNotNullExpressionValue(grantResults, "grantResults");
                invisibleFragment.m52272A0(grantResults);
            }
        });
    }

    /* renamed from: L0 */
    public static final void m52258L0(final InvisibleFragment this$0, ActivityResult activityResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m52276E0(new Function0<Unit>() { // from class: com.permissionx.guolindev.request.InvisibleFragment$requestNotificationLauncher$1$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                InvisibleFragment.this.m52273B0();
            }
        });
    }

    /* renamed from: M0 */
    public static final void m52259M0(final InvisibleFragment this$0, ActivityResult activityResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m52276E0(new Function0<Unit>() { // from class: com.permissionx.guolindev.request.InvisibleFragment$requestSystemAlertWindowLauncher$1$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                InvisibleFragment.this.m52274C0();
            }
        });
    }

    /* renamed from: N0 */
    public static final void m52260N0(final InvisibleFragment this$0, ActivityResult activityResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m52276E0(new Function0<Unit>() { // from class: com.permissionx.guolindev.request.InvisibleFragment$requestWriteSettingsLauncher$1$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                InvisibleFragment.this.m52275D0();
            }
        });
    }

    /* renamed from: v0 */
    public static final void m52271v0(InvisibleFragment this$0, ActivityResult activityResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.m52277u0()) {
            ChainTask chainTask = this$0.task;
            PermissionBuilder permissionBuilder = null;
            if (chainTask == null) {
                Intrinsics.throwUninitializedPropertyAccessException("task");
                chainTask = null;
            }
            PermissionBuilder permissionBuilder2 = this$0.pb;
            if (permissionBuilder2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pb");
            } else {
                permissionBuilder = permissionBuilder2;
            }
            chainTask.requestAgain(new ArrayList(permissionBuilder.forwardPermissions));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x01df, code lost:
    
        if ((!r9.tempPermanentDeniedPermissions.isEmpty()) != false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0226, code lost:
    
        if (r9.showDialogCalled == false) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0142, code lost:
    
        if (r9.explainReasonCallbackWithBeforeParam != null) goto L80;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:121:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x022c  */
    /* renamed from: A0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m52272A0(java.util.Map<java.lang.String, java.lang.Boolean> r9) {
        /*
            Method dump skipped, instructions count: 575
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.permissionx.guolindev.request.InvisibleFragment.m52272A0(java.util.Map):void");
    }

    /* renamed from: B0 */
    public final void m52273B0() {
        if (m52277u0()) {
            m52276E0(new Function0<Unit>() { // from class: com.permissionx.guolindev.request.InvisibleFragment$onRequestNotificationPermissionResult$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    PermissionBuilder permissionBuilder;
                    PermissionBuilder permissionBuilder2;
                    PermissionBuilder permissionBuilder3;
                    ChainTask chainTask;
                    List<String> listOf;
                    PermissionBuilder permissionBuilder4;
                    ChainTask chainTask2;
                    List<String> listOf2;
                    PermissionBuilder permissionBuilder5;
                    ChainTask chainTask3;
                    ChainTask chainTask4 = null;
                    if (PermissionX.areNotificationsEnabled(InvisibleFragment.this.requireContext())) {
                        chainTask3 = InvisibleFragment.this.task;
                        if (chainTask3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("task");
                        } else {
                            chainTask4 = chainTask3;
                        }
                        chainTask4.finish();
                        return;
                    }
                    permissionBuilder = InvisibleFragment.this.pb;
                    if (permissionBuilder == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("pb");
                        permissionBuilder = null;
                    }
                    if (permissionBuilder.explainReasonCallback == null) {
                        permissionBuilder5 = InvisibleFragment.this.pb;
                        if (permissionBuilder5 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("pb");
                            permissionBuilder5 = null;
                        }
                        if (permissionBuilder5.explainReasonCallbackWithBeforeParam == null) {
                            return;
                        }
                    }
                    permissionBuilder2 = InvisibleFragment.this.pb;
                    if (permissionBuilder2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("pb");
                        permissionBuilder2 = null;
                    }
                    if (permissionBuilder2.explainReasonCallbackWithBeforeParam != null) {
                        permissionBuilder4 = InvisibleFragment.this.pb;
                        if (permissionBuilder4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("pb");
                            permissionBuilder4 = null;
                        }
                        ExplainReasonCallbackWithBeforeParam explainReasonCallbackWithBeforeParam = permissionBuilder4.explainReasonCallbackWithBeforeParam;
                        Intrinsics.checkNotNull(explainReasonCallbackWithBeforeParam);
                        chainTask2 = InvisibleFragment.this.task;
                        if (chainTask2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("task");
                        } else {
                            chainTask4 = chainTask2;
                        }
                        ExplainScope explainReasonScope = chainTask4.getExplainReasonScope();
                        listOf2 = CollectionsKt__CollectionsJVMKt.listOf(PermissionX.permission.POST_NOTIFICATIONS);
                        explainReasonCallbackWithBeforeParam.onExplainReason(explainReasonScope, listOf2, false);
                        return;
                    }
                    permissionBuilder3 = InvisibleFragment.this.pb;
                    if (permissionBuilder3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("pb");
                        permissionBuilder3 = null;
                    }
                    ExplainReasonCallback explainReasonCallback = permissionBuilder3.explainReasonCallback;
                    Intrinsics.checkNotNull(explainReasonCallback);
                    chainTask = InvisibleFragment.this.task;
                    if (chainTask == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("task");
                    } else {
                        chainTask4 = chainTask;
                    }
                    ExplainScope explainReasonScope2 = chainTask4.getExplainReasonScope();
                    listOf = CollectionsKt__CollectionsJVMKt.listOf(PermissionX.permission.POST_NOTIFICATIONS);
                    explainReasonCallback.onExplainReason(explainReasonScope2, listOf);
                }
            });
        }
    }

    /* renamed from: C0 */
    public final void m52274C0() {
        List<String> listOf;
        List<String> listOf2;
        if (m52277u0()) {
            ChainTask chainTask = null;
            if (Settings.canDrawOverlays(requireContext())) {
                ChainTask chainTask2 = this.task;
                if (chainTask2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("task");
                } else {
                    chainTask = chainTask2;
                }
                chainTask.finish();
                return;
            }
            PermissionBuilder permissionBuilder = this.pb;
            if (permissionBuilder == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pb");
                permissionBuilder = null;
            }
            if (permissionBuilder.explainReasonCallback == null) {
                PermissionBuilder permissionBuilder2 = this.pb;
                if (permissionBuilder2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("pb");
                    permissionBuilder2 = null;
                }
                if (permissionBuilder2.explainReasonCallbackWithBeforeParam == null) {
                    return;
                }
            }
            PermissionBuilder permissionBuilder3 = this.pb;
            if (permissionBuilder3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pb");
                permissionBuilder3 = null;
            }
            if (permissionBuilder3.explainReasonCallbackWithBeforeParam != null) {
                PermissionBuilder permissionBuilder4 = this.pb;
                if (permissionBuilder4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("pb");
                    permissionBuilder4 = null;
                }
                ExplainReasonCallbackWithBeforeParam explainReasonCallbackWithBeforeParam = permissionBuilder4.explainReasonCallbackWithBeforeParam;
                Intrinsics.checkNotNull(explainReasonCallbackWithBeforeParam);
                ChainTask chainTask3 = this.task;
                if (chainTask3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("task");
                } else {
                    chainTask = chainTask3;
                }
                ExplainScope explainReasonScope = chainTask.getExplainReasonScope();
                listOf2 = CollectionsKt__CollectionsJVMKt.listOf("android.permission.SYSTEM_ALERT_WINDOW");
                explainReasonCallbackWithBeforeParam.onExplainReason(explainReasonScope, listOf2, false);
                return;
            }
            PermissionBuilder permissionBuilder5 = this.pb;
            if (permissionBuilder5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pb");
                permissionBuilder5 = null;
            }
            ExplainReasonCallback explainReasonCallback = permissionBuilder5.explainReasonCallback;
            Intrinsics.checkNotNull(explainReasonCallback);
            ChainTask chainTask4 = this.task;
            if (chainTask4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("task");
            } else {
                chainTask = chainTask4;
            }
            ExplainScope explainReasonScope2 = chainTask.getExplainReasonScope();
            listOf = CollectionsKt__CollectionsJVMKt.listOf("android.permission.SYSTEM_ALERT_WINDOW");
            explainReasonCallback.onExplainReason(explainReasonScope2, listOf);
        }
    }

    /* renamed from: D0 */
    public final void m52275D0() {
        if (m52277u0()) {
            m52276E0(new Function0<Unit>() { // from class: com.permissionx.guolindev.request.InvisibleFragment$onRequestWriteSettingsPermissionResult$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    PermissionBuilder permissionBuilder;
                    PermissionBuilder permissionBuilder2;
                    PermissionBuilder permissionBuilder3;
                    ChainTask chainTask;
                    List<String> listOf;
                    PermissionBuilder permissionBuilder4;
                    ChainTask chainTask2;
                    List<String> listOf2;
                    PermissionBuilder permissionBuilder5;
                    ChainTask chainTask3;
                    ChainTask chainTask4 = null;
                    if (Settings.System.canWrite(InvisibleFragment.this.requireContext())) {
                        chainTask3 = InvisibleFragment.this.task;
                        if (chainTask3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("task");
                        } else {
                            chainTask4 = chainTask3;
                        }
                        chainTask4.finish();
                        return;
                    }
                    permissionBuilder = InvisibleFragment.this.pb;
                    if (permissionBuilder == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("pb");
                        permissionBuilder = null;
                    }
                    if (permissionBuilder.explainReasonCallback == null) {
                        permissionBuilder5 = InvisibleFragment.this.pb;
                        if (permissionBuilder5 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("pb");
                            permissionBuilder5 = null;
                        }
                        if (permissionBuilder5.explainReasonCallbackWithBeforeParam == null) {
                            return;
                        }
                    }
                    permissionBuilder2 = InvisibleFragment.this.pb;
                    if (permissionBuilder2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("pb");
                        permissionBuilder2 = null;
                    }
                    if (permissionBuilder2.explainReasonCallbackWithBeforeParam != null) {
                        permissionBuilder4 = InvisibleFragment.this.pb;
                        if (permissionBuilder4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("pb");
                            permissionBuilder4 = null;
                        }
                        ExplainReasonCallbackWithBeforeParam explainReasonCallbackWithBeforeParam = permissionBuilder4.explainReasonCallbackWithBeforeParam;
                        Intrinsics.checkNotNull(explainReasonCallbackWithBeforeParam);
                        chainTask2 = InvisibleFragment.this.task;
                        if (chainTask2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("task");
                        } else {
                            chainTask4 = chainTask2;
                        }
                        ExplainScope explainReasonScope = chainTask4.getExplainReasonScope();
                        listOf2 = CollectionsKt__CollectionsJVMKt.listOf("android.permission.WRITE_SETTINGS");
                        explainReasonCallbackWithBeforeParam.onExplainReason(explainReasonScope, listOf2, false);
                        return;
                    }
                    permissionBuilder3 = InvisibleFragment.this.pb;
                    if (permissionBuilder3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("pb");
                        permissionBuilder3 = null;
                    }
                    ExplainReasonCallback explainReasonCallback = permissionBuilder3.explainReasonCallback;
                    Intrinsics.checkNotNull(explainReasonCallback);
                    chainTask = InvisibleFragment.this.task;
                    if (chainTask == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("task");
                    } else {
                        chainTask4 = chainTask;
                    }
                    ExplainScope explainReasonScope2 = chainTask4.getExplainReasonScope();
                    listOf = CollectionsKt__CollectionsJVMKt.listOf("android.permission.WRITE_SETTINGS");
                    explainReasonCallback.onExplainReason(explainReasonScope2, listOf);
                }
            });
        }
    }

    /* renamed from: E0 */
    public final void m52276E0(final Function0<Unit> callback) {
        this.handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.qpi
            @Override // java.lang.Runnable
            public final void run() {
                InvisibleFragment.m52252F0(Function0.this);
            }
        });
    }

    public final void forwardToSettings() {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", requireActivity().getPackageName(), null));
        this.forwardToSettingsLauncher.launch(intent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (m52277u0()) {
            PermissionBuilder permissionBuilder = this.pb;
            if (permissionBuilder == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pb");
                permissionBuilder = null;
            }
            Dialog dialog = permissionBuilder.currentDialog;
            if (dialog == null || !dialog.isShowing()) {
                return;
            }
            dialog.dismiss();
        }
    }

    public final void requestAccessBackgroundLocationPermissionNow(@NotNull PermissionBuilder permissionBuilder, @NotNull ChainTask chainTask) {
        Intrinsics.checkNotNullParameter(permissionBuilder, "permissionBuilder");
        Intrinsics.checkNotNullParameter(chainTask, "chainTask");
        this.pb = permissionBuilder;
        this.task = chainTask;
        this.requestBackgroundLocationLauncher.launch(RequestBackgroundLocationPermission.ACCESS_BACKGROUND_LOCATION);
    }

    public final void requestBodySensorsBackgroundPermissionNow(@NotNull PermissionBuilder permissionBuilder, @NotNull ChainTask chainTask) {
        Intrinsics.checkNotNullParameter(permissionBuilder, "permissionBuilder");
        Intrinsics.checkNotNullParameter(chainTask, "chainTask");
        this.pb = permissionBuilder;
        this.task = chainTask;
        this.requestBodySensorsBackgroundLauncher.launch(RequestBodySensorsBackgroundPermission.BODY_SENSORS_BACKGROUND);
    }

    public final void requestInstallPackagesPermissionNow(@NotNull PermissionBuilder permissionBuilder, @NotNull ChainTask chainTask) {
        Intrinsics.checkNotNullParameter(permissionBuilder, "permissionBuilder");
        Intrinsics.checkNotNullParameter(chainTask, "chainTask");
        this.pb = permissionBuilder;
        this.task = chainTask;
        Intent intent = new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES");
        intent.setData(Uri.parse("package:" + requireActivity().getPackageName()));
        this.requestInstallPackagesLauncher.launch(intent);
    }

    @SuppressLint({"QueryPermissionsNeeded"})
    public final void requestManageExternalStoragePermissionNow(@NotNull PermissionBuilder permissionBuilder, @NotNull ChainTask chainTask) {
        boolean isExternalStorageManager;
        Intrinsics.checkNotNullParameter(permissionBuilder, "permissionBuilder");
        Intrinsics.checkNotNullParameter(chainTask, "chainTask");
        this.pb = permissionBuilder;
        this.task = chainTask;
        if (Build.VERSION.SDK_INT >= 30) {
            isExternalStorageManager = Environment.isExternalStorageManager();
            if (!isExternalStorageManager) {
                Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
                intent.setData(Uri.parse("package:" + requireActivity().getPackageName()));
                if (intent.resolveActivity(requireActivity().getPackageManager()) == null) {
                    intent = new Intent("android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION");
                }
                this.requestManageExternalStorageLauncher.launch(intent);
                return;
            }
        }
        m52281z0();
    }

    public final void requestNotificationPermissionNow(@NotNull PermissionBuilder permissionBuilder, @NotNull ChainTask chainTask) {
        Intrinsics.checkNotNullParameter(permissionBuilder, "permissionBuilder");
        Intrinsics.checkNotNullParameter(chainTask, "chainTask");
        this.pb = permissionBuilder;
        this.task = chainTask;
        Intent intent = new Intent("android.settings.APP_NOTIFICATION_SETTINGS");
        intent.putExtra("android.provider.extra.APP_PACKAGE", requireActivity().getPackageName());
        this.requestNotificationLauncher.launch(intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void requestNow(@NotNull PermissionBuilder permissionBuilder, @NotNull Set<String> permissions, @NotNull ChainTask chainTask) {
        Intrinsics.checkNotNullParameter(permissionBuilder, "permissionBuilder");
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(chainTask, "chainTask");
        this.pb = permissionBuilder;
        this.task = chainTask;
        ActivityResultLauncher<String[]> activityResultLauncher = this.requestNormalPermissionLauncher;
        Object[] array = permissions.toArray(new String[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        activityResultLauncher.launch(array);
    }

    public final void requestSystemAlertWindowPermissionNow(@NotNull PermissionBuilder permissionBuilder, @NotNull ChainTask chainTask) {
        Intrinsics.checkNotNullParameter(permissionBuilder, "permissionBuilder");
        Intrinsics.checkNotNullParameter(chainTask, "chainTask");
        this.pb = permissionBuilder;
        this.task = chainTask;
        if (Settings.canDrawOverlays(requireContext())) {
            m52274C0();
            return;
        }
        Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
        intent.setData(Uri.parse("package:" + requireActivity().getPackageName()));
        this.requestSystemAlertWindowLauncher.launch(intent);
    }

    public final void requestWriteSettingsPermissionNow(@NotNull PermissionBuilder permissionBuilder, @NotNull ChainTask chainTask) {
        Intrinsics.checkNotNullParameter(permissionBuilder, "permissionBuilder");
        Intrinsics.checkNotNullParameter(chainTask, "chainTask");
        this.pb = permissionBuilder;
        this.task = chainTask;
        if (Settings.System.canWrite(requireContext())) {
            m52275D0();
            return;
        }
        Intent intent = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
        intent.setData(Uri.parse("package:" + requireActivity().getPackageName()));
        this.requestWriteSettingsLauncher.launch(intent);
    }

    /* renamed from: u0 */
    public final boolean m52277u0() {
        if (this.pb != null && this.task != null) {
            return true;
        }
        Log.w("PermissionX", "PermissionBuilder and ChainTask should not be null at this time, so we can do nothing in this case.");
        return false;
    }

    /* renamed from: w0 */
    public final void m52278w0(final boolean granted) {
        if (m52277u0()) {
            m52276E0(new Function0<Unit>() { // from class: com.permissionx.guolindev.request.InvisibleFragment$onRequestBackgroundLocationPermissionResult$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Code restructure failed: missing block: B:28:0x0075, code lost:
                
                    if (r5.explainReasonCallbackWithBeforeParam != null) goto L28;
                 */
                /* JADX WARN: Removed duplicated region for block: B:43:0x011d  */
                /* JADX WARN: Removed duplicated region for block: B:51:0x0135  */
                /* JADX WARN: Removed duplicated region for block: B:54:0x0139  */
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void invoke2() {
                    /*
                        Method dump skipped, instructions count: 318
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.permissionx.guolindev.request.InvisibleFragment$onRequestBackgroundLocationPermissionResult$1.invoke2():void");
                }
            });
        }
    }

    /* renamed from: x0 */
    public final void m52279x0(final boolean granted) {
        if (m52277u0()) {
            m52276E0(new Function0<Unit>() { // from class: com.permissionx.guolindev.request.InvisibleFragment$onRequestBodySensorsBackgroundPermissionResult$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Code restructure failed: missing block: B:28:0x0075, code lost:
                
                    if (r5.explainReasonCallbackWithBeforeParam != null) goto L28;
                 */
                /* JADX WARN: Removed duplicated region for block: B:43:0x011d  */
                /* JADX WARN: Removed duplicated region for block: B:51:0x0135  */
                /* JADX WARN: Removed duplicated region for block: B:54:0x0139  */
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void invoke2() {
                    /*
                        Method dump skipped, instructions count: 318
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.permissionx.guolindev.request.C13082x1fbc44b5.invoke2():void");
                }
            });
        }
    }

    /* renamed from: y0 */
    public final void m52280y0() {
        if (m52277u0()) {
            m52276E0(new Function0<Unit>() { // from class: com.permissionx.guolindev.request.InvisibleFragment$onRequestInstallPackagesPermissionResult$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    PermissionBuilder permissionBuilder;
                    PermissionBuilder permissionBuilder2;
                    PermissionBuilder permissionBuilder3;
                    ChainTask chainTask;
                    List<String> listOf;
                    PermissionBuilder permissionBuilder4;
                    ChainTask chainTask2;
                    List<String> listOf2;
                    PermissionBuilder permissionBuilder5;
                    ChainTask chainTask3;
                    ChainTask chainTask4 = null;
                    if (InvisibleFragment.this.requireActivity().getPackageManager().canRequestPackageInstalls()) {
                        chainTask3 = InvisibleFragment.this.task;
                        if (chainTask3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("task");
                        } else {
                            chainTask4 = chainTask3;
                        }
                        chainTask4.finish();
                        return;
                    }
                    permissionBuilder = InvisibleFragment.this.pb;
                    if (permissionBuilder == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("pb");
                        permissionBuilder = null;
                    }
                    if (permissionBuilder.explainReasonCallback == null) {
                        permissionBuilder5 = InvisibleFragment.this.pb;
                        if (permissionBuilder5 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("pb");
                            permissionBuilder5 = null;
                        }
                        if (permissionBuilder5.explainReasonCallbackWithBeforeParam == null) {
                            return;
                        }
                    }
                    permissionBuilder2 = InvisibleFragment.this.pb;
                    if (permissionBuilder2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("pb");
                        permissionBuilder2 = null;
                    }
                    if (permissionBuilder2.explainReasonCallbackWithBeforeParam != null) {
                        permissionBuilder4 = InvisibleFragment.this.pb;
                        if (permissionBuilder4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("pb");
                            permissionBuilder4 = null;
                        }
                        ExplainReasonCallbackWithBeforeParam explainReasonCallbackWithBeforeParam = permissionBuilder4.explainReasonCallbackWithBeforeParam;
                        Intrinsics.checkNotNull(explainReasonCallbackWithBeforeParam);
                        chainTask2 = InvisibleFragment.this.task;
                        if (chainTask2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("task");
                        } else {
                            chainTask4 = chainTask2;
                        }
                        ExplainScope explainReasonScope = chainTask4.getExplainReasonScope();
                        listOf2 = CollectionsKt__CollectionsJVMKt.listOf(RequestInstallPackagesPermission.REQUEST_INSTALL_PACKAGES);
                        explainReasonCallbackWithBeforeParam.onExplainReason(explainReasonScope, listOf2, false);
                        return;
                    }
                    permissionBuilder3 = InvisibleFragment.this.pb;
                    if (permissionBuilder3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("pb");
                        permissionBuilder3 = null;
                    }
                    ExplainReasonCallback explainReasonCallback = permissionBuilder3.explainReasonCallback;
                    Intrinsics.checkNotNull(explainReasonCallback);
                    chainTask = InvisibleFragment.this.task;
                    if (chainTask == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("task");
                    } else {
                        chainTask4 = chainTask;
                    }
                    ExplainScope explainReasonScope2 = chainTask4.getExplainReasonScope();
                    listOf = CollectionsKt__CollectionsJVMKt.listOf(RequestInstallPackagesPermission.REQUEST_INSTALL_PACKAGES);
                    explainReasonCallback.onExplainReason(explainReasonScope2, listOf);
                }
            });
        }
    }

    /* renamed from: z0 */
    public final void m52281z0() {
        if (m52277u0()) {
            m52276E0(new Function0<Unit>() { // from class: com.permissionx.guolindev.request.InvisibleFragment$onRequestManageExternalStoragePermissionResult$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    ChainTask chainTask;
                    boolean isExternalStorageManager;
                    PermissionBuilder permissionBuilder;
                    PermissionBuilder permissionBuilder2;
                    PermissionBuilder permissionBuilder3;
                    ChainTask chainTask2;
                    List<String> listOf;
                    PermissionBuilder permissionBuilder4;
                    ChainTask chainTask3;
                    List<String> listOf2;
                    PermissionBuilder permissionBuilder5;
                    ChainTask chainTask4;
                    ChainTask chainTask5 = null;
                    if (Build.VERSION.SDK_INT >= 30) {
                        isExternalStorageManager = Environment.isExternalStorageManager();
                        if (isExternalStorageManager) {
                            chainTask4 = InvisibleFragment.this.task;
                            if (chainTask4 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("task");
                            } else {
                                chainTask5 = chainTask4;
                            }
                            chainTask5.finish();
                            return;
                        }
                        permissionBuilder = InvisibleFragment.this.pb;
                        if (permissionBuilder == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("pb");
                            permissionBuilder = null;
                        }
                        if (permissionBuilder.explainReasonCallback == null) {
                            permissionBuilder5 = InvisibleFragment.this.pb;
                            if (permissionBuilder5 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("pb");
                                permissionBuilder5 = null;
                            }
                            if (permissionBuilder5.explainReasonCallbackWithBeforeParam == null) {
                                return;
                            }
                        }
                        permissionBuilder2 = InvisibleFragment.this.pb;
                        if (permissionBuilder2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("pb");
                            permissionBuilder2 = null;
                        }
                        if (permissionBuilder2.explainReasonCallbackWithBeforeParam != null) {
                            permissionBuilder4 = InvisibleFragment.this.pb;
                            if (permissionBuilder4 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("pb");
                                permissionBuilder4 = null;
                            }
                            ExplainReasonCallbackWithBeforeParam explainReasonCallbackWithBeforeParam = permissionBuilder4.explainReasonCallbackWithBeforeParam;
                            Intrinsics.checkNotNull(explainReasonCallbackWithBeforeParam);
                            chainTask3 = InvisibleFragment.this.task;
                            if (chainTask3 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("task");
                            } else {
                                chainTask5 = chainTask3;
                            }
                            ExplainScope explainReasonScope = chainTask5.getExplainReasonScope();
                            listOf2 = CollectionsKt__CollectionsJVMKt.listOf(RequestManageExternalStoragePermission.MANAGE_EXTERNAL_STORAGE);
                            explainReasonCallbackWithBeforeParam.onExplainReason(explainReasonScope, listOf2, false);
                            return;
                        }
                        permissionBuilder3 = InvisibleFragment.this.pb;
                        if (permissionBuilder3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("pb");
                            permissionBuilder3 = null;
                        }
                        ExplainReasonCallback explainReasonCallback = permissionBuilder3.explainReasonCallback;
                        Intrinsics.checkNotNull(explainReasonCallback);
                        chainTask2 = InvisibleFragment.this.task;
                        if (chainTask2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("task");
                        } else {
                            chainTask5 = chainTask2;
                        }
                        ExplainScope explainReasonScope2 = chainTask5.getExplainReasonScope();
                        listOf = CollectionsKt__CollectionsJVMKt.listOf(RequestManageExternalStoragePermission.MANAGE_EXTERNAL_STORAGE);
                        explainReasonCallback.onExplainReason(explainReasonScope2, listOf);
                        return;
                    }
                    chainTask = InvisibleFragment.this.task;
                    if (chainTask == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("task");
                    } else {
                        chainTask5 = chainTask;
                    }
                    chainTask5.finish();
                }
            });
        }
    }
}
