package com.permissionx.guolindev.request;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.DialogInterface;
import android.view.View;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.permissionx.guolindev.PermissionX;
import com.permissionx.guolindev.callback.ExplainReasonCallback;
import com.permissionx.guolindev.callback.ExplainReasonCallbackWithBeforeParam;
import com.permissionx.guolindev.callback.ForwardToSettingsCallback;
import com.permissionx.guolindev.callback.RequestCallback;
import com.permissionx.guolindev.dialog.DefaultDialog;
import com.permissionx.guolindev.dialog.RationaleDialog;
import com.permissionx.guolindev.dialog.RationaleDialogFragment;
import com.permissionx.guolindev.request.PermissionBuilder;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 l2\u00020\u0001:\u0001lB7\u0012\b\u0010i\u001a\u0004\u0018\u000107\u0012\b\u0010A\u001a\u0004\u0018\u00010>\u0012\f\u0010K\u001a\b\u0012\u0004\u0012\u00020\b0J\u0012\f\u0010M\u001a\b\u0012\u0004\u0012\u00020\b0J¢\u0006\u0004\bj\u0010kJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0003J\u0016\u0010\n\u001a\u00020\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\r\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u000fJ\u0006\u0010\u0011\u001a\u00020\u0000J\u0016\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012J\u0010\u0010\u0017\u001a\u00020\u00022\b\u0010\f\u001a\u0004\u0018\u00010\u0016J>\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001a2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\b2\b\u0010\u001e\u001a\u0004\u0018\u00010\bJ\u001e\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010!\u001a\u00020 J\u001e\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020\"J\u001c\u0010%\u001a\u00020\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0$2\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010&\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010'\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010(\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010)\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010*\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010+\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010,\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018J\u0006\u0010-\u001a\u00020\u001aJ\u0006\u0010.\u001a\u00020\u001aJ\u0006\u0010/\u001a\u00020\u001aJ\u0006\u00100\u001a\u00020\u001aJ\u0006\u00101\u001a\u00020\u001aJ\u0006\u00102\u001a\u00020\u001aJ\u0006\u00103\u001a\u00020\u001aJ\u000f\u00106\u001a\u00020\u0002H\u0000¢\u0006\u0004\b4\u00105R\"\u00108\u001a\u0002078\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u0018\u0010A\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0016\u0010\u0014\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010CR\u0016\u0010F\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010CR\u0018\u0010H\u001a\u0004\u0018\u00010G8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u001c\u0010K\u001a\b\u0012\u0004\u0012\u00020\b0J8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u001c\u0010M\u001a\b\u0012\u0004\u0012\u00020\b0J8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bM\u0010LR\u0016\u0010\u0011\u001a\u00020\u001a8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010NR\u0016\u0010O\u001a\u00020\u001a8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bO\u0010NR\u001c\u0010P\u001a\b\u0012\u0004\u0012\u00020\b0J8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bP\u0010LR\u001c\u0010Q\u001a\b\u0012\u0004\u0012\u00020\b0J8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bQ\u0010LR\u001c\u0010R\u001a\b\u0012\u0004\u0012\u00020\b0J8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bR\u0010LR\u001c\u0010S\u001a\b\u0012\u0004\u0012\u00020\b0J8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bS\u0010LR\u001c\u0010T\u001a\b\u0012\u0004\u0012\u00020\b0J8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bT\u0010LR\u001c\u0010U\u001a\b\u0012\u0004\u0012\u00020\b0J8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bU\u0010LR\u0018\u0010V\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bV\u0010WR\u0018\u0010X\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bX\u0010YR\u0018\u0010Z\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u0018\u0010\\\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\u0014\u0010a\u001a\u00020^8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b_\u0010`R\u0014\u0010e\u001a\u00020b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bc\u0010dR\u0011\u0010h\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\bf\u0010g¨\u0006m"}, m61528d2 = {"Lcom/permissionx/guolindev/request/PermissionBuilder;", "", "", "q", "j", C4921e.f26537n, "i", "", "", "permissions", C6997f.f39671c, "Lcom/permissionx/guolindev/callback/ExplainReasonCallback;", "callback", "onExplainRequestReason", "Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;", "Lcom/permissionx/guolindev/callback/ForwardToSettingsCallback;", "onForwardToSettings", "explainReasonBeforeRequest", "", "lightColor", "darkColor", "setDialogTintColor", "Lcom/permissionx/guolindev/callback/RequestCallback;", AbstractLogger.REQUEST, "Lcom/permissionx/guolindev/request/ChainTask;", "chainTask", "", "showReasonOrGoSettings", "message", "positiveText", "negativeText", "showHandlePermissionDialog", "Lcom/permissionx/guolindev/dialog/RationaleDialog;", "dialog", "Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;", "dialogFragment", "", "requestNow", "requestAccessBackgroundLocationPermissionNow", "requestSystemAlertWindowPermissionNow", "requestWriteSettingsPermissionNow", "requestManageExternalStoragePermissionNow", "requestInstallPackagePermissionNow", "requestNotificationPermissionNow", "requestBodySensorsBackgroundPermissionNow", "shouldRequestBackgroundLocationPermission", "shouldRequestSystemAlertWindowPermission", "shouldRequestWriteSettingsPermission", "shouldRequestManageExternalStoragePermission", "shouldRequestInstallPackagesPermission", "shouldRequestNotificationPermission", "shouldRequestBodySensorsBackgroundPermission", "endRequest$permissionx_release", "()V", "endRequest", "Landroidx/fragment/app/FragmentActivity;", ActivityChooserModel.f1429r, "Landroidx/fragment/app/FragmentActivity;", "getActivity", "()Landroidx/fragment/app/FragmentActivity;", "setActivity", "(Landroidx/fragment/app/FragmentActivity;)V", "Landroidx/fragment/app/Fragment;", "a", "Landroidx/fragment/app/Fragment;", "fragment", "b", "I", "c", "d", "originRequestOrientation", "Landroid/app/Dialog;", "currentDialog", "Landroid/app/Dialog;", "", "normalPermissions", "Ljava/util/Set;", "specialPermissions", Constants.HASIDCALL_INDEX_SIG, "showDialogCalled", "permissionsWontRequest", "grantedPermissions", "deniedPermissions", "permanentDeniedPermissions", "tempPermanentDeniedPermissions", "forwardPermissions", "requestCallback", "Lcom/permissionx/guolindev/callback/RequestCallback;", "explainReasonCallback", "Lcom/permissionx/guolindev/callback/ExplainReasonCallback;", "explainReasonCallbackWithBeforeParam", "Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;", "forwardToSettingsCallback", "Lcom/permissionx/guolindev/callback/ForwardToSettingsCallback;", "Landroidx/fragment/app/FragmentManager;", C6998g.f39679a, "()Landroidx/fragment/app/FragmentManager;", "fragmentManager", "Lcom/permissionx/guolindev/request/InvisibleFragment;", C6999h.f39688c, "()Lcom/permissionx/guolindev/request/InvisibleFragment;", "invisibleFragment", "getTargetSdkVersion", "()I", "targetSdkVersion", "fragmentActivity", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Ljava/util/Set;Ljava/util/Set;)V", "Companion", "permissionx_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes9.dex */
public final class PermissionBuilder {

