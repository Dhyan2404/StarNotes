package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupCounterHistoryOptionsBinding;
import com.onyx.galaxy.note.editor.view.popup.CounterHistoryOptionsPopup;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\b\u0010\u0003\u001a\u00020\u0002H\u0002R\u001b\u0010\t\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/databinding/PopupCounterHistoryOptionsBinding;", "q", "Lkotlin/Lazy;", "m", "()Lcom/onyx/galaxy/note/databinding/PopupCounterHistoryOptionsBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;", "r", "Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;", "getCallback", "()Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;", "setCallback", "(Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;)V", "callback", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "OperationCallback", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CounterHistoryOptionsPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public OperationCallback callback;

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;", "", "onDelete", "", "onEditCountName", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface OperationCallback {
        void onDelete();

        void onEditCountName();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CounterHistoryOptionsPopup(@NotNull final Context context) {
        super(context, null, 2, null);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupCounterHistoryOptionsBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.CounterHistoryOptionsPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupCounterHistoryOptionsBinding invoke() {
                return PopupCounterHistoryOptionsBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        View root = m48617m().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m48618n();
    }

    /* renamed from: o */
    public static final void m48615o(CounterHistoryOptionsPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        OperationCallback operationCallback = this$0.callback;
        if (operationCallback != null) {
            operationCallback.onDelete();
        }
        this$0.callback = null;
        this$0.dismiss();
    }

    /* renamed from: p */
    public static final void m48616p(CounterHistoryOptionsPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        OperationCallback operationCallback = this$0.callback;
        if (operationCallback != null) {
            operationCallback.onEditCountName();
        }
        this$0.callback = null;
        this$0.dismiss();
    }

    @Nullable
    public final OperationCallback getCallback() {
        return this.callback;
    }

    /* renamed from: m */
    public final PopupCounterHistoryOptionsBinding m48617m() {
        return (PopupCounterHistoryOptionsBinding) this.binding.getValue();
    }

    /* renamed from: n */
    public final void m48618n() {
        TintTextView tvDelete = m48617m().tvDelete;
        Intrinsics.checkNotNullExpressionValue(tvDelete, "tvDelete");
        ViewKt.click$default(tvDelete, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.nee
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CounterHistoryOptionsPopup.m48615o(CounterHistoryOptionsPopup.this, view);
            }
        }, 1, null);
        TintTextView tvRename = m48617m().tvRename;
        Intrinsics.checkNotNullExpressionValue(tvRename, "tvRename");
        ViewKt.click$default(tvRename, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.oee
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CounterHistoryOptionsPopup.m48616p(CounterHistoryOptionsPopup.this, view);
            }
        }, 1, null);
    }

    public final void setCallback(@Nullable OperationCallback operationCallback) {
        this.callback = operationCallback;
    }
}
