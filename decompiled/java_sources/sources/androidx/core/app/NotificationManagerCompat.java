package androidx.core.app;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.service.notification.StatusBarNotification;
import android.support.v4.app.INotificationSideChannel;
import android.util.Log;
import androidx.annotation.DoNotInline;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.permissionx.guolindev.PermissionX;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes3.dex */
public final class NotificationManagerCompat {
    public static final String ACTION_BIND_SIDE_CHANNEL = "android.support.BIND_NOTIFICATION_SIDE_CHANNEL";
    public static final String EXTRA_USE_SIDE_CHANNEL = "android.support.useSideChannel";
    public static final int IMPORTANCE_DEFAULT = 3;
    public static final int IMPORTANCE_HIGH = 4;
    public static final int IMPORTANCE_LOW = 2;
    public static final int IMPORTANCE_MAX = 5;
    public static final int IMPORTANCE_MIN = 1;
    public static final int IMPORTANCE_NONE = 0;
    public static final int IMPORTANCE_UNSPECIFIED = -1000;
    public static final int INTERRUPTION_FILTER_ALARMS = 4;
    public static final int INTERRUPTION_FILTER_ALL = 1;
    public static final int INTERRUPTION_FILTER_NONE = 3;
    public static final int INTERRUPTION_FILTER_PRIORITY = 2;
    public static final int INTERRUPTION_FILTER_UNKNOWN = 0;

    /* renamed from: c */
    public static final String f5076c = "NotifManCompat";

    /* renamed from: d */
    public static final String f5077d = "checkOpNoThrow";

    /* renamed from: e */
    public static final String f5078e = "OP_POST_NOTIFICATION";

    /* renamed from: f */
    public static final int f5079f = 19;

    /* renamed from: g */
    public static final int f5080g = 1000;

    /* renamed from: h */
    public static final int f5081h = 6;

    /* renamed from: i */
    public static final String f5082i = "enabled_notification_listeners";

    /* renamed from: k */
    @GuardedBy("sEnabledNotificationListenersLock")
    public static String f5084k;

    /* renamed from: n */
    @GuardedBy("sLock")
    public static ServiceConnectionC0602j f5087n;

    /* renamed from: a */
    public final Context f5088a;

    /* renamed from: b */
    public final NotificationManager f5089b;

    /* renamed from: j */
    public static final Object f5083j = new Object();

    /* renamed from: l */
    @GuardedBy("sEnabledNotificationListenersLock")
    public static Set<String> f5085l = new HashSet();

    /* renamed from: m */
    public static final Object f5086m = new Object();

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface InterruptionFilter {
    }

    @RequiresApi(23)
    /* renamed from: androidx.core.app.NotificationManagerCompat$a */
    /* loaded from: classes3.dex */
    public static class C0593a {
        @DoNotInline
        /* renamed from: a */
        public static List<StatusBarNotification> m2563a(NotificationManager notificationManager) {
            StatusBarNotification[] activeNotifications = notificationManager.getActiveNotifications();
            return activeNotifications == null ? new ArrayList() : Arrays.asList(activeNotifications);
        }

        @DoNotInline
        /* renamed from: b */
        public static int m2564b(NotificationManager notificationManager) {
            return notificationManager.getCurrentInterruptionFilter();
        }
    }

    @RequiresApi(24)
    /* renamed from: androidx.core.app.NotificationManagerCompat$b */
    /* loaded from: classes3.dex */
    public static class C0594b {
        @DoNotInline
        /* renamed from: a */
        public static boolean m2565a(NotificationManager notificationManager) {
            return notificationManager.areNotificationsEnabled();
        }

        @DoNotInline
        /* renamed from: b */
        public static int m2566b(NotificationManager notificationManager) {
            return notificationManager.getImportance();
        }
    }

    @RequiresApi(26)
    /* renamed from: androidx.core.app.NotificationManagerCompat$c */
    /* loaded from: classes3.dex */
    public static class C0595c {
        @DoNotInline
        /* renamed from: a */
        public static void m2567a(NotificationManager notificationManager, NotificationChannel notificationChannel) {
            notificationManager.createNotificationChannel(notificationChannel);
        }

