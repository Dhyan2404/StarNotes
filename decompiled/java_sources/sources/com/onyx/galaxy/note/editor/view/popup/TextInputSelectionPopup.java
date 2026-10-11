package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupTextinputSelectionMenuBinding;
import com.onyx.galaxy.note.editor.view.popup.TextInputSelectionPopup;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0015\u0010\u0016J\b\u0010\u0003\u001a\u00020\u0002H\u0002R.\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001b\u0010\u0012\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/TextInputSelectionPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", GoogleApiAvailabilityLight.f29016b, "Lkotlin/Function1;", "", "q", "Lkotlin/jvm/functions/Function1;", "getCallback", "()Lkotlin/jvm/functions/Function1;", "setCallback", "(Lkotlin/jvm/functions/Function1;)V", "callback", "Lcom/onyx/galaxy/note/databinding/PopupTextinputSelectionMenuBinding;", "r", "Lkotlin/Lazy;", "m", "()Lcom/onyx/galaxy/note/databinding/PopupTextinputSelectionMenuBinding;", "binding", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class TextInputSelectionPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public Function1<? super Integer, Unit> callback;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextInputSelectionPopup(@NotNull final Context context, @NotNull Function1<? super Integer, Unit> callback) {
        super(context, null, 2, null);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupTextinputSelectionMenuBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.TextInputSelectionPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupTextinputSelectionMenuBinding invoke() {
                return PopupTextinputSelectionMenuBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        m49680n();
    }

    /* renamed from: o */
    public static final void m49677o(TextInputSelectionPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.callback.invoke(Integer.valueOf(view.getId()));
        this$0.dismiss();
    }

    /* renamed from: p */
    public static final void m49678p(TextInputSelectionPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.callback.invoke(Integer.valueOf(view.getId()));
        this$0.dismiss();
    }

    @NotNull
    public final Function1<Integer, Unit> getCallback() {
        return this.callback;
    }

    /* renamed from: m */
    public final PopupTextinputSelectionMenuBinding m49679m() {
        return (PopupTextinputSelectionMenuBinding) this.binding.getValue();
    }

    /* renamed from: n */
    public final void m49680n() {
        View root = m49679m().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m49679m().copy.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.hdn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TextInputSelectionPopup.m49677o(TextInputSelectionPopup.this, view);
            }
        });
        m49679m().paste.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.idn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TextInputSelectionPopup.m49678p(TextInputSelectionPopup.this, view);
            }
        });
    }

    public final void setCallback(@NotNull Function1<? super Integer, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.callback = function1;
    }
}
