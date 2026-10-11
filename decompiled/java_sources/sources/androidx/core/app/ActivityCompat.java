package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.Display;
import android.view.DragEvent;
import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.IdRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.app.ActivityCompat;
import androidx.core.app.SharedElementCallback;
import androidx.core.content.ContextCompat;
import androidx.core.content.LocusIdCompat;
import androidx.core.view.DragAndDropPermissionsCompat;
import com.permissionx.guolindev.PermissionX;
import com.sunia.HTREnginev2.C14336r6;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class ActivityCompat extends ContextCompat {

    /* renamed from: a */
    public static PermissionCompatDelegate f4761a;

    /* loaded from: classes3.dex */
    public interface OnRequestPermissionsResultCallback {
        void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr);
    }

    /* loaded from: classes3.dex */
    public interface PermissionCompatDelegate {
        boolean onActivityResult(@NonNull Activity activity, @IntRange(from = 0) int i, int i2, @Nullable Intent intent);

        boolean requestPermissions(@NonNull Activity activity, @NonNull String[] strArr, @IntRange(from = 0) int i);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public interface RequestPermissionsRequestCodeValidator {
        void validateRequestPermissionsRequestCode(int i);
    }

    /* renamed from: androidx.core.app.ActivityCompat$a */
    /* loaded from: classes3.dex */
    public class RunnableC0513a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ String[] f4762e;

        /* renamed from: f */
        public final /* synthetic */ Activity f4763f;

        /* renamed from: g */
        public final /* synthetic */ int f4764g;

        public RunnableC0513a(String[] strArr, Activity activity, int i) {
            this.f4762e = strArr;
            this.f4763f = activity;
            this.f4764g = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = new int[this.f4762e.length];
            PackageManager packageManager = this.f4763f.getPackageManager();
            String packageName = this.f4763f.getPackageName();
            int length = this.f4762e.length;
            for (int i = 0; i < length; i++) {
                iArr[i] = packageManager.checkPermission(this.f4762e[i], packageName);
            }
            ((OnRequestPermissionsResultCallback) this.f4763f).onRequestPermissionsResult(this.f4764g, this.f4762e, iArr);
        }
    }

    @RequiresApi(21)
    /* renamed from: androidx.core.app.ActivityCompat$b */
    /* loaded from: classes3.dex */
    public static class C0514b {
        @DoNotInline
        /* renamed from: a */
        public static void m2302a(Activity activity) {
            activity.finishAfterTransition();
        }

        @DoNotInline
        /* renamed from: b */
        public static void m2303b(Activity activity) {
            activity.postponeEnterTransition();
        }

        @DoNotInline
        /* renamed from: c */
        public static void m2304c(Activity activity, android.app.SharedElementCallback sharedElementCallback) {
            activity.setEnterSharedElementCallback(sharedElementCallback);
        }

        @DoNotInline
        /* renamed from: d */
        public static void m2305d(Activity activity, android.app.SharedElementCallback sharedElementCallback) {
            activity.setExitSharedElementCallback(sharedElementCallback);
        }

        @DoNotInline
        /* renamed from: e */
        public static void m2306e(Activity activity) {
            activity.startPostponedEnterTransition();
        }
    }

    @RequiresApi(22)
    /* renamed from: androidx.core.app.ActivityCompat$c */
    /* loaded from: classes3.dex */
    public static class C0515c {
        @DoNotInline
        /* renamed from: a */
        public static Uri m2307a(Activity activity) {
            return activity.getReferrer();
        }
    }

    @RequiresApi(23)
    /* renamed from: androidx.core.app.ActivityCompat$d */
    /* loaded from: classes3.dex */
    public static class C0516d {
        @DoNotInline
        /* renamed from: a */
        public static void m2308a(Object obj) {
            ((SharedElementCallback.OnSharedElementsReadyListener) obj).onSharedElementsReady();
        }

        @DoNotInline
        /* renamed from: b */
        public static void m2309b(Activity activity, String[] strArr, int i) {
            activity.requestPermissions(strArr, i);
        }

        @DoNotInline
        /* renamed from: c */
        public static boolean m2310c(Activity activity, String str) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
    }

    @RequiresApi(28)
    /* renamed from: androidx.core.app.ActivityCompat$e */
    /* loaded from: classes3.dex */
    public static class C0517e {
        @DoNotInline
        /* renamed from: a */
        public static <T> T m2311a(Activity activity, int i) {
            return (T) activity.requireViewById(i);
        }
    }

    @RequiresApi(30)
    /* renamed from: androidx.core.app.ActivityCompat$f */
    /* loaded from: classes3.dex */
    public static class C0518f {
        @DoNotInline
        /* renamed from: a */
        public static Display m2312a(ContextWrapper contextWrapper) {
            return contextWrapper.getDisplay();
        }

        @DoNotInline
        /* renamed from: b */
        public static void m2313b(@NonNull Activity activity, @Nullable LocusIdCompat locusIdCompat, @Nullable Bundle bundle) {
            activity.setLocusContext(locusIdCompat == null ? null : locusIdCompat.toLocusId(), bundle);
        }
    }

    @RequiresApi(31)
    /* renamed from: androidx.core.app.ActivityCompat$g */
    /* loaded from: classes3.dex */
    public static class C0519g {
        @DoNotInline
        /* renamed from: a */
        public static boolean m2314a(@NonNull Activity activity) {
            return activity.isLaunchedFromBubble();
        }

        @DoNotInline
        @SuppressLint({"BanUncheckedReflection"})
        /* renamed from: b */
        public static boolean m2315b(Activity activity, String str) {
            try {
                return ((Boolean) PackageManager.class.getMethod("shouldShowRequestPermissionRationale", String.class).invoke(activity.getApplication().getPackageManager(), str)).booleanValue();
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                return activity.shouldShowRequestPermissionRationale(str);
            }
        }
    }

    @RequiresApi(32)
    /* renamed from: androidx.core.app.ActivityCompat$h */
    /* loaded from: classes3.dex */
    public static class C0520h {
        @DoNotInline
        /* renamed from: a */
        public static boolean m2316a(Activity activity, String str) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
    }

    @RequiresApi(21)
    /* renamed from: androidx.core.app.ActivityCompat$i */
    /* loaded from: classes3.dex */
    public static class SharedElementCallbackC0521i extends android.app.SharedElementCallback {

        /* renamed from: a */
        public final SharedElementCallback f4765a;

        public SharedElementCallbackC0521i(SharedElementCallback sharedElementCallback) {
            this.f4765a = sharedElementCallback;
        }

        @Override // android.app.SharedElementCallback
        public Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF) {
            return this.f4765a.onCaptureSharedElementSnapshot(view, matrix, rectF);
        }

        @Override // android.app.SharedElementCallback
        public View onCreateSnapshotView(Context context, Parcelable parcelable) {
            return this.f4765a.onCreateSnapshotView(context, parcelable);
        }

        @Override // android.app.SharedElementCallback
        public void onMapSharedElements(List<String> list, Map<String, View> map) {
            this.f4765a.onMapSharedElements(list, map);
        }

        @Override // android.app.SharedElementCallback
        public void onRejectSharedElements(List<View> list) {
            this.f4765a.onRejectSharedElements(list);
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3) {
            this.f4765a.onSharedElementEnd(list, list2, list3);
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementStart(List<String> list, List<View> list2, List<View> list3) {
            this.f4765a.onSharedElementStart(list, list2, list3);
        }

        @Override // android.app.SharedElementCallback
        @RequiresApi(23)
        public void onSharedElementsArrived(List<String> list, List<View> list2, final SharedElementCallback.OnSharedElementsReadyListener onSharedElementsReadyListener) {
            this.f4765a.onSharedElementsArrived(list, list2, new SharedElementCallback.OnSharedElementsReadyListener() { // from class: com.sunia.HTREnginev2.i6
                @Override // androidx.core.app.SharedElementCallback.OnSharedElementsReadyListener
                public final void onSharedElementsReady() {
                    ActivityCompat.C0516d.m2308a(onSharedElementsReadyListener);
                }
            });
        }
    }

    /* renamed from: c */
    public static /* synthetic */ void m2301c(Activity activity) {
        if (activity.isFinishing() || C14336r6.m56923i(activity)) {
            return;
        }
        activity.recreate();
    }

    public static void finishAffinity(@NonNull Activity activity) {
        activity.finishAffinity();
    }

    public static void finishAfterTransition(@NonNull Activity activity) {
        C0514b.m2302a(activity);
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static PermissionCompatDelegate getPermissionCompatDelegate() {
        return f4761a;
    }

    @Nullable
    public static Uri getReferrer(@NonNull Activity activity) {
        return C0515c.m2307a(activity);
    }

    @Deprecated
    public static boolean invalidateOptionsMenu(Activity activity) {
        activity.invalidateOptionsMenu();
        return true;
    }

    public static boolean isLaunchedFromBubble(@NonNull Activity activity) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 31) {
            return C0519g.m2314a(activity);
        }
        if (i == 30) {
            return (C0518f.m2312a(activity) == null || C0518f.m2312a(activity).getDisplayId() == 0) ? false : true;
        }
        if (i == 29) {
            return (activity.getWindowManager().getDefaultDisplay() == null || activity.getWindowManager().getDefaultDisplay().getDisplayId() == 0) ? false : true;
        }
        return false;
    }

    public static void postponeEnterTransition(@NonNull Activity activity) {
        C0514b.m2303b(activity);
    }

    public static void recreate(@NonNull Activity activity) {
        activity.recreate();
    }

    @Nullable
    public static DragAndDropPermissionsCompat requestDragAndDropPermissions(@NonNull Activity activity, @NonNull DragEvent dragEvent) {
        return DragAndDropPermissionsCompat.request(activity, dragEvent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void requestPermissions(@NonNull Activity activity, @NonNull String[] strArr, @IntRange(from = 0) int i) {
        PermissionCompatDelegate permissionCompatDelegate = f4761a;
        if (permissionCompatDelegate == null || !permissionCompatDelegate.requestPermissions(activity, strArr, i)) {
            HashSet hashSet = new HashSet();
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if (TextUtils.isEmpty(strArr[i2])) {
                    throw new IllegalArgumentException("Permission request for permissions " + Arrays.toString(strArr) + " must not contain null or empty values");
                }
                if (Build.VERSION.SDK_INT < 33 && TextUtils.equals(strArr[i2], PermissionX.permission.POST_NOTIFICATIONS)) {
                    hashSet.add(Integer.valueOf(i2));
                }
            }
            int size = hashSet.size();
            String[] strArr2 = size > 0 ? new String[strArr.length - size] : strArr;
            if (size > 0) {
                if (size == strArr.length) {
                    return;
                }
                int i3 = 0;
                for (int i4 = 0; i4 < strArr.length; i4++) {
                    if (!hashSet.contains(Integer.valueOf(i4))) {
                        strArr2[i3] = strArr[i4];
                        i3++;
                    }
                }
            }
            if (activity instanceof RequestPermissionsRequestCodeValidator) {
                ((RequestPermissionsRequestCodeValidator) activity).validateRequestPermissionsRequestCode(i);
            }
            C0516d.m2309b(activity, strArr, i);
        }
    }

    @NonNull
    public static <T extends View> T requireViewById(@NonNull Activity activity, @IdRes int i) {
        return (T) C0517e.m2311a(activity, i);
    }

    public static void setEnterSharedElementCallback(@NonNull Activity activity, @Nullable SharedElementCallback sharedElementCallback) {
        C0514b.m2304c(activity, sharedElementCallback != null ? new SharedElementCallbackC0521i(sharedElementCallback) : null);
    }

    public static void setExitSharedElementCallback(@NonNull Activity activity, @Nullable SharedElementCallback sharedElementCallback) {
        C0514b.m2305d(activity, sharedElementCallback != null ? new SharedElementCallbackC0521i(sharedElementCallback) : null);
    }

    public static void setLocusContext(@NonNull Activity activity, @Nullable LocusIdCompat locusIdCompat, @Nullable Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 30) {
            C0518f.m2313b(activity, locusIdCompat, bundle);
        }
    }

    public static void setPermissionCompatDelegate(@Nullable PermissionCompatDelegate permissionCompatDelegate) {
        f4761a = permissionCompatDelegate;
    }

    public static boolean shouldShowRequestPermissionRationale(@NonNull Activity activity, @NonNull String str) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 33 || !TextUtils.equals(PermissionX.permission.POST_NOTIFICATIONS, str)) {
            return i >= 32 ? C0520h.m2316a(activity, str) : i == 31 ? C0519g.m2315b(activity, str) : C0516d.m2310c(activity, str);
        }
        return false;
    }

    public static void startActivityForResult(@NonNull Activity activity, @NonNull Intent intent, int i, @Nullable Bundle bundle) {
        activity.startActivityForResult(intent, i, bundle);
    }

    public static void startIntentSenderForResult(@NonNull Activity activity, @NonNull IntentSender intentSender, int i, @Nullable Intent intent, int i2, int i3, int i4, @Nullable Bundle bundle) throws IntentSender.SendIntentException {
        activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }

    public static void startPostponedEnterTransition(@NonNull Activity activity) {
        C0514b.m2306e(activity);
    }
}
