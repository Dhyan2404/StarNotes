package com.onyx.galaxy.note.editor.view.ruler;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.PopupWindow;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.LayoutRulerUnitsBinding;
import com.onyx.galaxy.note.editor.view.ruler.RulerUnitsPopupWindow;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u001aB\u001f\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\u000e¢\u0006\u0004\b\u0018\u0010\u0019J\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004J\b\u0010\t\u001a\u00020\u0007H\u0002R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0015\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\u0013\u001a\u0004\b\u000f\u0010\u0014¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;", "Landroid/widget/PopupWindow;", "Landroid/view/View;", Constants.ELEMNAME_ANCHOR_STRING, "", "x", "y", "", "show", "c", "Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;", "a", "Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;", "unitsType", "Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow$RulerListener;", "b", "Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow$RulerListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/onyx/galaxy/note/databinding/LayoutRulerUnitsBinding;", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/databinding/LayoutRulerUnitsBinding;", "binding", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow$RulerListener;)V", "RulerListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class RulerUnitsPopupWindow extends PopupWindow {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final RulerUnitsType unitsType;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final RulerListener listener;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow$RulerListener;", "", "onChangeUnits", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface RulerListener {
        void onChangeUnits();
    }

    public RulerUnitsPopupWindow(@NotNull final Context context, @NotNull RulerUnitsType unitsType, @NotNull RulerListener listener) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(unitsType, "unitsType");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.unitsType = unitsType;
        this.listener = listener;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LayoutRulerUnitsBinding>() { // from class: com.onyx.galaxy.note.editor.view.ruler.RulerUnitsPopupWindow$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LayoutRulerUnitsBinding invoke() {
                LayoutRulerUnitsBinding inflate = LayoutRulerUnitsBinding.inflate(LayoutInflater.from(context));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
        setContentView(m49818b().getRoot());
        setOutsideTouchable(true);
        m49819c();
    }

    /* renamed from: d */
    public static final void m49817d(RulerUnitsPopupWindow this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.listener.onChangeUnits();
        this$0.dismiss();
    }

    /* renamed from: b */
    public final LayoutRulerUnitsBinding m49818b() {
        return (LayoutRulerUnitsBinding) this.binding.getValue();
    }

    /* renamed from: c */
    public final void m49819c() {
        m49818b().tvUnits.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.cul
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RulerUnitsPopupWindow.m49817d(RulerUnitsPopupWindow.this, view);
            }
        });
        if (this.unitsType == RulerUnitsType.f60706CM) {
            m49818b().tvUnits.setText(ResManager.INSTANCE.getString(C10651R.string.change_units_to_in));
        } else {
            m49818b().tvUnits.setText(ResManager.INSTANCE.getString(C10651R.string.change_units_to_cm));
        }
        m49818b().bottomArrowView.setTranslationY(-ResManager.INSTANCE.getDimension(C7384R.dimen.dp_7));
    }

    public final void show(@NotNull View anchor, int x, int y) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        getContentView().measure(0, 0);
        setWidth(getContentView().getMeasuredWidth());
        setHeight(getContentView().getMeasuredHeight());
        showAsDropDown(anchor, x - (getContentView().getMeasuredWidth() / 2), (y - anchor.getHeight()) - getContentView().getMeasuredHeight());
    }
}
