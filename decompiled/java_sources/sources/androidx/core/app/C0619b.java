package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import androidx.core.app.NotificationCompat;
import androidx.core.graphics.drawable.IconCompat;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* renamed from: androidx.core.app.b */
/* loaded from: classes3.dex */
public class C0619b {

    /* renamed from: a */
    public static final String f5189a = "NotificationCompat";

    /* renamed from: b */
    public static final String f5190b = "android.support.dataRemoteInputs";

    /* renamed from: c */
    public static final String f5191c = "android.support.allowGeneratedReplies";

    /* renamed from: d */
    public static final String f5192d = "icon";

    /* renamed from: e */
    public static final String f5193e = "title";

    /* renamed from: f */
    public static final String f5194f = "actionIntent";

    /* renamed from: g */
    public static final String f5195g = "extras";

    /* renamed from: h */
    public static final String f5196h = "remoteInputs";

    /* renamed from: i */
    public static final String f5197i = "dataOnlyRemoteInputs";

    /* renamed from: j */
    public static final String f5198j = "resultKey";

    /* renamed from: k */
    public static final String f5199k = "label";

    /* renamed from: l */
    public static final String f5200l = "choices";

    /* renamed from: m */
    public static final String f5201m = "allowFreeFormInput";

    /* renamed from: n */
    public static final String f5202n = "allowedDataTypes";

    /* renamed from: o */
    public static final String f5203o = "semanticAction";

    /* renamed from: p */
    public static final String f5204p = "showsUserInterface";

    /* renamed from: r */
    public static Field f5206r;

    /* renamed from: s */
    public static boolean f5207s;

    /* renamed from: u */
    public static Field f5209u;

    /* renamed from: v */
    public static Field f5210v;

    /* renamed from: w */
    public static Field f5211w;

    /* renamed from: x */
    public static Field f5212x;

    /* renamed from: y */
    public static boolean f5213y;

    /* renamed from: q */
    public static final Object f5205q = new Object();

    /* renamed from: t */
    public static final Object f5208t = new Object();

