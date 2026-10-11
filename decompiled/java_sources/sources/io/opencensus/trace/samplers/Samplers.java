package io.opencensus.trace.samplers;

import com.sunia.HTREnginev2.C13518ba;
import com.sunia.HTREnginev2.utj;
import com.sunia.HTREnginev2.y7l;
import io.opencensus.trace.Sampler;

/* loaded from: classes10.dex */
public final class Samplers {

    /* renamed from: a */
    public static final Sampler f94979a = new C13518ba();

    /* renamed from: b */
    public static final Sampler f94980b = new utj();

    public static Sampler alwaysSample() {
        return f94979a;
    }

    public static Sampler neverSample() {
        return f94980b;
    }

    public static Sampler probabilitySampler(double d) {
        return y7l.m58388a(d);
    }
}
