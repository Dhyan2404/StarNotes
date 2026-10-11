package com.liulishuo.okdownload.core.breakpoint;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.core.Util;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes4.dex */
public class RemitSyncExecutor implements Handler.Callback {

    /* renamed from: h */
    public static final String f39300h = "RemitSyncExecutor";

    /* renamed from: i */
    public static final int f39301i = 0;

    /* renamed from: j */
    public static final int f39302j = -1;

    /* renamed from: k */
    public static final int f39303k = -2;

    /* renamed from: l */
    public static final int f39304l = -3;

    /* renamed from: e */
    @NonNull
    public final Handler f39305e;

    /* renamed from: f */
    @NonNull
    public final Set<Integer> f39306f;

    /* renamed from: g */
    @NonNull
    public final InterfaceC6961a f39307g;

    /* renamed from: com.liulishuo.okdownload.core.breakpoint.RemitSyncExecutor$a */
    /* loaded from: classes4.dex */
    public interface InterfaceC6961a {
        void removeInfo(int i);

        void syncCacheToDB(int i) throws IOException;

        void syncCacheToDB(List<Integer> list) throws IOException;
    }

    public RemitSyncExecutor(@NonNull InterfaceC6961a interfaceC6961a) {
        this.f39307g = interfaceC6961a;
        this.f39306f = new HashSet();
        HandlerThread handlerThread = new HandlerThread("OkDownload RemitHandoverToDB");
        handlerThread.start();
        this.f39305e = new Handler(handlerThread.getLooper(), this);
    }

    /* renamed from: a */
    public boolean m30997a(int i) {
        return this.f39306f.contains(Integer.valueOf(i));
    }

    /* renamed from: b */
    public void m30998b(int i) {
        this.f39305e.removeMessages(i);
    }

    /* renamed from: c */
    public void m30999c(int[] iArr) {
        for (int i : iArr) {
            this.f39305e.removeMessages(i);
        }
    }

    /* renamed from: d */
    public void m31000d() {
        this.f39305e.getLooper().quit();
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i = message.what;
        if (i == -3) {
            int i2 = message.arg1;
            this.f39306f.remove(Integer.valueOf(i2));
            this.f39307g.removeInfo(i2);
            Util.m30983d(f39300h, "remove info " + i2);
            return true;
        }
        if (i == -2) {
            int i3 = message.arg1;
            this.f39306f.remove(Integer.valueOf(i3));
            Util.m30983d(f39300h, "remove free bunch id " + i3);
            return true;
        }
        if (i == -1) {
            List list = (List) message.obj;
            this.f39306f.removeAll(list);
            Util.m30983d(f39300h, "remove free bunch ids " + list);
            return true;
        }
        if (i != 0) {
            try {
                this.f39307g.syncCacheToDB(i);
                this.f39306f.add(Integer.valueOf(i));
                Util.m30983d(f39300h, "sync info with id: " + i);
                return true;
            } catch (IOException unused) {
                Util.m30986w(f39300h, "sync cache to db failed for id: " + i);
                return true;
            }
        }
        List<Integer> list2 = (List) message.obj;
        try {
            this.f39307g.syncCacheToDB(list2);
            this.f39306f.addAll(list2);
            Util.m30983d(f39300h, "sync bunch info with ids: " + list2);
            return true;
        } catch (IOException unused2) {
            Util.m30986w(f39300h, "sync info to db failed for ids: " + list2);
            return true;
        }
    }

    public void postRemoveFreeId(int i) {
        Message obtainMessage = this.f39305e.obtainMessage(-2);
        obtainMessage.arg1 = i;
        this.f39305e.sendMessage(obtainMessage);
    }

    public void postRemoveFreeIds(List<Integer> list) {
        Message obtainMessage = this.f39305e.obtainMessage(-1);
        obtainMessage.obj = list;
        this.f39305e.sendMessage(obtainMessage);
    }

    public void postRemoveInfo(int i) {
        Message obtainMessage = this.f39305e.obtainMessage(-3);
        obtainMessage.arg1 = i;
        this.f39305e.sendMessage(obtainMessage);
    }

    public void postSync(int i) {
        this.f39305e.sendEmptyMessage(i);
    }

    public void postSyncInfoDelay(int i, long j) {
        this.f39305e.sendEmptyMessageDelayed(i, j);
    }

    public void postSync(List<Integer> list) {
        Message obtainMessage = this.f39305e.obtainMessage(0);
        obtainMessage.obj = list;
        this.f39305e.sendMessage(obtainMessage);
    }

    public RemitSyncExecutor(@NonNull InterfaceC6961a interfaceC6961a, @Nullable Handler handler, @NonNull Set<Integer> set) {
        this.f39307g = interfaceC6961a;
        this.f39305e = handler;
        this.f39306f = set;
    }
}
