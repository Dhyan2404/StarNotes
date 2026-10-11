package com.blankj.utilcode.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.util.Log;
import android.util.Pair;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import com.blankj.utilcode.constant.PermissionConstants;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.UtilsTransActivity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes3.dex */
public final class PermissionUtils {

    /* renamed from: m */
    public static PermissionUtils f13894m;

    /* renamed from: n */
    public static SimpleCallback f13895n;

    /* renamed from: o */
    public static SimpleCallback f13896o;

    /* renamed from: a */
    public String[] f13897a;

    /* renamed from: b */
    public OnExplainListener f13898b;

    /* renamed from: c */
    public OnRationaleListener f13899c;

    /* renamed from: d */
    public SingleCallback f13900d;

    /* renamed from: e */
    public SimpleCallback f13901e;

    /* renamed from: f */
    public FullCallback f13902f;

    /* renamed from: g */
    public ThemeCallback f13903g;

    /* renamed from: h */
    public Set<String> f13904h;

    /* renamed from: i */
    public List<String> f13905i;

    /* renamed from: j */
    public List<String> f13906j;

    /* renamed from: k */
    public List<String> f13907k;

    /* renamed from: l */
    public List<String> f13908l;

    /* loaded from: classes3.dex */
    public interface FullCallback {
        void onDenied(@NonNull List<String> list, @NonNull List<String> list2);

        void onGranted(@NonNull List<String> list);
    }

    /* loaded from: classes3.dex */
    public interface OnExplainListener {

        /* loaded from: classes3.dex */
        public interface ShouldRequest {
            void start(boolean z);
        }

        void explain(@NonNull UtilsTransActivity utilsTransActivity, @NonNull List<String> list, @NonNull ShouldRequest shouldRequest);
    }

    /* loaded from: classes3.dex */
    public interface OnRationaleListener {

        /* loaded from: classes3.dex */
        public interface ShouldRequest {
            void again(boolean z);
        }

        void rationale(@NonNull UtilsTransActivity utilsTransActivity, @NonNull ShouldRequest shouldRequest);
    }

    @RequiresApi(api = 23)
    /* loaded from: classes3.dex */
    public static final class PermissionActivityImpl extends UtilsTransActivity.TransActivityDelegate {
        private static PermissionActivityImpl INSTANCE = new PermissionActivityImpl();
        private static final String TYPE = "TYPE";
        private static final int TYPE_DRAW_OVERLAYS = 3;
        private static final int TYPE_RUNTIME = 1;
        private static final int TYPE_WRITE_SETTINGS = 2;
        private static int currentRequestCode = -1;

        /* renamed from: com.blankj.utilcode.util.PermissionUtils$PermissionActivityImpl$a */
        /* loaded from: classes3.dex */
        public static class C1844a implements Utils.Consumer<Intent> {

            /* renamed from: a */
            public final /* synthetic */ int f13909a;

            public C1844a(int i) {
                this.f13909a = i;
            }

            @Override // com.blankj.utilcode.util.Utils.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void accept(Intent intent) {
                intent.putExtra("TYPE", this.f13909a);
            }
        }

        /* renamed from: com.blankj.utilcode.util.PermissionUtils$PermissionActivityImpl$b */
        /* loaded from: classes3.dex */
        public class C1845b implements OnExplainListener.ShouldRequest {

            /* renamed from: a */
            public final /* synthetic */ UtilsTransActivity f13910a;

            public C1845b(UtilsTransActivity utilsTransActivity) {
                this.f13910a = utilsTransActivity;
            }

            @Override // com.blankj.utilcode.util.PermissionUtils.OnExplainListener.ShouldRequest
            public void start(boolean z) {
                if (z) {
                    PermissionActivityImpl.this.requestPermissions(this.f13910a);
                } else {
                    this.f13910a.finish();
                }
            }
        }

        /* renamed from: com.blankj.utilcode.util.PermissionUtils$PermissionActivityImpl$c */
        /* loaded from: classes3.dex */
        public class RunnableC1846c implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ UtilsTransActivity f13912e;

