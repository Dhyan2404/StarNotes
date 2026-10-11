package com.onyx.galaxy.note.editor.view.popup;

import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.universal.editor.events.note.ChangePenArgsEvent;
import com.onyx.android.sdk.universal.editor.helper.PencilBoxManager;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.editor.view.popup.InkPenPopup;
import com.onyx.galaxy.note.editor.view.popup.MarkPenPopup;
import com.onyx.galaxy.note.editor.view.popup.NormalPenPopup;
import com.onyx.galaxy.note.editor.view.popup.PencilPopup;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\n¢\u0006\u0004\b%\u0010&J+\u0010\t\u001a\u00020\u00072!\u0010\b\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0002H\u0002R\u0014\u0010\f\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000bR\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0018\u001a\u00020\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\u001e\u001a\u00020\u00198\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0017\u0010$\u001a\u00020\u001f8\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#¨\u0006'"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;", "", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "Lkotlin/ParameterName;", "name", "penArgs", "", "func", "a", "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;", "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;", "penBoxPopup", "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;", "b", "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;", "getPenArgsChangeListener", "()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;", "penArgsChangeListener", "Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;", "c", "Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;", "getInkPenBoxArgsChangeListener", "()Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;", "inkPenBoxArgsChangeListener", "Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;", "d", "Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;", "getMarkPenBoxArgsChangeListener", "()Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;", "markPenBoxArgsChangeListener", "Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;", "e", "Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;", "getPencilBoxArgsChangeListener", "()Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;", "pencilBoxArgsChangeListener", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PenBoxArgsHandler {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final PenBoxPopup penBoxPopup;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final NormalPenPopup.PenArgsChangeListener penArgsChangeListener;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final InkPenPopup.InkPenArgsChangeListener inkPenBoxArgsChangeListener;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final MarkPenPopup.MarkPenArgsChangeListener markPenBoxArgsChangeListener;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final PencilPopup.PencilArgsChangeListener pencilBoxArgsChangeListener;

    public PenBoxArgsHandler(@NotNull PenBoxPopup penBoxPopup) {
        Intrinsics.checkNotNullParameter(penBoxPopup, "penBoxPopup");
        this.penBoxPopup = penBoxPopup;
        this.penArgsChangeListener = new NormalPenPopup.PenArgsChangeListener() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxArgsHandler$penArgsChangeListener$1
            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onAddPenArgs() {
                NormalPenPopup.PenArgsChangeListener.DefaultImpls.onAddPenArgs(this);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onChangeSmoothLevel(final float smoothLevel) {
                PenBoxArgsHandler.this.m49203a(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxArgsHandler$penArgsChangeListener$1$onChangeSmoothLevel$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs) {
                        invoke2(penArgs);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenArgs it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        it2.setSmoothLevel(smoothLevel);
                    }
                });
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onChangeStrokeNib(final float nib) {
                PenBoxArgsHandler.this.m49203a(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxArgsHandler$penArgsChangeListener$1$onChangeStrokeNib$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs) {
                        invoke2(penArgs);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenArgs it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        it2.setNib(nib);
                    }
                });
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onChangeStrokePressure(final float pressureSensitivity) {
                PenBoxArgsHandler.this.m49203a(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxArgsHandler$penArgsChangeListener$1$onChangeStrokePressure$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs) {
                        invoke2(penArgs);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenArgs it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        it2.setPressureSensitivity(pressureSensitivity);
                    }
                });
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onChangeStrokeWidth(final float strokeWidth) {
                PenBoxPopup penBoxPopup2;
                PenBoxArgsHandler.this.m49203a(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxArgsHandler$penArgsChangeListener$1$onChangeStrokeWidth$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs) {
                        invoke2(penArgs);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenArgs it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        it2.setWidth(strokeWidth);
                    }
                });
                penBoxPopup2 = PenBoxArgsHandler.this.penBoxPopup;
                penBoxPopup2.reloadPenList(false);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onRemovePenArgs() {
                PenBoxPopup penBoxPopup2;
                PenBoxPopup penBoxPopup3;
                penBoxPopup2 = PenBoxArgsHandler.this.penBoxPopup;
                penBoxPopup2.deleteSelectedPenArgs();
                penBoxPopup3 = PenBoxArgsHandler.this.penBoxPopup;
                penBoxPopup3.dismissAllPopup();
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onSelectedColor(final int color, final int colorIndex) {
                PenBoxPopup penBoxPopup2;
                PenBoxArgsHandler.this.m49203a(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxArgsHandler$penArgsChangeListener$1$onSelectedColor$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs) {
                        invoke2(penArgs);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenArgs it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        it2.updateColorList(color, colorIndex);
                    }
                });
                penBoxPopup2 = PenBoxArgsHandler.this.penBoxPopup;
                penBoxPopup2.reloadPenList(false);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onSelectedColorDismiss() {
                NormalPenPopup.PenArgsChangeListener.DefaultImpls.onSelectedColorDismiss(this);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onSelectedColorList(@NotNull final IntList colorList, final int colorIndex) {
                PenBoxPopup penBoxPopup2;
                Intrinsics.checkNotNullParameter(colorList, "colorList");
                PenBoxArgsHandler.this.m49203a(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxArgsHandler$penArgsChangeListener$1$onSelectedColorList$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs) {
                        invoke2(penArgs);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenArgs it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        it2.setColorList(IntList.this);
                        Integer num = IntList.this.get(colorIndex);
                        Intrinsics.checkNotNullExpressionValue(num, "get(...)");
                        it2.updateColorList(num.intValue(), colorIndex);
                    }
                });
                penBoxPopup2 = PenBoxArgsHandler.this.penBoxPopup;
                penBoxPopup2.reloadPenList(false);
            }
        };
        this.inkPenBoxArgsChangeListener = new InkPenPopup.InkPenArgsChangeListener() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxArgsHandler$inkPenBoxArgsChangeListener$1
            @Override // com.onyx.galaxy.note.editor.view.popup.InkPenPopup.InkPenArgsChangeListener
            public void onChangeVelocity(final float velocity) {
                PenBoxArgsHandler.this.m49203a(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxArgsHandler$inkPenBoxArgsChangeListener$1$onChangeVelocity$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs) {
                        invoke2(penArgs);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenArgs it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        it2.setVelocitySensitivity(velocity);
                    }
                });
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.InkPenPopup.InkPenArgsChangeListener
            public void onChangeVelocityAmplifier(final float velocityAmplifier) {
                PenBoxArgsHandler.this.m49203a(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxArgsHandler$inkPenBoxArgsChangeListener$1$onChangeVelocityAmplifier$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs) {
                        invoke2(penArgs);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenArgs it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        it2.setVelocityAmplifier(velocityAmplifier);
                    }
                });
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.InkPenPopup.InkPenArgsChangeListener
            public void onChangeVelocityIgnoreThreshold(final float velocityIgnoreThreshold) {
                PenBoxArgsHandler.this.m49203a(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxArgsHandler$inkPenBoxArgsChangeListener$1$onChangeVelocityIgnoreThreshold$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs) {
                        invoke2(penArgs);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenArgs it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        it2.setVelocityIgnoreThreshold(velocityIgnoreThreshold);
                    }
                });
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.InkPenPopup.InkPenArgsChangeListener
            public void onChangeVelocityLowerBound(final float velocityLowerBound) {
                PenBoxArgsHandler.this.m49203a(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxArgsHandler$inkPenBoxArgsChangeListener$1$onChangeVelocityLowerBound$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs) {
                        invoke2(penArgs);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenArgs it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        it2.setVelocityLowerBound(velocityLowerBound);
                    }
                });
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.InkPenPopup.InkPenArgsChangeListener
            public void onChangeVelocityUpperBound(final float velocityUpperBound) {
                PenBoxArgsHandler.this.m49203a(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxArgsHandler$inkPenBoxArgsChangeListener$1$onChangeVelocityUpperBound$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs) {
                        invoke2(penArgs);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenArgs it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        it2.setVelocityUpperBound(velocityUpperBound);
                    }
                });
            }
        };
        this.markPenBoxArgsChangeListener = new MarkPenPopup.MarkPenArgsChangeListener() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxArgsHandler$markPenBoxArgsChangeListener$1
            @Override // com.onyx.galaxy.note.editor.view.popup.MarkPenPopup.MarkPenArgsChangeListener
            public void onChangeLineDrawing(final int subShapeType) {
                PenBoxArgsHandler.this.m49203a(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxArgsHandler$markPenBoxArgsChangeListener$1$onChangeLineDrawing$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs) {
                        invoke2(penArgs);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenArgs it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        it2.setSubShapeType(subShapeType);
                    }
                });
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.MarkPenPopup.MarkPenArgsChangeListener
            public void onChangeRoundCorner(final boolean roundCorner) {
                PenBoxPopup penBoxPopup2;
                PenBoxArgsHandler.this.m49203a(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxArgsHandler$markPenBoxArgsChangeListener$1$onChangeRoundCorner$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs) {
                        invoke2(penArgs);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenArgs it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        it2.setRoundCorner(roundCorner);
                    }
                });
                penBoxPopup2 = PenBoxArgsHandler.this.penBoxPopup;
                penBoxPopup2.reloadPenList(false);
            }
        };
        this.pencilBoxArgsChangeListener = new PencilPopup.PencilArgsChangeListener() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxArgsHandler$pencilBoxArgsChangeListener$1
            @Override // com.onyx.galaxy.note.editor.view.popup.PencilPopup.PencilArgsChangeListener
            public void onChangeAlphaFactor(final float alphaFactor) {
                PenBoxArgsHandler.this.m49203a(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxArgsHandler$pencilBoxArgsChangeListener$1$onChangeAlphaFactor$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs) {
                        invoke2(penArgs);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenArgs it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        it2.setAlphaFactor(alphaFactor);
                    }
                });
            }
        };
    }

    /* renamed from: a */
    public final void m49203a(Function1<? super PenArgs, Unit> func) {
        PenArgs selectedItem = this.penBoxPopup.getPenAdapter().getSelectedItem();
        if (selectedItem != null) {
            func.invoke(selectedItem);
            PencilBoxManager.Companion.updatePencilBox$default(PencilBoxManager.INSTANCE, selectedItem, null, 2, null);
            DocCollectionBundle.INSTANCE.postEvent(new ChangePenArgsEvent(selectedItem.m72358clone(), true));
            this.penBoxPopup.reloadPenList(false);
        }
    }

    @NotNull
    public final InkPenPopup.InkPenArgsChangeListener getInkPenBoxArgsChangeListener() {
        return this.inkPenBoxArgsChangeListener;
    }

    @NotNull
    public final MarkPenPopup.MarkPenArgsChangeListener getMarkPenBoxArgsChangeListener() {
        return this.markPenBoxArgsChangeListener;
    }

    @NotNull
    public final NormalPenPopup.PenArgsChangeListener getPenArgsChangeListener() {
        return this.penArgsChangeListener;
    }

    @NotNull
    public final PencilPopup.PencilArgsChangeListener getPencilBoxArgsChangeListener() {
        return this.pencilBoxArgsChangeListener;
    }
}
