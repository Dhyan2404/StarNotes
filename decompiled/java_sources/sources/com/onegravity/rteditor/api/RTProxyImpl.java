package com.onegravity.rteditor.api;

import android.app.Activity;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.util.AndroidRuntimeException;
import android.widget.Toast;
import java.lang.ref.SoftReference;

/* loaded from: classes7.dex */
public class RTProxyImpl implements RTProxy {

    /* renamed from: e */
    public final SoftReference<Activity> f40132e;

    /* loaded from: classes7.dex */
    public static class IncorrectInitializationException extends AndroidRuntimeException {
        private static final long serialVersionUID = 327389536289485672L;

        public IncorrectInitializationException(String str) {
            super(str);
        }
    }

    public RTProxyImpl(Activity activity) {
        this.f40132e = new SoftReference<>(activity);
    }

    /* renamed from: a */
    public final Activity m31559a() {
        SoftReference<Activity> softReference = this.f40132e;
        if (softReference == null && softReference.get() == null) {
            throw new IncorrectInitializationException("The RTApi was't initialized correctly or the Activity was released by Android (SoftReference)");
        }
        return this.f40132e.get();
    }

    @Override // com.onegravity.rteditor.api.RTProxy
    public Toast makeText(int i, int i2) {
        return Toast.makeText(RTApi.getApplicationContext(), i, i2);
    }

    @Override // com.onegravity.rteditor.api.RTProxy
    public void openDialogFragment(String str, DialogFragment dialogFragment) {
        Activity m31559a = m31559a();
        if (m31559a != null) {
            FragmentManager fragmentManager = m31559a.getFragmentManager();
            FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
            if (((DialogFragment) fragmentManager.findFragmentByTag(str)) == null) {
                dialogFragment.show(beginTransaction, str);
            }
        }
    }

    @Override // com.onegravity.rteditor.api.RTProxy
    public void removeFragment(String str) {
        Activity m31559a = m31559a();
        if (m31559a != null) {
            FragmentManager fragmentManager = m31559a.getFragmentManager();
            fragmentManager.beginTransaction().remove(fragmentManager.findFragmentByTag(str)).commit();
        }
    }

    @Override // com.onegravity.rteditor.api.RTProxy
    public void runOnUiThread(Runnable runnable) {
        Activity m31559a = m31559a();
        if (m31559a != null) {
            m31559a.runOnUiThread(runnable);
        }
    }

    @Override // com.onegravity.rteditor.api.RTProxy
    public void startActivityForResult(Intent intent, int i) {
        Activity m31559a = m31559a();
        if (m31559a != null) {
            m31559a.startActivityForResult(intent, i);
        }
    }

    @Override // com.onegravity.rteditor.api.RTProxy
    public Toast makeText(CharSequence charSequence, int i) {
        return Toast.makeText(RTApi.getApplicationContext(), charSequence, i);
    }
}
