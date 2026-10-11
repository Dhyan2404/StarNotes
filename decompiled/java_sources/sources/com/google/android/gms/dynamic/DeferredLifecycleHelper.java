package com.google.android.gms.dynamic;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.zac;
import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import com.sunia.HTREnginev2.abp;
import com.sunia.HTREnginev2.ebp;
import com.sunia.HTREnginev2.hbp;
import com.sunia.HTREnginev2.jbp;
import com.sunia.HTREnginev2.lap;
import com.sunia.HTREnginev2.t9p;
import com.sunia.HTREnginev2.xap;
import com.sunia.HTREnginev2.y8p;
import java.util.LinkedList;

@KeepForSdk
/* loaded from: classes5.dex */
public abstract class DeferredLifecycleHelper<T extends LifecycleDelegate> {

    /* renamed from: a */
    public LifecycleDelegate f29514a;

    /* renamed from: b */
    @Nullable
    public Bundle f29515b;

    /* renamed from: c */
    public LinkedList f29516c;

    /* renamed from: d */
    public final OnDelegateCreatedListener f29517d = new y8p(this);

    @KeepForSdk
    public DeferredLifecycleHelper() {
    }

    @KeepForSdk
    public static void showGooglePlayUnavailableMessage(@NonNull FrameLayout frameLayout) {
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
        Context context = frameLayout.getContext();
        int isGooglePlayServicesAvailable = googleApiAvailability.isGooglePlayServicesAvailable(context);
        String zac = zac.zac(context, isGooglePlayServicesAvailable);
        String zab = zac.zab(context, isGooglePlayServicesAvailable);
        LinearLayout linearLayout = new LinearLayout(frameLayout.getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout);
        TextView textView = new TextView(frameLayout.getContext());
        textView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        textView.setText(zac);
        linearLayout.addView(textView);
        Intent errorResolutionIntent = googleApiAvailability.getErrorResolutionIntent(context, isGooglePlayServicesAvailable, null);
        if (errorResolutionIntent != null) {
            Button button = new Button(context);
            button.setId(R.id.button1);
            button.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            button.setText(zab);
            linearLayout.addView(button);
            button.setOnClickListener(new abp(context, errorResolutionIntent));
        }
    }

    @KeepForSdk
    public abstract void createDelegate(@NonNull OnDelegateCreatedListener<T> onDelegateCreatedListener);

    /* renamed from: e */
    public final void m22240e(int i) {
        while (!this.f29516c.isEmpty() && ((jbp) this.f29516c.getLast()).zaa() >= i) {
            this.f29516c.removeLast();
        }
    }

    /* renamed from: f */
    public final void m22241f(@Nullable Bundle bundle, jbp jbpVar) {
        LifecycleDelegate lifecycleDelegate = this.f29514a;
        if (lifecycleDelegate != null) {
            jbpVar.mo53950a(lifecycleDelegate);
            return;
        }
        if (this.f29516c == null) {
            this.f29516c = new LinkedList();
        }
        this.f29516c.add(jbpVar);
        if (bundle != null) {
            Bundle bundle2 = this.f29515b;
            if (bundle2 == null) {
                this.f29515b = (Bundle) bundle.clone();
            } else {
                bundle2.putAll(bundle);
            }
        }
        createDelegate(this.f29517d);
    }

    @NonNull
    @KeepForSdk
    public T getDelegate() {
        return (T) this.f29514a;
    }

    @KeepForSdk
    public void handleGooglePlayUnavailable(@NonNull FrameLayout frameLayout) {
        showGooglePlayUnavailableMessage(frameLayout);
    }

    @KeepForSdk
    public void onCreate(@Nullable Bundle bundle) {
        m22241f(bundle, new lap(this, bundle));
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
        m22241f(bundle, new xap(this, frameLayout, layoutInflater, viewGroup, bundle));
        if (this.f29514a == null) {
            handleGooglePlayUnavailable(frameLayout);
        }
        return frameLayout;
    }

    @KeepForSdk
    public void onDestroy() {
        LifecycleDelegate lifecycleDelegate = this.f29514a;
        if (lifecycleDelegate != null) {
            lifecycleDelegate.onDestroy();
        } else {
            m22240e(1);
        }
    }

    @KeepForSdk
    public void onDestroyView() {
        LifecycleDelegate lifecycleDelegate = this.f29514a;
        if (lifecycleDelegate != null) {
            lifecycleDelegate.onDestroyView();
        } else {
            m22240e(2);
        }
    }

    @KeepForSdk
    public void onInflate(@NonNull Activity activity, @NonNull Bundle bundle, @Nullable Bundle bundle2) {
        m22241f(bundle2, new t9p(this, activity, bundle, bundle2));
    }

    @KeepForSdk
    public void onLowMemory() {
        LifecycleDelegate lifecycleDelegate = this.f29514a;
        if (lifecycleDelegate != null) {
            lifecycleDelegate.onLowMemory();
        }
    }

    @KeepForSdk
    public void onPause() {
        LifecycleDelegate lifecycleDelegate = this.f29514a;
        if (lifecycleDelegate != null) {
            lifecycleDelegate.onPause();
        } else {
            m22240e(5);
        }
    }

    @KeepForSdk
    public void onResume() {
        m22241f(null, new hbp(this));
    }

    @KeepForSdk
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        LifecycleDelegate lifecycleDelegate = this.f29514a;
        if (lifecycleDelegate != null) {
            lifecycleDelegate.onSaveInstanceState(bundle);
            return;
        }
        Bundle bundle2 = this.f29515b;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
    }

    @KeepForSdk
    public void onStart() {
        m22241f(null, new ebp(this));
    }

    @KeepForSdk
    public void onStop() {
        LifecycleDelegate lifecycleDelegate = this.f29514a;
        if (lifecycleDelegate != null) {
            lifecycleDelegate.onStop();
        } else {
            m22240e(4);
        }
    }
}
