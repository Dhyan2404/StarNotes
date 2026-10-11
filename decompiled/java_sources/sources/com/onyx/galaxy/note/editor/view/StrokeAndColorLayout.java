package com.onyx.galaxy.note.editor.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.note.common.data.shape.ShapeAttributesBean;
import com.onyx.galaxy.note.databinding.LayoutStrokeAndColorBinding;
import com.onyx.galaxy.note.editor.view.StrokeAndColorLayout;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001!B\u001d\b\u0016\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001b¢\u0006\u0004\b\u001d\u0010\u001eB'\b\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001b\u0012\b\b\u0002\u0010\u001f\u001a\u00020\t¢\u0006\u0004\b\u001d\u0010 J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\tJ\b\u0010\r\u001a\u00020\u0004H\u0002J\b\u0010\u000e\u001a\u00020\u0004H\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002R\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;", "Landroid/widget/FrameLayout;", "Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "setListener", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;", "shapeAttributes", "setShapeAttributes", "", "max", "min", "setStrokeSeekBarMaxMinValue", "a", "d", "c", "b", "Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;", "e", "Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;", "binding", C6997f.f39671c, "Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;", C6998g.f39679a, "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "ShapeAttributesChangeListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class StrokeAndColorLayout extends FrameLayout {

    /* renamed from: e, reason: from kotlin metadata */
    public LayoutStrokeAndColorBinding binding;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public ShapeAttributesChangeListener listener;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public ShapeAttributesBean shapeAttributes;

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u0000 \n2\u00020\u0001:\u0001\nJ\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;", "", "getStrokeDesc", "", "progress", "", "onShapeAttributesChanged", "", "shapeAttributes", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface ShapeAttributesChangeListener {

        /* renamed from: Companion, reason: from kotlin metadata */
        @NotNull
        public static final Companion INSTANCE = Companion.f59384a;

        @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener$Companion;", "", "Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;", "b", "Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;", "getEMPTY", "()Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;", "EMPTY", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
        /* loaded from: classes9.dex */
        public static final class Companion {

            /* renamed from: a */
            public static final /* synthetic */ Companion f59384a = new Companion();

            /* renamed from: b, reason: from kotlin metadata */
            @NotNull
            public static final ShapeAttributesChangeListener EMPTY = new ShapeAttributesChangeListener() { // from class: com.onyx.galaxy.note.editor.view.StrokeAndColorLayout$ShapeAttributesChangeListener$Companion$EMPTY$1
                @Override // com.onyx.galaxy.note.editor.view.StrokeAndColorLayout.ShapeAttributesChangeListener
                @NotNull
                public String getStrokeDesc(int i) {
                    return StrokeAndColorLayout.ShapeAttributesChangeListener.DefaultImpls.getStrokeDesc(this, i);
                }

                @Override // com.onyx.galaxy.note.editor.view.StrokeAndColorLayout.ShapeAttributesChangeListener
                public void onShapeAttributesChanged(@NotNull ShapeAttributesBean shapeAttributesBean) {
                    StrokeAndColorLayout.ShapeAttributesChangeListener.DefaultImpls.onShapeAttributesChanged(this, shapeAttributesBean);
                }
            };

            @NotNull
            public final ShapeAttributesChangeListener getEMPTY() {
                return EMPTY;
            }
        }

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes9.dex */
        public static final class DefaultImpls {
            @NotNull
            public static String getStrokeDesc(@NotNull ShapeAttributesChangeListener shapeAttributesChangeListener, int i) {
                return String.valueOf(i);
            }

            public static void onShapeAttributesChanged(@NotNull ShapeAttributesChangeListener shapeAttributesChangeListener, @NotNull ShapeAttributesBean shapeAttributes) {
                Intrinsics.checkNotNullParameter(shapeAttributes, "shapeAttributes");
            }
        }

        @NotNull
        String getStrokeDesc(int progress);

        void onShapeAttributesChanged(@NotNull ShapeAttributesBean shapeAttributes);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StrokeAndColorLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.listener = ShapeAttributesChangeListener.INSTANCE.getEMPTY();
        this.shapeAttributes = new ShapeAttributesBean();
        m47435a();
    }

    public static /* synthetic */ void setStrokeSeekBarMaxMinValue$default(StrokeAndColorLayout strokeAndColorLayout, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        strokeAndColorLayout.setStrokeSeekBarMaxMinValue(i, i2);
    }

    /* renamed from: a */
    public final void m47435a() {
        LayoutStrokeAndColorBinding inflate = LayoutStrokeAndColorBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        m47438d();
    }

    /* renamed from: b */
    public final void m47436b() {
        LayoutStrokeAndColorBinding layoutStrokeAndColorBinding = this.binding;
        LayoutStrokeAndColorBinding layoutStrokeAndColorBinding2 = null;
        if (layoutStrokeAndColorBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutStrokeAndColorBinding = null;
        }
        layoutStrokeAndColorBinding.colorLayout.setShape(this.shapeAttributes.getShapeType());
        LayoutStrokeAndColorBinding layoutStrokeAndColorBinding3 = this.binding;
        if (layoutStrokeAndColorBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutStrokeAndColorBinding2 = layoutStrokeAndColorBinding3;
        }
        layoutStrokeAndColorBinding2.colorLayout.setListener(new ShapeColorPropertyLayout.ColorSelectedListener() { // from class: com.onyx.galaxy.note.editor.view.StrokeAndColorLayout$initColorLayout$1
            @Override // com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout.ColorSelectedListener
            public void onSelected(int color, int colorIndex) {
                ShapeAttributesBean shapeAttributesBean;
                StrokeAndColorLayout.ShapeAttributesChangeListener shapeAttributesChangeListener;
                ShapeAttributesBean shapeAttributesBean2;
                shapeAttributesBean = StrokeAndColorLayout.this.shapeAttributes;
                shapeAttributesBean.setColor(color);
                shapeAttributesChangeListener = StrokeAndColorLayout.this.listener;
                shapeAttributesBean2 = StrokeAndColorLayout.this.shapeAttributes;
                shapeAttributesChangeListener.onShapeAttributesChanged(shapeAttributesBean2);
            }
        });
    }

    /* renamed from: c */
    public final void m47437c() {
        LayoutStrokeAndColorBinding layoutStrokeAndColorBinding = this.binding;
        LayoutStrokeAndColorBinding layoutStrokeAndColorBinding2 = null;
        if (layoutStrokeAndColorBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutStrokeAndColorBinding = null;
        }
        layoutStrokeAndColorBinding.strokeSeekbar.setProgress((int) this.shapeAttributes.getShapeWidth());
        LayoutStrokeAndColorBinding layoutStrokeAndColorBinding3 = this.binding;
        if (layoutStrokeAndColorBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutStrokeAndColorBinding3 = null;
        }
        TextView textView = layoutStrokeAndColorBinding3.strokeDesc;
        ShapeAttributesChangeListener shapeAttributesChangeListener = this.listener;
        LayoutStrokeAndColorBinding layoutStrokeAndColorBinding4 = this.binding;
        if (layoutStrokeAndColorBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutStrokeAndColorBinding4 = null;
        }
        textView.setText(shapeAttributesChangeListener.getStrokeDesc(layoutStrokeAndColorBinding4.strokeSeekbar.getProgress()));
        LayoutStrokeAndColorBinding layoutStrokeAndColorBinding5 = this.binding;
        if (layoutStrokeAndColorBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutStrokeAndColorBinding2 = layoutStrokeAndColorBinding5;
        }
        layoutStrokeAndColorBinding2.strokeSeekbar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.onyx.galaxy.note.editor.view.StrokeAndColorLayout$initStrokeLayout$1
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(@NotNull SeekBar seekBar, int progress, boolean fromUser) {
                LayoutStrokeAndColorBinding layoutStrokeAndColorBinding6;
                StrokeAndColorLayout.ShapeAttributesChangeListener shapeAttributesChangeListener2;
                Intrinsics.checkNotNullParameter(seekBar, "seekBar");
                layoutStrokeAndColorBinding6 = StrokeAndColorLayout.this.binding;
                if (layoutStrokeAndColorBinding6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    layoutStrokeAndColorBinding6 = null;
                }
                TextView textView2 = layoutStrokeAndColorBinding6.strokeDesc;
                shapeAttributesChangeListener2 = StrokeAndColorLayout.this.listener;
                textView2.setText(shapeAttributesChangeListener2.getStrokeDesc(progress));
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(@NotNull SeekBar seekBar) {
                Intrinsics.checkNotNullParameter(seekBar, "seekBar");
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(@NotNull SeekBar seekBar) {
                ShapeAttributesBean shapeAttributesBean;
                StrokeAndColorLayout.ShapeAttributesChangeListener shapeAttributesChangeListener2;
                ShapeAttributesBean shapeAttributesBean2;
                Intrinsics.checkNotNullParameter(seekBar, "seekBar");
                shapeAttributesBean = StrokeAndColorLayout.this.shapeAttributes;
                shapeAttributesBean.setShapeWidth(seekBar.getProgress());
                shapeAttributesChangeListener2 = StrokeAndColorLayout.this.listener;
                shapeAttributesBean2 = StrokeAndColorLayout.this.shapeAttributes;
                shapeAttributesChangeListener2.onShapeAttributesChanged(shapeAttributesBean2);
            }
        });
    }

    /* renamed from: d */
    public final void m47438d() {
        m47437c();
        m47436b();
    }

    public final void setListener(@NotNull ShapeAttributesChangeListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    public final void setShapeAttributes(@NotNull ShapeAttributesBean shapeAttributes) {
        Intrinsics.checkNotNullParameter(shapeAttributes, "shapeAttributes");
        this.shapeAttributes = shapeAttributes;
        m47438d();
    }

    public final void setStrokeSeekBarMaxMinValue(int max, int min) {
        LayoutStrokeAndColorBinding layoutStrokeAndColorBinding = this.binding;
        LayoutStrokeAndColorBinding layoutStrokeAndColorBinding2 = null;
        if (layoutStrokeAndColorBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutStrokeAndColorBinding = null;
        }
        layoutStrokeAndColorBinding.strokeSeekbar.setMax(max);
        LayoutStrokeAndColorBinding layoutStrokeAndColorBinding3 = this.binding;
        if (layoutStrokeAndColorBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutStrokeAndColorBinding2 = layoutStrokeAndColorBinding3;
        }
        layoutStrokeAndColorBinding2.strokeSeekbar.setMin(min);
    }

    public /* synthetic */ StrokeAndColorLayout(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"SetJavaScriptEnabled"})
    public StrokeAndColorLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.listener = ShapeAttributesChangeListener.INSTANCE.getEMPTY();
        this.shapeAttributes = new ShapeAttributesBean();
        m47435a();
    }

    public /* synthetic */ StrokeAndColorLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }
}
