package androidx.core.app;

import android.app.Service;
import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.IBinder;
import android.os.PowerManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.HashMap;

@Deprecated
/* loaded from: classes3.dex */
public abstract class JobIntentService extends Service {

    /* renamed from: l */
    public static final String f4788l = "JobIntentService";

    /* renamed from: m */
    public static final boolean f4789m = false;

    /* renamed from: n */
    public static final Object f4790n = new Object();

    /* renamed from: o */
    public static final HashMap<ComponentName, AbstractC0543h> f4791o = new HashMap<>();

    /* renamed from: e */
    public InterfaceC0537b f4792e;

    /* renamed from: f */
    public AbstractC0543h f4793f;

    /* renamed from: g */
    public AsyncTaskC0536a f4794g;

    /* renamed from: h */
    public boolean f4795h = false;

    /* renamed from: i */
    public boolean f4796i = false;

    /* renamed from: j */
    public boolean f4797j = false;

    /* renamed from: k */
    public final ArrayList<C0539d> f4798k = null;

    /* renamed from: androidx.core.app.JobIntentService$a */
    /* loaded from: classes3.dex */
    public final class AsyncTaskC0536a extends AsyncTask<Void, Void, Void> {
        public AsyncTaskC0536a() {
        }

        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Void... voidArr) {
            while (true) {
                InterfaceC0540e m2355a = JobIntentService.this.m2355a();
                if (m2355a == null) {
                    return null;
                }
                JobIntentService.this.onHandleWork(m2355a.getIntent());
                m2355a.complete();
            }
        }

        @Override // android.os.AsyncTask
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onCancelled(Void r1) {
            JobIntentService.this.m2358e();
        }