        @DoNotInline
        /* renamed from: b */
        public static void m2568b(NotificationManager notificationManager, NotificationChannelGroup notificationChannelGroup) {
            notificationManager.createNotificationChannelGroup(notificationChannelGroup);
        }

        @DoNotInline
        /* renamed from: c */
        public static void m2569c(NotificationManager notificationManager, List<NotificationChannelGroup> list) {
            notificationManager.createNotificationChannelGroups(list);
        }

        @DoNotInline
        /* renamed from: d */
        public static void m2570d(NotificationManager notificationManager, List<NotificationChannel> list) {
            notificationManager.createNotificationChannels(list);
        }

        @DoNotInline
        /* renamed from: e */
        public static void m2571e(NotificationManager notificationManager, String str) {
            notificationManager.deleteNotificationChannel(str);
        }

        @DoNotInline
        /* renamed from: f */
        public static void m2572f(NotificationManager notificationManager, String str) {
            notificationManager.deleteNotificationChannelGroup(str);
        }

        @DoNotInline
        /* renamed from: g */
        public static String m2573g(NotificationChannel notificationChannel) {
            return notificationChannel.getId();
        }

        @DoNotInline
        /* renamed from: h */
        public static String m2574h(NotificationChannelGroup notificationChannelGroup) {
            return notificationChannelGroup.getId();
        }

        @DoNotInline
        /* renamed from: i */
        public static NotificationChannel m2575i(NotificationManager notificationManager, String str) {
            return notificationManager.getNotificationChannel(str);
        }

        @DoNotInline
        /* renamed from: j */
        public static List<NotificationChannelGroup> m2576j(NotificationManager notificationManager) {
            return notificationManager.getNotificationChannelGroups();
        }

        @DoNotInline
        /* renamed from: k */
        public static List<NotificationChannel> m2577k(NotificationManager notificationManager) {
            return notificationManager.getNotificationChannels();
        }
    }

    @RequiresApi(28)
    /* renamed from: androidx.core.app.NotificationManagerCompat$d */
    /* loaded from: classes3.dex */
    public static class C0596d {
        @DoNotInline
        /* renamed from: a */
        public static NotificationChannelGroup m2578a(NotificationManager notificationManager, String str) {
            return notificationManager.getNotificationChannelGroup(str);
        }
    }

    @RequiresApi(30)
    /* renamed from: androidx.core.app.NotificationManagerCompat$e */
    /* loaded from: classes3.dex */
    public static class C0597e {
        @DoNotInline
        /* renamed from: a */
        public static NotificationChannel m2579a(NotificationManager notificationManager, String str, String str2) {
            return notificationManager.getNotificationChannel(str, str2);
        }

        @DoNotInline
        /* renamed from: b */
        public static String m2580b(NotificationChannel notificationChannel) {
            return notificationChannel.getParentChannelId();
        }
    }

    @RequiresApi(34)
    /* renamed from: androidx.core.app.NotificationManagerCompat$f */
    /* loaded from: classes3.dex */
    public static class C0598f {
        @DoNotInline
        /* renamed from: a */
        public static boolean m2581a(NotificationManager notificationManager) {
            return notificationManager.canUseFullScreenIntent();
        }
    }

    /* renamed from: androidx.core.app.NotificationManagerCompat$h */
    /* loaded from: classes3.dex */
    public static class C0600h implements InterfaceC0603k {

        /* renamed from: a */
        public final String f5097a;

        /* renamed from: b */
        public final int f5098b;

        /* renamed from: c */
        public final String f5099c;

        /* renamed from: d */
        public final Notification f5100d;

        public C0600h(String str, int i, String str2, Notification notification) {
            this.f5097a = str;
            this.f5098b = i;
            this.f5099c = str2;
            this.f5100d = notification;
        }

        @Override // androidx.core.app.NotificationManagerCompat.InterfaceC0603k
        /* renamed from: a */
        public void mo2582a(INotificationSideChannel iNotificationSideChannel) throws RemoteException {
            iNotificationSideChannel.notify(this.f5097a, this.f5098b, this.f5099c, this.f5100d);
        }

