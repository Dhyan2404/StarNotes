package com.onyx.galaxy.note.editor.view.toolbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.genericshape.C7399R;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.editor.data.PenPropertyBean;
import com.onyx.galaxy.note.editor.data.PreviewTouchDataBean;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.toolbar.PhysicalShapeIconContainer;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0013\b\u0016\u0012\b\u0010#\u001a\u0004\u0018\u00010\"¢\u0006\u0004\b$\u0010%B\u001d\b\u0016\u0012\b\u0010#\u001a\u0004\u0018\u00010\"\u0012\b\u0010'\u001a\u0004\u0018\u00010&¢\u0006\u0004\b$\u0010(B%\b\u0016\u0012\b\u0010#\u001a\u0004\u0018\u00010\"\u0012\b\u0010'\u001a\u0004\u0018\u00010&\u0012\u0006\u0010)\u001a\u00020\u000e¢\u0006\u0004\b$\u0010*J\u0010\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u001a\u0010\b\u001a\u00020\u00042\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u0006J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tJ\b\u0010\f\u001a\u00020\u0004H\u0002J\b\u0010\r\u001a\u00020\u0004H\u0002J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0011\u001a\u00020\u0004H\u0002J\u0012\u0010\u0014\u001a\u00020\u00042\b\b\u0002\u0010\u0013\u001a\u00020\u0012H\u0002R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u0015R$\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\u0017R\u0017\u0010\u001d\u001a\u00020\u00198\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006+"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconContainer;", "Landroid/widget/LinearLayout;", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "shapeToolType", "", "setViewSelected", "Lkotlin/Function1;", "callback", "setShapeTypeClickCallback", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "penArgs", "onChangePenArgs", C6997f.f39671c, "e", "", "marginStart", "b", "c", "", "isFromClick", C6998g.f39679a, "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "selectShapeToolType", "Lkotlin/jvm/functions/Function1;", "shapeClickCallback", "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "getPenProperty", "()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "penProperty", "Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;", C6999h.f39688c, "Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;", "previewData", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPhysicalShapeIconContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhysicalShapeIconContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconContainer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,96:1\n1864#2,3:97\n*S KotlinDebug\n*F\n+ 1 PhysicalShapeIconContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconContainer\n*L\n49#1:97,3\n*E\n"})
/* loaded from: classes9.dex */
public final class PhysicalShapeIconContainer extends LinearLayout {

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public ShapeToolType selectShapeToolType;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Function1<? super ShapeToolType, Unit> shapeClickCallback;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final PenPropertyBean penProperty;

    /* renamed from: h, reason: from kotlin metadata */
    public PreviewTouchDataBean previewData;

    public PhysicalShapeIconContainer(@Nullable Context context) {
        this(context, null);
    }

    /* renamed from: d */
    public static final void m50105d(View view, PhysicalShapeIconContainer this$0, View view2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        PhysicalShapeIconGroup physicalShapeIconGroup = (PhysicalShapeIconGroup) view;
        if (physicalShapeIconGroup.getIsSelect()) {
            return;
        }
        Function1<? super ShapeToolType, Unit> function1 = this$0.shapeClickCallback;
        if (function1 != null) {
            function1.invoke(physicalShapeIconGroup.getViewShapeType());
        }
        this$0.selectShapeToolType = physicalShapeIconGroup.getViewShapeType();
        this$0.m50111g(true);
    }

    /* renamed from: h */
    public static /* synthetic */ void m50106h(PhysicalShapeIconContainer physicalShapeIconContainer, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        physicalShapeIconContainer.m50111g(z);
    }

    /* renamed from: b */
    public final void m50107b(ShapeToolType shapeToolType, int marginStart) {
        PhysicalShapeIconGroup physicalShapeIconGroup = new PhysicalShapeIconGroup(getContext());
        PreviewTouchDataBean previewTouchDataBean = this.previewData;
        if (previewTouchDataBean == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewData");
            previewTouchDataBean = null;
        }
        physicalShapeIconGroup.setShapeData(shapeToolType, previewTouchDataBean);
        addView(physicalShapeIconGroup);
        ViewGroup.LayoutParams layoutParams = physicalShapeIconGroup.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ((ViewGroup.MarginLayoutParams) layoutParams).setMarginStart(marginStart);
        physicalShapeIconGroup.setHintColor(this.penProperty.getPenArgsOption(shapeToolType.getShapeType()).get().m72358clone().getColor());
    }

    /* renamed from: c */
    public final void m50108c() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            final View childAt = getChildAt(i);
            if (childAt instanceof PhysicalShapeIconGroup) {
                childAt.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.v3l
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        PhysicalShapeIconContainer.m50105d(childAt, this, view);
                    }
                });
            }
        }
    }

    /* renamed from: e */
    public final void m50109e() {
        removeAllViews();
        ArrayList<ShapeToolType> writePenGroupTypeList = ShapeToolType.INSTANCE.getWritePenGroupTypeList();
        int i = 0;
        for (Object obj : writePenGroupTypeList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            ShapeToolType shapeToolType = (ShapeToolType) obj;
            boolean z = true;
            if (!ViewExtKt.isLayoutDirectionRtl(this) ? i == 0 : i == writePenGroupTypeList.size() - 1) {
                z = false;
            }
            m50107b(shapeToolType, z ? ResManager.INSTANCE.getDimens(C7384R.dimen.dp_12_) : 0);
            i = i2;
        }
    }

    /* renamed from: f */
    public final void m50110f() {
        this.previewData = NoteConfigManager.INSTANCE.getPreviewPointsData(C7399R.raw.preview_point_data);
    }

    /* renamed from: g */
    public final void m50111g(boolean isFromClick) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof PhysicalShapeIconGroup) {
                PhysicalShapeIconGroup physicalShapeIconGroup = (PhysicalShapeIconGroup) childAt;
                physicalShapeIconGroup.setViewSelect(physicalShapeIconGroup.getViewShapeType() == this.selectShapeToolType, isFromClick);
            }
        }
    }

    @NotNull
    public final PenPropertyBean getPenProperty() {
        return this.penProperty;
    }

    public final void onChangePenArgs(@NotNull PenArgs penArgs) {
        Intrinsics.checkNotNullParameter(penArgs, "penArgs");
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof PhysicalShapeIconGroup) {
                ((PhysicalShapeIconGroup) childAt).onPenArgsChanged(penArgs);
            }
        }
    }

    public final void setShapeTypeClickCallback(@NotNull Function1<? super ShapeToolType, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.shapeClickCallback = callback;
    }

    public final void setViewSelected(@Nullable ShapeToolType shapeToolType) {
        this.selectShapeToolType = shapeToolType;
        m50106h(this, false, 1, null);
    }

    public PhysicalShapeIconContainer(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public PhysicalShapeIconContainer(@Nullable Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.penProperty = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty();
        setOrientation(0);
        m50110f();
        m50109e();
        m50108c();
    }
}
