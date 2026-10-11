package com.sunia.HTREnginev2;

import android.content.Context;
import com.google.android.datatransport.runtime.backends.CreationContext;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.android.datatransport.runtime.time.Monotonic;
import com.google.android.datatransport.runtime.time.WallTime;
import javax.inject.Inject;

/* loaded from: classes4.dex */
public class ahe {

    /* renamed from: a */
    public final Context f64699a;

    /* renamed from: b */
    public final Clock f64700b;

    /* renamed from: c */
    public final Clock f64701c;

    @Inject
    public ahe(Context context, @WallTime Clock clock, @Monotonic Clock clock2) {
        this.f64699a = context;
        this.f64700b = clock;
        this.f64701c = clock2;
    }

    /* renamed from: a */
    public CreationContext m53016a(String str) {
        return CreationContext.create(this.f64699a, this.f64700b, this.f64701c, str);
    }
}
