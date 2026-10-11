package com.onyx.galaxy.note.common.view;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.appcompat.app.AppCompatDialog;
import androidx.fragment.app.C1126e;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.DialogImportFileProgressBinding;
import com.onyx.galaxy.note.editor.data.ImportProgressArgs;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\b\u0010\t\u001a\u00020\u0004H\u0002R\u001b\u0010\u000f\u001a\u00020\n8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;", "Landroidx/appcompat/app/AppCompatDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;", "args", "setProgressInfo", C6998g.f39679a, "Lcom/onyx/galaxy/note/databinding/DialogImportFileProgressBinding;", "j", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/DialogImportFileProgressBinding;", "binding", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class ImportProgressDialog extends AppCompatDialog {

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImportProgressDialog(@NotNull final Context context) {
        super(context, C10651R.style.fullScreenDialog);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogImportFileProgressBinding>() { // from class: com.onyx.galaxy.note.common.view.ImportProgressDialog$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogImportFileProgressBinding invoke() {
                DialogImportFileProgressBinding inflate = DialogImportFileProgressBinding.inflate(LayoutInflater.from(context));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
    }

    /* renamed from: g */
    public final void m45169g() {
        setCanceledOnTouchOutside(false);
        setCancelable(false);
    }

    @NotNull
    public final DialogImportFileProgressBinding getBinding() {
        return (DialogImportFileProgressBinding) this.binding.getValue();
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063290, this, savedInstanceState);
    }

    public final void setProgressInfo(@NotNull ImportProgressArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        getBinding().tvName.setText(args.getFileName());
        getBinding().progressBar.setProgress(args.getProgress());
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        ResManager resManager = ResManager.INSTANCE;
        String format = String.format(resManager.getStringSafely(C10651R.string.importing_progress), Arrays.copyOf(new Object[]{Integer.valueOf(args.getProgress())}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        getBinding().tvCurrentProgress.setText(format);
        if (!(args.getTotalCount() > 1)) {
            getBinding().tvTotalProgress.setVisibility(8);
            return;
        }
        String format2 = String.format(resManager.getStringSafely(C10651R.string.import_total_progress), Arrays.copyOf(new Object[]{Integer.valueOf(args.getCurrentNumber()), Integer.valueOf(args.getTotalCount())}, 2));
        Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
        getBinding().tvTotalProgress.setVisibility(0);
        getBinding().tvTotalProgress.setText(format2);
    }
}
