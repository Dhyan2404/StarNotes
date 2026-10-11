package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.DockPoint;
import com.onyx.android.sdk.base.data.WindowLocation;
import com.onyx.android.sdk.base.extension.Activity;
import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.base.extension.PopupLocator;
import com.onyx.android.sdk.base.extension.TypeExtKt;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.note.common.utils.PenUtils;
import com.onyx.android.sdk.replicator.colorset.data.ColorSetModel;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokePressureSensitivityEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeSmoothLevelEvent;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction;
import com.onyx.galaxy.note.editor.data.PensizeConvertExtKt;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;
import com.onyx.galaxy.note.editor.view.popup.NormalPenPopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorArgsPropertyLayout;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0016\u0018\u00002\u00020\u0001:\u0002:;B\u000f\u0012\u0006\u0010)\u001a\u00020$¢\u0006\u0004\b8\u00109J(\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J\b\u0010\n\u001a\u00020\bH\u0016J\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0004J\u0010\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0004J\u0010\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0011H\u0004J\u0010\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u0011H\u0004J\u0010\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0011H\u0004J\u0010\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\u001aH\u0004J\u000e\u0010\u001f\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001dJ\u0006\u0010 \u001a\u00020\u001dJ \u0010#\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u0004H\u0002R\u0017\u0010)\u001a\u00020$8\u0006¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R$\u00100\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u00107\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106¨\u0006<"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "Landroid/view/View;", "parent", "", NotificationCompat.WearableExtender.f5060z, "x", "y", "", "showAtLocation", "dismiss", "Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;", "popup", "onShowColorPickerPopup", "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;", "colorLayout", "initColorLayout", "Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;", "seekBarThickness", "initStrokeWidthView", "seekBarPressure", "initStrokePressureView", "seekBarNib", "initStrokeNibView", "seekBarSmoothLevel", "initSmoothLevelView", "Lcom/onyx/android/sdk/theme/widgets/TintTextView;", "view", "initPenBoxOperateView", "", "progress", "progressToAlpha", "alphaToProgressValue", "originColor", "colorIndex", "m", "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;", "q", "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;", "getPenPopupContext", "()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;", "penPopupContext", "r", "Landroid/view/View;", "getAnchorView", "()Landroid/view/View;", "setAnchorView", "(Landroid/view/View;)V", "anchorView", "", "s", Constants.HASIDCALL_INDEX_SIG, "hasSelectedColor", "t", "Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;", "colorPickPopup", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;)V", "NormalPenPopupContext", "PenArgsChangeListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class NormalPenPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final NormalPenPopupContext penPopupContext;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public View anchorView;

    /* renamed from: s, reason: from kotlin metadata */
    public boolean hasSelectedColor;

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public ColorPickPopup colorPickPopup;

    @Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\u0006\u0010\u0019\u001a\u00020\u0014\u0012\u0006\u0010!\u001a\u00020\u001a¢\u0006\u0004\bA\u0010BR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0019\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\"\u0010%\u001a\u00020\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R$\u00100\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u00108\u001a\u0002018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\"\u0010@\u001a\u0002098\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?¨\u0006C"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;", "", "Landroid/content/Context;", "a", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "b", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "c", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "getViewShapeType", "()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "viewShapeType", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "d", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "getDockType", "()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "e", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "getInitPenArgs", "()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "setInitPenArgs", "(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V", "initPenArgs", "", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "isAddOperation", Constants.BOOLEAN_VALUE_SIG, "setAddOperation", "(Z)V", "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;", C6998g.f39679a, "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;", "getListener", "()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;", "setListener", "(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/onyx/android/sdk/base/extension/IntList;", C6999h.f39688c, "Lcom/onyx/android/sdk/base/extension/IntList;", "getColorList", "()Lcom/onyx/android/sdk/base/extension/IntList;", "setColorList", "(Lcom/onyx/android/sdk/base/extension/IntList;)V", "colorList", "", "i", "I", "getColorIndex", "()I", "setColorIndex", "(I)V", "colorIndex", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class NormalPenPopupContext {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final Context context;

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public final EditorBundle editorBundle;

        /* renamed from: c, reason: from kotlin metadata */
        @NotNull
        public final ShapeToolType viewShapeType;

        /* renamed from: d, reason: from kotlin metadata */
        @NotNull
        public final DockType dockType;

        /* renamed from: e, reason: from kotlin metadata */
        @NotNull
        public PenArgs initPenArgs;

        /* renamed from: f, reason: from kotlin metadata */
        public boolean isAddOperation;

        /* renamed from: g, reason: from kotlin metadata */
        @Nullable
        public PenArgsChangeListener listener;

        /* renamed from: h, reason: from kotlin metadata */
        @NotNull
        public IntList colorList;

        /* renamed from: i, reason: from kotlin metadata */
        public int colorIndex;

        public NormalPenPopupContext(@NotNull Context context, @NotNull EditorBundle editorBundle, @NotNull ShapeToolType viewShapeType, @NotNull DockType dockType, @NotNull PenArgs initPenArgs) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(viewShapeType, "viewShapeType");
            Intrinsics.checkNotNullParameter(dockType, "dockType");
            Intrinsics.checkNotNullParameter(initPenArgs, "initPenArgs");
            this.context = context;
            this.editorBundle = editorBundle;
            this.viewShapeType = viewShapeType;
            this.dockType = dockType;
            this.initPenArgs = initPenArgs;
            this.colorList = new IntList();
            this.colorIndex = -1;
        }

        public final int getColorIndex() {
            return this.colorIndex;
        }

        @NotNull
        public final IntList getColorList() {
            return this.colorList;
        }

        @NotNull
        public final Context getContext() {
            return this.context;
        }

        @NotNull
        public final DockType getDockType() {
            return this.dockType;
        }

        @NotNull
        public final EditorBundle getEditorBundle() {
            return this.editorBundle;
        }

        @NotNull
        public final PenArgs getInitPenArgs() {
            return this.initPenArgs;
        }

        @Nullable
        public final PenArgsChangeListener getListener() {
            return this.listener;
        }

        @NotNull
        public final ShapeToolType getViewShapeType() {
            return this.viewShapeType;
        }

        /* renamed from: isAddOperation, reason: from getter */
        public final boolean getIsAddOperation() {
            return this.isAddOperation;
        }

        public final void setAddOperation(boolean z) {
            this.isAddOperation = z;
        }

        public final void setColorIndex(int i) {
            this.colorIndex = i;
        }

        public final void setColorList(@NotNull IntList intList) {
            Intrinsics.checkNotNullParameter(intList, "<set-?>");
            this.colorList = intList;
        }

        public final void setInitPenArgs(@NotNull PenArgs penArgs) {
            Intrinsics.checkNotNullParameter(penArgs, "<set-?>");
            this.initPenArgs = penArgs;
        }

        public final void setListener(@Nullable PenArgsChangeListener penArgsChangeListener) {
            this.listener = penArgsChangeListener;
        }
    }

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0006H\u0016J\b\u0010\r\u001a\u00020\u0003H\u0016J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\b\u0010\u0012\u001a\u00020\u0003H\u0016J\u0018\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;", "", "onAddPenArgs", "", "onChangeSmoothLevel", "smoothLevel", "", "onChangeStrokeNib", "nib", "onChangeStrokePressure", "pressureSensitivity", "onChangeStrokeWidth", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "onRemovePenArgs", "onSelectedColor", "color", "", "colorIndex", "onSelectedColorDismiss", "onSelectedColorList", "colorList", "Lcom/onyx/android/sdk/base/extension/IntList;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface PenArgsChangeListener {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes9.dex */
        public static final class DefaultImpls {
            public static void onAddPenArgs(@NotNull PenArgsChangeListener penArgsChangeListener) {
            }

            public static void onChangeSmoothLevel(@NotNull PenArgsChangeListener penArgsChangeListener, float f) {
            }

            public static void onChangeStrokeNib(@NotNull PenArgsChangeListener penArgsChangeListener, float f) {
            }

            public static void onChangeStrokePressure(@NotNull PenArgsChangeListener penArgsChangeListener, float f) {
            }

            public static void onChangeStrokeWidth(@NotNull PenArgsChangeListener penArgsChangeListener, float f) {
            }

            public static void onRemovePenArgs(@NotNull PenArgsChangeListener penArgsChangeListener) {
            }

            public static void onSelectedColor(@NotNull PenArgsChangeListener penArgsChangeListener, int i, int i2) {
            }

            public static void onSelectedColorDismiss(@NotNull PenArgsChangeListener penArgsChangeListener) {
            }

            public static void onSelectedColorList(@NotNull PenArgsChangeListener penArgsChangeListener, @NotNull IntList colorList, int i) {
                Intrinsics.checkNotNullParameter(colorList, "colorList");
            }
        }

        void onAddPenArgs();

        void onChangeSmoothLevel(float smoothLevel);

        void onChangeStrokeNib(float nib);

        void onChangeStrokePressure(float pressureSensitivity);

        void onChangeStrokeWidth(float strokeWidth);

        void onRemovePenArgs();

        void onSelectedColor(int color, int colorIndex);

        void onSelectedColorDismiss();

        void onSelectedColorList(@NotNull IntList colorList, int colorIndex);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NormalPenPopup(@NotNull NormalPenPopupContext penPopupContext) {
        super(penPopupContext.getContext(), penPopupContext.getDockType());
        Intrinsics.checkNotNullParameter(penPopupContext, "penPopupContext");
        this.penPopupContext = penPopupContext;
        setFocusable(true);
    }

    /* renamed from: l */
    public static final void m49066l(NormalPenPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.penPopupContext.getIsAddOperation()) {
            PenArgsChangeListener listener = this$0.penPopupContext.getListener();
            if (listener != null) {
                listener.onAddPenArgs();
                return;
            }
            return;
        }
        PenArgsChangeListener listener2 = this$0.penPopupContext.getListener();
        if (listener2 != null) {
            listener2.onRemovePenArgs();
        }
    }

    public final float alphaToProgressValue() {
        return ((this.penPopupContext.getInitPenArgs().getAlphaFactor() - 0.05f) / 1.95f) * ResManager.INSTANCE.getInteger(C10651R.integer.times_100);
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow, android.widget.PopupWindow
    public void dismiss() {
        PenArgsChangeListener listener;
        ColorPickPopup colorPickPopup = this.colorPickPopup;
        if (colorPickPopup != null) {
            colorPickPopup.dismiss();
        }
        if (this.hasSelectedColor && (listener = this.penPopupContext.getListener()) != null) {
            listener.onSelectedColorDismiss();
        }
        super.dismiss();
    }

    @Nullable
    public final View getAnchorView() {
        return this.anchorView;
    }

    @NotNull
    public final NormalPenPopupContext getPenPopupContext() {
        return this.penPopupContext;
    }

    public final void initColorLayout(@NotNull final ShapeColorArgsPropertyLayout colorLayout) {
        Intrinsics.checkNotNullParameter(colorLayout, "colorLayout");
        colorLayout.setShape(this.penPopupContext.getViewShapeType().getShapeType());
        colorLayout.initColorLayout(this.penPopupContext.getColorList(), this.penPopupContext.getColorIndex());
        colorLayout.setListener(new ShapeColorArgsPropertyLayout.ColorSelectedListener() { // from class: com.onyx.galaxy.note.editor.view.popup.NormalPenPopup$initColorLayout$1
            @Override // com.onyx.galaxy.note.editor.view.toolbar.ShapeColorArgsPropertyLayout.ColorSelectedListener
            public void onSelected(int color, int colorIndex) {
                NormalPenPopup.this.hasSelectedColor = true;
                NormalPenPopup.PenArgsChangeListener listener = NormalPenPopup.this.getPenPopupContext().getListener();
                if (listener != null) {
                    listener.onSelectedColor(color, colorIndex);
                }
            }

            @Override // com.onyx.galaxy.note.editor.view.toolbar.ShapeColorArgsPropertyLayout.ColorSelectedListener
            public void onSelectedClick(int color, int colorIndex) {
                NormalPenPopup.this.m49067m(colorLayout, color, colorIndex);
            }
        });
    }

    public final void initPenBoxOperateView(@NotNull TintTextView view) {
        int colorById;
        String string;
        int i;
        Intrinsics.checkNotNullParameter(view, "view");
        if (this.penPopupContext.getIsAddOperation()) {
            colorById = ThemeUtils.getColorById(C7996R.color.theme_primary_color_01);
            string = ResManager.INSTANCE.getString(C10651R.string.add_to_pen_case);
            i = C10651R.drawable.shape_rectangle_primary_bg;
        } else {
            colorById = ThemeUtils.getColorById(C7996R.color.theme_error_color_01);
            string = ResManager.INSTANCE.getString(C10651R.string.remove_from_pen_case);
            i = C10651R.drawable.shape_rectangle_error_bg;
        }
        view.setText(string);
        view.setTextColor(colorById);
        view.setBackgroundResource(i);
        ViewKt.click$default(view, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.iuj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                NormalPenPopup.m49066l(NormalPenPopup.this, view2);
            }
        }, 1, null);
    }

    public final void initSmoothLevelView(@NotNull StickSeekBarContainer seekBarSmoothLevel) {
        Intrinsics.checkNotNullParameter(seekBarSmoothLevel, "seekBarSmoothLevel");
        PenUtils penUtils = PenUtils.INSTANCE;
        Range<Float> between = Range.between(Float.valueOf(penUtils.getMaxSmoothLevel(this.penPopupContext.getViewShapeType().getShapeType())), Float.valueOf(penUtils.getMinSmoothLevel(this.penPopupContext.getViewShapeType().getShapeType())));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        seekBarSmoothLevel.setRange(between);
        seekBarSmoothLevel.setProgressValue(PensizeConvertExtKt.valueToPercent(this.penPopupContext.getInitPenArgs().getSmoothLevel()));
        seekBarSmoothLevel.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.NormalPenPopup$initSmoothLevelView$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                if (z) {
                    return;
                }
                NormalPenPopup.PenArgsChangeListener listener = NormalPenPopup.this.getPenPopupContext().getListener();
                if (listener != null) {
                    listener.onChangeSmoothLevel(PensizeConvertExtKt.percentToValue(f2));
                }
                DocCollectionBundle.INSTANCE.postEvent(new ChangeStrokeSmoothLevelEvent(PensizeConvertExtKt.percentToValue(f2)));
            }
        });
    }

    public final void initStrokeNibView(@NotNull StickSeekBarContainer seekBarNib) {
        Intrinsics.checkNotNullParameter(seekBarNib, "seekBarNib");
        PenUtils penUtils = PenUtils.INSTANCE;
        Range<Float> between = Range.between(Float.valueOf(penUtils.getMaxStrokeNib(this.penPopupContext.getViewShapeType().getShapeType())), Float.valueOf(penUtils.getMinStrokeNib(this.penPopupContext.getViewShapeType().getShapeType())));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        seekBarNib.setRange(between);
        seekBarNib.setProgressValue(PensizeConvertExtKt.valueToPercent(this.penPopupContext.getInitPenArgs().getNib()));
        seekBarNib.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.NormalPenPopup$initStrokeNibView$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                NormalPenPopup.PenArgsChangeListener listener;
                if (z || (listener = NormalPenPopup.this.getPenPopupContext().getListener()) == null) {
                    return;
                }
                listener.onChangeStrokeNib(PensizeConvertExtKt.percentToValue(f2));
            }
        });
    }

    public final void initStrokePressureView(@NotNull StickSeekBarContainer seekBarPressure) {
        Intrinsics.checkNotNullParameter(seekBarPressure, "seekBarPressure");
        PenUtils penUtils = PenUtils.INSTANCE;
        Range<Float> between = Range.between(Float.valueOf(penUtils.getMaxStrokePressure(this.penPopupContext.getViewShapeType().getShapeType())), Float.valueOf(penUtils.getMinStrokePressure(this.penPopupContext.getViewShapeType().getShapeType())));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        seekBarPressure.setRange(between);
        seekBarPressure.setProgressValue(PensizeConvertExtKt.valueToPercent(com.onyx.android.sdk.pen.utils.PenUtils.INSTANCE.toPercentPressureSensitivity(this.penPopupContext.getInitPenArgs().getPressureSensitivity())));
        seekBarPressure.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.NormalPenPopup$initStrokePressureView$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                if (z) {
                    return;
                }
                float normalizedPressureSensitivity = com.onyx.android.sdk.pen.utils.PenUtils.INSTANCE.toNormalizedPressureSensitivity(PensizeConvertExtKt.percentToValue(f2));
                NormalPenPopup.PenArgsChangeListener listener = NormalPenPopup.this.getPenPopupContext().getListener();
                if (listener != null) {
                    listener.onChangeStrokePressure(normalizedPressureSensitivity);
                }
                DocCollectionBundle.INSTANCE.postEvent(new ChangeStrokePressureSensitivityEvent(normalizedPressureSensitivity));
            }
        });
    }

    public final void initStrokeWidthView(@NotNull StickSeekBarContainer seekBarThickness) {
        Intrinsics.checkNotNullParameter(seekBarThickness, "seekBarThickness");
        PenUtils penUtils = PenUtils.INSTANCE;
        Range<Float> between = Range.between(Float.valueOf(PensizeConvertExtKt.sizeToValue(penUtils.getMaxStrokeWidth(this.penPopupContext.getViewShapeType().getShapeType()))), Float.valueOf(PensizeConvertExtKt.sizeToValue(penUtils.getMinStrokeWidth(this.penPopupContext.getViewShapeType().getShapeType()))));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        seekBarThickness.setRange(between);
        seekBarThickness.setProgressValue(PensizeConvertExtKt.sizeToValue(this.penPopupContext.getInitPenArgs().getWidth()));
        seekBarThickness.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.NormalPenPopup$initStrokeWidthView$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                NormalPenPopup.PenArgsChangeListener listener;
                if (z || (listener = NormalPenPopup.this.getPenPopupContext().getListener()) == null) {
                    return;
                }
                listener.onChangeStrokeWidth(PensizeConvertExtKt.valueToSize(f2));
            }
        });
    }

    /* renamed from: m */
    public final void m49067m(final ShapeColorArgsPropertyLayout colorLayout, final int originColor, final int colorIndex) {
        final View view = this.anchorView;
        if (view == null) {
            return;
        }
        final EditorBundle editorBundle = this.penPopupContext.getEditorBundle();
        final ShapeToolType viewShapeType = this.penPopupContext.getViewShapeType();
        final DockType dockType = getDockType();
        final List<Integer> viewColors = colorLayout.getViewColors();
        RxBaseAction.execute$default(new ShowColorPickerAction(view, colorLayout, originColor, colorIndex, this, editorBundle, viewShapeType, dockType, viewColors) { // from class: com.onyx.galaxy.note.editor.view.popup.NormalPenPopup$pickColor$1

            /* renamed from: q */
            public final /* synthetic */ ShapeColorArgsPropertyLayout f60341q;

            /* renamed from: r */
            public final /* synthetic */ int f60342r;

            /* renamed from: s */
            public final /* synthetic */ NormalPenPopup f60343s;

            @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
            /* loaded from: classes9.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[DockType.values().length];
                    try {
                        iArr[DockType.LEFT.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[DockType.RIGHT.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[DockType.TOP.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[DockType.BOTTOM.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            {
                this.f60341q = colorLayout;
                this.f60342r = colorIndex;
                this.f60343s = this;
            }

            @Override // com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction, com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
            public void onColorSelected(int color) {
                this.f60341q.updateColorView(color, this.f60342r);
                this.f60343s.hasSelectedColor = true;
                NormalPenPopup.PenArgsChangeListener listener = this.f60343s.getPenPopupContext().getListener();
                if (listener != null) {
                    listener.onSelectedColor(color, this.f60342r);
                }
            }

            @Override // com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction, com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
            public void onColorSetSelected(@NotNull ColorSetModel colorSet) {
                Intrinsics.checkNotNullParameter(colorSet, "colorSet");
                IntList intList = TypeExtKt.toIntList(colorSet.getColors());
                this.f60341q.updateColorView(intList, this.f60342r);
                this.f60343s.hasSelectedColor = true;
                NormalPenPopup.PenArgsChangeListener listener = this.f60343s.getPenPopupContext().getListener();
                if (listener != null) {
                    listener.onSelectedColorList(intList, this.f60342r);
                }
            }

            @Override // com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction
            public void showPopupWindow(@NotNull ColorPickPopup popup) {
                WindowLocation windowLocation;
                Intrinsics.checkNotNullParameter(popup, "popup");
                ViewLocator viewLocator = ViewLocator.INSTANCE;
                View contentView = this.f60343s.getContentView();
                Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
                View windowDecorView = viewLocator.getWindowDecorView(contentView);
                Intrinsics.checkNotNull(windowDecorView);
                boolean m49068u = m49068u(windowDecorView);
                int i = WhenMappings.$EnumSwitchMapping$0[getDockType().ordinal()];
                if (i == 1) {
                    windowLocation = PopupLocator.INSTANCE.getWindowLocation((PopupLocator) this.f60343s, windowDecorView, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : DockPoint.TOP_LEFT, (r17 & 4) != 0 ? DockPoint.TOP_CENTER : DockPoint.TOP_RIGHT, (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : null);
                } else if (i == 2) {
                    windowLocation = PopupLocator.INSTANCE.getWindowLocation((PopupLocator) this.f60343s, windowDecorView, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : DockPoint.TOP_RIGHT, (r17 & 4) != 0 ? DockPoint.TOP_CENTER : DockPoint.TOP_LEFT, (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : null);
                } else if (i == 3) {
                    windowLocation = PopupLocator.INSTANCE.getWindowLocation((PopupLocator) this.f60343s, windowDecorView, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : DockPoint.reverse$default(DockPoint.BOTTOM_RIGHT, !m49068u, false, 2, null), (r17 & 4) != 0 ? DockPoint.TOP_CENTER : DockPoint.reverse$default(DockPoint.BOTTOM_LEFT, !m49068u, false, 2, null), (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : null);
                } else {
                    if (i != 4) {
                        throw new NoWhenBranchMatchedException();
                    }
                    windowLocation = PopupLocator.INSTANCE.getWindowLocation((PopupLocator) this.f60343s, windowDecorView, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : DockPoint.reverse$default(DockPoint.TOP_RIGHT, !m49068u, false, 2, null), (r17 & 4) != 0 ? DockPoint.TOP_CENTER : DockPoint.reverse$default(DockPoint.TOP_LEFT, !m49068u, false, 2, null), (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : null);
                }
                WindowLocation windowLocation2 = windowLocation;
                this.f60343s.onShowColorPickerPopup(popup);
                windowLocation2.setDx(windowLocation2.getDx() - ResManager.INSTANCE.getDimens(C7384R.dimen.dp_10));
                PopupLocator.show$default(PopupLocator.INSTANCE, popup, windowLocation2, null, 2, null);
            }

            /* renamed from: u */
            public final boolean m49068u(View anchorView) {
                ViewLocator viewLocator = ViewLocator.INSTANCE;
                Rect rectInActivity = viewLocator.rectInActivity(anchorView);
                Rect rectInWindow = viewLocator.rectInWindow(viewLocator.getActivityDecorView(this.f60343s.getContext()));
                return rectInWindow.right - rectInActivity.right > rectInActivity.left - rectInWindow.left;
            }
        }, null, null, null, 7, null);
    }

    public void onShowColorPickerPopup(@NotNull ColorPickPopup popup) {
        Intrinsics.checkNotNullParameter(popup, "popup");
        this.colorPickPopup = popup;
    }

    public final float progressToAlpha(float progress) {
        return ((progress * 1.95f) / ResManager.INSTANCE.getInteger(C10651R.integer.times_100)) + 0.05f;
    }

    public final void setAnchorView(@Nullable View view) {
        this.anchorView = view;
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow, android.widget.PopupWindow
    public void showAtLocation(@NotNull View parent, int gravity, int x, int y) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        super.showAtLocation(parent, gravity, x, y);
        this.anchorView = parent;
    }
}
