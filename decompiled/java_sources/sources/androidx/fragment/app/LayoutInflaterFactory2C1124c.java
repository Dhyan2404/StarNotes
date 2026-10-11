package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.C1068R;
import androidx.fragment.app.strictmode.FragmentStrictMode;

/* renamed from: androidx.fragment.app.c */
/* loaded from: classes3.dex */
public class LayoutInflaterFactory2C1124c implements LayoutInflater.Factory2 {

    /* renamed from: f */
    public static final String f7683f = "FragmentManager";

    /* renamed from: e */
    public final FragmentManager f7684e;

    /* renamed from: androidx.fragment.app.c$a */
    /* loaded from: classes3.dex */
    public class a implements View.OnAttachStateChangeListener {

        /* renamed from: e */
        public final /* synthetic */ C1126e f7685e;

        public a(C1126e c1126e) {
            this.f7685e = c1126e;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            Fragment m4835k = this.f7685e.m4835k();
            this.f7685e.m4837m();
            SpecialEffectsController.getOrCreateController((ViewGroup) m4835k.f7429z0.getParent(), LayoutInflaterFactory2C1124c.this.f7684e).forceCompleteAllOperations();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    public LayoutInflaterFactory2C1124c(FragmentManager fragmentManager) {
        this.f7684e = fragmentManager;
    }

    @Override // android.view.LayoutInflater.Factory
    @Nullable
    public View onCreateView(@NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    @Nullable
    public View onCreateView(@Nullable View view, @NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        C1126e m4739v;
        if (FragmentContainerView.class.getName().equals(str)) {
            return new FragmentContainerView(context, attributeSet, this.f7684e);
        }
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1068R.styleable.Fragment);
        if (attributeValue == null) {
            attributeValue = obtainStyledAttributes.getString(C1068R.styleable.Fragment_android_name);
        }
        int resourceId = obtainStyledAttributes.getResourceId(C1068R.styleable.Fragment_android_id, -1);
        String string = obtainStyledAttributes.getString(C1068R.styleable.Fragment_android_tag);
        obtainStyledAttributes.recycle();
        if (attributeValue == null || !FragmentFactory.m4620a(context.getClassLoader(), attributeValue)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
        }
        Fragment findFragmentById = resourceId != -1 ? this.f7684e.findFragmentById(resourceId) : null;
        if (findFragmentById == null && string != null) {
            findFragmentById = this.f7684e.findFragmentByTag(string);
        }
        if (findFragmentById == null && id != -1) {
            findFragmentById = this.f7684e.findFragmentById(id);
        }
        if (findFragmentById == null) {
            findFragmentById = this.f7684e.getFragmentFactory().instantiate(context.getClassLoader(), attributeValue);
            findFragmentById.f7415s = true;
            findFragmentById.f7392O = resourceId != 0 ? resourceId : id;
            findFragmentById.f7395Q = id;
            findFragmentById.f7398Z = string;
            findFragmentById.f7416t = true;
            FragmentManager fragmentManager = this.f7684e;
            findFragmentById.f7424x = fragmentManager;
            findFragmentById.f7426y = fragmentManager.getHost();
            findFragmentById.onInflate(this.f7684e.getHost().m4623b(), attributeSet, findFragmentById.f7400f);
            m4739v = this.f7684e.m4706j(findFragmentById);
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Fragment " + findFragmentById + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
            }
        } else if (!findFragmentById.f7416t) {
            findFragmentById.f7416t = true;
            FragmentManager fragmentManager2 = this.f7684e;
            findFragmentById.f7424x = fragmentManager2;
            findFragmentById.f7426y = fragmentManager2.getHost();
            findFragmentById.onInflate(this.f7684e.getHost().m4623b(), attributeSet, findFragmentById.f7400f);
            m4739v = this.f7684e.m4739v(findFragmentById);
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Retained Fragment " + findFragmentById + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
            }
        } else {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
        }
        ViewGroup viewGroup = (ViewGroup) view;
        FragmentStrictMode.onFragmentTagUsage(findFragmentById, viewGroup);
        findFragmentById.f7427y0 = viewGroup;
        m4739v.m4837m();
        m4739v.m4834j();
        View view2 = findFragmentById.f7429z0;
        if (view2 != null) {
            if (resourceId != 0) {
                view2.setId(resourceId);
            }
            if (findFragmentById.f7429z0.getTag() == null) {
                findFragmentById.f7429z0.setTag(string);
            }
            findFragmentById.f7429z0.addOnAttachStateChangeListener(new a(m4739v));
            return findFragmentById.f7429z0;
        }
        throw new IllegalStateException("Fragment " + attributeValue + " did not create a view.");
    }
}
