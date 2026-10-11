package com.onyx.galaxy.note.editor.view.toolbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.HorizontalScrollView;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.utils.JSONListOption;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.data.EraserPropertyOption;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.statistics.EraserPopupMenuEventBean;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.LayoutEraserTypeParamsContainerBinding;
import com.onyx.galaxy.note.editor.data.PensizeConvertExtKt;
import com.onyx.galaxy.note.editor.view.popup.EraserPopup;
import com.onyx.galaxy.note.editor.view.toolbar.EraserTypeParamsContainer;
import com.onyx.galaxy.note.editor.viewmodel.PenViewModel;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fB\u001d\b\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010 ¢\u0006\u0004\b\u001e\u0010\"B%\b\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010 \u0012\u0006\u0010#\u001a\u00020\u0006¢\u0006\u0004\b\u001e\u0010$J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0016J\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eJ\b\u0010\u0011\u001a\u00020\u0004H\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\u0013\u001a\u00020\u0004H\u0002R\u001b\u0010\u0019\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006%"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;", "Landroid/widget/HorizontalScrollView;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "setEditorBundle", "", "eraserType", "updateEraserTypeUI", "visibility", "setVisibility", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "penViewModel", "setPenViewModel", "", "rotation", "setOrientationChanged", "d", C6999h.f39688c, "i", "Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;", "e", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;", "binding", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class EraserTypeParamsContainer extends HorizontalScrollView {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: f, reason: from kotlin metadata */
    public EditorBundle editorBundle;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EraserTypeParamsContainer(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: e */
    public static final void m49895e(EraserTypeParamsContainer this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49899h(1);
    }

    /* renamed from: f */
    public static final void m49896f(EraserTypeParamsContainer this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49899h(0);
    }

    /* renamed from: g */
    public static final void m49897g(EraserTypeParamsContainer this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49899h(2);
    }

    private final LayoutEraserTypeParamsContainerBinding getBinding() {
        return (LayoutEraserTypeParamsContainerBinding) this.binding.getValue();
    }

    /* renamed from: d */
    public final void m49898d() {
        getBinding().pixelEraser.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.qrf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EraserTypeParamsContainer.m49895e(EraserTypeParamsContainer.this, view);
            }
        });
        getBinding().strokeEraser.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.rrf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EraserTypeParamsContainer.m49896f(EraserTypeParamsContainer.this, view);
            }
        });
        getBinding().selectEraser.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.srf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EraserTypeParamsContainer.m49897g(EraserTypeParamsContainer.this, view);
            }
        });
        updateEraserTypeUI(EraserPropertyOption.INSTANCE.getEraserTypeOption().get());
    }

    /* renamed from: h */
    public final void m49899h(int eraserType) {
        EraserPopup.INSTANCE.eraserTypeChange(eraserType);
        updateEraserTypeUI(eraserType);
        m49900i();
    }

    /* renamed from: i */
    public final void m49900i() {
        JSONObjectOption<PenArgs> penArgsOption = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty().getPenArgsOption(1000);
        EraserPropertyOption eraserPropertyOption = EraserPropertyOption.INSTANCE;
        JSONListOption<Integer> eraserElementsOnlyOption = eraserPropertyOption.getEraserElementsOnlyOption();
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        StatisticsBundle.INSTANCE.reportEraserPopupMenuEvent(new EraserPopupMenuEventBean(editorBundle, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_RIGHT_ERASER_SHORTCUT_MENU_CLICK, "view", getBinding().pixelEraser.isSelected(), getBinding().strokeEraser.isSelected(), getBinding().selectEraser.isSelected(), PensizeConvertExtKt.sizeToValue(penArgsOption.get().getWidth()), eraserPropertyOption.getPressureSwitchOption().get(), eraserElementsOnlyOption.contains((JSONListOption<Integer>) 15), eraserElementsOnlyOption.contains((JSONListOption<Integer>) 39)));
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        getBinding().colorSizeProperty.setEditorBundle(editorBundle);
    }

    public final void setOrientationChanged(float rotation) {
        getBinding().pixelEraser.setRotation(rotation);
        getBinding().strokeEraser.setRotation(rotation);
        getBinding().selectEraser.setRotation(rotation);
    }

    public final void setPenViewModel(@NotNull PenViewModel penViewModel) {
        Intrinsics.checkNotNullParameter(penViewModel, "penViewModel");
        getBinding().colorSizeProperty.setPenViewModel(penViewModel);
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        if (visibility == 0) {
            updateEraserTypeUI(EraserPropertyOption.INSTANCE.getEraserTypeOption().get());
        }
    }

    public final void updateEraserTypeUI(int eraserType) {
        getBinding().pixelEraser.setSelected(eraserType == 1);
        getBinding().strokeEraser.setSelected(eraserType == 0);
        getBinding().selectEraser.setSelected(eraserType == 2);
        ViewKt.setViewVisibleOrGone(getBinding().colorSizeProperty, !getBinding().selectEraser.isSelected());
        if (EraserPropertyOption.INSTANCE.getEraserAllContainsSwitchOption().get()) {
            getBinding().selectEraser.setImageDrawable(ThemeUtils.getThemeDrawable(C10651R.drawable.ic_eraser_all_contains));
        } else {
            getBinding().selectEraser.setImageDrawable(ThemeUtils.getThemeDrawable(C10651R.drawable.ic_eraser_select));
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EraserTypeParamsContainer(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ EraserTypeParamsContainer(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EraserTypeParamsContainer(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LayoutEraserTypeParamsContainerBinding>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.EraserTypeParamsContainer$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LayoutEraserTypeParamsContainerBinding invoke() {
                return LayoutEraserTypeParamsContainerBinding.inflate(LayoutInflater.from(EraserTypeParamsContainer.this.getContext()), EraserTypeParamsContainer.this, true);
            }
        });
        this.binding = lazy;
        m49898d();
    }

    public /* synthetic */ EraserTypeParamsContainer(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}
