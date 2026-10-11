package com.sagittarius.p050v6;

import Abdullah.hook;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Debug;
import android.os.Process;
import com.sagittarius.p050v6.p051a.C13091a;
import com.sagittarius.p050v6.p052b.C13097f;
import com.sagittarius.p050v6.p052b.C13098g;
import com.sagittarius.p050v6.p052b.C13109r;
import com.sagittarius.p050v6.p052b.C13111t;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes18.dex */
public class StubApplication extends hook {
    private static final String[] llIIIl = null;
    public static Context mContext;
    public static int mInstallProviderCounter;
    public static Application mRealApplication;
    public static boolean mRealApplicationPatched;
    public static boolean skipLoad;
    private ArrayList mActivityCallbacks = null;

    static {
        IllIIl();
        mContext = null;
        mRealApplication = null;
        mRealApplicationPatched = false;
        mInstallProviderCounter = 0;
        skipLoad = false;
        C13097f.m52331a().init();
    }

    private static void IllIIl() {
        String[] strArr = new String[4];
        llIIIl = strArr;
        strArr[0] = lIlIIl("MScESSs9KgALI3wpGRcvNjtHDjU9JAgTIzY=", "RHigF");
        llIIIl[1] = lIlIIl("OzcCBjwzPUgVIyp3JxcnMy8PACoOMRQRMj4=", "ZYftS");
        llIIIl[2] = lIlIIl("CwsxLgAOCRIoDhQMJj8T", "beBZa");
        llIIIl[3] = lIlIIl("", "vTPhw");
    }

    private static String lIlIIl(String str, String str2) {
        byte[] m52319a = C13091a.m52319a(str);
        StringBuilder sb = new StringBuilder();
        char[] charArray = str2.toCharArray();
        int i = 0;
        for (byte b : m52319a) {
            sb.append((char) (b ^ charArray[i % charArray.length]));
            i++;
        }
        return sb.toString();
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        if ((AppInfo.FLAGS & 1048576) != 0 && C13111t.m52379a().contains(llIIIl[0])) {
            skipLoad = true;
        }
        if (skipLoad) {
            super.attachBaseContext(context);
        } else {
            C13111t.m52382a(this, context);
            mContext = context;
            AppInfo.APKPATH = context.getApplicationInfo().sourceDir;
            AppInfo.DATAPATH = C13111t.m52380a(context.getApplicationInfo().dataDir);
            if (Debug.isDebuggerConnected()) {
                Process.killProcess(Process.myPid());
            } else {
                if (Build.VERSION.SDK_INT > 27) {
                    C13109r.m52371a();
                }
                C13111t.m52387b();
                C13084A.m52303n1(context, AppInfo.PKGNAME, AppInfo.APKPATH, AppInfo.DATAPATH, Build.VERSION.SDK_INT);
            }
            if (AppInfo.APPNAME != null && AppInfo.APPNAME.length() > 0) {
                mRealApplication = C13098g.m52333a(AppInfo.APPNAME);
            }
            super.attachBaseContext(context);
            Application application = mRealApplication;
            if (application != null) {
                C13098g.m52337a(context, application);
                ArrayList arrayList = this.mActivityCallbacks;
                if (arrayList != null && !arrayList.isEmpty()) {
                    Iterator it2 = this.mActivityCallbacks.iterator();
                    while (it2.hasNext()) {
                        mRealApplication.registerActivityLifecycleCallbacks((Application.ActivityLifecycleCallbacks) it2.next());
                    }
                }
            }
            C13111t.m52389c();
        }
        C13097f.m52331a().attachBaseContext(context, this, mRealApplication);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public String getPackageName() {
        if (skipLoad) {
            return super.getPackageName();
        }
        if (mInstallProviderCounter < 2) {
            StackTraceElement[] stackTrace = new Exception().getStackTrace();
            if (stackTrace.length >= 2) {
                String className = stackTrace[1].getClassName();
                String methodName = stackTrace[1].getMethodName();
                if (className.compareTo(llIIIl[1]) == 0 && methodName.compareTo(llIIIl[2]) == 0) {
                    int i = mInstallProviderCounter;
                    if (i == 0) {
                        mInstallProviderCounter = i + 1;
                        return llIIIl[3];
                    }
                    if (1 == i) {
                        mInstallProviderCounter = i + 1;
                        C13111t.m52381a((Application) this);
                    }
                }
            }
        }
        return AppInfo.PKGNAME;
    }

    @Override // android.app.Application
    public void onCreate() {
        if (skipLoad) {
            super.onCreate();
        } else {
            C13111t.m52381a((Application) this);
            super.onCreate();
            C13111t.m52383a((Context) this);
            if (mRealApplication != null) {
                C13111t.m52388b(this);
                mRealApplication.onCreate();
            }
            C13084A.m52304n2(this);
        }
        C13097f.m52331a().onCreate(this, mRealApplication);
    }

    @Override // android.app.Application
    public void registerActivityLifecycleCallbacks(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        C13097f.m52331a().registerActivityLifecycleCallbacks(activityLifecycleCallbacks, this, mRealApplication);
        if (skipLoad) {
            return;
        }
        Application application = mRealApplication;
        if (application != null) {
            application.registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
            return;
        }
        if (this.mActivityCallbacks == null) {
            this.mActivityCallbacks = new ArrayList();
        }
        this.mActivityCallbacks.add(activityLifecycleCallbacks);
    }
}
