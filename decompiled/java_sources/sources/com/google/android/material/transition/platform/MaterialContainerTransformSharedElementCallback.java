package com.google.android.material.transition.platform;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.transition.Transition;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.BlendModeColorFilterCompat;
import androidx.core.graphics.BlendModeCompat;
import com.google.android.material.C5139R;
import com.google.android.material.internal.ContextUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.sunia.HTREnginev2.fnn;
import com.sunia.HTREnginev2.jnn;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;

@RequiresApi(21)
/* loaded from: classes6.dex */
public class MaterialContainerTransformSharedElementCallback extends SharedElementCallback {

    /* renamed from: f */
    @Nullable
    public static WeakReference<View> f33293f;

    /* renamed from: d */
    @Nullable
    public Rect f33297d;

    /* renamed from: a */
    public boolean f33294a = true;

    /* renamed from: b */
    public boolean f33295b = true;

    /* renamed from: c */
    public boolean f33296c = false;

    /* renamed from: e */
    @Nullable
    public ShapeProvider f33298e = new ShapeableViewShapeProvider();

    /* loaded from: classes6.dex */
    public interface ShapeProvider {
        @Nullable
        ShapeAppearanceModel provideShape(@NonNull View view);
    }

    /* loaded from: classes6.dex */
    public static class ShapeableViewShapeProvider implements ShapeProvider {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.transition.platform.MaterialContainerTransformSharedElementCallback.ShapeProvider
        @Nullable
        public ShapeAppearanceModel provideShape(@NonNull View view) {
            if (view instanceof Shapeable) {
                return ((Shapeable) view).getShapeAppearanceModel();
            }
            return null;
        }
    }

    /* renamed from: com.google.android.material.transition.platform.MaterialContainerTransformSharedElementCallback$a */
    /* loaded from: classes6.dex */
    public class C5475a extends fnn {

        /* renamed from: a */
        public final /* synthetic */ Window f33299a;

        public C5475a(Window window) {
            this.f33299a = window;
        }

        @Override // com.sunia.HTREnginev2.fnn, android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            MaterialContainerTransformSharedElementCallback.m25625g(this.f33299a);
        }

