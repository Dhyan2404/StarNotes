package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* renamed from: com.sunia.HTREnginev2.qk */
/* loaded from: classes6.dex */
public final class C14309qk implements OnCompleteListener<Void> {

    /* renamed from: a */
    public final CountDownLatch f82145a = new CountDownLatch(1);

    /* renamed from: a */
    public boolean m56721a(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.f82145a.await(j, timeUnit);
    }

    /* renamed from: b */
    public void m56722b() {
        this.f82145a.countDown();
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(@NonNull Task<Void> task) {
        this.f82145a.countDown();
    }
}
