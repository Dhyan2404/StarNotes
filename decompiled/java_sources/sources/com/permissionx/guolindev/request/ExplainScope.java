package com.permissionx.guolindev.request;

import com.permissionx.guolindev.dialog.RationaleDialog;
import com.permissionx.guolindev.dialog.RationaleDialogFragment;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b\u0016\u0010\u0017J2\u0010\t\u001a\u00020\b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u0007J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\fR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/permissionx/guolindev/request/ExplainScope;", "", "", "", "permissions", "message", "positiveText", "negativeText", "", "showRequestReasonDialog", "Lcom/permissionx/guolindev/dialog/RationaleDialog;", "dialog", "Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;", "dialogFragment", "Lcom/permissionx/guolindev/request/PermissionBuilder;", "a", "Lcom/permissionx/guolindev/request/PermissionBuilder;", "pb", "Lcom/permissionx/guolindev/request/ChainTask;", "b", "Lcom/permissionx/guolindev/request/ChainTask;", "chainTask", Constants.CONSTRUCTOR_NAME, "(Lcom/permissionx/guolindev/request/PermissionBuilder;Lcom/permissionx/guolindev/request/ChainTask;)V", "permissionx_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes9.dex */
public final class ExplainScope {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final PermissionBuilder pb;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final ChainTask chainTask;

    public ExplainScope(@NotNull PermissionBuilder pb, @NotNull ChainTask chainTask) {
        Intrinsics.checkNotNullParameter(pb, "pb");
        Intrinsics.checkNotNullParameter(chainTask, "chainTask");
        this.pb = pb;
        this.chainTask = chainTask;
    }

    public static /* synthetic */ void showRequestReasonDialog$default(ExplainScope explainScope, List list, String str, String str2, String str3, int i, Object obj) {
        if ((i & 8) != 0) {
            str3 = null;
        }
        explainScope.showRequestReasonDialog(list, str, str2, str3);
    }

    @JvmOverloads
    public final void showRequestReasonDialog(@NotNull List<String> permissions, @NotNull String message, @NotNull String positiveText) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(positiveText, "positiveText");
        showRequestReasonDialog$default(this, permissions, message, positiveText, null, 8, null);
    }

    @JvmOverloads
    public final void showRequestReasonDialog(@NotNull List<String> permissions, @NotNull String message, @NotNull String positiveText, @Nullable String negativeText) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(positiveText, "positiveText");
        this.pb.showHandlePermissionDialog(this.chainTask, true, permissions, message, positiveText, negativeText);
    }

    public final void showRequestReasonDialog(@NotNull RationaleDialog dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        this.pb.showHandlePermissionDialog(this.chainTask, true, dialog);
    }

    public final void showRequestReasonDialog(@NotNull RationaleDialogFragment dialogFragment) {
        Intrinsics.checkNotNullParameter(dialogFragment, "dialogFragment");
        this.pb.showHandlePermissionDialog(this.chainTask, true, dialogFragment);
    }
}
