package com.blankj.utilcode.util;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.annotation.AnimRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.util.Pair;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.Utils;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class ActivityUtils {
    public ActivityUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    @Nullable
    /* renamed from: a */
    public static Activity m7930a(@Nullable Context context) {
        if (context == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        while (context instanceof ContextWrapper) {
            if (!(context instanceof Activity)) {
                Activity m7931b = m7931b(context);
                if (m7931b == null) {
                    arrayList.add(context);
                    context = ((ContextWrapper) context).getBaseContext();
                    if (context == null || arrayList.contains(context)) {
                        break;
                    }
                } else {
                    return m7931b;
                }
            } else {
                return (Activity) context;
            }
        }
        return null;
    }

    public static void addActivityLifecycleCallbacks(@Nullable Utils.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        C1887b.m8486b(activityLifecycleCallbacks);
    }

    @Nullable
    /* renamed from: b */
    public static Activity m7931b(@Nullable Context context) {
        if (context != null && context.getClass().getName().equals("com.android.internal.policy.DecorContext")) {
            try {
                Field declaredField = context.getClass().getDeclaredField("mActivityContext");
                declaredField.setAccessible(true);
                return (Activity) ((WeakReference) declaredField.get(context)).get();
            } catch (Exception unused) {
            }
        }
        return null;
    }

    /* renamed from: c */
    public static Bundle m7932c(Activity activity, View[] viewArr) {
        int length;
        if (viewArr == null || (length = viewArr.length) <= 0) {
            return null;
        }
        Pair[] pairArr = new Pair[length];
        for (int i = 0; i < length; i++) {
            View view = viewArr[i];
            pairArr[i] = Pair.create(view, view.getTransitionName());
        }
        return ActivityOptionsCompat.makeSceneTransitionAnimation(activity, pairArr).toBundle();
    }

    /* renamed from: d */
    public static Bundle m7933d(Context context, int i, int i2) {
        return ActivityOptionsCompat.makeCustomAnimation(context, i, i2).toBundle();
    }

    /* renamed from: e */
    public static Bundle m7934e(Fragment fragment, int i, int i2) {
        FragmentActivity activity = fragment.getActivity();
        if (activity == null) {
            return null;
        }
        return ActivityOptionsCompat.makeCustomAnimation(activity, i, i2).toBundle();
    }

    /* renamed from: f */
    public static Bundle m7935f(Fragment fragment, View[] viewArr) {
        FragmentActivity activity = fragment.getActivity();
        if (activity == null) {
            return null;
        }
        return m7932c(activity, viewArr);
    }

    public static void finishActivity(@NonNull Activity activity) {
        finishActivity(activity, false);
    }

    public static void finishAllActivities() {
        finishAllActivities(false);
    }

    public static void finishAllActivitiesExceptNewest() {
        finishAllActivitiesExceptNewest(false);
    }

    public static void finishOtherActivities(@NonNull Class<? extends Activity> cls) {
        finishOtherActivities(cls, false);
    }

    public static boolean finishToActivity(@NonNull Activity activity, boolean z) {
        return finishToActivity(activity, z, false);
    }

    /* renamed from: g */
    public static Context m7936g() {
        Activity topActivity;
        return (!C1887b.m8528r0() || (topActivity = getTopActivity()) == null) ? Utils.getApp() : topActivity;
    }

    @Nullable
    public static Activity getActivityByContext(@Nullable Context context) {
        if (context == null) {
            return null;
        }
        Activity m7930a = m7930a(context);
        if (isActivityAlive(m7930a)) {
            return m7930a;
        }
        return null;
    }

    @Nullable
    public static Drawable getActivityIcon(@NonNull Activity activity) {
        return getActivityIcon(activity.getComponentName());
    }

    public static List<Activity> getActivityList() {
        return C1887b.m8449J();
    }

    @Nullable
    public static Drawable getActivityLogo(@NonNull Activity activity) {
        return getActivityLogo(activity.getComponentName());
    }

    public static String getLauncherActivity() {
        return getLauncherActivity(Utils.getApp().getPackageName());
    }

    public static List<String> getMainActivities() {
        return getMainActivities(Utils.getApp().getPackageName());
    }

    public static Activity getTopActivity() {
        return C1887b.m8505h0();
    }

    /* renamed from: h */
    public static boolean m7937h(Intent intent) {
        return Utils.getApp().getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    /* renamed from: i */
    public static void m7938i(Intent[] intentArr, Context context, @Nullable Bundle bundle) {
        if (!(context instanceof Activity)) {
            for (Intent intent : intentArr) {
                intent.addFlags(268435456);
            }
        }
        if (bundle != null) {
            context.startActivities(intentArr, bundle);
        } else {
            context.startActivities(intentArr);
        }
    }

    public static boolean isActivityAlive(Context context) {
        return isActivityAlive(getActivityByContext(context));
    }

    public static boolean isActivityExists(@NonNull String str, @NonNull String str2) {
        Intent intent = new Intent();
        intent.setClassName(str, str2);
        PackageManager packageManager = Utils.getApp().getPackageManager();
        return (packageManager.resolveActivity(intent, 0) == null || intent.resolveActivity(packageManager) == null || packageManager.queryIntentActivities(intent, 0).size() == 0) ? false : true;
    }

    public static boolean isActivityExistsInStack(@NonNull Activity activity) {
        Iterator<Activity> it2 = C1887b.m8449J().iterator();
        while (it2.hasNext()) {
            if (it2.next().equals(activity)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: j */
    public static void m7939j(Context context, Bundle bundle, String str, String str2, @Nullable Bundle bundle2) {
        Intent intent = new Intent();
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        intent.setComponent(new ComponentName(str, str2));
        m7940k(intent, context, bundle2);
    }

    /* renamed from: k */
    public static boolean m7940k(Intent intent, Context context, Bundle bundle) {
        if (!m7937h(intent)) {
            Log.e("ActivityUtils", "intent is unavailable");
            return false;
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        if (bundle != null) {
            context.startActivity(intent, bundle);
            return true;
        }
        context.startActivity(intent);
        return true;
    }

    /* renamed from: l */
    public static boolean m7941l(Activity activity, Bundle bundle, String str, String str2, int i, @Nullable Bundle bundle2) {
        Intent intent = new Intent();
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        intent.setComponent(new ComponentName(str, str2));
        return m7942m(intent, activity, i, bundle2);
    }

    /* renamed from: m */
    public static boolean m7942m(Intent intent, Activity activity, int i, @Nullable Bundle bundle) {
        if (!m7937h(intent)) {
            Log.e("ActivityUtils", "intent is unavailable");
            return false;
        }
        if (bundle != null) {
            activity.startActivityForResult(intent, i, bundle);
            return true;
        }
        activity.startActivityForResult(intent, i);
        return true;
    }

    /* renamed from: n */
    public static boolean m7943n(Intent intent, Fragment fragment, int i, @Nullable Bundle bundle) {
        if (!m7937h(intent)) {
            Log.e("ActivityUtils", "intent is unavailable");
            return false;
        }
        if (fragment.getActivity() != null) {
            if (bundle != null) {
                fragment.startActivityForResult(intent, i, bundle);
                return true;
            }
            fragment.startActivityForResult(intent, i);
            return true;
        }
        Log.e("ActivityUtils", "Fragment " + fragment + " not attached to Activity");
        return false;
    }

    /* renamed from: o */
    public static boolean m7944o(Fragment fragment, Bundle bundle, String str, String str2, int i, @Nullable Bundle bundle2) {
        Intent intent = new Intent();
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        intent.setComponent(new ComponentName(str, str2));
        return m7943n(intent, fragment, i, bundle2);
    }

    public static void removeActivityLifecycleCallbacks(@Nullable Utils.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        C1887b.m8470T0(activityLifecycleCallbacks);
    }

    public static void startActivities(@NonNull Intent[] intentArr) {
        m7938i(intentArr, m7936g(), null);
    }

    public static void startActivity(@NonNull Class<? extends Activity> cls) {
        Context m7936g = m7936g();
        m7939j(m7936g, null, m7936g.getPackageName(), cls.getName(), null);
    }

    public static void startActivityForResult(@NonNull Activity activity, @NonNull Class<? extends Activity> cls, int i) {
        m7941l(activity, null, activity.getPackageName(), cls.getName(), i, null);
    }

    public static void startHomeActivity() {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        intent.setFlags(268435456);
        startActivity(intent);
    }

    public static void startLauncherActivity() {
        startLauncherActivity(Utils.getApp().getPackageName());
    }

    public static void addActivityLifecycleCallbacks(@Nullable Activity activity, @Nullable Utils.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        C1887b.m8483a(activity, activityLifecycleCallbacks);
    }

    public static void finishActivity(@NonNull Activity activity, boolean z) {
        activity.finish();
        if (z) {
            return;
        }
        activity.overridePendingTransition(0, 0);
    }

    public static void finishAllActivities(boolean z) {
        for (Activity activity : C1887b.m8449J()) {
            activity.finish();
            if (!z) {
                activity.overridePendingTransition(0, 0);
            }
        }
    }

    public static void finishAllActivitiesExceptNewest(boolean z) {
        List<Activity> m8449J = C1887b.m8449J();
        for (int i = 1; i < m8449J.size(); i++) {
            finishActivity(m8449J.get(i), z);
        }
    }

    public static void finishOtherActivities(@NonNull Class<? extends Activity> cls, boolean z) {
        for (Activity activity : C1887b.m8449J()) {
            if (!activity.getClass().equals(cls)) {
                finishActivity(activity, z);
            }
        }
    }

    public static boolean finishToActivity(@NonNull Activity activity, boolean z, boolean z2) {
        for (Activity activity2 : C1887b.m8449J()) {
            if (activity2.equals(activity)) {
                if (!z) {
                    return true;
                }
                finishActivity(activity2, z2);
                return true;
            }
            finishActivity(activity2, z2);
        }
        return false;
    }

    @Nullable
    public static Drawable getActivityIcon(@NonNull Class<? extends Activity> cls) {
        return getActivityIcon(new ComponentName(Utils.getApp(), cls));
    }

    @Nullable
    public static Drawable getActivityLogo(@NonNull Class<? extends Activity> cls) {
        return getActivityLogo(new ComponentName(Utils.getApp(), cls));
    }

    public static String getLauncherActivity(@NonNull String str) {
        if (C1887b.m8438D0(str)) {
            return "";
        }
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setPackage(str);
        List<ResolveInfo> queryIntentActivities = Utils.getApp().getPackageManager().queryIntentActivities(intent, 0);
        return (queryIntentActivities == null || queryIntentActivities.size() == 0) ? "" : queryIntentActivities.get(0).activityInfo.name;
    }

    public static List<String> getMainActivities(@NonNull String str) {
        ArrayList arrayList = new ArrayList();
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.setPackage(str);
        List<ResolveInfo> queryIntentActivities = Utils.getApp().getPackageManager().queryIntentActivities(intent, 0);
        int size = queryIntentActivities.size();
        if (size == 0) {
            return arrayList;
        }
        for (int i = 0; i < size; i++) {
            ResolveInfo resolveInfo = queryIntentActivities.get(i);
            if (resolveInfo.activityInfo.processName.equals(str)) {
                arrayList.add(resolveInfo.activityInfo.name);
            }
        }
        return arrayList;
    }

    public static boolean isActivityAlive(Activity activity) {
        return (activity == null || activity.isFinishing() || activity.isDestroyed()) ? false : true;
    }

    public static void removeActivityLifecycleCallbacks(@Nullable Activity activity) {
        C1887b.m8466R0(activity);
    }

    public static void startActivities(@NonNull Intent[] intentArr, @Nullable Bundle bundle) {
        m7938i(intentArr, m7936g(), bundle);
    }

    public static void startActivityForResult(@NonNull Activity activity, @NonNull Class<? extends Activity> cls, int i, @Nullable Bundle bundle) {
        m7941l(activity, null, activity.getPackageName(), cls.getName(), i, bundle);
    }

    public static void startLauncherActivity(@NonNull String str) {
        String launcherActivity = getLauncherActivity(str);
        if (TextUtils.isEmpty(launcherActivity)) {
            return;
        }
        startActivity(str, launcherActivity);
    }

    @Nullable
    public static Drawable getActivityIcon(@NonNull ComponentName componentName) {
        try {
            return Utils.getApp().getPackageManager().getActivityIcon(componentName);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Nullable
    public static Drawable getActivityLogo(@NonNull ComponentName componentName) {
        try {
            return Utils.getApp().getPackageManager().getActivityLogo(componentName);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void removeActivityLifecycleCallbacks(@Nullable Activity activity, @Nullable Utils.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        C1887b.m8468S0(activity, activityLifecycleCallbacks);
    }

    public static void startActivities(@NonNull Intent[] intentArr, @AnimRes int i, @AnimRes int i2) {
        Context m7936g = m7936g();
        m7938i(intentArr, m7936g, m7933d(m7936g, i, i2));
    }

    public static void startActivity(@NonNull Class<? extends Activity> cls, @Nullable Bundle bundle) {
        Context m7936g = m7936g();
        m7939j(m7936g, null, m7936g.getPackageName(), cls.getName(), bundle);
    }

    public static void startActivityForResult(@NonNull Activity activity, @NonNull Class<? extends Activity> cls, int i, View... viewArr) {
        m7941l(activity, null, activity.getPackageName(), cls.getName(), i, m7932c(activity, viewArr));
    }

    public static void finishActivity(@NonNull Activity activity, @AnimRes int i, @AnimRes int i2) {
        activity.finish();
        activity.overridePendingTransition(i, i2);
    }

    public static boolean isActivityExistsInStack(@NonNull Class<? extends Activity> cls) {
        Iterator<Activity> it2 = C1887b.m8449J().iterator();
        while (it2.hasNext()) {
            if (it2.next().getClass().equals(cls)) {
                return true;
            }
        }
        return false;
    }

    public static void finishAllActivitiesExceptNewest(@AnimRes int i, @AnimRes int i2) {
        List<Activity> m8449J = C1887b.m8449J();
        for (int i3 = 1; i3 < m8449J.size(); i3++) {
            finishActivity(m8449J.get(i3), i, i2);
        }
    }

    public static void startActivities(@NonNull Activity activity, @NonNull Intent[] intentArr) {
        m7938i(intentArr, activity, null);
    }

    public static void startActivity(@NonNull Class<? extends Activity> cls, @AnimRes int i, @AnimRes int i2) {
        Context m7936g = m7936g();
        m7939j(m7936g, null, m7936g.getPackageName(), cls.getName(), m7933d(m7936g, i, i2));
    }

    public static void finishActivity(@NonNull Class<? extends Activity> cls) {
        finishActivity(cls, false);
    }

    public static void finishAllActivities(@AnimRes int i, @AnimRes int i2) {
        for (Activity activity : C1887b.m8449J()) {
            activity.finish();
            activity.overridePendingTransition(i, i2);
        }
    }

    public static void finishOtherActivities(@NonNull Class<? extends Activity> cls, @AnimRes int i, @AnimRes int i2) {
        for (Activity activity : C1887b.m8449J()) {
            if (!activity.getClass().equals(cls)) {
                finishActivity(activity, i, i2);
            }
        }
    }

    public static void startActivities(@NonNull Activity activity, @NonNull Intent[] intentArr, @Nullable Bundle bundle) {
        m7938i(intentArr, activity, bundle);
    }

    public static void startActivityForResult(@NonNull Activity activity, @NonNull Class<? extends Activity> cls, int i, @AnimRes int i2, @AnimRes int i3) {
        m7941l(activity, null, activity.getPackageName(), cls.getName(), i, m7933d(activity, i2, i3));
    }

    public static void finishActivity(@NonNull Class<? extends Activity> cls, boolean z) {
        for (Activity activity : C1887b.m8449J()) {
            if (activity.getClass().equals(cls)) {
                activity.finish();
                if (!z) {
                    activity.overridePendingTransition(0, 0);
                }
            }
        }
    }

    public static boolean finishToActivity(@NonNull Activity activity, boolean z, @AnimRes int i, @AnimRes int i2) {
        for (Activity activity2 : C1887b.m8449J()) {
            if (activity2.equals(activity)) {
                if (!z) {
                    return true;
                }
                finishActivity(activity2, i, i2);
                return true;
            }
            finishActivity(activity2, i, i2);
        }
        return false;
    }

    public static void startActivities(@NonNull Activity activity, @NonNull Intent[] intentArr, @AnimRes int i, @AnimRes int i2) {
        m7938i(intentArr, activity, m7933d(activity, i, i2));
    }

    public static void startActivity(@NonNull Activity activity, @NonNull Class<? extends Activity> cls) {
        m7939j(activity, null, activity.getPackageName(), cls.getName(), null);
    }

    public static void startActivityForResult(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull Class<? extends Activity> cls, int i) {
        m7941l(activity, bundle, activity.getPackageName(), cls.getName(), i, null);
    }

    public static void startActivity(@NonNull Activity activity, @NonNull Class<? extends Activity> cls, @Nullable Bundle bundle) {
        m7939j(activity, null, activity.getPackageName(), cls.getName(), bundle);
    }

    public static void startActivityForResult(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull Class<? extends Activity> cls, int i, @Nullable Bundle bundle2) {
        m7941l(activity, bundle, activity.getPackageName(), cls.getName(), i, bundle2);
    }

    public static void startActivity(@NonNull Activity activity, @NonNull Class<? extends Activity> cls, View... viewArr) {
        m7939j(activity, null, activity.getPackageName(), cls.getName(), m7932c(activity, viewArr));
    }

    public static void startActivityForResult(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull Class<? extends Activity> cls, int i, View... viewArr) {
        m7941l(activity, bundle, activity.getPackageName(), cls.getName(), i, m7932c(activity, viewArr));
    }

    public static void finishActivity(@NonNull Class<? extends Activity> cls, @AnimRes int i, @AnimRes int i2) {
        for (Activity activity : C1887b.m8449J()) {
            if (activity.getClass().equals(cls)) {
                activity.finish();
                activity.overridePendingTransition(i, i2);
            }
        }
    }

    public static boolean finishToActivity(@NonNull Class<? extends Activity> cls, boolean z) {
        return finishToActivity(cls, z, false);
    }

    public static boolean finishToActivity(@NonNull Class<? extends Activity> cls, boolean z, boolean z2) {
        for (Activity activity : C1887b.m8449J()) {
            if (activity.getClass().equals(cls)) {
                if (!z) {
                    return true;
                }
                finishActivity(activity, z2);
                return true;
            }
            finishActivity(activity, z2);
        }
        return false;
    }

    public static void startActivity(@NonNull Activity activity, @NonNull Class<? extends Activity> cls, @AnimRes int i, @AnimRes int i2) {
        m7939j(activity, null, activity.getPackageName(), cls.getName(), m7933d(activity, i, i2));
    }

    public static void startActivityForResult(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull Class<? extends Activity> cls, int i, @AnimRes int i2, @AnimRes int i3) {
        m7941l(activity, bundle, activity.getPackageName(), cls.getName(), i, m7933d(activity, i2, i3));
    }

    public static void startActivity(@NonNull Bundle bundle, @NonNull Class<? extends Activity> cls) {
        Context m7936g = m7936g();
        m7939j(m7936g, bundle, m7936g.getPackageName(), cls.getName(), null);
    }

    public static void startActivityForResult(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull String str, @NonNull String str2, int i) {
        m7941l(activity, bundle, str, str2, i, null);
    }

    public static boolean finishToActivity(@NonNull Class<? extends Activity> cls, boolean z, @AnimRes int i, @AnimRes int i2) {
        for (Activity activity : C1887b.m8449J()) {
            if (activity.getClass().equals(cls)) {
                if (!z) {
                    return true;
                }
                finishActivity(activity, i, i2);
                return true;
            }
            finishActivity(activity, i, i2);
        }
        return false;
    }

    public static void startActivityForResult(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull String str, @NonNull String str2, int i, @Nullable Bundle bundle2) {
        m7941l(activity, bundle, str, str2, i, bundle2);
    }

    public static void startActivity(@NonNull Bundle bundle, @NonNull Class<? extends Activity> cls, @Nullable Bundle bundle2) {
        Context m7936g = m7936g();
        m7939j(m7936g, bundle, m7936g.getPackageName(), cls.getName(), bundle2);
    }

    public static void startActivityForResult(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull String str, @NonNull String str2, int i, View... viewArr) {
        m7941l(activity, bundle, str, str2, i, m7932c(activity, viewArr));
    }

    public static void startActivity(@NonNull Bundle bundle, @NonNull Class<? extends Activity> cls, @AnimRes int i, @AnimRes int i2) {
        Context m7936g = m7936g();
        m7939j(m7936g, bundle, m7936g.getPackageName(), cls.getName(), m7933d(m7936g, i, i2));
    }

    public static void startActivityForResult(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull String str, @NonNull String str2, int i, @AnimRes int i2, @AnimRes int i3) {
        m7941l(activity, bundle, str, str2, i, m7933d(activity, i2, i3));
    }

    public static void startActivityForResult(@NonNull Activity activity, @NonNull Intent intent, int i) {
        m7942m(intent, activity, i, null);
    }

    public static void startActivityForResult(@NonNull Activity activity, @NonNull Intent intent, int i, @Nullable Bundle bundle) {
        m7942m(intent, activity, i, bundle);
    }

    public static void startActivity(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull Class<? extends Activity> cls) {
        m7939j(activity, bundle, activity.getPackageName(), cls.getName(), null);
    }

    public static void startActivityForResult(@NonNull Activity activity, @NonNull Intent intent, int i, View... viewArr) {
        m7942m(intent, activity, i, m7932c(activity, viewArr));
    }

    public static void startActivity(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull Class<? extends Activity> cls, @Nullable Bundle bundle2) {
        m7939j(activity, bundle, activity.getPackageName(), cls.getName(), bundle2);
    }

    public static void startActivity(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull Class<? extends Activity> cls, View... viewArr) {
        m7939j(activity, bundle, activity.getPackageName(), cls.getName(), m7932c(activity, viewArr));
    }

    public static void startActivityForResult(@NonNull Activity activity, @NonNull Intent intent, int i, @AnimRes int i2, @AnimRes int i3) {
        m7942m(intent, activity, i, m7933d(activity, i2, i3));
    }

    public static void startActivityForResult(@NonNull Fragment fragment, @NonNull Class<? extends Activity> cls, int i) {
        m7944o(fragment, null, Utils.getApp().getPackageName(), cls.getName(), i, null);
    }

    public static void startActivity(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull Class<? extends Activity> cls, @AnimRes int i, @AnimRes int i2) {
        m7939j(activity, bundle, activity.getPackageName(), cls.getName(), m7933d(activity, i, i2));
    }

    public static void startActivityForResult(@NonNull Fragment fragment, @NonNull Class<? extends Activity> cls, int i, @Nullable Bundle bundle) {
        m7944o(fragment, null, Utils.getApp().getPackageName(), cls.getName(), i, bundle);
    }

    public static void startActivityForResult(@NonNull Fragment fragment, @NonNull Class<? extends Activity> cls, int i, View... viewArr) {
        m7944o(fragment, null, Utils.getApp().getPackageName(), cls.getName(), i, m7935f(fragment, viewArr));
    }

    public static void startActivity(@NonNull String str, @NonNull String str2) {
        m7939j(m7936g(), null, str, str2, null);
    }

    public static void startActivity(@NonNull String str, @NonNull String str2, @Nullable Bundle bundle) {
        m7939j(m7936g(), null, str, str2, bundle);
    }

    public static void startActivityForResult(@NonNull Fragment fragment, @NonNull Class<? extends Activity> cls, int i, @AnimRes int i2, @AnimRes int i3) {
        m7944o(fragment, null, Utils.getApp().getPackageName(), cls.getName(), i, m7934e(fragment, i2, i3));
    }

    public static void startActivity(@NonNull String str, @NonNull String str2, @AnimRes int i, @AnimRes int i2) {
        Context m7936g = m7936g();
        m7939j(m7936g, null, str, str2, m7933d(m7936g, i, i2));
    }

    public static void startActivity(@NonNull Activity activity, @NonNull String str, @NonNull String str2) {
        m7939j(activity, null, str, str2, null);
    }

    public static void startActivityForResult(@NonNull Bundle bundle, @NonNull Fragment fragment, @NonNull Class<? extends Activity> cls, int i) {
        m7944o(fragment, bundle, Utils.getApp().getPackageName(), cls.getName(), i, null);
    }

    public static void startActivity(@NonNull Activity activity, @NonNull String str, @NonNull String str2, @Nullable Bundle bundle) {
        m7939j(activity, null, str, str2, bundle);
    }

    public static void startActivityForResult(@NonNull Bundle bundle, @NonNull Fragment fragment, @NonNull Class<? extends Activity> cls, int i, @Nullable Bundle bundle2) {
        m7944o(fragment, bundle, Utils.getApp().getPackageName(), cls.getName(), i, bundle2);
    }

    public static void startActivity(@NonNull Activity activity, @NonNull String str, @NonNull String str2, View... viewArr) {
        m7939j(activity, null, str, str2, m7932c(activity, viewArr));
    }

    public static void startActivityForResult(@NonNull Bundle bundle, @NonNull Fragment fragment, @NonNull Class<? extends Activity> cls, int i, View... viewArr) {
        m7944o(fragment, bundle, Utils.getApp().getPackageName(), cls.getName(), i, m7935f(fragment, viewArr));
    }

    public static void startActivity(@NonNull Activity activity, @NonNull String str, @NonNull String str2, @AnimRes int i, @AnimRes int i2) {
        m7939j(activity, null, str, str2, m7933d(activity, i, i2));
    }

    public static void startActivity(@NonNull Bundle bundle, @NonNull String str, @NonNull String str2) {
        m7939j(m7936g(), bundle, str, str2, null);
    }

    public static void startActivity(@NonNull Bundle bundle, @NonNull String str, @NonNull String str2, @Nullable Bundle bundle2) {
        m7939j(m7936g(), bundle, str, str2, bundle2);
    }

    public static void startActivityForResult(@NonNull Bundle bundle, @NonNull Fragment fragment, @NonNull Class<? extends Activity> cls, int i, @AnimRes int i2, @AnimRes int i3) {
        m7944o(fragment, bundle, Utils.getApp().getPackageName(), cls.getName(), i, m7934e(fragment, i2, i3));
    }

    public static void startActivity(@NonNull Bundle bundle, @NonNull String str, @NonNull String str2, @AnimRes int i, @AnimRes int i2) {
        Context m7936g = m7936g();
        m7939j(m7936g, bundle, str, str2, m7933d(m7936g, i, i2));
    }

    public static void startActivity(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull String str, @NonNull String str2) {
        m7939j(activity, bundle, str, str2, null);
    }

    public static void startActivityForResult(@NonNull Bundle bundle, @NonNull Fragment fragment, @NonNull String str, @NonNull String str2, int i) {
        m7944o(fragment, bundle, str, str2, i, null);
    }

    public static void startActivity(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull String str, @NonNull String str2, @Nullable Bundle bundle2) {
        m7939j(activity, bundle, str, str2, bundle2);
    }

    public static void startActivityForResult(@NonNull Bundle bundle, @NonNull Fragment fragment, @NonNull String str, @NonNull String str2, int i, @Nullable Bundle bundle2) {
        m7944o(fragment, bundle, str, str2, i, bundle2);
    }

    public static void startActivity(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull String str, @NonNull String str2, View... viewArr) {
        m7939j(activity, bundle, str, str2, m7932c(activity, viewArr));
    }

    public static void startActivityForResult(@NonNull Bundle bundle, @NonNull Fragment fragment, @NonNull String str, @NonNull String str2, int i, View... viewArr) {
        m7944o(fragment, bundle, str, str2, i, m7935f(fragment, viewArr));
    }

    public static void startActivity(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull String str, @NonNull String str2, @AnimRes int i, @AnimRes int i2) {
        m7939j(activity, bundle, str, str2, m7933d(activity, i, i2));
    }

    public static boolean startActivity(@NonNull Intent intent) {
        return m7940k(intent, m7936g(), null);
    }

    public static void startActivityForResult(@NonNull Bundle bundle, @NonNull Fragment fragment, @NonNull String str, @NonNull String str2, int i, @AnimRes int i2, @AnimRes int i3) {
        m7944o(fragment, bundle, str, str2, i, m7934e(fragment, i2, i3));
    }

    public static boolean startActivity(@NonNull Intent intent, @Nullable Bundle bundle) {
        return m7940k(intent, m7936g(), bundle);
    }

    public static boolean startActivity(@NonNull Intent intent, @AnimRes int i, @AnimRes int i2) {
        Context m7936g = m7936g();
        return m7940k(intent, m7936g, m7933d(m7936g, i, i2));
    }

    public static void startActivityForResult(@NonNull Fragment fragment, @NonNull Intent intent, int i) {
        m7943n(intent, fragment, i, null);
    }

    public static void startActivityForResult(@NonNull Fragment fragment, @NonNull Intent intent, int i, @Nullable Bundle bundle) {
        m7943n(intent, fragment, i, bundle);
    }

    public static void startActivity(@NonNull Activity activity, @NonNull Intent intent) {
        m7940k(intent, activity, null);
    }

    public static void startActivityForResult(@NonNull Fragment fragment, @NonNull Intent intent, int i, View... viewArr) {
        m7943n(intent, fragment, i, m7935f(fragment, viewArr));
    }

    public static void startActivity(@NonNull Activity activity, @NonNull Intent intent, @Nullable Bundle bundle) {
        m7940k(intent, activity, bundle);
    }

    public static void startActivity(@NonNull Activity activity, @NonNull Intent intent, View... viewArr) {
        m7940k(intent, activity, m7932c(activity, viewArr));
    }

    public static void startActivityForResult(@NonNull Fragment fragment, @NonNull Intent intent, int i, @AnimRes int i2, @AnimRes int i3) {
        m7943n(intent, fragment, i, m7934e(fragment, i2, i3));
    }

    public static void startActivity(@NonNull Activity activity, @NonNull Intent intent, @AnimRes int i, @AnimRes int i2) {
        m7940k(intent, activity, m7933d(activity, i, i2));
    }
}
