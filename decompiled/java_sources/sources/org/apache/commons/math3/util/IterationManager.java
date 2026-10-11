package org.apache.commons.math3.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.util.Incrementor;
import org.apache.commons.math3.util.IntegerSequence;

/* loaded from: classes12.dex */
public class IterationManager {

    /* renamed from: a */
    public IntegerSequence.Incrementor f109907a;

    /* renamed from: b */
    public final Collection<IterationListener> f109908b;

    /* renamed from: org.apache.commons.math3.util.IterationManager$a */
    /* loaded from: classes12.dex */
    public class C19296a implements IntegerSequence.Incrementor.MaxCountExceededCallback {

        /* renamed from: a */
        public final /* synthetic */ Incrementor.MaxCountExceededCallback f109909a;

        public C19296a(Incrementor.MaxCountExceededCallback maxCountExceededCallback) {
            this.f109909a = maxCountExceededCallback;
        }

        @Override // org.apache.commons.math3.util.IntegerSequence.Incrementor.MaxCountExceededCallback
        public void trigger(int i) throws MaxCountExceededException {
            this.f109909a.trigger(i);
        }
    }

    public IterationManager(int i) {
        this.f109907a = IntegerSequence.Incrementor.create().withMaximalCount(i);
        this.f109908b = new CopyOnWriteArrayList();
    }

    public void addIterationListener(IterationListener iterationListener) {
        this.f109908b.add(iterationListener);
    }

    public void fireInitializationEvent(IterationEvent iterationEvent) {
        Iterator<IterationListener> it2 = this.f109908b.iterator();
        while (it2.hasNext()) {
            it2.next().initializationPerformed(iterationEvent);
        }
    }

    public void fireIterationPerformedEvent(IterationEvent iterationEvent) {
        Iterator<IterationListener> it2 = this.f109908b.iterator();
        while (it2.hasNext()) {
            it2.next().iterationPerformed(iterationEvent);
        }
    }

    public void fireIterationStartedEvent(IterationEvent iterationEvent) {
        Iterator<IterationListener> it2 = this.f109908b.iterator();
        while (it2.hasNext()) {
            it2.next().iterationStarted(iterationEvent);
        }
    }

    public void fireTerminationEvent(IterationEvent iterationEvent) {
        Iterator<IterationListener> it2 = this.f109908b.iterator();
        while (it2.hasNext()) {
            it2.next().terminationPerformed(iterationEvent);
        }
    }

    public int getIterations() {
        return this.f109907a.getCount();
    }

    public int getMaxIterations() {
        return this.f109907a.getMaximalCount();
    }

    public void incrementIterationCount() throws MaxCountExceededException {
        this.f109907a.increment();
    }

    public void removeIterationListener(IterationListener iterationListener) {
        this.f109908b.remove(iterationListener);
    }

    public void resetIterationCount() {
        this.f109907a = this.f109907a.withStart(0);
    }

    @Deprecated
    public IterationManager(int i, Incrementor.MaxCountExceededCallback maxCountExceededCallback) {
        this(i, new C19296a(maxCountExceededCallback));
    }

    public IterationManager(int i, IntegerSequence.Incrementor.MaxCountExceededCallback maxCountExceededCallback) {
        this.f109907a = IntegerSequence.Incrementor.create().withMaximalCount(i).withCallback(maxCountExceededCallback);
        this.f109908b = new CopyOnWriteArrayList();
    }
}
