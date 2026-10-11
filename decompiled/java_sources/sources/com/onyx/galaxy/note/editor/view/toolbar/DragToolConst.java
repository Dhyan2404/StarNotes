package com.onyx.galaxy.note.editor.view.toolbar;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001c\u0010\u001dR\u001b\u0010\u0007\u001a\u00020\u00028FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\n\u001a\u00020\u00028FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006R\u0014\u0010\f\u001a\u00020\u000b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\rR\u0014\u0010\u000f\u001a\u00020\u000b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\rR\u0014\u0010\u0010\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0011R\u0014\u0010\u0017\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0011R\u0014\u0010\u0019\u001a\u00020\u00188\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0011¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/DragToolConst;", "", "", "a", "Lkotlin/Lazy;", "getTOOL_SHAPE_PERCENT", "()F", "TOOL_SHAPE_PERCENT", "b", "getTOOL_PARAMS_PERCENT", "TOOL_PARAMS_PERCENT", "", "ANIM_DURATION", "J", "ANIM_DURATION_LONG", "DELAY_SET_VIEW_POSITION", "ANIM_FROM_VALUE", "F", "ANIM_TO_VALUE", "DOUBLE", "DOCK_HORIZONTAL_ROTATION", "DOCK_VERTICAL_ROTATION", "ICON_ROTATION_HORIZONTAL", "ICON_ROTATION_VERTICAL", "", "NO_TRANSPARENT_VALUE", "I", "INVALID_VALUE", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DragToolConst {
    public static final long ANIM_DURATION = 300;
    public static final long ANIM_DURATION_LONG = 500;
    public static final float ANIM_FROM_VALUE = 0.0f;
    public static final float ANIM_TO_VALUE = 1.0f;
    public static final long DELAY_SET_VIEW_POSITION = 50;
    public static final float DOCK_HORIZONTAL_ROTATION = 0.0f;
    public static final float DOCK_VERTICAL_ROTATION = 90.0f;
    public static final float DOUBLE = 2.0f;
    public static final float ICON_ROTATION_HORIZONTAL = 0.0f;
    public static final float ICON_ROTATION_VERTICAL = 270.0f;

    @NotNull
    public static final DragToolConst INSTANCE = new DragToolConst();
    public static final float INVALID_VALUE = -1.0f;
    public static final int NO_TRANSPARENT_VALUE = 255;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Lazy TOOL_SHAPE_PERCENT;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final Lazy TOOL_PARAMS_PERCENT;

    static {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.DragToolConst$TOOL_SHAPE_PERCENT$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                return Float.valueOf(ResManager.INSTANCE.getFloat(C10651R.dimen.drag_tool_shape_width_percent));
            }
        });
        TOOL_SHAPE_PERCENT = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.DragToolConst$TOOL_PARAMS_PERCENT$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                return Float.valueOf(ResManager.INSTANCE.getFloat(C10651R.dimen.drag_tool_params_width_percent));
            }
        });
        TOOL_PARAMS_PERCENT = lazy2;
    }

    public final float getTOOL_PARAMS_PERCENT() {
        return ((Number) TOOL_PARAMS_PERCENT.getValue()).floatValue();
    }

    public final float getTOOL_SHAPE_PERCENT() {
        return ((Number) TOOL_SHAPE_PERCENT.getValue()).floatValue();
    }
}
