package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.onyx.android.sdk.base.extension.BooleanKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.note.common.data.shape.LaserShapeAttr;
import com.onyx.android.sdk.note.common.data.shape.LaserShapeType;
import com.onyx.android.sdk.note.common.utils.PenUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.data.TapePropertyOption;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.PopupLaserShapeBinding;
import com.onyx.galaxy.note.editor.data.PenPropertyBean;
import com.onyx.galaxy.note.editor.data.PensizeConvertExtKt;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;
import com.onyx.galaxy.note.editor.view.popup.LaserShapePopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout;
import com.onyx.galaxy.note.editor.viewmodel.PenViewModel;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.LinkedList;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010\u0016\u001a\u00020\u0014\u0012\u0006\u0010#\u001a\u00020\"\u0012\u0006\u0010%\u001a\u00020$¢\u0006\u0004\b&\u0010'J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002J\u0012\u0010\r\u001a\u00020\u00022\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J\u001a\u0010\u0013\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u00100\u000fH\u0002R\u0014\u0010\u0016\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0015R\u0016\u0010\u0019\u001a\u00020\u00178\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u0018R\u001c\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\u001c¨\u0006("}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;", "Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;", "", "A", SardineUtil.DEFAULT_NAMESPACE_PREFIX, BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "B", "z", "Landroid/view/View;", "view", "E", "Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;", "type", "F", "y", "Ljava/util/LinkedList;", "Lkotlin/Pair;", "", "", "x", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "shapeToolType", "Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;", "Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;", "binding", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "shapeAttrOption", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "penViewModel", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LaserShapePopup extends BasePenPopup {

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public final ShapeToolType shapeToolType;

    /* renamed from: y, reason: from kotlin metadata */
    public PopupLaserShapeBinding binding;

    /* renamed from: z, reason: from kotlin metadata */
    @NotNull
    public JSONObjectOption<LaserShapeAttr> shapeAttrOption;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LaserShapePopup(@NotNull Context context, @NotNull EditorBundle editorBundle, @NotNull ShapeToolType shapeToolType, @NotNull PenViewModel penViewModel, @NotNull DockType dockType) {
        super(context, shapeToolType, editorBundle, penViewModel, dockType);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shapeToolType, "shapeToolType");
        Intrinsics.checkNotNullParameter(penViewModel, "penViewModel");
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        this.shapeToolType = shapeToolType;
        this.shapeAttrOption = MMKVNote.INSTANCE.getLaserShapeAttrOption();
        m48887A();
        m48890D();
    }

    /* renamed from: A */
    public final void m48887A() {
        this.shapeAttrOption.getAndPut(new Function1<LaserShapeAttr, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.LaserShapePopup$initShapeAttrOption$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LaserShapeAttr laserShapeAttr) {
                invoke2(laserShapeAttr);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable LaserShapeAttr laserShapeAttr) {
                ShapeToolType shapeToolType;
                ShapeToolType shapeToolType2;
                if (laserShapeAttr != null) {
                    PenPropertyBean penProperty = LaserShapePopup.this.getPenProperty();
                    shapeToolType2 = LaserShapePopup.this.shapeToolType;
                    laserShapeAttr.setStrokeWidth(penProperty.getPenArgsOption(shapeToolType2.getShapeType()).get().getWidth());
                }
                if (laserShapeAttr == null) {
                    return;
                }
                PenPropertyBean penProperty2 = LaserShapePopup.this.getPenProperty();
                shapeToolType = LaserShapePopup.this.shapeToolType;
                laserShapeAttr.setColor(penProperty2.getPenArgsOption(shapeToolType.getShapeType()).get().getColor());
            }
        });
    }

    /* renamed from: B */
    public final void m48888B() {
        PopupLaserShapeBinding popupLaserShapeBinding = this.binding;
        PopupLaserShapeBinding popupLaserShapeBinding2 = null;
        if (popupLaserShapeBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupLaserShapeBinding = null;
        }
        StickSeekBarContainer stickSeekBarContainer = popupLaserShapeBinding.seekBarThickness;
        PenUtils penUtils = PenUtils.INSTANCE;
        Range<Float> between = Range.between(Float.valueOf(PensizeConvertExtKt.sizeToValue(penUtils.getMaxStrokeWidth(this.shapeToolType.getShapeType()))), Float.valueOf(PensizeConvertExtKt.sizeToValue(penUtils.getMinStrokeWidth(this.shapeToolType.getShapeType()))));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        stickSeekBarContainer.setRange(between);
        PopupLaserShapeBinding popupLaserShapeBinding3 = this.binding;
        if (popupLaserShapeBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupLaserShapeBinding3 = null;
        }
        popupLaserShapeBinding3.seekBarThickness.setProgressValue(PensizeConvertExtKt.sizeToValue(this.shapeAttrOption.get().getCom.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver.ARGS_STROKE_WIDTH java.lang.String()));
        PopupLaserShapeBinding popupLaserShapeBinding4 = this.binding;
        if (popupLaserShapeBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupLaserShapeBinding2 = popupLaserShapeBinding4;
        }
        popupLaserShapeBinding2.seekBarThickness.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.LaserShapePopup$initStrokeAndColorView$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                JSONObjectOption jSONObjectOption;
                ShapeToolType shapeToolType;
                ShapeToolType shapeToolType2;
                ShapeToolType shapeToolType3;
                if (z) {
                    return;
                }
                final float valueToSize = PensizeConvertExtKt.valueToSize(f2);
                jSONObjectOption = LaserShapePopup.this.shapeAttrOption;
                jSONObjectOption.getAndPut(new Function1<LaserShapeAttr, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.LaserShapePopup$initStrokeAndColorView$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(LaserShapeAttr laserShapeAttr) {
                        invoke2(laserShapeAttr);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@Nullable LaserShapeAttr laserShapeAttr) {
                        if (laserShapeAttr == null) {
                            return;
                        }
                        laserShapeAttr.setStrokeWidth(valueToSize);
                    }
                });
                PenPropertyBean penProperty = LaserShapePopup.this.getPenProperty();
                shapeToolType = LaserShapePopup.this.shapeToolType;
                penProperty.getStrokeWidthOption(shapeToolType.getShapeType()).put(valueToSize);
                PenPropertyBean penProperty2 = LaserShapePopup.this.getPenProperty();
                shapeToolType2 = LaserShapePopup.this.shapeToolType;
                penProperty2.saveSelectPenStrokeWidth(shapeToolType2.getShapeType(), valueToSize);
                PenPropertyBean penProperty3 = LaserShapePopup.this.getPenProperty();
                shapeToolType3 = LaserShapePopup.this.shapeToolType;
                penProperty3.updateSizeList(shapeToolType3.getShapeType(), valueToSize);
                LaserShapePopup.this.getPenViewModel().getSize().postValue(Float.valueOf(valueToSize));
            }
        });
    }

    /* renamed from: C */
    public final void m48889C() {
        PopupLaserShapeBinding popupLaserShapeBinding = this.binding;
        PopupLaserShapeBinding popupLaserShapeBinding2 = null;
        if (popupLaserShapeBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupLaserShapeBinding = null;
        }
        popupLaserShapeBinding.dotType.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.dvi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LaserShapePopup.this.m48891E(view);
            }
        });
        PopupLaserShapeBinding popupLaserShapeBinding3 = this.binding;
        if (popupLaserShapeBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupLaserShapeBinding2 = popupLaserShapeBinding3;
        }
        popupLaserShapeBinding2.lineType.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.dvi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LaserShapePopup.this.m48891E(view);
            }
        });
        m48892F(this.shapeAttrOption.get().getType());
    }

    /* renamed from: D */
    public final void m48890D() {
        PopupLaserShapeBinding inflate = PopupLaserShapeBinding.inflate(LayoutInflater.from(getContext()));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setOutsideTouchable(true);
        setFocusable(true);
        PopupLaserShapeBinding popupLaserShapeBinding = this.binding;
        if (popupLaserShapeBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupLaserShapeBinding = null;
        }
        ShapeColorPropertyLayout colorLayout = popupLaserShapeBinding.colorLayout;
        Intrinsics.checkNotNullExpressionValue(colorLayout, "colorLayout");
        BasePenPopup.initColorLayout$default(this, colorLayout, null, 2, null);
        m48889C();
        m48888B();
        m48895z();
        m48894y();
    }

    /* renamed from: E */
    public final void m48891E(View view) {
        final LaserShapeType laserShapeType = (LaserShapeType) ViewKt.getTagSafely(view);
        if (laserShapeType == null) {
            return;
        }
        m48892F(laserShapeType);
        this.shapeAttrOption.getAndPut(new Function1<LaserShapeAttr, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.LaserShapePopup$onLaserTypeClick$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LaserShapeAttr laserShapeAttr) {
                invoke2(laserShapeAttr);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable LaserShapeAttr laserShapeAttr) {
                if (laserShapeAttr == null) {
                    return;
                }
                laserShapeAttr.setType(LaserShapeType.this);
            }
        });
    }

    /* renamed from: F */
    public final void m48892F(LaserShapeType type) {
        PopupLaserShapeBinding popupLaserShapeBinding = this.binding;
        PopupLaserShapeBinding popupLaserShapeBinding2 = null;
        if (popupLaserShapeBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupLaserShapeBinding = null;
        }
        popupLaserShapeBinding.dotType.setSelected(type == LaserShapeType.DOT);
        PopupLaserShapeBinding popupLaserShapeBinding3 = this.binding;
        if (popupLaserShapeBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupLaserShapeBinding2 = popupLaserShapeBinding3;
        }
        popupLaserShapeBinding2.lineType.setSelected(type == LaserShapeType.LINE);
    }

    /* renamed from: x */
    public final LinkedList<Pair<String, Object>> m48893x() {
        TapePropertyOption tapePropertyOption = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty().getTapePropertyOption();
        LinkedList<Pair<String, Object>> linkedList = new LinkedList<>();
        linkedList.add(new Pair<>(OnyxStatisticConstant.JSON_KEY_IS_LINEAR_TAP, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(tapePropertyOption.getTapeType() == 0)))));
        linkedList.add(new Pair<>(OnyxStatisticConstant.JSON_KEY_IS_RECT_TAP, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(tapePropertyOption.getTapeType() == 1)))));
        linkedList.add(new Pair<>(OnyxStatisticConstant.JSON_KEY_IS_SHOW_ALL_TAP, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(tapePropertyOption.isShowAllTape())))));
        OnyxStatisticConstant onyxStatisticConstant = OnyxStatisticConstant.INSTANCE;
        linkedList.add(new Pair<>("color", onyxStatisticConstant.rgbaValueFormat(getPenArgsOption().get().getColor())));
        linkedList.add(new Pair<>("thickness", onyxStatisticConstant.thicknessValueFormat(PensizeConvertExtKt.sizeToValue(getPenArgsOption().get().getWidth()))));
        return linkedList;
    }

    /* renamed from: y */
    public final void m48894y() {
        getContentView().addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.onyx.galaxy.note.editor.view.popup.LaserShapePopup$initAttachStateReportListener$1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(@NotNull View v) {
                LinkedList m48893x;
                Intrinsics.checkNotNullParameter(v, "v");
                StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
                EditorBundle editorBundle = LaserShapePopup.this.getEditorBundle();
                m48893x = LaserShapePopup.this.m48893x();
                statisticsBundle.reportEvent(editorBundle, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_LASER_BTN_DOUBLE_CLICK_SHOW_MENU, OnyxStatisticConstant.EVENT_TYPE_CLICK, m48893x);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(@NotNull View v) {
                LinkedList m48893x;
                Intrinsics.checkNotNullParameter(v, "v");
                StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
                EditorBundle editorBundle = LaserShapePopup.this.getEditorBundle();
                m48893x = LaserShapePopup.this.m48893x();
                statisticsBundle.reportEvent(editorBundle, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_LASER_BTN_DOUBLE_CLICK_CLOSE_MENU, OnyxStatisticConstant.EVENT_TYPE_CLICK, m48893x);
            }
        });
    }

    /* renamed from: z */
    public final void m48895z() {
        PopupLaserShapeBinding popupLaserShapeBinding = this.binding;
        PopupLaserShapeBinding popupLaserShapeBinding2 = null;
        if (popupLaserShapeBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupLaserShapeBinding = null;
        }
        StickSeekBarContainer stickSeekBarContainer = popupLaserShapeBinding.seekBarDuration;
        Range<Float> between = Range.between(Float.valueOf(0.0f), Float.valueOf(100.0f));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        stickSeekBarContainer.setRange(between);
        PopupLaserShapeBinding popupLaserShapeBinding3 = this.binding;
        if (popupLaserShapeBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupLaserShapeBinding3 = null;
        }
        popupLaserShapeBinding3.seekBarDuration.setProgressValue(LaserShapeAttr.INSTANCE.getProgressByDuration(this.shapeAttrOption.get().getDuration()));
        PopupLaserShapeBinding popupLaserShapeBinding4 = this.binding;
        if (popupLaserShapeBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupLaserShapeBinding4 = null;
        }
        popupLaserShapeBinding4.seekBarDuration.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.LaserShapePopup$initDurationView$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                JSONObjectOption jSONObjectOption;
                if (z) {
                    return;
                }
                final long secondByProgress = LaserShapeAttr.INSTANCE.getSecondByProgress(f) * 1000;
                jSONObjectOption = LaserShapePopup.this.shapeAttrOption;
                jSONObjectOption.getAndPut(new Function1<LaserShapeAttr, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.LaserShapePopup$initDurationView$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(LaserShapeAttr laserShapeAttr) {
                        invoke2(laserShapeAttr);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@Nullable LaserShapeAttr laserShapeAttr) {
                        if (laserShapeAttr == null) {
                            return;
                        }
                        laserShapeAttr.setDuration(secondByProgress);
                    }
                });
            }
        });
        PopupLaserShapeBinding popupLaserShapeBinding5 = this.binding;
        if (popupLaserShapeBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupLaserShapeBinding2 = popupLaserShapeBinding5;
        }
        popupLaserShapeBinding2.seekBarDuration.setFormatProgressValueStrCallback(new Function2<Float, String, String>() { // from class: com.onyx.galaxy.note.editor.view.popup.LaserShapePopup$initDurationView$2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ String invoke(Float f, String str) {
                return invoke(f.floatValue(), str);
            }

            @NotNull
            public final String invoke(float f, @NotNull String suffix) {
                Intrinsics.checkNotNullParameter(suffix, "suffix");
                return LaserShapeAttr.INSTANCE.getSecondByProgress(f) + suffix;
            }
        });
    }
}
