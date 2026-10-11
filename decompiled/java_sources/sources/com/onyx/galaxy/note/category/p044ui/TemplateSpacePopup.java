package com.onyx.galaxy.note.category.p044ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.data.common.data.template.SpaceArgs;
import com.onyx.android.sdk.data.common.data.template.TemplateArgs;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.galaxy.note.category.viewmodel.NoteTemplateViewModel;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupTemplateSpaceArgsBinding;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\f\u001a\u00020\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001b\u0010\u0012\u001a\u00020\r8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0015\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", C4921e.f26537n, "", "currentValue", "l", "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "q", "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "getTemplateViewModel", "()Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;", "templateViewModel", "Lcom/onyx/galaxy/note/databinding/PopupTemplateSpaceArgsBinding;", "r", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupTemplateSpaceArgsBinding;", "binding", "s", "F", "spaceValueInterval", "Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;", "t", "Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;", "spaceArgs", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class TemplateSpacePopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final NoteTemplateViewModel templateViewModel;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: s, reason: from kotlin metadata */
    public float spaceValueInterval;

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public SpaceArgs spaceArgs;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TemplateSpacePopup(@NotNull final Context context, @NotNull NoteTemplateViewModel templateViewModel) {
        super(context, null, 2, null);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(templateViewModel, "templateViewModel");
        this.templateViewModel = templateViewModel;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupTemplateSpaceArgsBinding>() { // from class: com.onyx.galaxy.note.category.ui.TemplateSpacePopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupTemplateSpaceArgsBinding invoke() {
                PopupTemplateSpaceArgsBinding inflate = PopupTemplateSpaceArgsBinding.inflate(LayoutInflater.from(context));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m43901k();
    }

    @NotNull
    public final PopupTemplateSpaceArgsBinding getBinding() {
        return (PopupTemplateSpaceArgsBinding) this.binding.getValue();
    }

    @NotNull
    public final NoteTemplateViewModel getTemplateViewModel() {
        return this.templateViewModel;
    }

    /* renamed from: k */
    public final void m43901k() {
        TemplateArgs templateArgs;
        TemplateModel value = this.templateViewModel.getPaperModel().getValue();
        SpaceArgs spaceArgs = (value == null || (templateArgs = value.getTemplateArgs()) == null) ? null : templateArgs.getSpaceArgs();
        this.spaceArgs = spaceArgs;
        if (spaceArgs != null) {
            this.spaceValueInterval = spaceArgs.displayMaxValue() - spaceArgs.displayMinValue();
            getBinding().seekSpace.setSegmentCount((int) (spaceArgs.displayMaxValue() - spaceArgs.displayMinValue()));
            getBinding().seekSpace.setMaxValue(spaceArgs.displayMaxValue());
            getBinding().seekSpace.setMinValue(spaceArgs.displayMinValue());
            getBinding().seekSpace.setProgressValue(spaceArgs.loadSpaceDisplayValue());
            getBinding().tvSpacingValue.setText(String.valueOf((int) getBinding().seekSpace.getProgressValue()));
        }
        getBinding().seekSpace.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.ui.TemplateSpacePopup$initView$2
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
                if (!z) {
                    spaceArgs2 = TemplateSpacePopup.this.spaceArgs;
                    if (spaceArgs2 != null) {
                        TemplateSpacePopup templateSpacePopup = TemplateSpacePopup.this;
                        spaceArgs2.updateByNormalizeValue(f2);
                        templateSpacePopup.m43902l(f2);
                        TemplateModel value2 = templateSpacePopup.getTemplateViewModel().getPaperModel().getValue();
                        TemplateArgs templateArgs2 = value2 != null ? value2.getTemplateArgs() : null;
                        if (templateArgs2 != null) {
                            templateArgs2.setSpaceArgs(spaceArgs2);
                        }
                        templateSpacePopup.getTemplateViewModel().getPaperModel().postValue(templateSpacePopup.getTemplateViewModel().getPaperModel().getValue());
                        return;
                    }
                    return;
                }
                TemplateSpacePopup.this.m43902l(f2);
            }
        });
    }

    /* renamed from: l */
    public final void m43902l(float currentValue) {
        getBinding().tvSpacingValue.setText(String.valueOf((int) currentValue));
    }
}