    /* renamed from: a */
    public static SparseArray<Bundle> m2686a(List<Bundle> list) {
        int size = list.size();
        SparseArray<Bundle> sparseArray = null;
        for (int i = 0; i < size; i++) {
            Bundle bundle = list.get(i);
            if (bundle != null) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                sparseArray.put(i, bundle);
            }
        }
        return sparseArray;
    }

    /* renamed from: b */
    public static boolean m2687b() {
        if (f5213y) {
            return false;
        }
        try {
            if (f5209u == null) {
                Class<?> cls = Class.forName("android.app.Notification$Action");
                f5210v = cls.getDeclaredField("icon");
                f5211w = cls.getDeclaredField("title");
                f5212x = cls.getDeclaredField(f5194f);
                Field declaredField = Notification.class.getDeclaredField(NotificationCompat.WearableExtender.f5050p);
                f5209u = declaredField;
                declaredField.setAccessible(true);
            }
        } catch (ClassNotFoundException e) {
            Log.e(f5189a, "Unable to access notification actions", e);
            f5213y = true;
        } catch (NoSuchFieldException e2) {
            Log.e(f5189a, "Unable to access notification actions", e2);
            f5213y = true;
        }
        return !f5213y;
    }

    /* renamed from: c */
    public static RemoteInput m2688c(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList(f5202n);
        HashSet hashSet = new HashSet();
        if (stringArrayList != null) {
            Iterator<String> it2 = stringArrayList.iterator();
            while (it2.hasNext()) {
                hashSet.add(it2.next());
            }
        }
        return new RemoteInput(bundle.getString(f5198j), bundle.getCharSequence(f5199k), bundle.getCharSequenceArray(f5200l), bundle.getBoolean(f5201m), 0, bundle.getBundle("extras"), hashSet);
    }

    /* renamed from: d */
    public static RemoteInput[] m2689d(Bundle[] bundleArr) {
        if (bundleArr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[bundleArr.length];
        for (int i = 0; i < bundleArr.length; i++) {
            remoteInputArr[i] = m2688c(bundleArr[i]);
        }
        return remoteInputArr;
    }

    /* renamed from: e */
    public static NotificationCompat.Action m2690e(Notification notification, int i) {
        SparseArray sparseParcelableArray;
        synchronized (f5208t) {
            try {
                try {
                    Object[] m2693h = m2693h(notification);
                    if (m2693h != null) {
                        Object obj = m2693h[i];
                        Bundle m2696k = m2696k(notification);
                        return m2697l(f5210v.getInt(obj), (CharSequence) f5211w.get(obj), (PendingIntent) f5212x.get(obj), (m2696k == null || (sparseParcelableArray = m2696k.getSparseParcelableArray(NotificationCompatExtras.EXTRA_ACTION_EXTRAS)) == null) ? null : (Bundle) sparseParcelableArray.get(i));
                    }
                } catch (IllegalAccessException e) {
                    Log.e(f5189a, "Unable to access notification actions", e);
                    f5213y = true;
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: f */
    public static int m2691f(Notification notification) {
        int length;
        synchronized (f5208t) {
            Object[] m2693h = m2693h(notification);
            length = m2693h != null ? m2693h.length : 0;
        }
        return length;
    }

    /* renamed from: g */
    public static NotificationCompat.Action m2692g(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("extras");
        return new NotificationCompat.Action(bundle.getInt("icon"), bundle.getCharSequence("title"), (PendingIntent) bundle.getParcelable(f5194f), bundle.getBundle("extras"), m2689d(m2694i(bundle, f5196h)), m2689d(m2694i(bundle, f5197i)), bundle2 != null ? bundle2.getBoolean(f5191c, false) : false, bundle.getInt(f5203o), bundle.getBoolean(f5204p), false, false);
    }

    /* renamed from: h */
    public static Object[] m2693h(Notification notification) {
        synchronized (f5208t) {
            if (!m2687b()) {
                return null;
            }
            try {
                return (Object[]) f5209u.get(notification);
            } catch (IllegalAccessException e) {
                Log.e(f5189a, "Unable to access notification actions", e);
                f5213y = true;
                return null;
            }
        }
    }

    /* renamed from: i */
    public static Bundle[] m2694i(Bundle bundle, String str) {
        Parcelable[] parcelableArray = bundle.getParcelableArray(str);
        if ((parcelableArray instanceof Bundle[]) || parcelableArray == null) {
            return (Bundle[]) parcelableArray;
        }
        Bundle[] bundleArr = (Bundle[]) Arrays.copyOf(parcelableArray, parcelableArray.length, Bundle[].class);
        bundle.putParcelableArray(str, bundleArr);
        return bundleArr;
    }

    /* renamed from: j */
    public static Bundle m2695j(NotificationCompat.Action action) {
        Bundle bundle = new Bundle();
        IconCompat iconCompat = action.getIconCompat();
        bundle.putInt("icon", iconCompat != null ? iconCompat.getResId() : 0);
        bundle.putCharSequence("title", action.getTitle());
        bundle.putParcelable(f5194f, action.getActionIntent());
        Bundle bundle2 = action.getExtras() != null ? new Bundle(action.getExtras()) : new Bundle();
        bundle2.putBoolean(f5191c, action.getAllowGeneratedReplies());
        bundle.putBundle("extras", bundle2);
        bundle.putParcelableArray(f5196h, m2699n(action.getRemoteInputs()));
        bundle.putBoolean(f5204p, action.getShowsUserInterface());
        bundle.putInt(f5203o, action.getSemanticAction());
        return bundle;
    }

    /* renamed from: k */
    public static Bundle m2696k(Notification notification) {
        synchronized (f5205q) {
            if (f5207s) {
                return null;
            }
            try {
                if (f5206r == null) {
                    Field declaredField = Notification.class.getDeclaredField("extras");
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        Log.e(f5189a, "Notification.extras field is not of type Bundle");
                        f5207s = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    f5206r = declaredField;
                }
                Bundle bundle = (Bundle) f5206r.get(notification);
                if (bundle == null) {
                    bundle = new Bundle();
                    f5206r.set(notification, bundle);
                }
                return bundle;
            } catch (IllegalAccessException e) {
                Log.e(f5189a, "Unable to access notification extras", e);
                f5207s = true;
                return null;
            } catch (NoSuchFieldException e2) {
                Log.e(f5189a, "Unable to access notification extras", e2);
                f5207s = true;
                return null;
            }
        }
    }

    /* renamed from: l */
    public static NotificationCompat.Action m2697l(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle) {
        RemoteInput[] remoteInputArr;
        RemoteInput[] remoteInputArr2;
        boolean z;
        if (bundle != null) {
            remoteInputArr = m2689d(m2694i(bundle, NotificationCompatExtras.EXTRA_REMOTE_INPUTS));
            remoteInputArr2 = m2689d(m2694i(bundle, f5190b));
            z = bundle.getBoolean(f5191c);
        } else {
            remoteInputArr = null;
            remoteInputArr2 = null;
            z = false;
        }
        return new NotificationCompat.Action(i, charSequence, pendingIntent, bundle, remoteInputArr, remoteInputArr2, z, 0, true, false, false);
    }

    /* renamed from: m */
    public static Bundle m2698m(RemoteInput remoteInput) {
        Bundle bundle = new Bundle();
        bundle.putString(f5198j, remoteInput.getResultKey());
        bundle.putCharSequence(f5199k, remoteInput.getLabel());
        bundle.putCharSequenceArray(f5200l, remoteInput.getChoices());
        bundle.putBoolean(f5201m, remoteInput.getAllowFreeFormInput());
        bundle.putBundle("extras", remoteInput.getExtras());
        Set<String> allowedDataTypes = remoteInput.getAllowedDataTypes();
        if (allowedDataTypes != null && !allowedDataTypes.isEmpty()) {
            ArrayList<String> arrayList = new ArrayList<>(allowedDataTypes.size());
            Iterator<String> it2 = allowedDataTypes.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
            bundle.putStringArrayList(f5202n, arrayList);
        }
        return bundle;
    }

    /* renamed from: n */
    public static Bundle[] m2699n(RemoteInput[] remoteInputArr) {
        if (remoteInputArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[remoteInputArr.length];
        for (int i = 0; i < remoteInputArr.length; i++) {
            bundleArr[i] = m2698m(remoteInputArr[i]);
        }
        return bundleArr;
    }

    /* renamed from: o */
    public static Bundle m2700o(Notification.Builder builder, NotificationCompat.Action action) {
        IconCompat iconCompat = action.getIconCompat();
        builder.addAction(iconCompat != null ? iconCompat.getResId() : 0, action.getTitle(), action.getActionIntent());
        Bundle bundle = new Bundle(action.getExtras());
        if (action.getRemoteInputs() != null) {
            bundle.putParcelableArray(NotificationCompatExtras.EXTRA_REMOTE_INPUTS, m2699n(action.getRemoteInputs()));
        }
        if (action.getDataOnlyRemoteInputs() != null) {
            bundle.putParcelableArray(f5190b, m2699n(action.getDataOnlyRemoteInputs()));
        }
        bundle.putBoolean(f5191c, action.getAllowGeneratedReplies());
        return bundle;
    }
}