        @Override // com.sunia.HTREnginev2.fnn, android.transition.Transition.TransitionListener
        public void onTransitionStart(Transition transition) {
            MaterialContainerTransformSharedElementCallback.m25624f(this.f33299a);
        }
    }

    /* renamed from: com.google.android.material.transition.platform.MaterialContainerTransformSharedElementCallback$b */
    /* loaded from: classes6.dex */
    public class C5476b extends fnn {

        /* renamed from: a */
        public final /* synthetic */ Activity f33301a;

        public C5476b(Activity activity) {
            this.f33301a = activity;
        }

        @Override // com.sunia.HTREnginev2.fnn, android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            View view;
            if (MaterialContainerTransformSharedElementCallback.f33293f != null && (view = (View) MaterialContainerTransformSharedElementCallback.f33293f.get()) != null) {
                view.setAlpha(1.0f);
                WeakReference unused = MaterialContainerTransformSharedElementCallback.f33293f = null;
            }
            this.f33301a.finish();
            this.f33301a.overridePendingTransition(0, 0);
        }
    }

    /* renamed from: com.google.android.material.transition.platform.MaterialContainerTransformSharedElementCallback$c */
    /* loaded from: classes6.dex */
    public class C5477c extends fnn {

        /* renamed from: a */
        public final /* synthetic */ Window f33303a;

        public C5477c(Window window) {
            this.f33303a = window;
        }

        @Override // com.sunia.HTREnginev2.fnn, android.transition.Transition.TransitionListener
        public void onTransitionStart(Transition transition) {
            MaterialContainerTransformSharedElementCallback.m25624f(this.f33303a);
        }
    }

    @Nullable
    /* renamed from: e */
    public static Drawable m25623e(Window window) {
        return window.getDecorView().getBackground();
    }

    /* renamed from: f */
    public static void m25624f(Window window) {
        Drawable m25623e = m25623e(window);
        if (m25623e == null) {
            return;
        }
        m25623e.mutate().setColorFilter(BlendModeColorFilterCompat.createBlendModeColorFilterCompat(0, BlendModeCompat.CLEAR));
    }

    /* renamed from: g */
    public static void m25625g(Window window) {
        Drawable m25623e = m25623e(window);
        if (m25623e == null) {
            return;
        }
        m25623e.mutate().clearColorFilter();
    }

    /* renamed from: j */
    public static void m25626j(Window window, MaterialContainerTransform materialContainerTransform) {
        if (materialContainerTransform.getDuration() >= 0) {
            window.setTransitionBackgroundFadeDuration(materialContainerTransform.getDuration());
        }
    }

    @Nullable
    public ShapeProvider getShapeProvider() {
        return this.f33298e;
    }

    /* renamed from: h */
    public final void m25627h(Window window) {
        Transition sharedElementEnterTransition = window.getSharedElementEnterTransition();
        if (sharedElementEnterTransition instanceof MaterialContainerTransform) {
            MaterialContainerTransform materialContainerTransform = (MaterialContainerTransform) sharedElementEnterTransition;
            if (!this.f33296c) {
                window.setSharedElementReenterTransition(null);
            }
            if (this.f33295b) {
                m25626j(window, materialContainerTransform);
                materialContainerTransform.addListener(new C5475a(window));
            }
        }
    }

    /* renamed from: i */
    public final void m25628i(Activity activity, Window window) {
        Transition sharedElementReturnTransition = window.getSharedElementReturnTransition();
        if (sharedElementReturnTransition instanceof MaterialContainerTransform) {
            MaterialContainerTransform materialContainerTransform = (MaterialContainerTransform) sharedElementReturnTransition;
            materialContainerTransform.setHoldAtEndEnabled(true);
            materialContainerTransform.addListener(new C5476b(activity));
            if (this.f33295b) {
                m25626j(window, materialContainerTransform);
                materialContainerTransform.addListener(new C5477c(window));
            }
        }
    }

    public boolean isSharedElementReenterTransitionEnabled() {
        return this.f33296c;
    }

    public boolean isTransparentWindowBackgroundEnabled() {
        return this.f33295b;
    }

    @Override // android.app.SharedElementCallback
    @Nullable
    public Parcelable onCaptureSharedElementSnapshot(@NonNull View view, @NonNull Matrix matrix, @NonNull RectF rectF) {
        f33293f = new WeakReference<>(view);
        return super.onCaptureSharedElementSnapshot(view, matrix, rectF);
    }

    @Override // android.app.SharedElementCallback
    @Nullable
    public View onCreateSnapshotView(@NonNull Context context, @Nullable Parcelable parcelable) {
        WeakReference<View> weakReference;
        View view;
        ShapeAppearanceModel provideShape;
        View onCreateSnapshotView = super.onCreateSnapshotView(context, parcelable);
        if (onCreateSnapshotView != null && (weakReference = f33293f) != null && this.f33298e != null && (view = weakReference.get()) != null && (provideShape = this.f33298e.provideShape(view)) != null) {
            onCreateSnapshotView.setTag(C5139R.id.mtrl_motion_snapshot_view, provideShape);
        }
        return onCreateSnapshotView;
    }

    @Override // android.app.SharedElementCallback
    public void onMapSharedElements(@NonNull List<String> list, @NonNull Map<String, View> map) {
        View view;
        Activity activity;
        if (list.isEmpty() || map.isEmpty() || (view = map.get(list.get(0))) == null || (activity = ContextUtils.getActivity(view.getContext())) == null) {
            return;
        }
        Window window = activity.getWindow();
        if (this.f33294a) {
            m25627h(window);
        } else {
            m25628i(activity, window);
        }
    }

    @Override // android.app.SharedElementCallback
    public void onSharedElementEnd(@NonNull List<String> list, @NonNull List<View> list2, @NonNull List<View> list3) {
        if (!list2.isEmpty() && (list2.get(0).getTag(C5139R.id.mtrl_motion_snapshot_view) instanceof View)) {
            list2.get(0).setTag(C5139R.id.mtrl_motion_snapshot_view, null);
        }
        if (!this.f33294a && !list2.isEmpty()) {
            this.f33297d = jnn.m54993j(list2.get(0));
        }
        this.f33294a = false;
    }

    @Override // android.app.SharedElementCallback
    public void onSharedElementStart(@NonNull List<String> list, @NonNull List<View> list2, @NonNull List<View> list3) {
        if (!list2.isEmpty() && !list3.isEmpty()) {
            list2.get(0).setTag(C5139R.id.mtrl_motion_snapshot_view, list3.get(0));
        }
        if (this.f33294a || list2.isEmpty() || this.f33297d == null) {
            return;
        }
        View view = list2.get(0);
        view.measure(View.MeasureSpec.makeMeasureSpec(this.f33297d.width(), 1073741824), View.MeasureSpec.makeMeasureSpec(this.f33297d.height(), 1073741824));
        Rect rect = this.f33297d;
        view.layout(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void setShapeProvider(@Nullable ShapeProvider shapeProvider) {
        this.f33298e = shapeProvider;
    }

    public void setSharedElementReenterTransitionEnabled(boolean z) {
        this.f33296c = z;
    }

    public void setTransparentWindowBackgroundEnabled(boolean z) {
        this.f33295b = z;
    }
}
