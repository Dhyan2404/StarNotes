package androidx.localbroadcastmanager.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/* loaded from: classes3.dex */
public final class LocalBroadcastManager {

    /* renamed from: f */
    public static final String f8074f = "LocalBroadcastManager";

    /* renamed from: g */
    public static final boolean f8075g = false;

    /* renamed from: h */
    public static final int f8076h = 1;

    /* renamed from: i */
    public static final Object f8077i = new Object();

    /* renamed from: j */
    public static LocalBroadcastManager f8078j;

    /* renamed from: a */
    public final Context f8079a;

    /* renamed from: b */
    public final HashMap<BroadcastReceiver, ArrayList<C1178c>> f8080b = new HashMap<>();

    /* renamed from: c */
    public final HashMap<String, ArrayList<C1178c>> f8081c = new HashMap<>();

    /* renamed from: d */
    public final ArrayList<C1177b> f8082d = new ArrayList<>();

    /* renamed from: e */
    public final Handler f8083e;

    /* renamed from: androidx.localbroadcastmanager.content.LocalBroadcastManager$a */
    /* loaded from: classes3.dex */
    public class HandlerC1176a extends Handler {
        public HandlerC1176a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                super.handleMessage(message);
            } else {
                LocalBroadcastManager.this.m4989a();
            }
        }
    }

    /* renamed from: androidx.localbroadcastmanager.content.LocalBroadcastManager$b */
    /* loaded from: classes3.dex */
    public static final class C1177b {

        /* renamed from: a */
        public final Intent f8085a;

        /* renamed from: b */
        public final ArrayList<C1178c> f8086b;

        public C1177b(Intent intent, ArrayList<C1178c> arrayList) {
            this.f8085a = intent;
            this.f8086b = arrayList;
        }
    }

    /* renamed from: androidx.localbroadcastmanager.content.LocalBroadcastManager$c */
    /* loaded from: classes3.dex */
    public static final class C1178c {

        /* renamed from: a */
        public final IntentFilter f8087a;

        /* renamed from: b */
        public final BroadcastReceiver f8088b;

        /* renamed from: c */
        public boolean f8089c;

        /* renamed from: d */
        public boolean f8090d;

        public C1178c(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f8087a = intentFilter;
            this.f8088b = broadcastReceiver;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.f8088b);
            sb.append(" filter=");
            sb.append(this.f8087a);
            if (this.f8090d) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    public LocalBroadcastManager(Context context) {
        this.f8079a = context;
        this.f8083e = new HandlerC1176a(context.getMainLooper());
    }

    @NonNull
    public static LocalBroadcastManager getInstance(@NonNull Context context) {
        LocalBroadcastManager localBroadcastManager;
        synchronized (f8077i) {
            if (f8078j == null) {
                f8078j = new LocalBroadcastManager(context.getApplicationContext());
            }
            localBroadcastManager = f8078j;
        }
        return localBroadcastManager;
    }

    /* renamed from: a */
    public void m4989a() {
        int size;
        C1177b[] c1177bArr;
        while (true) {
            synchronized (this.f8080b) {
                size = this.f8082d.size();
                if (size <= 0) {
                    return;
                }
                c1177bArr = new C1177b[size];
                this.f8082d.toArray(c1177bArr);
                this.f8082d.clear();
            }
            for (int i = 0; i < size; i++) {
                C1177b c1177b = c1177bArr[i];
                int size2 = c1177b.f8086b.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    C1178c c1178c = c1177b.f8086b.get(i2);
                    if (!c1178c.f8090d) {
                        c1178c.f8088b.onReceive(this.f8079a, c1177b.f8085a);
                    }
                }
            }
        }
    }

    public void registerReceiver(@NonNull BroadcastReceiver broadcastReceiver, @NonNull IntentFilter intentFilter) {
        synchronized (this.f8080b) {
            C1178c c1178c = new C1178c(intentFilter, broadcastReceiver);
            ArrayList<C1178c> arrayList = this.f8080b.get(broadcastReceiver);
            if (arrayList == null) {
                arrayList = new ArrayList<>(1);
                this.f8080b.put(broadcastReceiver, arrayList);
            }
            arrayList.add(c1178c);
            for (int i = 0; i < intentFilter.countActions(); i++) {
                String action = intentFilter.getAction(i);
                ArrayList<C1178c> arrayList2 = this.f8081c.get(action);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>(1);
                    this.f8081c.put(action, arrayList2);
                }
                arrayList2.add(c1178c);
            }
        }
    }

    public boolean sendBroadcast(@NonNull Intent intent) {
        int i;
        String str;
        ArrayList arrayList;
        ArrayList<C1178c> arrayList2;
        String str2;
        synchronized (this.f8080b) {
            String action = intent.getAction();
            String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f8079a.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z = (intent.getFlags() & 8) != 0;
            if (z) {
                Log.v(f8074f, "Resolving type " + resolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
            }
            ArrayList<C1178c> arrayList3 = this.f8081c.get(intent.getAction());
            if (arrayList3 != null) {
                if (z) {
                    Log.v(f8074f, "Action list: " + arrayList3);
                }
                ArrayList arrayList4 = null;
                int i2 = 0;
                while (i2 < arrayList3.size()) {
                    C1178c c1178c = arrayList3.get(i2);
                    if (z) {
                        Log.v(f8074f, "Matching against filter " + c1178c.f8087a);
                    }
                    if (c1178c.f8089c) {
                        if (z) {
                            Log.v(f8074f, "  Filter's target already added");
                        }
                        i = i2;
                        arrayList2 = arrayList3;
                        str = action;
                        str2 = resolveTypeIfNeeded;
                        arrayList = arrayList4;
                    } else {
                        i = i2;
                        str = action;
                        arrayList = arrayList4;
                        arrayList2 = arrayList3;
                        str2 = resolveTypeIfNeeded;
                        int match = c1178c.f8087a.match(action, resolveTypeIfNeeded, scheme, data, categories, f8074f);
                        if (match >= 0) {
                            if (z) {
                                Log.v(f8074f, "  Filter matched!  match=0x" + Integer.toHexString(match));
                            }
                            arrayList4 = arrayList == null ? new ArrayList() : arrayList;
                            arrayList4.add(c1178c);
                            c1178c.f8089c = true;
                            i2 = i + 1;
                            action = str;
                            arrayList3 = arrayList2;
                            resolveTypeIfNeeded = str2;
                        } else if (z) {
                            Log.v(f8074f, "  Filter did not match: " + (match != -4 ? match != -3 ? match != -2 ? match != -1 ? "unknown reason" : "type" : "data" : "action" : "category"));
                        }
                    }
                    arrayList4 = arrayList;
                    i2 = i + 1;
                    action = str;
                    arrayList3 = arrayList2;
                    resolveTypeIfNeeded = str2;
                }
                ArrayList arrayList5 = arrayList4;
                if (arrayList5 != null) {
                    for (int i3 = 0; i3 < arrayList5.size(); i3++) {
                        ((C1178c) arrayList5.get(i3)).f8089c = false;
                    }
                    this.f8082d.add(new C1177b(intent, arrayList5));
                    if (!this.f8083e.hasMessages(1)) {
                        this.f8083e.sendEmptyMessage(1);
                    }
                    return true;
                }
            }
            return false;
        }
    }

    public void sendBroadcastSync(@NonNull Intent intent) {
        if (sendBroadcast(intent)) {
            m4989a();
        }
    }

    public void unregisterReceiver(@NonNull BroadcastReceiver broadcastReceiver) {
        synchronized (this.f8080b) {
            ArrayList<C1178c> remove = this.f8080b.remove(broadcastReceiver);
            if (remove == null) {
                return;
            }
            for (int size = remove.size() - 1; size >= 0; size--) {
                C1178c c1178c = remove.get(size);
                c1178c.f8090d = true;
                for (int i = 0; i < c1178c.f8087a.countActions(); i++) {
                    String action = c1178c.f8087a.getAction(i);
                    ArrayList<C1178c> arrayList = this.f8081c.get(action);
                    if (arrayList != null) {
                        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                            C1178c c1178c2 = arrayList.get(size2);
                            if (c1178c2.f8088b == broadcastReceiver) {
                                c1178c2.f8090d = true;
                                arrayList.remove(size2);
                            }
                        }
                        if (arrayList.size() <= 0) {
                            this.f8081c.remove(action);
                        }
                    }
                }
            }
        }
    }
}
