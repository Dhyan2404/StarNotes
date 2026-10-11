package com.onyx.galaxy.note.category.p044ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.data.common.data.template.SpaceArgs;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupMarginTemplateSpaceBinding;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0018\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00020\u000b¢\u0006\u0004\b\u001a\u0010\u001bJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\tR&\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001b\u0010\u0014\u001a\u00020\u000f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0017\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", C4921e.f26537n, "", "currentValue", "l", "Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;", "q", "Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;", "spaceArgs", "Lkotlin/Function2;", "r", "Lkotlin/jvm/functions/Function2;", "onUpdateSpaceArgs", "Lcom/onyx/galaxy/note/databinding/PopupMarginTemplateSpaceBinding;", "s", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupMarginTemplateSpaceBinding;", "binding", "t", "F", "spaceValueInterval", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;Lkotlin/jvm/functions/Function2;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class MarginTemplateSpacePopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public SpaceArgs spaceArgs;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final Function2<Float, SpaceArgs, Unit> onUpdateSpaceArgs;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: t, reason: from kotlin metadata */
    public float spaceValueInterval;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public MarginTemplateSpacePopup(@NotNull final Context context, @NotNull SpaceArgs spaceArgs, @NotNull Function2<? super Float, ? super SpaceArgs, Unit> onUpdateSpaceArgs) {
        super(context, null, 2, null);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(spaceArgs, "spaceArgs");
        Intrinsics.checkNotNullParameter(onUpdateSpaceArgs, "onUpdateSpaceArgs");
        this.spaceArgs = spaceArgs;
        this.onUpdateSpaceArgs = onUpdateSpaceArgs;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupMarginTemplateSpaceBinding>() { // from class: com.onyx.galaxy.note.category.ui.MarginTemplateSpacePopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupMarginTemplateSpaceBinding invoke() {
                PopupMarginTemplateSpaceBinding inflate = PopupMarginTemplateSpaceBinding.inflate(LayoutInflater.from(context));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m43141k();
    }

    @NotNull
    public final PopupMarginTemplateSpaceBinding getBinding() {
        return (PopupMarginTemplateSpaceBinding) this.binding.getValue();
    }

    /* renamed from: k */
    public final void m43141k() {
        SpaceArgs spaceArgs = this.spaceArgs;
        this.spaceValueInterval = spaceArgs.displayMaxValue() - spaceArgs.displayMinValue();
        getBinding().seekSpace.setSegmentCount((int) (spaceArgs.displayMaxValue() - spaceArgs.displayMinValue()));
        getBinding().seekSpace.setMaxValue(spaceArgs.displayMaxValue());
        getBinding().seekSpace.setMinValue(spaceArgs.displayMinValue());
        getBinding().seekSpace.setProgressValue(spaceArgs.loadSpaceDisplayValue());
        getBinding().tvSpacingValue.setText(String.valueOf((int) getBinding().seekSpace.getProgressValue()));
        getBinding().seekSpace.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.ui.MarginTemplateSpacePopup$initView$2
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                SpaceArgs spaceArgs2;
                Function2 function2;
                if (!z) {
                    spaceArgs2 = MarginTemplateSpacePopup.this.spaceArgs;
                    MarginTemplateSpacePopup marginTemplateSpacePopup = MarginTemplateSpacePopup.this;
                    spaceArgs2.updateByNormalizeValue(f2);
                    marginTemplateSpacePopup.m43142l(f2);
                    function2 = marginTemplateSpacePopup.onUpdateSpaceArgs;
                    function2.invoke(Float.valueOf(f2), spaceArgs2);
                    return;
                }
                MarginTemplateSpacePopup.this.m43142l(f2);
            }
        });
    }

    /* renamed from: l */
    public final void m43142l(float currentValue) {
        getBinding().tvSpacingValue.setText(String.valueOf((int) currentValue));
    }
}
