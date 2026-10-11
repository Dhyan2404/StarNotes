package com.blankj.utilcode.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes3.dex */
public final class UiMessageUtils implements Handler.Callback {

    /* renamed from: j */
    public static final String f14207j = "UiMessageUtils";

    /* renamed from: k */
    public static final boolean f14208k = C1887b.m8526q0();

    /* renamed from: e */
    public final Handler f14209e;

    /* renamed from: f */
    public final UiMessage f14210f;

    /* renamed from: g */
    public final SparseArray<List<UiMessageCallback>> f14211g;

    /* renamed from: h */
    public final List<UiMessageCallback> f14212h;

    /* renamed from: i */
    public final List<UiMessageCallback> f14213i;

    /* loaded from: classes3.dex */
    public static final class UiMessage {

        /* renamed from: a */
        public Message f14214a;

        /* renamed from: b */
        public final void m8394b(Message message) {
            this.f14214a = message;
        }

        public int getId() {
            return this.f14214a.what;
        }

        public Object getObject() {
            return this.f14214a.obj;
        }

        public String toString() {
            return "{ id=" + getId() + ", obj=" + getObject() + " }";
        }

        public UiMessage(Message message) {
            this.f14214a = message;
        }
    }

    /* loaded from: classes3.dex */
    public interface UiMessageCallback {
        void handleMessage(@NonNull UiMessage uiMessage);
    }

    /* renamed from: com.blankj.utilcode.util.UiMessageUtils$b */
    /* loaded from: classes3.dex */
    public static final class C1885b {

        /* renamed from: a */
        public static final UiMessageUtils f14215a = new UiMessageUtils();
    }

    public static UiMessageUtils getInstance() {
        return C1885b.f14215a;
    }

    /* renamed from: a */
    public final void m8392a(@NonNull UiMessage uiMessage) {
        List<UiMessageCallback> list = this.f14211g.get(uiMessage.getId());
        if ((list == null || list.size() == 0) && this.f14212h.size() == 0) {
            Log.w(f14207j, "Delivering FAILED for message ID " + uiMessage.getId() + ". No listeners. " + uiMessage.toString());
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Delivering message ID ");
        sb.append(uiMessage.getId());
        sb.append(", Specific listeners: ");
        if (list == null || list.size() == 0) {
            sb.append(0);
        } else {
            sb.append(list.size());
            sb.append(" [");
            for (int i = 0; i < list.size(); i++) {
                sb.append(list.get(i).getClass().getSimpleName());
                if (i < list.size() - 1) {
                    sb.append(",");
                }
            }
            sb.append(IteratorUtils.f104924b);
        }
        sb.append(", Universal listeners: ");
        synchronized (this.f14212h) {
            if (this.f14212h.size() == 0) {
                sb.append(0);
            } else {
                sb.append(this.f14212h.size());
                sb.append(" [");
                for (int i2 = 0; i2 < this.f14212h.size(); i2++) {
                    sb.append(this.f14212h.get(i2).getClass().getSimpleName());
                    if (i2 < this.f14212h.size() - 1) {
                        sb.append(",");
                    }
                }
                sb.append("], Message: ");
            }
        }
        sb.append(uiMessage.toString());
        Log.v(f14207j, sb.toString());
    }

    public void addListener(int i, @NonNull UiMessageCallback uiMessageCallback) {
        synchronized (this.f14211g) {
            List<UiMessageCallback> list = this.f14211g.get(i);
            if (list == null) {
                list = new ArrayList<>();
                this.f14211g.put(i, list);
            }
            if (!list.contains(uiMessageCallback)) {
                list.add(uiMessageCallback);
            }
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        this.f14210f.m8394b(message);
        if (f14208k) {
            m8392a(this.f14210f);
        }
        synchronized (this.f14211g) {
            List<UiMessageCallback> list = this.f14211g.get(message.what);
            if (list != null) {
                if (list.size() == 0) {
                    this.f14211g.remove(message.what);
                } else {
                    this.f14213i.addAll(list);
                    Iterator<UiMessageCallback> it2 = this.f14213i.iterator();
                    while (it2.hasNext()) {
                        it2.next().handleMessage(this.f14210f);
                    }
                    this.f14213i.clear();
                }
            }
        }
        synchronized (this.f14212h) {
            if (this.f14212h.size() > 0) {
                this.f14213i.addAll(this.f14212h);
                Iterator<UiMessageCallback> it3 = this.f14213i.iterator();
                while (it3.hasNext()) {
                    it3.next().handleMessage(this.f14210f);
                }
                this.f14213i.clear();
            }
        }
        this.f14210f.m8394b(null);
        return true;
    }

    public void removeListener(@NonNull UiMessageCallback uiMessageCallback) {
        synchronized (this.f14212h) {
            if (f14208k && !this.f14212h.contains(uiMessageCallback)) {
                Log.w(f14207j, "Trying to remove a listener that is not registered. " + uiMessageCallback.toString());
            }
            this.f14212h.remove(uiMessageCallback);
        }
    }

    public void removeListeners(int i) {
        List<UiMessageCallback> list;
        if (f14208k && ((list = this.f14211g.get(i)) == null || list.size() == 0)) {
            Log.w(f14207j, "Trying to remove specific listeners that are not registered. ID " + i);
        }
        synchronized (this.f14211g) {
            this.f14211g.delete(i);
        }
    }

    public final void send(int i) {
        this.f14209e.sendEmptyMessage(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public UiMessageUtils() {
        this.f14209e = new Handler(Looper.getMainLooper(), this);
        this.f14210f = new UiMessage(null);
        this.f14211g = new SparseArray<>();
        this.f14212h = new ArrayList();
        this.f14213i = new ArrayList();
    }

    public final void send(int i, @NonNull Object obj) {
        Handler handler = this.f14209e;
        handler.sendMessage(handler.obtainMessage(i, obj));
    }

    public void removeListener(int i, @NonNull UiMessageCallback uiMessageCallback) {
        synchronized (this.f14211g) {
            List<UiMessageCallback> list = this.f14211g.get(i);
            if (list != null && !list.isEmpty()) {
                if (f14208k && !list.contains(uiMessageCallback)) {
                    Log.w(f14207j, "Trying to remove specific listener that is not registered. ID " + i + ", " + uiMessageCallback);
                    return;
                }
                list.remove(uiMessageCallback);
            } else if (f14208k) {
                Log.w(f14207j, "Trying to remove specific listener that is not registered. ID " + i + ", " + uiMessageCallback);
            }
        }
    }

    public void addListener(@NonNull UiMessageCallback uiMessageCallback) {
        synchronized (this.f14212h) {
            if (!this.f14212h.contains(uiMessageCallback)) {
                this.f14212h.add(uiMessageCallback);
            } else if (f14208k) {
                Log.w(f14207j, "Listener is already added. " + uiMessageCallback.toString());
            }
        }
    }
}