    /* renamed from: e */
    @NotNull
    public static final String f63247e = "InvisibleFragment";

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public Fragment fragment;
    public FragmentActivity activity;

    /* renamed from: b, reason: from kotlin metadata */
    public int lightColor;

    /* renamed from: c, reason: from kotlin metadata */
    public int darkColor;

    @JvmField
    @Nullable
    public Dialog currentDialog;

    /* renamed from: d, reason: from kotlin metadata */
    public int originRequestOrientation;

    @JvmField
    @NotNull
    public Set<String> deniedPermissions;

    @JvmField
    public boolean explainReasonBeforeRequest;

    @JvmField
    @Nullable
    public ExplainReasonCallback explainReasonCallback;

    @JvmField
    @Nullable
    public ExplainReasonCallbackWithBeforeParam explainReasonCallbackWithBeforeParam;

    @JvmField
    @NotNull
    public Set<String> forwardPermissions;

    @JvmField
    @Nullable
    public ForwardToSettingsCallback forwardToSettingsCallback;

    @JvmField
    @NotNull
    public Set<String> grantedPermissions;

    @JvmField
    @NotNull
    public Set<String> normalPermissions;

    @JvmField
    @NotNull
    public Set<String> permanentDeniedPermissions;

    @JvmField
    @NotNull
    public Set<String> permissionsWontRequest;

