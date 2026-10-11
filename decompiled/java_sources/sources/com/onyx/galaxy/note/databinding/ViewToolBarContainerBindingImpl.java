package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Guideline;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ObservableBoolean;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.android.sdk.universal.editor.data.CommandDataInfo;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.EraserTypeParamsContainer;
import com.onyx.galaxy.note.editor.view.toolbar.ExcerptTypeParamsContainer;
import com.onyx.galaxy.note.editor.view.toolbar.ImageShapeParamsContainer;
import com.onyx.galaxy.note.editor.view.toolbar.LassoTypeParamsContainer;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeParamsContainer;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeToolViewAuto;
import com.onyx.galaxy.note.editor.view.toolbar.StickersParamsContainer;

/* loaded from: classes9.dex */
public class ViewToolBarContainerBindingImpl extends ViewToolBarContainerBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57945t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f57946u0;

    /* renamed from: q0 */
    public long f57947q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57946u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tl_drag_tool_mask, 3);
        sparseIntArray.put(C10651R.id.ll_tool_container, 4);
        sparseIntArray.put(C10651R.id.ll_undo_redo_container, 5);
        sparseIntArray.put(C10651R.id.undo_redo_divider, 6);
        sparseIntArray.put(C10651R.id.rl_shape_tool_view_auto, 7);
        sparseIntArray.put(C10651R.id.params_container, 8);
        sparseIntArray.put(C10651R.id.scroll_params_container, 9);
        sparseIntArray.put(C10651R.id.image_shape_params_container, 10);
        sparseIntArray.put(C10651R.id.lasso_type_params_container, 11);
        sparseIntArray.put(C10651R.id.excerpt_type_params_container, 12);
        sparseIntArray.put(C10651R.id.eraser_type_params_container, 13);
        sparseIntArray.put(C10651R.id.sticker_params_container, 14);
        sparseIntArray.put(C10651R.id.iv_full_screen, 15);
        sparseIntArray.put(C10651R.id.tool_container_divider_top, 16);
        sparseIntArray.put(C10651R.id.tool_container_divider_bottom, 17);
        sparseIntArray.put(C10651R.id.iv_drag_holder_icon, 18);
        sparseIntArray.put(C10651R.id.guide_view, 19);
        sparseIntArray.put(C10651R.id.guide_line, 20);
        sparseIntArray.put(C10651R.id.guide_divider, 21);
    }

    public ViewToolBarContainerBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 22, f57945t0, f57946u0));
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:53:? A[RETURN, SYNTHETIC] */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void executeBindings() {
        /*
            r17 = this;
            r1 = r17
            monitor-enter(r17)
            long r2 = r1.f57947q0     // Catch: java.lang.Throwable -> La2
            r4 = 0
            r1.f57947q0 = r4     // Catch: java.lang.Throwable -> La2
            monitor-exit(r17)     // Catch: java.lang.Throwable -> La2
            com.onyx.android.sdk.universal.editor.data.CommandDataInfo r0 = r1.mCommandDataInfo
            r6 = 31
            long r6 = r6 & r2
            int r6 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            r7 = 30
            r9 = 29
            r11 = 0
            r12 = 0
            if (r6 == 0) goto L65
            long r13 = r2 & r9
            int r6 = (r13 > r4 ? 1 : (r13 == r4 ? 0 : -1))
            if (r6 == 0) goto L3d
            if (r0 == 0) goto L26
            androidx.databinding.ObservableBoolean r13 = r0.getCanUndo()
            goto L27
        L26:
            r13 = r11
        L27:
            r1.updateRegistration(r12, r13)
            if (r13 == 0) goto L31
            boolean r13 = r13.get()
            goto L32
        L31:
            r13 = r12
        L32:
            if (r6 == 0) goto L3e
            if (r13 == 0) goto L39
            r14 = 256(0x100, double:1.265E-321)
            goto L3b
        L39:
            r14 = 128(0x80, double:6.32E-322)
        L3b:
            long r2 = r2 | r14
            goto L3e
        L3d:
            r13 = r12
        L3e:
            long r14 = r2 & r7
            int r6 = (r14 > r4 ? 1 : (r14 == r4 ? 0 : -1))
            if (r6 == 0) goto L63
            if (r0 == 0) goto L4b
            androidx.databinding.ObservableBoolean r14 = r0.getCanRedo()
            goto L4c
        L4b:
            r14 = r11
        L4c:
            r15 = 1
            r1.updateRegistration(r15, r14)
            if (r14 == 0) goto L57
            boolean r14 = r14.get()
            goto L58
        L57:
            r14 = r12
        L58:
            if (r6 == 0) goto L67
            if (r14 == 0) goto L5f
            r15 = 64
            goto L61
        L5f:
            r15 = 32
        L61:
            long r2 = r2 | r15
            goto L67
        L63:
            r14 = r12
            goto L67
        L65:
            r13 = r12
            r14 = r13
        L67:
            r15 = 320(0x140, double:1.58E-321)
            long r15 = r15 & r2
            int r6 = (r15 > r4 ? 1 : (r15 == r4 ? 0 : -1))
            if (r6 == 0) goto L7f
            if (r0 == 0) goto L74
            androidx.databinding.ObservableBoolean r11 = r0.getEnable()
        L74:
            r0 = 2
            r1.updateRegistration(r0, r11)
            if (r11 == 0) goto L7f
            boolean r0 = r11.get()
            goto L80
        L7f:
            r0 = r12
        L80:
            long r6 = r2 & r7
            int r6 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r6 == 0) goto L8a
            if (r14 == 0) goto L8a
            r7 = r0
            goto L8b
        L8a:
            r7 = r12
        L8b:
            long r2 = r2 & r9
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 == 0) goto L93
            if (r13 == 0) goto L93
            r12 = r0
        L93:
            if (r6 == 0) goto L9a
            com.onyx.android.sdk.theme.widgets.TintImageView r0 = r1.redo
            r0.setEnabled(r7)
        L9a:
            if (r2 == 0) goto La1
            com.onyx.android.sdk.theme.widgets.TintImageView r0 = r1.undo
            r0.setEnabled(r12)
        La1:
            return
        La2:
            r0 = move-exception
            monitor-exit(r17)     // Catch: java.lang.Throwable -> La2
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.ViewToolBarContainerBindingImpl.executeBindings():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57947q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57947q0 = 16L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i == 0) {
            return m45372s((ObservableBoolean) obj, i2);
        }
        if (i == 1) {
            return m45371r((ObservableBoolean) obj, i2);
        }
        if (i != 2) {
            return false;
        }
        return m45373t((ObservableBoolean) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45371r(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57947q0 |= 2;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45372s(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57947q0 |= 1;
        }
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.ViewToolBarContainerBinding
    public void setCommandDataInfo(@Nullable CommandDataInfo commandDataInfo) {
        this.mCommandDataInfo = commandDataInfo;
        synchronized (this) {
            this.f57947q0 |= 8;
        }
        notifyPropertyChanged(2);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (2 != i) {
            return false;
        }
        setCommandDataInfo((CommandDataInfo) obj);
        return true;
    }

    /* renamed from: t */
    public final boolean m45373t(ObservableBoolean observableBoolean, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57947q0 |= 4;
        }
        return true;
    }

    public ViewToolBarContainerBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 3, (TintFrameLayout) objArr[0], (EraserTypeParamsContainer) objArr[13], (ExcerptTypeParamsContainer) objArr[12], (View) objArr[21], (Guideline) objArr[20], (View) objArr[19], (ImageShapeParamsContainer) objArr[10], (TintImageView) objArr[18], (TintImageView) objArr[15], (LassoTypeParamsContainer) objArr[11], (LinearLayout) objArr[4], (LinearLayout) objArr[5], (FrameLayout) objArr[8], (TintImageView) objArr[2], (ShapeToolViewAuto) objArr[7], (ShapeParamsContainer) objArr[9], (StickersParamsContainer) objArr[14], (TintConstraintLayout) objArr[3], (TintView) objArr[17], (TintView) objArr[16], (TintImageView) objArr[1], (TintView) objArr[6]);
        this.f57947q0 = -1L;
        this.clDragContainer.setTag(null);
        this.redo.setTag(null);
        this.undo.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
