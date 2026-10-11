package com.sunia.HTREnginev2;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.bumptech.glide.load.engine.Resource;

/* loaded from: classes3.dex */
public class tll {

    /* renamed from: a */
    public boolean f85424a;

    /* renamed from: b */
    public final Handler f85425b = new Handler(Looper.getMainLooper(), new C14460a());

    /* renamed from: com.sunia.HTREnginev2.tll$a */
    /* loaded from: classes3.dex */
    public static final class C14460a implements Handler.Callback {

        /* renamed from: e */
        public static final int f85426e = 1;

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((Resource) message.obj).recycle();
            return true;
        }
    }

    /* renamed from: a */
    public synchronized void m57389a(Resource<?> resource, boolean z) {
        if (!this.f85424a && !z) {
            this.f85424a = true;
            resource.recycle();
            this.f85424a = false;
        }
        this.f85425b.obtainMessage(1, resource).sendToTarget();
    }
}