        @NonNull
        public String toString() {
            return "NotifyTask[packageName:" + this.f5097a + ", id:" + this.f5098b + ", tag:" + this.f5099c + IteratorUtils.f104924b;
        }
    }

    /* renamed from: androidx.core.app.NotificationManagerCompat$i */
    /* loaded from: classes3.dex */
    public static class C0601i {

        /* renamed from: a */
        public final ComponentName f5101a;

        /* renamed from: b */
        public final IBinder f5102b;

        public C0601i(ComponentName componentName, IBinder iBinder) {
            this.f5101a = componentName;
            this.f5102b = iBinder;
        }
    }

    /* renamed from: androidx.core.app.NotificationManagerCompat$j */
    /* loaded from: classes3.dex */
    public static class ServiceConnectionC0602j implements Handler.Callback, ServiceConnection {

        /* renamed from: j */
        public static final int f5103j = 0;

        /* renamed from: k */
        public static final int f5104k = 1;

        /* renamed from: l */
        public static final int f5105l = 2;

        /* renamed from: m */
        public static final int f5106m = 3;

        /* renamed from: e */
        public final Context f5107e;

        /* renamed from: f */
        public final HandlerThread f5108f;

        /* renamed from: g */
        public final Handler f5109g;

        /* renamed from: h */
        public final Map<ComponentName, a> f5110h = new HashMap();

        /* renamed from: i */
        public Set<String> f5111i = new HashSet();

        /* renamed from: androidx.core.app.NotificationManagerCompat$j$a */
        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a */
            public final ComponentName f5112a;

            /* renamed from: c */
            public INotificationSideChannel f5114c;

            /* renamed from: b */
            public boolean f5113b = false;

            /* renamed from: d */
            public ArrayDeque<InterfaceC0603k> f5115d = new ArrayDeque<>();

            /* renamed from: e */
            public int f5116e = 0;

            public a(ComponentName componentName) {
                this.f5112a = componentName;
            }
        }

        public ServiceConnectionC0602j(Context context) {
            this.f5107e = context;
            HandlerThread handlerThread = new HandlerThread("NotificationManagerCompat");
            this.f5108f = handlerThread;
            handlerThread.start();
            this.f5109g = new Handler(handlerThread.getLooper(), this);
        }

        /* renamed from: a */
        public final boolean m2583a(a aVar) {
            if (aVar.f5113b) {
                return true;
            }
            boolean bindService = this.f5107e.bindService(new Intent(NotificationManagerCompat.ACTION_BIND_SIDE_CHANNEL).setComponent(aVar.f5112a), this, 33);
            aVar.f5113b = bindService;
            if (bindService) {
                aVar.f5116e = 0;
            } else {
                Log.w(NotificationManagerCompat.f5076c, "Unable to bind to listener " + aVar.f5112a);
                this.f5107e.unbindService(this);
            }
            return aVar.f5113b;
        }

        /* renamed from: b */
        public final void m2584b(a aVar) {
            if (aVar.f5113b) {
                this.f5107e.unbindService(this);
                aVar.f5113b = false;
            }
            aVar.f5114c = null;
        }

        /* renamed from: c */
        public final void m2585c(InterfaceC0603k interfaceC0603k) {
            m2592j();
            for (a aVar : this.f5110h.values()) {
                aVar.f5115d.add(interfaceC0603k);
                m2589g(aVar);
            }
        }

        /* renamed from: d */
        public final void m2586d(ComponentName componentName) {
            a aVar = this.f5110h.get(componentName);
            if (aVar != null) {
                m2589g(aVar);
            }
        }

        /* renamed from: e */
        public final void m2587e(ComponentName componentName, IBinder iBinder) {
            a aVar = this.f5110h.get(componentName);
            if (aVar != null) {
                aVar.f5114c = INotificationSideChannel.Stub.asInterface(iBinder);
                aVar.f5116e = 0;
                m2589g(aVar);
            }
        }

        /* renamed from: f */
        public final void m2588f(ComponentName componentName) {
            a aVar = this.f5110h.get(componentName);
            if (aVar != null) {
                m2584b(aVar);
            }
        }

