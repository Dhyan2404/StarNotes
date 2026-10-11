package org.apache.commons.math3.ode.events;

import java.util.Arrays;
import org.apache.commons.math3.ode.events.EventHandler;

/* loaded from: classes12.dex */
public class EventFilter implements EventHandler {

    /* renamed from: g */
    public static final int f108809g = 100;

    /* renamed from: a */
    public final EventHandler f108810a;

    /* renamed from: b */
    public final FilterType f108811b;

    /* renamed from: c */
    public final Transformer[] f108812c = new Transformer[100];

    /* renamed from: d */
    public final double[] f108813d = new double[100];

    /* renamed from: e */
    public boolean f108814e;

    /* renamed from: f */
    public double f108815f;

    public EventFilter(EventHandler eventHandler, FilterType filterType) {
        this.f108810a = eventHandler;
        this.f108811b = filterType;
    }

    @Override // org.apache.commons.math3.ode.events.EventHandler
    public EventHandler.Action eventOccurred(double d, double[] dArr, boolean z) {
        return this.f108810a.eventOccurred(d, dArr, this.f108811b.getTriggeredIncreasing());
    }

    @Override // org.apache.commons.math3.ode.events.EventHandler
    /* renamed from: g */
    public double mo67880g(double d, double[] dArr) {
        double mo67880g = this.f108810a.mo67880g(d, dArr);
        boolean z = this.f108814e;
        int i = 0;
        if (z) {
            Transformer[] transformerArr = this.f108812c;
            int length = transformerArr.length - 1;
            if (this.f108815f >= d) {
                while (length > 0) {
                    if (this.f108813d[length] <= d) {
                        return this.f108812c[length].transformed(mo67880g);
                    }
                    length--;
                }
                return this.f108812c[0].transformed(mo67880g);
            }
            Transformer transformer = transformerArr[length];
            Transformer selectTransformer = this.f108811b.selectTransformer(transformer, mo67880g, z);
            if (selectTransformer != transformer) {
                double[] dArr2 = this.f108813d;
                System.arraycopy(dArr2, 1, dArr2, 0, length);
                Transformer[] transformerArr2 = this.f108812c;
                System.arraycopy(transformerArr2, 1, transformerArr2, 0, length);
                this.f108813d[length] = this.f108815f;
                this.f108812c[length] = selectTransformer;
            }
            this.f108815f = d;
            return selectTransformer.transformed(mo67880g);
        }
        if (d < this.f108815f) {
            Transformer transformer2 = this.f108812c[0];
            Transformer selectTransformer2 = this.f108811b.selectTransformer(transformer2, mo67880g, z);
            if (selectTransformer2 != transformer2) {
                double[] dArr3 = this.f108813d;
                System.arraycopy(dArr3, 0, dArr3, 1, dArr3.length - 1);
                Transformer[] transformerArr3 = this.f108812c;
                System.arraycopy(transformerArr3, 0, transformerArr3, 1, transformerArr3.length - 1);
                this.f108813d[0] = this.f108815f;
                this.f108812c[0] = selectTransformer2;
            }
            this.f108815f = d;
            return selectTransformer2.transformed(mo67880g);
        }
        while (true) {
            double[] dArr4 = this.f108813d;
            if (i >= dArr4.length - 1) {
                return this.f108812c[dArr4.length - 1].transformed(mo67880g);
            }
            if (d <= dArr4[i]) {
                return this.f108812c[i].transformed(mo67880g);
            }
            i++;
        }
    }

    @Override // org.apache.commons.math3.ode.events.EventHandler
    public void init(double d, double[] dArr, double d2) {
        this.f108810a.init(d, dArr, d2);
        boolean z = d2 >= d;
        this.f108814e = z;
        this.f108815f = z ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY;
        Arrays.fill(this.f108812c, Transformer.UNINITIALIZED);
        Arrays.fill(this.f108813d, this.f108815f);
    }

    @Override // org.apache.commons.math3.ode.events.EventHandler
    public void resetState(double d, double[] dArr) {
        this.f108810a.resetState(d, dArr);
    }
}
