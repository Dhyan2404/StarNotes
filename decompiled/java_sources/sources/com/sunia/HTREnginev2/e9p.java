package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.internal.zaad;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Map;

/* loaded from: classes5.dex */
public final class e9p implements OnCompleteListener {

    /* renamed from: a */
    public final /* synthetic */ TaskCompletionSource f68731a;

    /* renamed from: b */
    public final /* synthetic */ zaad f68732b;

    public e9p(zaad zaadVar, TaskCompletionSource taskCompletionSource) {
        this.f68732b = zaadVar;
        this.f68731a = taskCompletionSource;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(@NonNull Task task) {
        Map map;
        map = this.f68732b.f29178b;
        map.remove(this.f68731a);
    }
}
