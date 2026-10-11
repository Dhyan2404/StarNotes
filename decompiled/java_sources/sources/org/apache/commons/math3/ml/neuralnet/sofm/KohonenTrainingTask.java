package org.apache.commons.math3.ml.neuralnet.sofm;

import java.util.Iterator;
import org.apache.commons.math3.ml.neuralnet.Network;

/* loaded from: classes12.dex */
public class KohonenTrainingTask implements Runnable {

    /* renamed from: e */
    public final Network f108672e;

    /* renamed from: f */
    public final Iterator<double[]> f108673f;

    /* renamed from: g */
    public final KohonenUpdateAction f108674g;

    public KohonenTrainingTask(Network network, Iterator<double[]> it2, KohonenUpdateAction kohonenUpdateAction) {
        this.f108672e = network;
        this.f108673f = it2;
        this.f108674g = kohonenUpdateAction;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (this.f108673f.hasNext()) {
            this.f108674g.update(this.f108672e, this.f108673f.next());
        }
    }
}