        @Override // android.os.AsyncTask
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Void r1) {
            JobIntentService.this.m2358e();
        }
    }

    /* renamed from: androidx.core.app.JobIntentService$b */
    /* loaded from: classes3.dex */
    public interface InterfaceC0537b {
        /* renamed from: a */
        IBinder mo2362a();

        /* renamed from: b */
        InterfaceC0540e mo2363b();
    }

    /* renamed from: androidx.core.app.JobIntentService$c */
    /* loaded from: classes3.dex */
    public static final class C0538c extends AbstractC0543h {

        /* renamed from: d */
        public final Context f4800d;

        /* renamed from: e */
        public final PowerManager.WakeLock f4801e;

        /* renamed from: f */
        public final PowerManager.WakeLock f4802f;

        /* renamed from: g */
        public boolean f4803g;

        /* renamed from: h */
        public boolean f4804h;

        public C0538c(Context context, ComponentName componentName) {
            super(componentName);
            this.f4800d = context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.f4801e = newWakeLock;
            newWakeLock.setReferenceCounted(false);
            PowerManager.WakeLock newWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.f4802f = newWakeLock2;
            newWakeLock2.setReferenceCounted(false);
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0543h
        /* renamed from: a */
        public void mo2364a(Intent intent) {
            Intent intent2 = new Intent(intent);
            intent2.setComponent(this.f4817a);
            if (this.f4800d.startService(intent2) != null) {
                synchronized (this) {
                    if (!this.f4803g) {
                        this.f4803g = true;
                        if (!this.f4804h) {
                            this.f4801e.acquire(60000L);
                        }
                    }
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0543h
        /* renamed from: c */
        public void mo2365c() {
            synchronized (this) {
                if (this.f4804h) {
                    if (this.f4803g) {
                        this.f4801e.acquire(60000L);
                    }
                    this.f4804h = false;
                    this.f4802f.release();
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0543h
        /* renamed from: d */
        public void mo2366d() {
            synchronized (this) {
                if (!this.f4804h) {
                    this.f4804h = true;
                    this.f4802f.acquire(600000L);
                    this.f4801e.release();
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0543h
        /* renamed from: e */
        public void mo2367e() {
            synchronized (this) {
                this.f4803g = false;
            }
        }
    }

    /* renamed from: androidx.core.app.JobIntentService$d */
    /* loaded from: classes3.dex */
    public final class C0539d implements InterfaceC0540e {

        /* renamed from: a */
        public final Intent f4805a;

        /* renamed from: b */
        public final int f4806b;

        public C0539d(Intent intent, int i) {
            this.f4805a = intent;
            this.f4806b = i;
        }

        @Override // androidx.core.app.JobIntentService.InterfaceC0540e
        public void complete() {
            JobIntentService.this.stopSelf(this.f4806b);
        }

        @Override // androidx.core.app.JobIntentService.InterfaceC0540e
        public Intent getIntent() {
            return this.f4805a;
        }
    }

    /* renamed from: androidx.core.app.JobIntentService$e */
    /* loaded from: classes3.dex */
    public interface InterfaceC0540e {
        void complete();

        Intent getIntent();
    }

    @RequiresApi(26)
    /* renamed from: androidx.core.app.JobIntentService$f */
    /* loaded from: classes3.dex */
    public static final class JobServiceEngineC0541f extends JobServiceEngine implements InterfaceC0537b {

        /* renamed from: d */
        public static final String f4808d = "JobServiceEngineImpl";

        /* renamed from: e */
        public static final boolean f4809e = false;

        /* renamed from: a */
        public final JobIntentService f4810a;

        /* renamed from: b */
        public final Object f4811b;

        /* renamed from: c */
        public JobParameters f4812c;

        /* renamed from: androidx.core.app.JobIntentService$f$a */
        /* loaded from: classes3.dex */
        public final class a implements InterfaceC0540e {

            /* renamed from: a */
            public final JobWorkItem f4813a;

            public a(JobWorkItem jobWorkItem) {
                this.f4813a = jobWorkItem;
            }

            @Override // androidx.core.app.JobIntentService.InterfaceC0540e
            public void complete() {
                synchronized (JobServiceEngineC0541f.this.f4811b) {
                    JobParameters jobParameters = JobServiceEngineC0541f.this.f4812c;
                    if (jobParameters != null) {
                        jobParameters.completeWork(this.f4813a);
                    }
                }
            }

            @Override // androidx.core.app.JobIntentService.InterfaceC0540e
            public Intent getIntent() {
                return this.f4813a.getIntent();
            }
        }

        public JobServiceEngineC0541f(JobIntentService jobIntentService) {
            super(jobIntentService);
            this.f4811b = new Object();
            this.f4810a = jobIntentService;
        }

        @Override // androidx.core.app.JobIntentService.InterfaceC0537b
        /* renamed from: a */
        public IBinder mo2362a() {
            return getBinder();
        }

        @Override // androidx.core.app.JobIntentService.InterfaceC0537b
        /* renamed from: b */
        public InterfaceC0540e mo2363b() {
            synchronized (this.f4811b) {
                JobParameters jobParameters = this.f4812c;
                if (jobParameters == null) {
                    return null;
                }
                JobWorkItem dequeueWork = jobParameters.dequeueWork();
                if (dequeueWork == null) {
                    return null;
                }
                dequeueWork.getIntent().setExtrasClassLoader(this.f4810a.getClassLoader());
                return new a(dequeueWork);
            }
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStartJob(JobParameters jobParameters) {
            this.f4812c = jobParameters;
            this.f4810a.m2357c(false);
            return true;
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStopJob(JobParameters jobParameters) {
            boolean m2356b = this.f4810a.m2356b();
            synchronized (this.f4811b) {
                this.f4812c = null;
            }
            return m2356b;
        }
    }

    @RequiresApi(26)
    /* renamed from: androidx.core.app.JobIntentService$g */
    /* loaded from: classes3.dex */
    public static final class C0542g extends AbstractC0543h {

        /* renamed from: d */
        public final JobInfo f4815d;

        /* renamed from: e */
        public final JobScheduler f4816e;

        public C0542g(Context context, ComponentName componentName, int i) {
            super(componentName);
            m2368b(i);
            this.f4815d = new JobInfo.Builder(i, this.f4817a).setOverrideDeadline(0L).build();
            this.f4816e = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0543h
        /* renamed from: a */
        public void mo2364a(Intent intent) {
            this.f4816e.enqueue(this.f4815d, new JobWorkItem(intent));
        }
    }

    /* renamed from: androidx.core.app.JobIntentService$h */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC0543h {

        /* renamed from: a */
        public final ComponentName f4817a;

        /* renamed from: b */
        public boolean f4818b;

        /* renamed from: c */
        public int f4819c;

        public AbstractC0543h(ComponentName componentName) {
            this.f4817a = componentName;
        }

        /* renamed from: a */
        public abstract void mo2364a(Intent intent);

        /* renamed from: b */
        public void m2368b(int i) {
            if (!this.f4818b) {
                this.f4818b = true;
                this.f4819c = i;
            } else {
                if (this.f4819c == i) {
                    return;
                }
                throw new IllegalArgumentException("Given job ID " + i + " is different than previous " + this.f4819c);
            }
        }

        /* renamed from: c */
        public void mo2365c() {
        }

        /* renamed from: d */
        public void mo2366d() {
        }

        /* renamed from: e */
        public void mo2367e() {
        }
    }

    /* renamed from: d */
    public static AbstractC0543h m2354d(Context context, ComponentName componentName, boolean z, int i) {
        HashMap<ComponentName, AbstractC0543h> hashMap = f4791o;
        AbstractC0543h abstractC0543h = hashMap.get(componentName);
        if (abstractC0543h != null) {
            return abstractC0543h;
        }
        if (!z) {
            throw new IllegalArgumentException("Can't be here without a job id");
        }
        C0542g c0542g = new C0542g(context, componentName, i);
        hashMap.put(componentName, c0542g);
        return c0542g;
    }

    public static void enqueueWork(@NonNull Context context, @NonNull Class<?> cls, int i, @NonNull Intent intent) {
        enqueueWork(context, new ComponentName(context, cls), i, intent);
    }

    /* renamed from: a */
    public InterfaceC0540e m2355a() {
        InterfaceC0537b interfaceC0537b = this.f4792e;
        if (interfaceC0537b != null) {
            return interfaceC0537b.mo2363b();
        }
        synchronized (this.f4798k) {
            if (this.f4798k.size() <= 0) {
                return null;
            }
            return this.f4798k.remove(0);
        }
    }

    /* renamed from: b */
    public boolean m2356b() {
        AsyncTaskC0536a asyncTaskC0536a = this.f4794g;
        if (asyncTaskC0536a != null) {
            asyncTaskC0536a.cancel(this.f4795h);
        }
        this.f4796i = true;
        return onStopCurrentWork();
    }

    /* renamed from: c */
    public void m2357c(boolean z) {
        if (this.f4794g == null) {
            this.f4794g = new AsyncTaskC0536a();
            AbstractC0543h abstractC0543h = this.f4793f;
            if (abstractC0543h != null && z) {
                abstractC0543h.mo2366d();
            }
            this.f4794g.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    /* renamed from: e */
    public void m2358e() {
        ArrayList<C0539d> arrayList = this.f4798k;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f4794g = null;
                ArrayList<C0539d> arrayList2 = this.f4798k;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    m2357c(false);
                } else if (!this.f4797j) {
                    this.f4793f.mo2365c();
                }
            }
        }
    }

    public boolean isStopped() {
        return this.f4796i;
    }

    @Override // android.app.Service
    public IBinder onBind(@NonNull Intent intent) {
        InterfaceC0537b interfaceC0537b = this.f4792e;
        if (interfaceC0537b != null) {
            return interfaceC0537b.mo2362a();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f4792e = new JobServiceEngineC0541f(this);
        this.f4793f = null;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ArrayList<C0539d> arrayList = this.f4798k;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f4797j = true;
                this.f4793f.mo2365c();
            }
        }
    }

    public abstract void onHandleWork(@NonNull Intent intent);

    @Override // android.app.Service
    public int onStartCommand(@Nullable Intent intent, int i, int i2) {
        if (this.f4798k == null) {
            return 2;
        }
        this.f4793f.mo2367e();
        synchronized (this.f4798k) {
            ArrayList<C0539d> arrayList = this.f4798k;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new C0539d(intent, i2));
            m2357c(true);
        }
        return 3;
    }

    public boolean onStopCurrentWork() {
        return true;
    }

    public void setInterruptIfStopped(boolean z) {
        this.f4795h = z;
    }

    public static void enqueueWork(@NonNull Context context, @NonNull ComponentName componentName, int i, @NonNull Intent intent) {
        if (intent != null) {
            synchronized (f4790n) {
                AbstractC0543h m2354d = m2354d(context, componentName, true, i);
                m2354d.m2368b(i);
                m2354d.mo2364a(intent);
            }
            return;
        }
        throw new IllegalArgumentException("work must not be null");
    }
}
