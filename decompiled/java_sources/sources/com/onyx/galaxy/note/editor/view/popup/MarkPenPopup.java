package com.onyx.galaxy.note.editor.view.popup;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.CompoundButton;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.genericshape.C7399R;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.events.note.ChangePenArgsEvent;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.databinding.PopupMarkPenBinding;
import com.onyx.galaxy.note.editor.data.PreviewTouchDataBean;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;
import com.onyx.galaxy.note.editor.view.popup.MarkPenPopup;
import com.onyx.galaxy.note.editor.view.popup.NormalPenPopup;
import com.onyx.galaxy.note.editor.view.toolbar.PhysicalMarkPenGroup;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorArgsPropertyLayout;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001 B\u001b\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u001e\u0010\u001fJ\b\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0007J\b\u0010\b\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\u001a\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\nH\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\nH\u0002J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\nH\u0002R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001b\u0010\u001b\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006!"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;", "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;", "", "onShow", "onDismiss", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;", NotificationCompat.CATEGORY_EVENT, "onChangePenArgsEvent", "w", "v", "", "isRoundCorner", "isFromClick", "z", "r", "roundCorner", "y", "lineDrawing", "x", "Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;", "u", "Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;", "markPenArgsChangeListener", "Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;", "Lkotlin/Lazy;", "q", "()Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;", "penPopupContext", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;)V", "MarkPenArgsChangeListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class MarkPenPopup extends NormalPenPopup {

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public final MarkPenArgsChangeListener markPenArgsChangeListener;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;", "", "onChangeLineDrawing", "", "subShapeType", "", "onChangeRoundCorner", "roundCorner", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface MarkPenArgsChangeListener {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes9.dex */
        public static final class DefaultImpls {
            public static void onChangeLineDrawing(@NotNull MarkPenArgsChangeListener markPenArgsChangeListener, int i) {
            }

            public static void onChangeRoundCorner(@NotNull MarkPenArgsChangeListener markPenArgsChangeListener, boolean z) {
            }
        }

        void onChangeLineDrawing(int subShapeType);

        void onChangeRoundCorner(boolean roundCorner);
    }

    public /* synthetic */ MarkPenPopup(NormalPenPopup.NormalPenPopupContext normalPenPopupContext, MarkPenArgsChangeListener markPenArgsChangeListener, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(normalPenPopupContext, (i & 2) != 0 ? null : markPenArgsChangeListener);
    }

    /* renamed from: A */
    public static /* synthetic */ void m49051A(MarkPenPopup markPenPopup, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = false;
        }
        markPenPopup.m49064z(z, z2);
    }

    /* renamed from: s */
    public static final void m49055s(MarkPenPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49063y(false);
    }

    /* renamed from: t */
    public static final void m49056t(MarkPenPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49063y(true);
    }

    /* renamed from: u */
    public static final void m49057u(MarkPenPopup this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49062x(z);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangePenArgsEvent(@NotNull ChangePenArgsEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m49058q().rightAngleType.onPenArgsChanged(event.getPenArgs());
        m49058q().roundCornerType.onPenArgsChanged(event.getPenArgs());
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onDismiss() {
        super.onDismiss();
        DocCollectionBundle.INSTANCE.ensureUnRegister(this);
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onShow() {
        super.onShow();
        DocCollectionBundle.INSTANCE.ensureRegister(this);
    }

    /* renamed from: q */
    public final PopupMarkPenBinding m49058q() {
        return (PopupMarkPenBinding) this.binding.getValue();
    }

    /* renamed from: r */
    public final void m49059r() {
        m49058q().rightAngleType.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.z8j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MarkPenPopup.m49055s(MarkPenPopup.this, view);
            }
        });
        m49058q().roundCornerType.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.a9j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MarkPenPopup.m49056t(MarkPenPopup.this, view);
            }
        });
        m49058q().switchLineDrawing.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.b9j
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                MarkPenPopup.m49057u(MarkPenPopup.this, compoundButton, z);
            }
        });
    }

    /* renamed from: v */
    public final void m49060v() {
        PreviewTouchDataBean previewPointsData = NoteConfigManager.INSTANCE.getPreviewPointsData(C7399R.raw.preview_point_data_marker_pen);
        PhysicalMarkPenGroup physicalMarkPenGroup = m49058q().rightAngleType;
        ShapeToolType shapeToolType = ShapeToolType.MARKER_PEN;
        physicalMarkPenGroup.setShapeData(shapeToolType, previewPointsData);
        m49058q().roundCornerType.setShapeData(shapeToolType, previewPointsData);
        m49058q().rightAngleType.onPenArgsChanged(getPenPopupContext().getInitPenArgs());
        m49058q().roundCornerType.onPenArgsChanged(getPenPopupContext().getInitPenArgs());
    }

    /* renamed from: w */
    public final void m49061w() {
        ShapeColorArgsPropertyLayout colorLayout = m49058q().colorLayout;
        Intrinsics.checkNotNullExpressionValue(colorLayout, "colorLayout");
        initColorLayout(colorLayout);
        StickSeekBarContainer seekBarThickness = m49058q().seekBarThickness;
        Intrinsics.checkNotNullExpressionValue(seekBarThickness, "seekBarThickness");
        initStrokeWidthView(seekBarThickness);
        TintTextView addToPenBox = m49058q().addToPenBox;
        Intrinsics.checkNotNullExpressionValue(addToPenBox, "addToPenBox");
        initPenBoxOperateView(addToPenBox);
        m49051A(this, getPenPopupContext().getInitPenArgs().getRoundCorner(), false, 2, null);
        m49060v();
        m49058q().switchLineDrawing.setChecked(getPenPopupContext().getInitPenArgs().getSubShapeType() == 7);
    }

    /* renamed from: x */
    public final void m49062x(boolean lineDrawing) {
        int i = lineDrawing ? 7 : -1;
        MarkPenArgsChangeListener markPenArgsChangeListener = this.markPenArgsChangeListener;
        if (markPenArgsChangeListener != null) {
            markPenArgsChangeListener.onChangeLineDrawing(i);
        }
    }

    /* renamed from: y */
    public final void m49063y(boolean roundCorner) {
        m49064z(roundCorner, true);
        MarkPenArgsChangeListener markPenArgsChangeListener = this.markPenArgsChangeListener;
        if (markPenArgsChangeListener != null) {
            markPenArgsChangeListener.onChangeRoundCorner(roundCorner);
        }
    }

    /* renamed from: z */
    public final void m49064z(boolean isRoundCorner, boolean isFromClick) {
        m49058q().rightAngleType.setViewSelect(!isRoundCorner, isFromClick);
        m49058q().roundCornerType.setViewSelect(isRoundCorner, isFromClick);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MarkPenPopup(@NotNull NormalPenPopup.NormalPenPopupContext penPopupContext, @Nullable MarkPenArgsChangeListener markPenArgsChangeListener) {
        super(penPopupContext);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(penPopupContext, "penPopupContext");
        this.markPenArgsChangeListener = markPenArgsChangeListener;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupMarkPenBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.MarkPenPopup$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupMarkPenBinding invoke() {
                return PopupMarkPenBinding.inflate(LayoutInflater.from(MarkPenPopup.this.getContext()));
            }
        });
        this.binding = lazy;
        View root = m49058q().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m49061w();
        m49059r();
    }
}
