package androidx.databinding.adapters;

import android.animation.LayoutTransition;
import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingAdapter;
import androidx.databinding.BindingMethod;
import androidx.databinding.BindingMethods;

@BindingMethods({@BindingMethod(attribute = "android:alwaysDrawnWithCache", method = "setAlwaysDrawnWithCacheEnabled", type = ViewGroup.class), @BindingMethod(attribute = "android:animationCache", method = "setAnimationCacheEnabled", type = ViewGroup.class), @BindingMethod(attribute = "android:splitMotionEvents", method = "setMotionEventSplittingEnabled", type = ViewGroup.class)})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class ViewGroupBindingAdapter {

    /* loaded from: classes3.dex */
    public interface OnAnimationEnd {
        void onAnimationEnd(Animation animation);
    }

    /* loaded from: classes3.dex */
    public interface OnAnimationRepeat {
        void onAnimationRepeat(Animation animation);
    }

    /* loaded from: classes3.dex */
    public interface OnAnimationStart {
        void onAnimationStart(Animation animation);
    }

    /* loaded from: classes3.dex */
    public interface OnChildViewAdded {
        void onChildViewAdded(View view, View view2);
    }

    /* loaded from: classes3.dex */
    public interface OnChildViewRemoved {
        void onChildViewRemoved(View view, View view2);
    }

    /* renamed from: androidx.databinding.adapters.ViewGroupBindingAdapter$a */
    /* loaded from: classes3.dex */
    public class ViewGroupOnHierarchyChangeListenerC0995a implements ViewGroup.OnHierarchyChangeListener {

        /* renamed from: e */
        public final /* synthetic */ OnChildViewAdded f6784e;

        /* renamed from: f */
        public final /* synthetic */ OnChildViewRemoved f6785f;

        public ViewGroupOnHierarchyChangeListenerC0995a(OnChildViewAdded onChildViewAdded, OnChildViewRemoved onChildViewRemoved) {
            this.f6784e = onChildViewAdded;
            this.f6785f = onChildViewRemoved;
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            OnChildViewAdded onChildViewAdded = this.f6784e;
            if (onChildViewAdded != null) {
                onChildViewAdded.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            OnChildViewRemoved onChildViewRemoved = this.f6785f;
            if (onChildViewRemoved != null) {
                onChildViewRemoved.onChildViewRemoved(view, view2);
            }
        }
    }

    /* renamed from: androidx.databinding.adapters.ViewGroupBindingAdapter$b */
    /* loaded from: classes3.dex */
    public class AnimationAnimationListenerC0996b implements Animation.AnimationListener {

        /* renamed from: e */
        public final /* synthetic */ OnAnimationStart f6786e;

        /* renamed from: f */
        public final /* synthetic */ OnAnimationEnd f6787f;

        /* renamed from: g */
        public final /* synthetic */ OnAnimationRepeat f6788g;

        public AnimationAnimationListenerC0996b(OnAnimationStart onAnimationStart, OnAnimationEnd onAnimationEnd, OnAnimationRepeat onAnimationRepeat) {
            this.f6786e = onAnimationStart;
            this.f6787f = onAnimationEnd;
            this.f6788g = onAnimationRepeat;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            OnAnimationEnd onAnimationEnd = this.f6787f;
            if (onAnimationEnd != null) {
                onAnimationEnd.onAnimationEnd(animation);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            OnAnimationRepeat onAnimationRepeat = this.f6788g;
            if (onAnimationRepeat != null) {
                onAnimationRepeat.onAnimationRepeat(animation);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            OnAnimationStart onAnimationStart = this.f6786e;
            if (onAnimationStart != null) {
                onAnimationStart.onAnimationStart(animation);
            }
        }
    }

    @BindingAdapter({"android:animateLayoutChanges"})
    @TargetApi(11)
    public static void setAnimateLayoutChanges(ViewGroup viewGroup, boolean z) {
        if (z) {
            viewGroup.setLayoutTransition(new LayoutTransition());
        } else {
            viewGroup.setLayoutTransition(null);
        }
    }

    @BindingAdapter(requireAll = false, value = {"android:onChildViewAdded", "android:onChildViewRemoved"})
    public static void setListener(ViewGroup viewGroup, OnChildViewAdded onChildViewAdded, OnChildViewRemoved onChildViewRemoved) {
        if (onChildViewAdded == null && onChildViewRemoved == null) {
            viewGroup.setOnHierarchyChangeListener(null);
        } else {
            viewGroup.setOnHierarchyChangeListener(new ViewGroupOnHierarchyChangeListenerC0995a(onChildViewAdded, onChildViewRemoved));
        }
    }

    @BindingAdapter(requireAll = false, value = {"android:onAnimationStart", "android:onAnimationEnd", "android:onAnimationRepeat"})
    public static void setListener(ViewGroup viewGroup, OnAnimationStart onAnimationStart, OnAnimationEnd onAnimationEnd, OnAnimationRepeat onAnimationRepeat) {
        if (onAnimationStart == null && onAnimationEnd == null && onAnimationRepeat == null) {
            viewGroup.setLayoutAnimationListener(null);
        } else {
            viewGroup.setLayoutAnimationListener(new AnimationAnimationListenerC0996b(onAnimationStart, onAnimationEnd, onAnimationRepeat));
        }
    }
}
