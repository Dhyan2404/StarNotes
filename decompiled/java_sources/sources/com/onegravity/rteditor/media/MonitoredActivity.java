package com.onegravity.rteditor.media;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.os.Handler;
import androidx.appcompat.app.AppCompatActivity;
import com.sagittarius.p050v6.C13086AB;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes17.dex */
public class MonitoredActivity extends AppCompatActivity {
    protected Handler mHandler;

    /* renamed from: w0 */
    public final ArrayList<LifeCycleListener> f40382w0 = new ArrayList<>();

    /* loaded from: classes7.dex */
    public interface ForegroundJob<T> {
        T runForegroundJob();
    }

    /* loaded from: classes7.dex */
    public static class LifeCycleAdapter implements LifeCycleListener {
        @Override // com.onegravity.rteditor.media.MonitoredActivity.LifeCycleListener
        public void onActivityCreated(Activity activity) {
        }

        @Override // com.onegravity.rteditor.media.MonitoredActivity.LifeCycleListener
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // com.onegravity.rteditor.media.MonitoredActivity.LifeCycleListener
        public void onActivityPaused(Activity activity) {
        }

        @Override // com.onegravity.rteditor.media.MonitoredActivity.LifeCycleListener
        public void onActivityResumed(Activity activity) {
        }

        @Override // com.onegravity.rteditor.media.MonitoredActivity.LifeCycleListener
        public void onActivityStarted(Activity activity) {
        }

        @Override // com.onegravity.rteditor.media.MonitoredActivity.LifeCycleListener
        public void onActivityStopped(Activity activity) {
        }
    }

    /* loaded from: classes7.dex */
    public interface LifeCycleListener {
        void onActivityCreated(Activity activity);

        void onActivityDestroyed(Activity activity);

        void onActivityPaused(Activity activity);

        void onActivityResumed(Activity activity);

        void onActivityStarted(Activity activity);

        void onActivityStopped(Activity activity);
    }

    public void addLifeCycleListener(LifeCycleListener lifeCycleListener) {
        if (this.f40382w0.contains(lifeCycleListener)) {
            return;
        }
        this.f40382w0.add(lifeCycleListener);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        C13086AB.m52315v(-1426063356, this, bundle);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        Iterator<LifeCycleListener> it2 = this.f40382w0.iterator();
        while (it2.hasNext()) {
            it2.next().onActivityDestroyed(this);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        Iterator<LifeCycleListener> it2 = this.f40382w0.iterator();
        while (it2.hasNext()) {
            it2.next().onActivityPaused(this);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        Iterator<LifeCycleListener> it2 = this.f40382w0.iterator();
        while (it2.hasNext()) {
            it2.next().onActivityResumed(this);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        Iterator<LifeCycleListener> it2 = this.f40382w0.iterator();
        while (it2.hasNext()) {
            it2.next().onActivityStarted(this);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        Iterator<LifeCycleListener> it2 = this.f40382w0.iterator();
        while (it2.hasNext()) {
            it2.next().onActivityStopped(this);
        }
    }

    public void removeLifeCycleListener(LifeCycleListener lifeCycleListener) {
        this.f40382w0.remove(lifeCycleListener);
    }

    public void startBackgroundJob(int i, Runnable runnable) {
        new C7059a(runnable, ProgressDialog.show(this, null, getString(i), true, false)).m31678b();
    }

    public <T> T startForegroundJob(int i, ForegroundJob<T> foregroundJob) {
        return (T) new C7059a(foregroundJob, ProgressDialog.show(this, null, getString(i), true, false)).runForegroundJob();
    }

    /* renamed from: com.onegravity.rteditor.media.MonitoredActivity$a */
    /* loaded from: classes7.dex */
    public class C7059a<T> extends LifeCycleAdapter implements ForegroundJob<T> {

        /* renamed from: a */
        public final ProgressDialog f40383a;

        /* renamed from: b */
        public final Runnable f40384b;

        /* renamed from: c */
        public final ForegroundJob<T> f40385c;

        /* renamed from: d */
        public final Runnable f40386d;

        /* renamed from: com.onegravity.rteditor.media.MonitoredActivity$a$a */
        /* loaded from: classes7.dex */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C7059a c7059a = C7059a.this;
                MonitoredActivity.this.removeLifeCycleListener(c7059a);
                if (C7059a.this.f40383a.getWindow() != null) {
                    C7059a.this.f40383a.dismiss();
                }
            }
        }

        public C7059a(ForegroundJob<T> foregroundJob, ProgressDialog progressDialog) {
            this.f40386d = new a();
            this.f40383a = progressDialog;
            this.f40385c = foregroundJob;
            this.f40384b = null;
            MonitoredActivity.this.addLifeCycleListener(this);
        }

        /* renamed from: b */
        public void m31678b() {
            try {
                this.f40384b.run();
            } finally {
                MonitoredActivity.this.mHandler.post(this.f40386d);
            }
        }

        @Override // com.onegravity.rteditor.media.MonitoredActivity.LifeCycleAdapter, com.onegravity.rteditor.media.MonitoredActivity.LifeCycleListener
        public void onActivityDestroyed(Activity activity) {
            this.f40386d.run();
            MonitoredActivity.this.mHandler.removeCallbacks(this.f40386d);
        }

        @Override // com.onegravity.rteditor.media.MonitoredActivity.LifeCycleAdapter, com.onegravity.rteditor.media.MonitoredActivity.LifeCycleListener
        public void onActivityStarted(Activity activity) {
            this.f40383a.show();
        }

        @Override // com.onegravity.rteditor.media.MonitoredActivity.LifeCycleAdapter, com.onegravity.rteditor.media.MonitoredActivity.LifeCycleListener
        public void onActivityStopped(Activity activity) {
            this.f40383a.hide();
        }

        @Override // com.onegravity.rteditor.media.MonitoredActivity.ForegroundJob
        public T runForegroundJob() {
            try {
                return this.f40385c.runForegroundJob();
            } finally {
                MonitoredActivity.this.mHandler.post(this.f40386d);
            }
        }

        public C7059a(Runnable runnable, ProgressDialog progressDialog) {
            this.f40386d = new a();
            this.f40383a = progressDialog;
            this.f40385c = null;
            this.f40384b = runnable;
            MonitoredActivity.this.addLifeCycleListener(this);
        }
    }
}
