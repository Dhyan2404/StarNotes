package com.blankj.utilcode.util;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.blankj.utilcode.util.NotificationUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public class MessengerUtils {

    /* renamed from: a */
    public static ConcurrentHashMap<String, MessageCallback> f13851a = new ConcurrentHashMap<>();

    /* renamed from: b */
    public static Map<String, C1829a> f13852b = new HashMap();

    /* renamed from: c */
    public static C1829a f13853c = null;

    /* renamed from: d */
    public static final int f13854d = 0;

    /* renamed from: e */
    public static final int f13855e = 1;

    /* renamed from: f */
    public static final int f13856f = 2;

    /* renamed from: g */
    public static final String f13857g = "MESSENGER_UTILS";

    /* loaded from: classes3.dex */
    public interface MessageCallback {
        void messageCall(Bundle bundle);
    }

    /* loaded from: classes3.dex */
    public static class ServerService extends Service {

        /* renamed from: e */
        public final ConcurrentHashMap<Integer, Messenger> f13858e = new ConcurrentHashMap<>();

        /* renamed from: f */
        @SuppressLint({"HandlerLeak"})
        public final Handler f13859f;

        /* renamed from: g */
        public final Messenger f13860g;

        /* renamed from: com.blankj.utilcode.util.MessengerUtils$ServerService$a */
        /* loaded from: classes3.dex */
        public class HandlerC1828a extends Handler {
            public HandlerC1828a() {
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i = message.what;
                if (i == 0) {
                    ServerService.this.f13858e.put(Integer.valueOf(message.arg1), message.replyTo);
                    return;
                }
                if (i == 1) {
                    ServerService.this.f13858e.remove(Integer.valueOf(message.arg1));
                } else if (i != 2) {
                    super.handleMessage(message);
                } else {
                    ServerService.this.m8192e(message);
                    ServerService.this.m8191d(message);
                }
            }
        }

        public ServerService() {
            HandlerC1828a handlerC1828a = new HandlerC1828a();
            this.f13859f = handlerC1828a;
            this.f13860g = new Messenger(handlerC1828a);
        }

        /* renamed from: d */
        public final void m8191d(Message message) {
            String string;
            MessageCallback messageCallback;
            Bundle data = message.getData();
            if (data == null || (string = data.getString(MessengerUtils.f13857g)) == null || (messageCallback = (MessageCallback) MessengerUtils.f13851a.get(string)) == null) {
                return;
            }
            messageCallback.messageCall(data);
        }

        /* renamed from: e */
        public final void m8192e(Message message) {
            Message obtain = Message.obtain(message);
            for (Messenger messenger : this.f13858e.values()) {
                if (messenger != null) {
                    try {
                        messenger.send(Message.obtain(obtain));
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
            obtain.recycle();
        }

        @Override // android.app.Service
        @Nullable
        public IBinder onBind(Intent intent) {
            return this.f13860g.getBinder();
        }

        @Override // android.app.Service
        public int onStartCommand(Intent intent, int i, int i2) {
            Bundle extras;
            startForeground(1, C1887b.m8487b0(NotificationUtils.ChannelConfig.DEFAULT_CHANNEL_CONFIG, null));
            if (intent != null && (extras = intent.getExtras()) != null) {
                Message obtain = Message.obtain(this.f13859f, 2);
                obtain.replyTo = this.f13860g;
                obtain.setData(extras);
                m8192e(obtain);
                m8191d(obtain);
            }
            return 2;
        }
    }

    /* renamed from: com.blankj.utilcode.util.MessengerUtils$a */
    /* loaded from: classes3.dex */
    public static class C1829a {

        /* renamed from: a */
        public String f13862a;

        /* renamed from: b */
        public Messenger f13863b;

        /* renamed from: c */
        public LinkedList<Bundle> f13864c = new LinkedList<>();

        /* renamed from: d */
        @SuppressLint({"HandlerLeak"})
        public Handler f13865d = new a();

        /* renamed from: e */
        public Messenger f13866e = new Messenger(this.f13865d);

        /* renamed from: f */
        public ServiceConnection f13867f = new b();

        /* renamed from: com.blankj.utilcode.util.MessengerUtils$a$a */
        /* loaded from: classes3.dex */
        public class a extends Handler {
            public a() {
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                MessageCallback messageCallback;
                Bundle data = message.getData();
                data.setClassLoader(MessengerUtils.class.getClassLoader());
                String string = data.getString(MessengerUtils.f13857g);
                if (string == null || (messageCallback = (MessageCallback) MessengerUtils.f13851a.get(string)) == null) {
                    return;
                }
                messageCallback.messageCall(data);
            }
        }

        /* renamed from: com.blankj.utilcode.util.MessengerUtils$a$b */
        /* loaded from: classes3.dex */
        public class b implements ServiceConnection {
            public b() {
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                Log.d("MessengerUtils", "client service connected " + componentName);
                C1829a.this.f13863b = new Messenger(iBinder);
                Message obtain = Message.obtain(C1829a.this.f13865d, 0, C1887b.m8457N().hashCode(), 0);
                obtain.getData().setClassLoader(MessengerUtils.class.getClassLoader());
                C1829a c1829a = C1829a.this;
                obtain.replyTo = c1829a.f13866e;
                try {
                    c1829a.f13863b.send(obtain);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
                C1829a.this.m8196d();
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                Log.w("MessengerUtils", "client service disconnected:" + componentName);
                C1829a c1829a = C1829a.this;
                c1829a.f13863b = null;
                if (c1829a.m8194b()) {
                    return;
                }
                Log.e("MessengerUtils", "client service rebind failed: " + componentName);
            }
        }

        public C1829a(String str) {
            this.f13862a = str;
        }

        /* renamed from: b */
        public boolean m8194b() {
            if (TextUtils.isEmpty(this.f13862a)) {
                return Utils.getApp().bindService(new Intent(Utils.getApp(), (Class<?>) ServerService.class), this.f13867f, 1);
            }
            if (!C1887b.m8530s0(this.f13862a)) {
                Log.e("MessengerUtils", "bind: the app is not installed -> " + this.f13862a);
                return false;
            }
            if (!C1887b.m8532t0(this.f13862a)) {
                Log.e("MessengerUtils", "bind: the app is not running -> " + this.f13862a);
                return false;
            }
            Intent intent = new Intent(this.f13862a + ".messenger");
            intent.setPackage(this.f13862a);
            return Utils.getApp().bindService(intent, this.f13867f, 1);
        }

        /* renamed from: c */
        public final boolean m8195c(Bundle bundle) {
            Message obtain = Message.obtain(this.f13865d, 2);
            bundle.setClassLoader(MessengerUtils.class.getClassLoader());
            obtain.setData(bundle);
            obtain.replyTo = this.f13866e;
            try {
                this.f13863b.send(obtain);
                return true;
            } catch (RemoteException e) {
                e.printStackTrace();
                return false;
            }
        }

        /* renamed from: d */
        public final void m8196d() {
            if (this.f13864c.isEmpty()) {
                return;
            }
            for (int size = this.f13864c.size() - 1; size >= 0; size--) {
                if (m8195c(this.f13864c.get(size))) {
                    this.f13864c.remove(size);
                }
            }
        }

        /* renamed from: e */
        public void m8197e(Bundle bundle) {
            if (this.f13863b != null) {
                m8196d();
                if (m8195c(bundle)) {
                    return;
                }
                this.f13864c.addFirst(bundle);
                return;
            }
            this.f13864c.addFirst(bundle);
            Log.i("MessengerUtils", "save the bundle " + bundle);
        }

        /* renamed from: f */
        public void m8198f() {
            Message obtain = Message.obtain(this.f13865d, 1, C1887b.m8457N().hashCode(), 0);
            obtain.replyTo = this.f13866e;
            try {
                this.f13863b.send(obtain);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            try {
                Utils.getApp().unbindService(this.f13867f);
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: b */
    public static void m8187b(Intent intent) {
        try {
            intent.setFlags(32);
            Utils.getApp().startForegroundService(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void post(@NonNull String str, @NonNull Bundle bundle) {
        bundle.putString(f13857g, str);
        C1829a c1829a = f13853c;
        if (c1829a != null) {
            c1829a.m8197e(bundle);
        } else {
            Intent intent = new Intent(Utils.getApp(), (Class<?>) ServerService.class);
            intent.putExtras(bundle);
            m8187b(intent);
        }
        Iterator<C1829a> it2 = f13852b.values().iterator();
        while (it2.hasNext()) {
            it2.next().m8197e(bundle);
        }
    }

    public static void register() {
        if (C1887b.m8544z0()) {
            if (C1887b.m8436C0(ServerService.class.getName())) {
                Log.i("MessengerUtils", "Server service is running.");
                return;
            } else {
                m8187b(new Intent(Utils.getApp(), (Class<?>) ServerService.class));
                return;
            }
        }
        if (f13853c == null) {
            C1829a c1829a = new C1829a(null);
            if (c1829a.m8194b()) {
                f13853c = c1829a;
                return;
            } else {
                Log.e("MessengerUtils", "Bind service failed.");
                return;
            }
        }
        Log.i("MessengerUtils", "The client have been bind.");
    }

    public static void subscribe(@NonNull String str, @NonNull MessageCallback messageCallback) {
        f13851a.put(str, messageCallback);
    }

    public static void unregister() {
        if (C1887b.m8544z0()) {
            if (!C1887b.m8436C0(ServerService.class.getName())) {
                Log.i("MessengerUtils", "Server service isn't running.");
                return;
            } else {
                Utils.getApp().stopService(new Intent(Utils.getApp(), (Class<?>) ServerService.class));
            }
        }
        C1829a c1829a = f13853c;
        if (c1829a != null) {
            c1829a.m8198f();
        }
    }

    public static void unsubscribe(@NonNull String str) {
        f13851a.remove(str);
    }

    public static void unregister(String str) {
        if (!f13852b.containsKey(str)) {
            Log.i("MessengerUtils", "unregister: client didn't register: " + str);
            return;
        }
        C1829a c1829a = f13852b.get(str);
        f13852b.remove(str);
        if (c1829a != null) {
            c1829a.m8198f();
        }
    }

    public static void register(String str) {
        if (f13852b.containsKey(str)) {
            Log.i("MessengerUtils", "register: client registered: " + str);
            return;
        }
        C1829a c1829a = new C1829a(str);
        if (c1829a.m8194b()) {
            f13852b.put(str, c1829a);
            return;
        }
        Log.e("MessengerUtils", "register: client bind failed: " + str);
    }
}
