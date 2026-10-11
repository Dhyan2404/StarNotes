package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupCounterMoreOptionsBinding;
import com.onyx.galaxy.note.editor.view.popup.CounterMoreOptionsPopup;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u001eB#\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u001c\u0010\u001dJ\b\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001b\u0010\u0011\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R$\u0010\u0019\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", GoogleApiAvailabilityLight.f29016b, "", "q", "I", "editNameRes", "", "r", Constants.HASIDCALL_INDEX_SIG, "canDelete", "Lcom/onyx/galaxy/note/databinding/PopupCounterMoreOptionsBinding;", "s", "Lkotlin/Lazy;", "m", "()Lcom/onyx/galaxy/note/databinding/PopupCounterMoreOptionsBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;", "t", "Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;", "getCallback", "()Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;", "setCallback", "(Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;)V", "callback", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;IZ)V", "OperationCallback", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CounterMoreOptionsPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    public final int editNameRes;

    /* renamed from: r, reason: from kotlin metadata */
    public final boolean canDelete;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public OperationCallback callback;

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;", "", "onDelete", "", "onEdit", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface OperationCallback {
        void onDelete();

        void onEdit();
    }

    public /* synthetic */ CounterMoreOptionsPopup(Context context, int i, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? C10651R.string.edit : i, (i2 & 4) != 0 ? true : z);
    }

    /* renamed from: o */
    public static final void m48621o(CounterMoreOptionsPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        OperationCallback operationCallback = this$0.callback;
        if (operationCallback != null) {
            operationCallback.onEdit();
        }
        this$0.callback = null;
        this$0.dismiss();
    }

    /* renamed from: p */
    public static final void m48622p(final CounterMoreOptionsPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        new CommonDialog.Builder(this$0.getContext()).setWarning(true).setTitle(C10651R.string.delete).setMessage(C10651R.string.counter_task_delete_warning).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.CounterMoreOptionsPopup$initListener$2$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                invoke2(commonDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CommonDialog commonDialog, @NotNull String str) {
                Intrinsics.checkNotNullParameter(commonDialog, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
                CounterMoreOptionsPopup.OperationCallback callback = CounterMoreOptionsPopup.this.getCallback();
                if (callback != null) {
                    callback.onDelete();
                }
                CounterMoreOptionsPopup.this.setCallback(null);
            }
        }).create().show();
        this$0.dismiss();
    }

    @Nullable
    public final OperationCallback getCallback() {
        return this.callback;
    }

    /* renamed from: m */
    public final PopupCounterMoreOptionsBinding m48623m() {
        return (PopupCounterMoreOptionsBinding) this.binding.getValue();
    }

    /* renamed from: n */
    public final void m48624n() {
        m48623m().tvEdit.setText(this.editNameRes);
        m48623m().tvDelete.setEnabled(this.canDelete);
        TintTextView tvEdit = m48623m().tvEdit;
        Intrinsics.checkNotNullExpressionValue(tvEdit, "tvEdit");
        ViewKt.click$default(tvEdit, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.pee
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CounterMoreOptionsPopup.m48621o(CounterMoreOptionsPopup.this, view);
            }
        }, 1, null);
        TintTextView tvDelete = m48623m().tvDelete;
        Intrinsics.checkNotNullExpressionValue(tvDelete, "tvDelete");
        ViewKt.click$default(tvDelete, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.qee
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CounterMoreOptionsPopup.m48622p(CounterMoreOptionsPopup.this, view);
            }
        }, 1, null);
    }

    public final void setCallback(@Nullable OperationCallback operationCallback) {
        this.callback = operationCallback;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CounterMoreOptionsPopup(@NotNull final Context context, int i, boolean z) {
        super(context, null, 2, null);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        this.editNameRes = i;
        this.canDelete = z;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupCounterMoreOptionsBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.CounterMoreOptionsPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupCounterMoreOptionsBinding invoke() {
                return PopupCounterMoreOptionsBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        View root = m48623m().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m48624n();
    }
}