            public RunnableC1846c(UtilsTransActivity utilsTransActivity) {
                this.f13912e = utilsTransActivity;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f13912e.requestPermissions((String[]) PermissionUtils.f13894m.f13905i.toArray(new String[0]), 1);
            }
        }

        private void checkRequestCallback(int i) {
            if (i == 2) {
                if (PermissionUtils.f13895n == null) {
                    return;
                }
                if (PermissionUtils.isGrantedWriteSettings()) {
                    PermissionUtils.f13895n.onGranted();
                } else {
                    PermissionUtils.f13895n.onDenied();
                }
                SimpleCallback unused = PermissionUtils.f13895n = null;
                return;
            }
            if (i != 3 || PermissionUtils.f13896o == null) {
                return;
            }
            if (PermissionUtils.isGrantedDrawOverlays()) {
                PermissionUtils.f13896o.onGranted();
            } else {
                PermissionUtils.f13896o.onDenied();
            }
            SimpleCallback unused2 = PermissionUtils.f13896o = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void requestPermissions(UtilsTransActivity utilsTransActivity) {
            if (PermissionUtils.f13894m.m8259w(utilsTransActivity, new RunnableC1846c(utilsTransActivity))) {
                return;
            }
            utilsTransActivity.requestPermissions((String[]) PermissionUtils.f13894m.f13905i.toArray(new String[0]), 1);
        }

        public static void start(int i) {
            UtilsTransActivity.start(new C1844a(i), INSTANCE);
        }

        @Override // com.blankj.utilcode.util.UtilsTransActivity.TransActivityDelegate
        public boolean dispatchTouchEvent(@NonNull UtilsTransActivity utilsTransActivity, MotionEvent motionEvent) {
            utilsTransActivity.finish();
            return true;
        }

        @Override // com.blankj.utilcode.util.UtilsTransActivity.TransActivityDelegate
        public void onActivityResult(@NonNull UtilsTransActivity utilsTransActivity, int i, int i2, Intent intent) {
            utilsTransActivity.finish();
        }

        @Override // com.blankj.utilcode.util.UtilsTransActivity.TransActivityDelegate
        public void onCreated(@NonNull UtilsTransActivity utilsTransActivity, @Nullable Bundle bundle) {
            utilsTransActivity.getWindow().addFlags(262160);
            int intExtra = utilsTransActivity.getIntent().getIntExtra("TYPE", -1);
            if (intExtra != 1) {
                if (intExtra == 2) {
                    currentRequestCode = 2;
                    PermissionUtils.m8254z(utilsTransActivity, 2);
                    return;
                } else if (intExtra == 3) {
                    currentRequestCode = 3;
                    PermissionUtils.m8253x(utilsTransActivity, 3);
                    return;
                } else {
                    utilsTransActivity.finish();
                    Log.e("PermissionUtils", "type is wrong.");
                    return;
                }
            }
            if (PermissionUtils.f13894m == null) {
                Log.e("PermissionUtils", "sInstance is null.");
                utilsTransActivity.finish();
                return;
            }
            if (PermissionUtils.f13894m.f13905i == null) {
                Log.e("PermissionUtils", "mPermissionsRequest is null.");
                utilsTransActivity.finish();
                return;
            }
            if (PermissionUtils.f13894m.f13905i.size() <= 0) {
                Log.e("PermissionUtils", "mPermissionsRequest's size is no more than 0.");
                utilsTransActivity.finish();
                return;
            }
            if (PermissionUtils.f13894m.f13903g != null) {
                PermissionUtils.f13894m.f13903g.onActivityCreate(utilsTransActivity);
            }
            if (PermissionUtils.f13894m.f13898b == null) {
                requestPermissions(utilsTransActivity);
            } else {
                PermissionUtils.f13894m.f13898b.explain(utilsTransActivity, PermissionUtils.f13894m.f13905i, new C1845b(utilsTransActivity));
                PermissionUtils.f13894m.f13898b = null;
            }
        }

        @Override // com.blankj.utilcode.util.UtilsTransActivity.TransActivityDelegate
        public void onDestroy(@NonNull UtilsTransActivity utilsTransActivity) {
            int i = currentRequestCode;
            if (i != -1) {
                checkRequestCallback(i);
                currentRequestCode = -1;
            }
            super.onDestroy(utilsTransActivity);
        }

        @Override // com.blankj.utilcode.util.UtilsTransActivity.TransActivityDelegate
        public void onRequestPermissionsResult(@NonNull UtilsTransActivity utilsTransActivity, int i, @NonNull String[] strArr, @NonNull int[] iArr) {
            utilsTransActivity.finish();
            if (PermissionUtils.f13894m == null || PermissionUtils.f13894m.f13905i == null) {
                return;
            }
            PermissionUtils.f13894m.m8256t(utilsTransActivity);
        }
    }

    /* loaded from: classes3.dex */
    public interface SimpleCallback {
        void onDenied();

        void onGranted();
    }

    /* loaded from: classes3.dex */
    public interface SingleCallback {
        void callback(boolean z, @NonNull List<String> list, @NonNull List<String> list2, @NonNull List<String> list3);
    }

    /* loaded from: classes3.dex */
    public interface ThemeCallback {
        void onActivityCreate(@NonNull Activity activity);
    }

    /* renamed from: com.blankj.utilcode.util.PermissionUtils$a */
    /* loaded from: classes3.dex */
    public class C1847a implements OnRationaleListener.ShouldRequest {

        /* renamed from: a */
        public final /* synthetic */ Runnable f13914a;

        /* renamed from: b */
        public final /* synthetic */ UtilsTransActivity f13915b;

        public C1847a(Runnable runnable, UtilsTransActivity utilsTransActivity) {
            this.f13914a = runnable;
            this.f13915b = utilsTransActivity;
        }

        @Override // com.blankj.utilcode.util.PermissionUtils.OnRationaleListener.ShouldRequest
        public void again(boolean z) {
            if (!z) {
                this.f13915b.finish();
                PermissionUtils.this.m8258v();
                return;
            }
            PermissionUtils.this.f13907k = new ArrayList();
            PermissionUtils.this.f13908l = new ArrayList();
            this.f13914a.run();
        }
    }

    public PermissionUtils(String... strArr) {
        this.f13897a = strArr;
        f13894m = this;
    }

    public static List<String> getPermissions() {
        return getPermissions(Utils.getApp().getPackageName());
    }

    public static boolean isGranted(String... strArr) {
        Pair<List<String>, List<String>> m8251r = m8251r(strArr);
        if (!((List) m8251r.second).isEmpty()) {
            return false;
        }
        Iterator it2 = ((List) m8251r.first).iterator();
        while (it2.hasNext()) {
            if (!m8252s((String) it2.next())) {
                return false;
            }
        }
        return true;
    }

    @RequiresApi(api = 23)
    public static boolean isGrantedDrawOverlays() {
        return Settings.canDrawOverlays(Utils.getApp());
    }

    @RequiresApi(api = 23)
    public static boolean isGrantedWriteSettings() {
        return Settings.System.canWrite(Utils.getApp());
    }

    public static void launchAppDetailsSettings() {
        Intent m8477X = C1887b.m8477X(Utils.getApp().getPackageName(), true);
        if (C1887b.m8540x0(m8477X)) {
            Utils.getApp().startActivity(m8477X);
        }
    }

    public static PermissionUtils permission(String... strArr) {
        return new PermissionUtils(strArr);
    }

    public static PermissionUtils permissionGroup(String... strArr) {
        return permission(strArr);
    }

    /* renamed from: r */
    public static Pair<List<String>, List<String>> m8251r(String... strArr) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List<String> permissions = getPermissions();
        for (String str : strArr) {
            boolean z = false;
            for (String str2 : PermissionConstants.getPermissions(str)) {
                if (permissions.contains(str2)) {
                    arrayList.add(str2);
                    z = true;
                }
            }
            if (!z) {
                arrayList2.add(str);
                Log.e("PermissionUtils", "U should add the permission of " + str + " in manifest.");
            }
        }
        return Pair.create(arrayList, arrayList2);
    }

    @RequiresApi(api = 23)
    public static void requestDrawOverlays(SimpleCallback simpleCallback) {
        if (!isGrantedDrawOverlays()) {
            f13896o = simpleCallback;
            PermissionActivityImpl.start(3);
        } else if (simpleCallback != null) {
            simpleCallback.onGranted();
        }
    }

    @RequiresApi(api = 23)
    public static void requestWriteSettings(SimpleCallback simpleCallback) {
        if (!isGrantedWriteSettings()) {
            f13895n = simpleCallback;
            PermissionActivityImpl.start(2);
        } else if (simpleCallback != null) {
            simpleCallback.onGranted();
        }
    }

    /* renamed from: s */
    public static boolean m8252s(String str) {
        return ContextCompat.checkSelfPermission(Utils.getApp(), str) == 0;
    }

    @TargetApi(23)
    /* renamed from: x */
    public static void m8253x(Activity activity, int i) {
        Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
        intent.setData(Uri.parse("package:" + Utils.getApp().getPackageName()));
        if (C1887b.m8540x0(intent)) {
            activity.startActivityForResult(intent, i);
        } else {
            launchAppDetailsSettings();
        }
    }

    @TargetApi(23)
    /* renamed from: z */
    public static void m8254z(Activity activity, int i) {
        Intent intent = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
        intent.setData(Uri.parse("package:" + Utils.getApp().getPackageName()));
        if (C1887b.m8540x0(intent)) {
            activity.startActivityForResult(intent, i);
        } else {
            launchAppDetailsSettings();
        }
    }

    public PermissionUtils callback(SingleCallback singleCallback) {
        this.f13900d = singleCallback;
        return this;
    }

    public PermissionUtils explain(OnExplainListener onExplainListener) {
        this.f13898b = onExplainListener;
        return this;
    }

    /* renamed from: q */
    public final void m8255q(Activity activity) {
        for (String str : this.f13905i) {
            if (m8252s(str)) {
                this.f13906j.add(str);
            } else {
                this.f13907k.add(str);
                if (!activity.shouldShowRequestPermissionRationale(str)) {
                    this.f13908l.add(str);
                }
            }
        }
    }

    public PermissionUtils rationale(OnRationaleListener onRationaleListener) {
        this.f13899c = onRationaleListener;
        return this;
    }

    public void request() {
        String[] strArr = this.f13897a;
        if (strArr == null || strArr.length <= 0) {
            Log.w("PermissionUtils", "No permissions to request.");
            return;
        }
        this.f13904h = new LinkedHashSet();
        this.f13905i = new ArrayList();
        this.f13906j = new ArrayList();
        this.f13907k = new ArrayList();
        this.f13908l = new ArrayList();
        Pair<List<String>, List<String>> m8251r = m8251r(this.f13897a);
        this.f13904h.addAll((Collection) m8251r.first);
        this.f13907k.addAll((Collection) m8251r.second);
        for (String str : this.f13904h) {
            if (m8252s(str)) {
                this.f13906j.add(str);
            } else {
                this.f13905i.add(str);
            }
        }
        if (this.f13905i.isEmpty()) {
            m8258v();
        } else {
            m8260y();
        }
    }

    /* renamed from: t */
    public final void m8256t(Activity activity) {
        m8255q(activity);
        m8258v();
    }

    public PermissionUtils theme(ThemeCallback themeCallback) {
        this.f13903g = themeCallback;
        return this;
    }

    /* renamed from: u */
    public final void m8257u(UtilsTransActivity utilsTransActivity, Runnable runnable) {
        m8255q(utilsTransActivity);
        this.f13899c.rationale(utilsTransActivity, new C1847a(runnable, utilsTransActivity));
    }

    /* renamed from: v */
    public final void m8258v() {
        SingleCallback singleCallback = this.f13900d;
        if (singleCallback != null) {
            singleCallback.callback(this.f13907k.isEmpty(), this.f13906j, this.f13908l, this.f13907k);
            this.f13900d = null;
        }
        if (this.f13901e != null) {
            if (this.f13907k.isEmpty()) {
                this.f13901e.onGranted();
            } else {
                this.f13901e.onDenied();
            }
            this.f13901e = null;
        }
        if (this.f13902f != null) {
            if (this.f13905i.size() == 0 || this.f13906j.size() > 0) {
                this.f13902f.onGranted(this.f13906j);
            }
            if (!this.f13907k.isEmpty()) {
                this.f13902f.onDenied(this.f13908l, this.f13907k);
            }
            this.f13902f = null;
        }
        this.f13899c = null;
        this.f13903g = null;
    }

    @RequiresApi(api = 23)
    /* renamed from: w */
    public final boolean m8259w(UtilsTransActivity utilsTransActivity, Runnable runnable) {
        boolean z = false;
        if (this.f13899c != null) {
            Iterator<String> it2 = this.f13905i.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                if (utilsTransActivity.shouldShowRequestPermissionRationale(it2.next())) {
                    m8257u(utilsTransActivity, runnable);
                    z = true;
                    break;
                }
            }
            this.f13899c = null;
        }
        return z;
    }

    @RequiresApi(api = 23)
    /* renamed from: y */
    public final void m8260y() {
        PermissionActivityImpl.start(1);
    }

    public static List<String> getPermissions(String str) {
        try {
            String[] strArr = Utils.getApp().getPackageManager().getPackageInfo(str, 4096).requestedPermissions;
            if (strArr == null) {
                return Collections.emptyList();
            }
            return Arrays.asList(strArr);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return Collections.emptyList();
        }
    }

    public PermissionUtils callback(SimpleCallback simpleCallback) {
        this.f13901e = simpleCallback;
        return this;
    }

    public PermissionUtils callback(FullCallback fullCallback) {
        this.f13902f = fullCallback;
        return this;
    }
}