    @JvmField
    @Nullable
    public RequestCallback requestCallback;

    @JvmField
    public boolean showDialogCalled;

    @JvmField
    @NotNull
    public Set<String> specialPermissions;

    @JvmField
    @NotNull
    public Set<String> tempPermanentDeniedPermissions;

    public PermissionBuilder(@Nullable FragmentActivity fragmentActivity, @Nullable Fragment fragment, @NotNull Set<String> normalPermissions, @NotNull Set<String> specialPermissions) {
        Intrinsics.checkNotNullParameter(normalPermissions, "normalPermissions");
        Intrinsics.checkNotNullParameter(specialPermissions, "specialPermissions");
        this.lightColor = -1;
        this.darkColor = -1;
        this.originRequestOrientation = -1;
        this.permissionsWontRequest = new LinkedHashSet();
        this.grantedPermissions = new LinkedHashSet();
        this.deniedPermissions = new LinkedHashSet();
        this.permanentDeniedPermissions = new LinkedHashSet();
        this.tempPermanentDeniedPermissions = new LinkedHashSet();
        this.forwardPermissions = new LinkedHashSet();
        if (fragmentActivity != null) {
            setActivity(fragmentActivity);
        }
        if (fragmentActivity == null && fragment != null) {
            FragmentActivity requireActivity = fragment.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "fragment.requireActivity()");
            setActivity(requireActivity);
        }
        this.fragment = fragment;
        this.normalPermissions = normalPermissions;
        this.specialPermissions = specialPermissions;
    }

    /* renamed from: l */
    public static final void m52287l(RationaleDialog dialog, boolean z, ChainTask chainTask, List permissions, PermissionBuilder this$0, View view) {
        Intrinsics.checkNotNullParameter(dialog, "$dialog");
        Intrinsics.checkNotNullParameter(chainTask, "$chainTask");
        Intrinsics.checkNotNullParameter(permissions, "$permissions");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        dialog.dismiss();
        if (z) {
            chainTask.requestAgain(permissions);
        } else {
            this$0.m52292f(permissions);
        }
    }

    /* renamed from: m */
    public static final void m52288m(RationaleDialog dialog, ChainTask chainTask, View view) {
        Intrinsics.checkNotNullParameter(dialog, "$dialog");
        Intrinsics.checkNotNullParameter(chainTask, "$chainTask");
        dialog.dismiss();
        chainTask.finish();
    }

    /* renamed from: n */
    public static final void m52289n(PermissionBuilder this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.currentDialog = null;
    }

    /* renamed from: o */
    public static final void m52290o(RationaleDialogFragment dialogFragment, boolean z, ChainTask chainTask, List permissions, PermissionBuilder this$0, View view) {
        Intrinsics.checkNotNullParameter(dialogFragment, "$dialogFragment");
        Intrinsics.checkNotNullParameter(chainTask, "$chainTask");
        Intrinsics.checkNotNullParameter(permissions, "$permissions");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        dialogFragment.dismiss();
        if (z) {
            chainTask.requestAgain(permissions);
        } else {
            this$0.m52292f(permissions);
        }
    }

    /* renamed from: p */
    public static final void m52291p(RationaleDialogFragment dialogFragment, ChainTask chainTask, View view) {
        Intrinsics.checkNotNullParameter(dialogFragment, "$dialogFragment");
        Intrinsics.checkNotNullParameter(chainTask, "$chainTask");
        dialogFragment.dismiss();
        chainTask.finish();
    }

    public final void endRequest$permissionx_release() {
        m52296j();
        m52297k();
    }

    @NotNull
    public final PermissionBuilder explainReasonBeforeRequest() {
        this.explainReasonBeforeRequest = true;
        return this;
    }

    /* renamed from: f */
    public final void m52292f(List<String> permissions) {
        this.forwardPermissions.clear();
        this.forwardPermissions.addAll(permissions);
        m52294h().forwardToSettings();
    }

    /* renamed from: g */
    public final FragmentManager m52293g() {
        Fragment fragment = this.fragment;
        FragmentManager childFragmentManager = fragment != null ? fragment.getChildFragmentManager() : null;
        if (childFragmentManager != null) {
            return childFragmentManager;
        }
        FragmentManager supportFragmentManager = getActivity().getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "activity.supportFragmentManager");
        return supportFragmentManager;
    }

    @NotNull
    public final FragmentActivity getActivity() {
        FragmentActivity fragmentActivity = this.activity;
        if (fragmentActivity != null) {
            return fragmentActivity;
        }
        Intrinsics.throwUninitializedPropertyAccessException(ActivityChooserModel.f1429r);
        return null;
    }

    public final int getTargetSdkVersion() {
        return getActivity().getApplicationInfo().targetSdkVersion;
    }

    /* renamed from: h */
    public final InvisibleFragment m52294h() {
        Fragment findFragmentByTag = m52293g().findFragmentByTag(f63247e);
        if (findFragmentByTag != null) {
            return (InvisibleFragment) findFragmentByTag;
        }
        InvisibleFragment invisibleFragment = new InvisibleFragment();
        m52293g().beginTransaction().add(invisibleFragment, f63247e).commitNowAllowingStateLoss();
        return invisibleFragment;
    }

    @SuppressLint({"SourceLockedOrientationActivity"})
    /* renamed from: i */
    public final void m52295i() {
        this.originRequestOrientation = getActivity().getRequestedOrientation();
        int i = getActivity().getResources().getConfiguration().orientation;
        if (i == 1) {
            getActivity().setRequestedOrientation(7);
        } else {
            if (i != 2) {
                return;
            }
            getActivity().setRequestedOrientation(6);
        }
    }

    /* renamed from: j */
    public final void m52296j() {
        Fragment findFragmentByTag = m52293g().findFragmentByTag(f63247e);
        if (findFragmentByTag != null) {
            m52293g().beginTransaction().remove(findFragmentByTag).commitNowAllowingStateLoss();
        }
    }

    /* renamed from: k */
    public final void m52297k() {
        getActivity().setRequestedOrientation(this.originRequestOrientation);
    }

    @NotNull
    public final PermissionBuilder onExplainRequestReason(@Nullable ExplainReasonCallback callback) {
        this.explainReasonCallback = callback;
        return this;
    }

    @NotNull
    public final PermissionBuilder onForwardToSettings(@Nullable ForwardToSettingsCallback callback) {
        this.forwardToSettingsCallback = callback;
        return this;
    }

    /* renamed from: q */
    public final void m52298q() {
        m52295i();
        RequestChain requestChain = new RequestChain();
        requestChain.addTaskToChain$permissionx_release(new RequestNormalPermissions(this));
        requestChain.addTaskToChain$permissionx_release(new RequestBackgroundLocationPermission(this));
        requestChain.addTaskToChain$permissionx_release(new RequestSystemAlertWindowPermission(this));
        requestChain.addTaskToChain$permissionx_release(new RequestWriteSettingsPermission(this));
        requestChain.addTaskToChain$permissionx_release(new RequestManageExternalStoragePermission(this));
        requestChain.addTaskToChain$permissionx_release(new RequestInstallPackagesPermission(this));
        requestChain.addTaskToChain$permissionx_release(new RequestNotificationPermission(this));
        requestChain.addTaskToChain$permissionx_release(new RequestBodySensorsBackgroundPermission(this));
        requestChain.runTask$permissionx_release();
    }

    public final void request(@Nullable RequestCallback callback) {
        this.requestCallback = callback;
        m52298q();
    }

    public final void requestAccessBackgroundLocationPermissionNow(@NotNull ChainTask chainTask) {
        Intrinsics.checkNotNullParameter(chainTask, "chainTask");
        m52294h().requestAccessBackgroundLocationPermissionNow(this, chainTask);
    }

    public final void requestBodySensorsBackgroundPermissionNow(@NotNull ChainTask chainTask) {
        Intrinsics.checkNotNullParameter(chainTask, "chainTask");
        m52294h().requestBodySensorsBackgroundPermissionNow(this, chainTask);
    }

    public final void requestInstallPackagePermissionNow(@NotNull ChainTask chainTask) {
        Intrinsics.checkNotNullParameter(chainTask, "chainTask");
        m52294h().requestInstallPackagesPermissionNow(this, chainTask);
    }

    public final void requestManageExternalStoragePermissionNow(@NotNull ChainTask chainTask) {
        Intrinsics.checkNotNullParameter(chainTask, "chainTask");
        m52294h().requestManageExternalStoragePermissionNow(this, chainTask);
    }

    public final void requestNotificationPermissionNow(@NotNull ChainTask chainTask) {
        Intrinsics.checkNotNullParameter(chainTask, "chainTask");
        m52294h().requestNotificationPermissionNow(this, chainTask);
    }

    public final void requestNow(@NotNull Set<String> permissions, @NotNull ChainTask chainTask) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(chainTask, "chainTask");
        m52294h().requestNow(this, permissions, chainTask);
    }

    public final void requestSystemAlertWindowPermissionNow(@NotNull ChainTask chainTask) {
        Intrinsics.checkNotNullParameter(chainTask, "chainTask");
        m52294h().requestSystemAlertWindowPermissionNow(this, chainTask);
    }

    public final void requestWriteSettingsPermissionNow(@NotNull ChainTask chainTask) {
        Intrinsics.checkNotNullParameter(chainTask, "chainTask");
        m52294h().requestWriteSettingsPermissionNow(this, chainTask);
    }

    public final void setActivity(@NotNull FragmentActivity fragmentActivity) {
        Intrinsics.checkNotNullParameter(fragmentActivity, "<set-?>");
        this.activity = fragmentActivity;
    }

    @NotNull
    public final PermissionBuilder setDialogTintColor(int lightColor, int darkColor) {
        this.lightColor = lightColor;
        this.darkColor = darkColor;
        return this;
    }

    public final boolean shouldRequestBackgroundLocationPermission() {
        return this.specialPermissions.contains(RequestBackgroundLocationPermission.ACCESS_BACKGROUND_LOCATION);
    }

    public final boolean shouldRequestBodySensorsBackgroundPermission() {
        return this.specialPermissions.contains(RequestBodySensorsBackgroundPermission.BODY_SENSORS_BACKGROUND);
    }

    public final boolean shouldRequestInstallPackagesPermission() {
        return this.specialPermissions.contains(RequestInstallPackagesPermission.REQUEST_INSTALL_PACKAGES);
    }

    public final boolean shouldRequestManageExternalStoragePermission() {
        return this.specialPermissions.contains(RequestManageExternalStoragePermission.MANAGE_EXTERNAL_STORAGE);
    }

    public final boolean shouldRequestNotificationPermission() {
        return this.specialPermissions.contains(PermissionX.permission.POST_NOTIFICATIONS);
    }

    public final boolean shouldRequestSystemAlertWindowPermission() {
        return this.specialPermissions.contains("android.permission.SYSTEM_ALERT_WINDOW");
    }

    public final boolean shouldRequestWriteSettingsPermission() {
        return this.specialPermissions.contains("android.permission.WRITE_SETTINGS");
    }

    public final void showHandlePermissionDialog(@NotNull ChainTask chainTask, boolean showReasonOrGoSettings, @NotNull List<String> permissions, @NotNull String message, @NotNull String positiveText, @Nullable String negativeText) {
        Intrinsics.checkNotNullParameter(chainTask, "chainTask");
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(positiveText, "positiveText");
        showHandlePermissionDialog(chainTask, showReasonOrGoSettings, new DefaultDialog(getActivity(), permissions, message, positiveText, negativeText, this.lightColor, this.darkColor));
    }

    @NotNull
    public final PermissionBuilder onExplainRequestReason(@Nullable ExplainReasonCallbackWithBeforeParam callback) {
        this.explainReasonCallbackWithBeforeParam = callback;
        return this;
    }

    public final void showHandlePermissionDialog(@NotNull final ChainTask chainTask, final boolean showReasonOrGoSettings, @NotNull final RationaleDialog dialog) {
        Intrinsics.checkNotNullParameter(chainTask, "chainTask");
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        this.showDialogCalled = true;
        final List<String> permissionsToRequest = dialog.getPermissionsToRequest();
        Intrinsics.checkNotNullExpressionValue(permissionsToRequest, "dialog.permissionsToRequest");
        if (permissionsToRequest.isEmpty()) {
            chainTask.finish();
            return;
        }
        this.currentDialog = dialog;
        dialog.show();
        if ((dialog instanceof DefaultDialog) && ((DefaultDialog) dialog).isPermissionLayoutEmpty$permissionx_release()) {
            dialog.dismiss();
            chainTask.finish();
        }
        View positiveButton = dialog.getPositiveButton();
        Intrinsics.checkNotNullExpressionValue(positiveButton, "dialog.positiveButton");
        View negativeButton = dialog.getNegativeButton();
        dialog.setCancelable(false);
        dialog.setCanceledOnTouchOutside(false);
        positiveButton.setClickable(true);
        positiveButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.g3l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PermissionBuilder.m52287l(RationaleDialog.this, showReasonOrGoSettings, chainTask, permissionsToRequest, this, view);
            }
        });
        if (negativeButton != null) {
            negativeButton.setClickable(true);
            negativeButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.h3l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PermissionBuilder.m52288m(RationaleDialog.this, chainTask, view);
                }
            });
        }
        Dialog dialog2 = this.currentDialog;
        if (dialog2 != null) {
            dialog2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.sunia.HTREnginev2.i3l
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    PermissionBuilder.m52289n(PermissionBuilder.this, dialogInterface);
                }
            });
        }
    }

    public final void showHandlePermissionDialog(@NotNull final ChainTask chainTask, final boolean showReasonOrGoSettings, @NotNull final RationaleDialogFragment dialogFragment) {
        Intrinsics.checkNotNullParameter(chainTask, "chainTask");
        Intrinsics.checkNotNullParameter(dialogFragment, "dialogFragment");
        this.showDialogCalled = true;
        final List<String> permissionsToRequest = dialogFragment.getPermissionsToRequest();
        Intrinsics.checkNotNullExpressionValue(permissionsToRequest, "dialogFragment.permissionsToRequest");
        if (permissionsToRequest.isEmpty()) {
            chainTask.finish();
            return;
        }
        dialogFragment.showNow(m52293g(), "PermissionXRationaleDialogFragment");
        View positiveButton = dialogFragment.getPositiveButton();
        Intrinsics.checkNotNullExpressionValue(positiveButton, "dialogFragment.positiveButton");
        View negativeButton = dialogFragment.getNegativeButton();
        dialogFragment.setCancelable(false);
        positiveButton.setClickable(true);
        positiveButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.e3l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PermissionBuilder.m52290o(RationaleDialogFragment.this, showReasonOrGoSettings, chainTask, permissionsToRequest, this, view);
            }
        });
        if (negativeButton != null) {
            negativeButton.setClickable(true);
            negativeButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.f3l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PermissionBuilder.m52291p(RationaleDialogFragment.this, chainTask, view);
                }
            });
        }
    }
}