        /* renamed from: g */
        public final void m2589g(a aVar) {
            if (Log.isLoggable(NotificationManagerCompat.f5076c, 3)) {
                Log.d(NotificationManagerCompat.f5076c, "Processing component " + aVar.f5112a + ", " + aVar.f5115d.size() + " queued tasks");
            }
            if (aVar.f5115d.isEmpty()) {
                return;
            }
            if (!m2583a(aVar) || aVar.f5114c == null) {
                m2591i(aVar);
                return;
            }
            while (true) {
                InterfaceC0603k peek = aVar.f5115d.peek();
                if (peek == null) {
                    break;
                }
                try {
                    if (Log.isLoggable(NotificationManagerCompat.f5076c, 3)) {
                        Log.d(NotificationManagerCompat.f5076c, "Sending task " + peek);
                    }
                    peek.mo2582a(aVar.f5114c);
                    aVar.f5115d.remove();
                } catch (DeadObjectException unused) {
                    if (Log.isLoggable(NotificationManagerCompat.f5076c, 3)) {
                        Log.d(NotificationManagerCompat.f5076c, "Remote service has died: " + aVar.f5112a);
                    }
                } catch (RemoteException e) {
                    Log.w(NotificationManagerCompat.f5076c, "RemoteException communicating with " + aVar.f5112a, e);
                }
            }
            if (aVar.f5115d.isEmpty()) {
                return;
            }
            m2591i(aVar);
        }

