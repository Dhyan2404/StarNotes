package com.onyx.galaxy.note.editor.view.toolbar;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.penbox.ActivatePenBoxViewAction;
import com.onyx.android.sdk.universal.editor.events.note.ChangePenArgsEvent;
import com.onyx.android.sdk.universal.editor.helper.PencilBoxManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.editor.data.PenPropertyBean;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.popup.InkPenPopup;
import com.onyx.galaxy.note.editor.view.popup.MarkPenPopup;
import com.onyx.galaxy.note.editor.view.popup.NormalPenPopup;
import com.onyx.galaxy.note.editor.view.popup.PencilPopup;
import com.onyx.galaxy.note.editor.view.popup.WritePenGroupPopup;
import com.onyx.galaxy.note.editor.viewmodel.PenViewModel;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0018\u001a\u00020\u0014\u0012\u0006\u0010\u001b\u001a\u00020\u0019\u0012\u0006\u0010\u001e\u001a\u00020\u001c¢\u0006\u0004\b=\u0010>JF\u0010\f\u001a\u00020\n2<\u0010\u000b\u001a8\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n0\u0002H\u0002J \u0010\u0011\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\rH\u0002J\u0018\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\bH\u0002R\u0017\u0010\u0018\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u001dR\u0017\u0010$\u001a\u00020\u001f8\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0017\u0010*\u001a\u00020%8\u0006¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u0017\u00100\u001a\u00020+8\u0006¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R\u0017\u00106\u001a\u0002018\u0006¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b4\u00105R\u0017\u0010<\u001a\u0002078\u0006¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u0010;¨\u0006?"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;", "", "Lkotlin/Function2;", "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "Lkotlin/ParameterName;", "name", "penProperty", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "penArgsOption", "", "func", "b", "", "color", "colorIndex", "shapeType", "c", "penArgs", "a", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "getViewShapeType", "()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "viewShapeType", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "penViewModel", "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;", "d", "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;", "getPenArgsChangeListener", "()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;", "penArgsChangeListener", "Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;", "e", "Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;", "getInkPenArgsChangeListener", "()Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;", "inkPenArgsChangeListener", "Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;", C6997f.f39671c, "Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;", "getMarkPenArgsChangeListener", "()Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;", "markPenArgsChangeListener", "Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;", C6998g.f39679a, "Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;", "getPencilArgsChangeListener", "()Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;", "pencilArgsChangeListener", "Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;", C6999h.f39688c, "Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;", "getWritePenGroupChangeListener", "()Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;", "writePenGroupChangeListener", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ShapeToolPenArgsHandler {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final ShapeToolType viewShapeType;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final PenViewModel penViewModel;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final NormalPenPopup.PenArgsChangeListener penArgsChangeListener;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final InkPenPopup.InkPenArgsChangeListener inkPenArgsChangeListener;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final MarkPenPopup.MarkPenArgsChangeListener markPenArgsChangeListener;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final PencilPopup.PencilArgsChangeListener pencilArgsChangeListener;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final WritePenGroupPopup.WritePenGroupChangeListener writePenGroupChangeListener;

    public ShapeToolPenArgsHandler(@NotNull ShapeToolType viewShapeType, @NotNull EditorBundle editorBundle, @NotNull PenViewModel penViewModel) {
        Intrinsics.checkNotNullParameter(viewShapeType, "viewShapeType");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(penViewModel, "penViewModel");
        this.viewShapeType = viewShapeType;
        this.editorBundle = editorBundle;
        this.penViewModel = penViewModel;
        this.penArgsChangeListener = new NormalPenPopup.PenArgsChangeListener() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$penArgsChangeListener$1
            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onAddPenArgs() {
                final ShapeToolPenArgsHandler shapeToolPenArgsHandler = ShapeToolPenArgsHandler.this;
                shapeToolPenArgsHandler.m50202b(new Function2<PenPropertyBean, JSONObjectOption<PenArgs>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$penArgsChangeListener$1$onAddPenArgs$1
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(PenPropertyBean penPropertyBean, JSONObjectOption<PenArgs> jSONObjectOption) {
                        invoke2(penPropertyBean, jSONObjectOption);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenPropertyBean penProperty, @NotNull JSONObjectOption<PenArgs> penArgsOption) {
                        Intrinsics.checkNotNullParameter(penProperty, "penProperty");
                        Intrinsics.checkNotNullParameter(penArgsOption, "penArgsOption");
                        ShapeToolPenArgsHandler.this.m50201a(penProperty, penArgsOption.get().m72358clone());
                    }
                });
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onChangeSmoothLevel(final float smoothLevel) {
                ShapeToolPenArgsHandler.this.m50202b(new Function2<PenPropertyBean, JSONObjectOption<PenArgs>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$penArgsChangeListener$1$onChangeSmoothLevel$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(PenPropertyBean penPropertyBean, JSONObjectOption<PenArgs> jSONObjectOption) {
                        invoke2(penPropertyBean, jSONObjectOption);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenPropertyBean penProperty, @NotNull JSONObjectOption<PenArgs> penArgsOption) {
                        Intrinsics.checkNotNullParameter(penProperty, "penProperty");
                        Intrinsics.checkNotNullParameter(penArgsOption, "penArgsOption");
                        final float f = smoothLevel;
                        penArgsOption.getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$penArgsChangeListener$1$onChangeSmoothLevel$1.1
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
                            public final void invoke2(@Nullable PenArgs penArgs) {
                                if (penArgs == null) {
                                    return;
                                }
                                penArgs.setSmoothLevel(f);
                            }
                        });
                    }
                });
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onChangeStrokeNib(final float nib) {
                ShapeToolPenArgsHandler.this.m50202b(new Function2<PenPropertyBean, JSONObjectOption<PenArgs>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$penArgsChangeListener$1$onChangeStrokeNib$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(PenPropertyBean penPropertyBean, JSONObjectOption<PenArgs> jSONObjectOption) {
                        invoke2(penPropertyBean, jSONObjectOption);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenPropertyBean penProperty, @NotNull JSONObjectOption<PenArgs> penArgsOption) {
                        Intrinsics.checkNotNullParameter(penProperty, "penProperty");
                        Intrinsics.checkNotNullParameter(penArgsOption, "penArgsOption");
                        final float f = nib;
                        penArgsOption.getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$penArgsChangeListener$1$onChangeStrokeNib$1.1
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
                            public final void invoke2(@Nullable PenArgs penArgs) {
                                if (penArgs == null) {
                                    return;
                                }
                                penArgs.setNib(f);
                            }
                        });
                    }
                });
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onChangeStrokePressure(final float pressureSensitivity) {
                ShapeToolPenArgsHandler.this.m50202b(new Function2<PenPropertyBean, JSONObjectOption<PenArgs>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$penArgsChangeListener$1$onChangeStrokePressure$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(PenPropertyBean penPropertyBean, JSONObjectOption<PenArgs> jSONObjectOption) {
                        invoke2(penPropertyBean, jSONObjectOption);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenPropertyBean penProperty, @NotNull JSONObjectOption<PenArgs> penArgsOption) {
                        Intrinsics.checkNotNullParameter(penProperty, "penProperty");
                        Intrinsics.checkNotNullParameter(penArgsOption, "penArgsOption");
                        final float f = pressureSensitivity;
                        penArgsOption.getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$penArgsChangeListener$1$onChangeStrokePressure$1.1
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
                            public final void invoke2(@Nullable PenArgs penArgs) {
                                if (penArgs == null) {
                                    return;
                                }
                                penArgs.setPressureSensitivity(f);
                            }
                        });
                    }
                });
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onChangeStrokeWidth(final float strokeWidth) {
                final ShapeToolPenArgsHandler shapeToolPenArgsHandler = ShapeToolPenArgsHandler.this;
                shapeToolPenArgsHandler.m50202b(new Function2<PenPropertyBean, JSONObjectOption<PenArgs>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$penArgsChangeListener$1$onChangeStrokeWidth$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(PenPropertyBean penPropertyBean, JSONObjectOption<PenArgs> jSONObjectOption) {
                        invoke2(penPropertyBean, jSONObjectOption);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenPropertyBean penProperty, @NotNull JSONObjectOption<PenArgs> penArgsOption) {
                        PenViewModel penViewModel2;
                        Intrinsics.checkNotNullParameter(penProperty, "penProperty");
                        Intrinsics.checkNotNullParameter(penArgsOption, "penArgsOption");
                        final float f = strokeWidth;
                        penArgsOption.getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$penArgsChangeListener$1$onChangeStrokeWidth$1.1
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
                            public final void invoke2(@Nullable PenArgs penArgs) {
                                if (penArgs == null) {
                                    return;
                                }
                                penArgs.setWidth(f);
                            }
                        });
                        penProperty.updateSizeList(penArgsOption.get().getType(), strokeWidth);
                        penViewModel2 = shapeToolPenArgsHandler.penViewModel;
                        penViewModel2.getSize().postValue(Float.valueOf(strokeWidth));
                    }
                });
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onRemovePenArgs() {
                NormalPenPopup.PenArgsChangeListener.DefaultImpls.onRemovePenArgs(this);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onSelectedColor(final int color, final int colorIndex) {
                final ShapeToolPenArgsHandler shapeToolPenArgsHandler = ShapeToolPenArgsHandler.this;
                shapeToolPenArgsHandler.m50202b(new Function2<PenPropertyBean, JSONObjectOption<PenArgs>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColor$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(PenPropertyBean penPropertyBean, JSONObjectOption<PenArgs> jSONObjectOption) {
                        invoke2(penPropertyBean, jSONObjectOption);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenPropertyBean penProperty, @NotNull JSONObjectOption<PenArgs> penArgsOption) {
                        PenViewModel penViewModel2;
                        Intrinsics.checkNotNullParameter(penProperty, "penProperty");
                        Intrinsics.checkNotNullParameter(penArgsOption, "penArgsOption");
                        final int i = color;
                        penArgsOption.getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColor$1.1
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
                            public final void invoke2(@Nullable PenArgs penArgs) {
                                if (penArgs == null) {
                                    return;
                                }
                                penArgs.setColor(i);
                            }
                        });
                        ShapeToolPenArgsHandler.this.m50203c(color, colorIndex, penArgsOption.get().getType());
                        penViewModel2 = ShapeToolPenArgsHandler.this.penViewModel;
                        penViewModel2.updateIndexAndColor(colorIndex, color);
                    }
                });
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onSelectedColorDismiss() {
                ShapeToolPenArgsHandler.this.m50202b(new Function2<PenPropertyBean, JSONObjectOption<PenArgs>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColorDismiss$1
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(PenPropertyBean penPropertyBean, JSONObjectOption<PenArgs> jSONObjectOption) {
                        invoke2(penPropertyBean, jSONObjectOption);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenPropertyBean penProperty, @NotNull JSONObjectOption<PenArgs> penArgsOption) {
                        List<Integer> listOf;
                        Intrinsics.checkNotNullParameter(penProperty, "penProperty");
                        Intrinsics.checkNotNullParameter(penArgsOption, "penArgsOption");
                        int type = penArgsOption.get().getType();
                        PenPropertyBean penProperty2 = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty();
                        listOf = CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(penArgsOption.get().getColor()));
                        penProperty2.addHistoryColorList(type, listOf);
                    }
                });
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onSelectedColorList(@NotNull final IntList colorList, final int colorIndex) {
                Intrinsics.checkNotNullParameter(colorList, "colorList");
                final ShapeToolPenArgsHandler shapeToolPenArgsHandler = ShapeToolPenArgsHandler.this;
                shapeToolPenArgsHandler.m50202b(new Function2<PenPropertyBean, JSONObjectOption<PenArgs>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColorList$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(PenPropertyBean penPropertyBean, JSONObjectOption<PenArgs> jSONObjectOption) {
                        invoke2(penPropertyBean, jSONObjectOption);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenPropertyBean penProperty, @NotNull JSONObjectOption<PenArgs> penArgsOption) {
                        PenViewModel penViewModel2;
                        PenViewModel penViewModel3;
                        Intrinsics.checkNotNullParameter(penProperty, "penProperty");
                        Intrinsics.checkNotNullParameter(penArgsOption, "penArgsOption");
                        Integer num = IntList.this.get(colorIndex);
                        Intrinsics.checkNotNullExpressionValue(num, "get(...)");
                        final int intValue = num.intValue();
                        int type = penArgsOption.get().getType();
                        final IntList intList = IntList.this;
                        final int i = colorIndex;
                        penArgsOption.getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColorList$1.1
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
                            public final void invoke2(@Nullable PenArgs penArgs) {
                                if (penArgs != null) {
                                    penArgs.setColorList(IntList.this);
                                }
                                if (penArgs != null) {
                                    penArgs.updateColorList(intValue, i);
                                }
                            }
                        });
                        penProperty.getColorListOption(type).set(IntList.this);
                        shapeToolPenArgsHandler.m50203c(intValue, colorIndex, penArgsOption.get().getType());
                        penViewModel2 = shapeToolPenArgsHandler.penViewModel;
                        penViewModel2.getColorSet().postValue(IntList.this);
                        penViewModel3 = shapeToolPenArgsHandler.penViewModel;
                        penViewModel3.updateIndexAndColor(colorIndex, intValue);
                    }
                });
            }
        };
        this.inkPenArgsChangeListener = new InkPenPopup.InkPenArgsChangeListener() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$inkPenArgsChangeListener$1
            @Override // com.onyx.galaxy.note.editor.view.popup.InkPenPopup.InkPenArgsChangeListener
            public void onChangeVelocity(final float velocity) {
                ShapeToolPenArgsHandler.this.m50202b(new Function2<PenPropertyBean, JSONObjectOption<PenArgs>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$inkPenArgsChangeListener$1$onChangeVelocity$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(PenPropertyBean penPropertyBean, JSONObjectOption<PenArgs> jSONObjectOption) {
                        invoke2(penPropertyBean, jSONObjectOption);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenPropertyBean penProperty, @NotNull JSONObjectOption<PenArgs> penArgsOption) {
                        Intrinsics.checkNotNullParameter(penProperty, "penProperty");
                        Intrinsics.checkNotNullParameter(penArgsOption, "penArgsOption");
                        final float f = velocity;
                        penArgsOption.getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$inkPenArgsChangeListener$1$onChangeVelocity$1.1
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
                            public final void invoke2(@Nullable PenArgs penArgs) {
                                if (penArgs == null) {
                                    return;
                                }
                                penArgs.setVelocitySensitivity(f);
                            }
                        });
                    }
                });
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.InkPenPopup.InkPenArgsChangeListener
            public void onChangeVelocityAmplifier(final float velocityAmplifier) {
                ShapeToolPenArgsHandler.this.m50202b(new Function2<PenPropertyBean, JSONObjectOption<PenArgs>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$inkPenArgsChangeListener$1$onChangeVelocityAmplifier$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(PenPropertyBean penPropertyBean, JSONObjectOption<PenArgs> jSONObjectOption) {
                        invoke2(penPropertyBean, jSONObjectOption);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenPropertyBean penProperty, @NotNull JSONObjectOption<PenArgs> penArgsOption) {
                        Intrinsics.checkNotNullParameter(penProperty, "penProperty");
                        Intrinsics.checkNotNullParameter(penArgsOption, "penArgsOption");
                        final float f = velocityAmplifier;
                        penArgsOption.getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$inkPenArgsChangeListener$1$onChangeVelocityAmplifier$1.1
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
                            public final void invoke2(@Nullable PenArgs penArgs) {
                                if (penArgs == null) {
                                    return;
                                }
                                penArgs.setVelocityAmplifier(f);
                            }
                        });
                    }
                });
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.InkPenPopup.InkPenArgsChangeListener
            public void onChangeVelocityIgnoreThreshold(final float velocityIgnoreThreshold) {
                ShapeToolPenArgsHandler.this.m50202b(new Function2<PenPropertyBean, JSONObjectOption<PenArgs>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$inkPenArgsChangeListener$1$onChangeVelocityIgnoreThreshold$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(PenPropertyBean penPropertyBean, JSONObjectOption<PenArgs> jSONObjectOption) {
                        invoke2(penPropertyBean, jSONObjectOption);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenPropertyBean penProperty, @NotNull JSONObjectOption<PenArgs> penArgsOption) {
                        Intrinsics.checkNotNullParameter(penProperty, "penProperty");
                        Intrinsics.checkNotNullParameter(penArgsOption, "penArgsOption");
                        final float f = velocityIgnoreThreshold;
                        penArgsOption.getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$inkPenArgsChangeListener$1$onChangeVelocityIgnoreThreshold$1.1
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
                            public final void invoke2(@Nullable PenArgs penArgs) {
                                if (penArgs == null) {
                                    return;
                                }
                                penArgs.setVelocityIgnoreThreshold(f);
                            }
                        });
                    }
                });
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.InkPenPopup.InkPenArgsChangeListener
            public void onChangeVelocityLowerBound(final float velocityLowerBound) {
                ShapeToolPenArgsHandler.this.m50202b(new Function2<PenPropertyBean, JSONObjectOption<PenArgs>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$inkPenArgsChangeListener$1$onChangeVelocityLowerBound$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(PenPropertyBean penPropertyBean, JSONObjectOption<PenArgs> jSONObjectOption) {
                        invoke2(penPropertyBean, jSONObjectOption);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenPropertyBean penProperty, @NotNull JSONObjectOption<PenArgs> penArgsOption) {
                        Intrinsics.checkNotNullParameter(penProperty, "penProperty");
                        Intrinsics.checkNotNullParameter(penArgsOption, "penArgsOption");
                        final float f = velocityLowerBound;
                        penArgsOption.getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$inkPenArgsChangeListener$1$onChangeVelocityLowerBound$1.1
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
                            public final void invoke2(@Nullable PenArgs penArgs) {
                                if (penArgs == null) {
                                    return;
                                }
                                penArgs.setVelocityLowerBound(f);
                            }
                        });
                    }
                });
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.InkPenPopup.InkPenArgsChangeListener
            public void onChangeVelocityUpperBound(final float velocityUpperBound) {
                ShapeToolPenArgsHandler.this.m50202b(new Function2<PenPropertyBean, JSONObjectOption<PenArgs>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$inkPenArgsChangeListener$1$onChangeVelocityUpperBound$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(PenPropertyBean penPropertyBean, JSONObjectOption<PenArgs> jSONObjectOption) {
                        invoke2(penPropertyBean, jSONObjectOption);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenPropertyBean penProperty, @NotNull JSONObjectOption<PenArgs> penArgsOption) {
                        Intrinsics.checkNotNullParameter(penProperty, "penProperty");
                        Intrinsics.checkNotNullParameter(penArgsOption, "penArgsOption");
                        final float f = velocityUpperBound;
                        penArgsOption.getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$inkPenArgsChangeListener$1$onChangeVelocityUpperBound$1.1
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
                            public final void invoke2(@Nullable PenArgs penArgs) {
                                if (penArgs == null) {
                                    return;
                                }
                                penArgs.setVelocityUpperBound(f);
                            }
                        });
                    }
                });
            }
        };
        this.markPenArgsChangeListener = new MarkPenPopup.MarkPenArgsChangeListener() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$markPenArgsChangeListener$1
            @Override // com.onyx.galaxy.note.editor.view.popup.MarkPenPopup.MarkPenArgsChangeListener
            public void onChangeLineDrawing(final int subShapeType) {
                ShapeToolPenArgsHandler.this.m50202b(new Function2<PenPropertyBean, JSONObjectOption<PenArgs>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$markPenArgsChangeListener$1$onChangeLineDrawing$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(PenPropertyBean penPropertyBean, JSONObjectOption<PenArgs> jSONObjectOption) {
                        invoke2(penPropertyBean, jSONObjectOption);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenPropertyBean penProperty, @NotNull JSONObjectOption<PenArgs> penArgsOption) {
                        Intrinsics.checkNotNullParameter(penProperty, "penProperty");
                        Intrinsics.checkNotNullParameter(penArgsOption, "penArgsOption");
                        final int i = subShapeType;
                        penArgsOption.getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$markPenArgsChangeListener$1$onChangeLineDrawing$1.1
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
                            public final void invoke2(@Nullable PenArgs penArgs) {
                                if (penArgs == null) {
                                    return;
                                }
                                penArgs.setSubShapeType(i);
                            }
                        });
                    }
                });
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.MarkPenPopup.MarkPenArgsChangeListener
            public void onChangeRoundCorner(final boolean roundCorner) {
                ShapeToolPenArgsHandler.this.m50202b(new Function2<PenPropertyBean, JSONObjectOption<PenArgs>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$markPenArgsChangeListener$1$onChangeRoundCorner$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(PenPropertyBean penPropertyBean, JSONObjectOption<PenArgs> jSONObjectOption) {
                        invoke2(penPropertyBean, jSONObjectOption);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenPropertyBean penProperty, @NotNull JSONObjectOption<PenArgs> penArgsOption) {
                        Intrinsics.checkNotNullParameter(penProperty, "penProperty");
                        Intrinsics.checkNotNullParameter(penArgsOption, "penArgsOption");
                        final boolean z = roundCorner;
                        penArgsOption.getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$markPenArgsChangeListener$1$onChangeRoundCorner$1.1
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
                            public final void invoke2(@Nullable PenArgs penArgs) {
                                if (penArgs == null) {
                                    return;
                                }
                                penArgs.setRoundCorner(z);
                            }
                        });
                    }
                });
            }
        };
        this.pencilArgsChangeListener = new PencilPopup.PencilArgsChangeListener() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$pencilArgsChangeListener$1
            @Override // com.onyx.galaxy.note.editor.view.popup.PencilPopup.PencilArgsChangeListener
            public void onChangeAlphaFactor(final float alphaFactor) {
                ShapeToolPenArgsHandler.this.m50202b(new Function2<PenPropertyBean, JSONObjectOption<PenArgs>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$pencilArgsChangeListener$1$onChangeAlphaFactor$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(PenPropertyBean penPropertyBean, JSONObjectOption<PenArgs> jSONObjectOption) {
                        invoke2(penPropertyBean, jSONObjectOption);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull PenPropertyBean penProperty, @NotNull JSONObjectOption<PenArgs> penArgsOption) {
                        Intrinsics.checkNotNullParameter(penProperty, "penProperty");
                        Intrinsics.checkNotNullParameter(penArgsOption, "penArgsOption");
                        final float f = alphaFactor;
                        penArgsOption.getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$pencilArgsChangeListener$1$onChangeAlphaFactor$1.1
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
                            public final void invoke2(@Nullable PenArgs penArgs) {
                                if (penArgs == null) {
                                    return;
                                }
                                penArgs.setAlphaFactor(f);
                            }
                        });
                    }
                });
            }
        };
        this.writePenGroupChangeListener = new WritePenGroupPopup.WritePenGroupChangeListener() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$writePenGroupChangeListener$1
            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onAddPenArgs() {
                WritePenGroupPopup.WritePenGroupChangeListener.DefaultImpls.onAddPenArgs(this);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.PencilPopup.PencilArgsChangeListener
            public void onChangeAlphaFactor(float alphaFactor) {
                ShapeToolPenArgsHandler.this.getPencilArgsChangeListener().onChangeAlphaFactor(alphaFactor);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.MarkPenPopup.MarkPenArgsChangeListener
            public void onChangeLineDrawing(int subShapeType) {
                ShapeToolPenArgsHandler.this.getMarkPenArgsChangeListener().onChangeLineDrawing(subShapeType);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.MarkPenPopup.MarkPenArgsChangeListener
            public void onChangeRoundCorner(boolean roundCorner) {
                ShapeToolPenArgsHandler.this.getMarkPenArgsChangeListener().onChangeRoundCorner(roundCorner);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onChangeSmoothLevel(float f) {
                WritePenGroupPopup.WritePenGroupChangeListener.DefaultImpls.onChangeSmoothLevel(this, f);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onChangeStrokeNib(float f) {
                WritePenGroupPopup.WritePenGroupChangeListener.DefaultImpls.onChangeStrokeNib(this, f);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onChangeStrokePressure(float f) {
                WritePenGroupPopup.WritePenGroupChangeListener.DefaultImpls.onChangeStrokePressure(this, f);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onChangeStrokeWidth(float f) {
                WritePenGroupPopup.WritePenGroupChangeListener.DefaultImpls.onChangeStrokeWidth(this, f);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.InkPenPopup.InkPenArgsChangeListener
            public void onChangeVelocity(float velocity) {
                ShapeToolPenArgsHandler.this.getInkPenArgsChangeListener().onChangeVelocity(velocity);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.InkPenPopup.InkPenArgsChangeListener
            public void onChangeVelocityAmplifier(float velocityAmplifier) {
                ShapeToolPenArgsHandler.this.getInkPenArgsChangeListener().onChangeVelocityAmplifier(velocityAmplifier);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.InkPenPopup.InkPenArgsChangeListener
            public void onChangeVelocityIgnoreThreshold(float velocityIgnoreThreshold) {
                ShapeToolPenArgsHandler.this.getInkPenArgsChangeListener().onChangeVelocityIgnoreThreshold(velocityIgnoreThreshold);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.InkPenPopup.InkPenArgsChangeListener
            public void onChangeVelocityLowerBound(float velocityLowerBound) {
                ShapeToolPenArgsHandler.this.getInkPenArgsChangeListener().onChangeVelocityLowerBound(velocityLowerBound);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.InkPenPopup.InkPenArgsChangeListener
            public void onChangeVelocityUpperBound(float velocityUpperBound) {
                ShapeToolPenArgsHandler.this.getInkPenArgsChangeListener().onChangeVelocityUpperBound(velocityUpperBound);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onRemovePenArgs() {
                WritePenGroupPopup.WritePenGroupChangeListener.DefaultImpls.onRemovePenArgs(this);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onSelectedColor(int i, int i2) {
                WritePenGroupPopup.WritePenGroupChangeListener.DefaultImpls.onSelectedColor(this, i, i2);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onSelectedColorDismiss() {
                WritePenGroupPopup.WritePenGroupChangeListener.DefaultImpls.onSelectedColorDismiss(this);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NormalPenPopup.PenArgsChangeListener
            public void onSelectedColorList(@NotNull IntList intList, int i) {
                WritePenGroupPopup.WritePenGroupChangeListener.DefaultImpls.onSelectedColorList(this, intList, i);
            }
        };
    }

    /* renamed from: a */
    public final void m50201a(PenPropertyBean penProperty, PenArgs penArgs) {
        List listOf;
        ResManager resManager = ResManager.INSTANCE;
        int integer = resManager.getInteger(C10651R.integer.pen_box_pens_max_count_limit);
        PencilBoxManager.Companion companion = PencilBoxManager.INSTANCE;
        if (PencilBoxManager.Companion.getPenCount$default(companion, null, 1, null) >= integer) {
            ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) resManager.getString(C10651R.string.pen_box_pens_full_quantity_tip, Integer.valueOf(integer)), false, 2, (Object) null);
            return;
        }
        penArgs.setColorList(penProperty.getHistoryColorList(penArgs.getType(), penArgs.getColor()));
        listOf = CollectionsKt__CollectionsJVMKt.listOf(penArgs.clone(UUIDUtils.INSTANCE.shortUUID()));
        PencilBoxManager.Companion.addPencilBox$default(companion, listOf, null, 2, null);
        RxBaseAction.execute$default(new ActivatePenBoxViewAction(this.editorBundle, true), null, null, null, 7, null);
    }

    /* renamed from: b */
    public final void m50202b(Function2<? super PenPropertyBean, ? super JSONObjectOption<PenArgs>, Unit> func) {
        ShapeToolType shapeToolType = this.viewShapeType;
        if (shapeToolType != null) {
            PenPropertyBean penProperty = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty();
            JSONObjectOption<PenArgs> penArgsOption = penProperty.getPenArgsOption(shapeToolType.getShapeType());
            func.invoke(penProperty, penArgsOption);
            DocCollectionBundle.INSTANCE.postEvent(new ChangePenArgsEvent(penArgsOption.get().m72358clone(), false, 2, null));
        }
    }

    /* renamed from: c */
    public final void m50203c(final int color, final int colorIndex, int shapeType) {
        PenPropertyBean penProperty = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty();
        penProperty.getColorOption(shapeType).put(color);
        penProperty.getColorIndexOption(shapeType).put(colorIndex);
        penProperty.getColorListOption(shapeType).getAndPut(new Function1<IntList, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$saveColorProperty$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(IntList intList) {
                invoke2(intList);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull IntList it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                it2.set(colorIndex, Integer.valueOf(color));
            }
        });
        penProperty.getPenArgsOption(shapeType).getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeToolPenArgsHandler$saveColorProperty$1$2
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
            public final void invoke2(@Nullable PenArgs penArgs) {
                if (penArgs == null) {
                    return;
                }
                penArgs.setColor(color);
            }
        });
    }

    @NotNull
    public final InkPenPopup.InkPenArgsChangeListener getInkPenArgsChangeListener() {
        return this.inkPenArgsChangeListener;
    }

    @NotNull
    public final MarkPenPopup.MarkPenArgsChangeListener getMarkPenArgsChangeListener() {
        return this.markPenArgsChangeListener;
    }

    @NotNull
    public final NormalPenPopup.PenArgsChangeListener getPenArgsChangeListener() {
        return this.penArgsChangeListener;
    }

    @NotNull
    public final PencilPopup.PencilArgsChangeListener getPencilArgsChangeListener() {
        return this.pencilArgsChangeListener;
    }

    @NotNull
    public final ShapeToolType getViewShapeType() {
        return this.viewShapeType;
    }

    @NotNull
    public final WritePenGroupPopup.WritePenGroupChangeListener getWritePenGroupChangeListener() {
        return this.writePenGroupChangeListener;
    }
}