        /* renamed from: h */
        public void m2590h(InterfaceC0603k interfaceC0603k) {
            this.f5109g.obtainMessage(0, interfaceC0603k).sendToTarget();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                m2585c((InterfaceC0603k) message.obj);
                return true;
            }
            if (i == 1) {
                C0601i c0601i = (C0601i) message.obj;
                m2587e(c0601i.f5101a, c0601i.f5102b);
                return true;
            }
            if (i == 2) {
                m2588f((ComponentName) message.obj);
                return true;
            }
            if (i != 3) {
                return false;
            }
            m2586d((ComponentName) message.obj);
            return true;
        }

        /* renamed from: i */
        public final void m2591i(a aVar) {
            if (this.f5109g.hasMessages(3, aVar.f5112a)) {
                return;
            }
            int i = aVar.f5116e + 1;
            aVar.f5116e = i;
            if (i <= 6) {
                int i2 = (1 << (i - 1)) * 1000;
                if (Log.isLoggable(NotificationManagerCompat.f5076c, 3)) {
                    Log.d(NotificationManagerCompat.f5076c, "Scheduling retry for " + i2 + " ms");
                }
                this.f5109g.sendMessageDelayed(this.f5109g.obtainMessage(3, aVar.f5112a), i2);
                return;
            }
            Log.w(NotificationManagerCompat.f5076c, "Giving up on delivering " + aVar.f5115d.size() + " tasks to " + aVar.f5112a + " after " + aVar.f5116e + " retries");
            aVar.f5115d.clear();
        }

        /* renamed from: j */
        public final void m2592j() {
            Set<String> enabledListenerPackages = NotificationManagerCompat.getEnabledListenerPackages(this.f5107e);
            if (enabledListenerPackages.equals(this.f5111i)) {
                return;
            }
            this.f5111i = enabledListenerPackages;
            List<ResolveInfo> queryIntentServices = this.f5107e.getPackageManager().queryIntentServices(new Intent().setAction(NotificationManagerCompat.ACTION_BIND_SIDE_CHANNEL), 0);
            HashSet<ComponentName> hashSet = new HashSet();
            for (ResolveInfo resolveInfo : queryIntentServices) {
                if (enabledListenerPackages.contains(resolveInfo.serviceInfo.packageName)) {
                    ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                    ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                    if (resolveInfo.serviceInfo.permission != null) {
                        Log.w(NotificationManagerCompat.f5076c, "Permission present on component " + componentName + ", not adding listener record.");
                    } else {
                        hashSet.add(componentName);
                    }
                }
            }
            for (ComponentName componentName2 : hashSet) {
                if (!this.f5110h.containsKey(componentName2)) {
                    if (Log.isLoggable(NotificationManagerCompat.f5076c, 3)) {
                        Log.d(NotificationManagerCompat.f5076c, "Adding listener record for " + componentName2);
                    }
                    this.f5110h.put(componentName2, new a(componentName2));
                }
            }
            Iterator<Map.Entry<ComponentName, a>> it2 = this.f5110h.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry<ComponentName, a> next = it2.next();
                if (!hashSet.contains(next.getKey())) {
                    if (Log.isLoggable(NotificationManagerCompat.f5076c, 3)) {
                        Log.d(NotificationManagerCompat.f5076c, "Removing listener record for " + next.getKey());
                    }
                    m2584b(next.getValue());
                    it2.remove();
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable(NotificationManagerCompat.f5076c, 3)) {
                Log.d(NotificationManagerCompat.f5076c, "Connected to service " + componentName);
            }
            this.f5109g.obtainMessage(1, new C0601i(componentName, iBinder)).sendToTarget();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable(NotificationManagerCompat.f5076c, 3)) {
                Log.d(NotificationManagerCompat.f5076c, "Disconnected from service " + componentName);
            }
            this.f5109g.obtainMessage(2, componentName).sendToTarget();
        }
    }

    /* renamed from: androidx.core.app.NotificationManagerCompat$k */
    /* loaded from: classes3.dex */
    public interface InterfaceC0603k {
        /* renamed from: a */
        void mo2582a(INotificationSideChannel iNotificationSideChannel) throws RemoteException;
    }

    public NotificationManagerCompat(Context context) {
        this.f5088a = context;
        this.f5089b = (NotificationManager) context.getSystemService(FunctionKey.NOTIFICATION);
    }

    /* renamed from: b */
    public static boolean m2561b(Notification notification) {
        Bundle extras = NotificationCompat.getExtras(notification);
        return extras != null && extras.getBoolean(EXTRA_USE_SIDE_CHANNEL);
    }

    @NonNull
    public static NotificationManagerCompat from(@NonNull Context context) {
        return new NotificationManagerCompat(context);
    }

    @NonNull
    public static Set<String> getEnabledListenerPackages(@NonNull Context context) {
        Set<String> set;
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        synchronized (f5083j) {
            if (string != null) {
                if (!string.equals(f5084k)) {
                    String[] split = string.split(":", -1);
                    HashSet hashSet = new HashSet(split.length);
                    for (String str : split) {
                        ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
                        if (unflattenFromString != null) {
                            hashSet.add(unflattenFromString.getPackageName());
                        }
                    }
                    f5085l = hashSet;
                    f5084k = string;
                }
            }
            set = f5085l;
        }
        return set;
    }

    /* renamed from: a */
    public final void m2562a(InterfaceC0603k interfaceC0603k) {
        synchronized (f5086m) {
            if (f5087n == null) {
                f5087n = new ServiceConnectionC0602j(this.f5088a.getApplicationContext());
            }
            f5087n.m2590h(interfaceC0603k);
        }
    }

    public boolean areNotificationsEnabled() {
        return C0594b.m2565a(this.f5089b);
    }

    public boolean canUseFullScreenIntent() {
        return Build.VERSION.SDK_INT < 34 ? this.f5088a.checkSelfPermission("android.permission.USE_FULL_SCREEN_INTENT") == 0 : C0598f.m2581a(this.f5089b);
    }

    public void cancel(int i) {
        cancel(null, i);
    }

    public void cancelAll() {
        this.f5089b.cancelAll();
    }

    public void createNotificationChannel(@NonNull NotificationChannel notificationChannel) {
        C0595c.m2567a(this.f5089b, notificationChannel);
    }

    public void createNotificationChannelGroup(@NonNull NotificationChannelGroup notificationChannelGroup) {
        C0595c.m2568b(this.f5089b, notificationChannelGroup);
    }

    public void createNotificationChannelGroups(@NonNull List<NotificationChannelGroup> list) {
        C0595c.m2569c(this.f5089b, list);
    }

    public void createNotificationChannelGroupsCompat(@NonNull List<NotificationChannelGroupCompat> list) {
        if (list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<NotificationChannelGroupCompat> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().m2405b());
        }
        C0595c.m2569c(this.f5089b, arrayList);
    }

    public void createNotificationChannels(@NonNull List<NotificationChannel> list) {
        C0595c.m2570d(this.f5089b, list);
    }

    public void createNotificationChannelsCompat(@NonNull List<NotificationChannelCompat> list) {
        if (list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<NotificationChannelCompat> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().m2375a());
        }
        C0595c.m2570d(this.f5089b, arrayList);
    }

    public void deleteNotificationChannel(@NonNull String str) {
        C0595c.m2571e(this.f5089b, str);
    }

    public void deleteNotificationChannelGroup(@NonNull String str) {
        C0595c.m2572f(this.f5089b, str);
    }

    public void deleteUnlistedNotificationChannels(@NonNull Collection<String> collection) {
        for (NotificationChannel notificationChannel : C0595c.m2577k(this.f5089b)) {
            if (!collection.contains(C0595c.m2573g(notificationChannel)) && (Build.VERSION.SDK_INT < 30 || !collection.contains(C0597e.m2580b(notificationChannel)))) {
                C0595c.m2571e(this.f5089b, C0595c.m2573g(notificationChannel));
            }
        }
    }

    @NonNull
    public List<StatusBarNotification> getActiveNotifications() {
        return C0593a.m2563a(this.f5089b);
    }

    public int getCurrentInterruptionFilter() {
        return C0593a.m2564b(this.f5089b);
    }

    public int getImportance() {
        return C0594b.m2566b(this.f5089b);
    }

    @Nullable
    public NotificationChannel getNotificationChannel(@NonNull String str) {
        return C0595c.m2575i(this.f5089b, str);
    }

    @Nullable
    public NotificationChannelCompat getNotificationChannelCompat(@NonNull String str) {
        NotificationChannel notificationChannel = getNotificationChannel(str);
        if (notificationChannel != null) {
            return new NotificationChannelCompat(notificationChannel);
        }
        return null;
    }

    @Nullable
    public NotificationChannelGroup getNotificationChannelGroup(@NonNull String str) {
        return C0596d.m2578a(this.f5089b, str);
    }

    @Nullable
    public NotificationChannelGroupCompat getNotificationChannelGroupCompat(@NonNull String str) {
        NotificationChannelGroup notificationChannelGroup = getNotificationChannelGroup(str);
        if (notificationChannelGroup != null) {
            return new NotificationChannelGroupCompat(notificationChannelGroup);
        }
        return null;
    }

    @NonNull
    public List<NotificationChannelGroup> getNotificationChannelGroups() {
        return C0595c.m2576j(this.f5089b);
    }

    @NonNull
    public List<NotificationChannelGroupCompat> getNotificationChannelGroupsCompat() {
        List<NotificationChannelGroup> notificationChannelGroups = getNotificationChannelGroups();
        if (notificationChannelGroups.isEmpty()) {
            return Collections.emptyList();
        }
        Collections.emptyList();
        ArrayList arrayList = new ArrayList(notificationChannelGroups.size());
        Iterator<NotificationChannelGroup> it2 = notificationChannelGroups.iterator();
        while (it2.hasNext()) {
            arrayList.add(new NotificationChannelGroupCompat(it2.next()));
        }
        return arrayList;
    }

    @NonNull
    public List<NotificationChannel> getNotificationChannels() {
        return C0595c.m2577k(this.f5089b);
    }

    @NonNull
    public List<NotificationChannelCompat> getNotificationChannelsCompat() {
        List<NotificationChannel> notificationChannels = getNotificationChannels();
        if (notificationChannels.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(notificationChannels.size());
        Iterator<NotificationChannel> it2 = notificationChannels.iterator();
        while (it2.hasNext()) {
            arrayList.add(new NotificationChannelCompat(it2.next()));
        }
        return arrayList;
    }

    @RequiresPermission(PermissionX.permission.POST_NOTIFICATIONS)
    public void notify(int i, @NonNull Notification notification) {
        notify(null, i, notification);
    }

    public void cancel(@Nullable String str, int i) {
        this.f5089b.cancel(str, i);
    }

    public void createNotificationChannel(@NonNull NotificationChannelCompat notificationChannelCompat) {
        createNotificationChannel(notificationChannelCompat.m2375a());
    }

    public void createNotificationChannelGroup(@NonNull NotificationChannelGroupCompat notificationChannelGroupCompat) {
        createNotificationChannelGroup(notificationChannelGroupCompat.m2405b());
    }

    @Nullable
    public NotificationChannel getNotificationChannel(@NonNull String str, @NonNull String str2) {
        if (Build.VERSION.SDK_INT >= 30) {
            return C0597e.m2579a(this.f5089b, str, str2);
        }
        return getNotificationChannel(str);
    }

    @RequiresPermission(PermissionX.permission.POST_NOTIFICATIONS)
    public void notify(@Nullable String str, int i, @NonNull Notification notification) {
        if (m2561b(notification)) {
            m2562a(new C0600h(this.f5088a.getPackageName(), i, str, notification));
            this.f5089b.cancel(str, i);
        } else {
            this.f5089b.notify(str, i, notification);
        }
    }

    @Nullable
    public NotificationChannelCompat getNotificationChannelCompat(@NonNull String str, @NonNull String str2) {
        NotificationChannel notificationChannel = getNotificationChannel(str, str2);
        if (notificationChannel != null) {
            return new NotificationChannelCompat(notificationChannel);
        }
        return null;
    }

    /* loaded from: classes3.dex */
    public static class NotificationWithIdAndTag {

        /* renamed from: a */
        public final String f5090a;

        /* renamed from: b */
        public final int f5091b;

        /* renamed from: c */
        public Notification f5092c;

        public NotificationWithIdAndTag(@Nullable String str, int i, @NonNull Notification notification) {
            this.f5090a = str;
            this.f5091b = i;
            this.f5092c = notification;
        }

        public NotificationWithIdAndTag(int i, @NonNull Notification notification) {
            this(null, i, notification);
        }
    }

    @VisibleForTesting
    public NotificationManagerCompat(@NonNull NotificationManager notificationManager, @NonNull Context context) {
        this.f5088a = context;
        this.f5089b = notificationManager;
    }

    /* renamed from: androidx.core.app.NotificationManagerCompat$g */
    /* loaded from: classes3.dex */
    public static class C0599g implements InterfaceC0603k {

        /* renamed from: a */
        public final String f5093a;

        /* renamed from: b */
        public final int f5094b;

        /* renamed from: c */
        public final String f5095c;

        /* renamed from: d */
        public final boolean f5096d;

        public C0599g(String str) {
            this.f5093a = str;
            this.f5094b = 0;
            this.f5095c = null;
            this.f5096d = true;
        }

        @Override // androidx.core.app.NotificationManagerCompat.InterfaceC0603k
        /* renamed from: a */
        public void mo2582a(INotificationSideChannel iNotificationSideChannel) throws RemoteException {
            if (this.f5096d) {
                iNotificationSideChannel.cancelAll(this.f5093a);
            } else {
                iNotificationSideChannel.cancel(this.f5093a, this.f5094b, this.f5095c);
            }
        }

        @NonNull
        public String toString() {
            return "CancelTask[packageName:" + this.f5093a + ", id:" + this.f5094b + ", tag:" + this.f5095c + ", all:" + this.f5096d + IteratorUtils.f104924b;
        }

        public C0599g(String str, int i, String str2) {
            this.f5093a = str;
            this.f5094b = i;
            this.f5095c = str2;
            this.f5096d = false;
        }
    }

    @RequiresPermission(PermissionX.permission.POST_NOTIFICATIONS)
    public void notify(@NonNull List<NotificationWithIdAndTag> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            NotificationWithIdAndTag notificationWithIdAndTag = list.get(i);
            notify(notificationWithIdAndTag.f5090a, notificationWithIdAndTag.f5091b, notificationWithIdAndTag.f5092c);
        }
    }
}
