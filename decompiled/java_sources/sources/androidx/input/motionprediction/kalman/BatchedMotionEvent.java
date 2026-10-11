package androidx.input.motionprediction.kalman;

import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.Iterator;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class BatchedMotionEvent {
    public final MotionEvent.PointerCoords[] coords;
    public long timeMs;

    /* loaded from: classes3.dex */
    public static class IterableMotionEvent implements Iterable<BatchedMotionEvent> {

        /* renamed from: e */
        public final int f7715e;

        /* renamed from: f */
        public final MotionEvent f7716f;

        /* renamed from: androidx.input.motionprediction.kalman.BatchedMotionEvent$IterableMotionEvent$a */
        /* loaded from: classes3.dex */
        public class C1129a implements Iterator<BatchedMotionEvent> {

            /* renamed from: e */
            public int f7717e = 0;

            public C1129a() {
            }

            @Override // java.util.Iterator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public BatchedMotionEvent next() {
                MotionEvent motionEvent = IterableMotionEvent.this.getMotionEvent();
                int pointerCount = IterableMotionEvent.this.getPointerCount();
                if (this.f7717e > motionEvent.getHistorySize()) {
                    return null;
                }
                BatchedMotionEvent batchedMotionEvent = new BatchedMotionEvent(pointerCount);
                int i = 0;
                if (this.f7717e < motionEvent.getHistorySize()) {
                    while (i < pointerCount) {
                        motionEvent.getHistoricalPointerCoords(i, this.f7717e, batchedMotionEvent.coords[i]);
                        i++;
                    }
                    batchedMotionEvent.timeMs = motionEvent.getHistoricalEventTime(this.f7717e);
                } else {
                    while (i < pointerCount) {
                        motionEvent.getPointerCoords(i, batchedMotionEvent.coords[i]);
                        i++;
                    }
                    batchedMotionEvent.timeMs = motionEvent.getEventTime();
                }
                this.f7717e++;
                return batchedMotionEvent;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f7717e < IterableMotionEvent.this.getMotionEvent().getHistorySize() + 1;
            }
        }

        public IterableMotionEvent(@NonNull MotionEvent motionEvent) {
            this.f7716f = motionEvent;
            this.f7715e = motionEvent.getPointerCount();
        }

        @NonNull
        public MotionEvent getMotionEvent() {
            return this.f7716f;
        }

        @NonNull
        public int getPointerCount() {
            return this.f7715e;
        }

        @Override // java.lang.Iterable
        @NonNull
        public Iterator<BatchedMotionEvent> iterator() {
            return new C1129a();
        }
    }

    public BatchedMotionEvent(int i) {
        this.coords = new MotionEvent.PointerCoords[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.coords[i2] = new MotionEvent.PointerCoords();
        }
    }

    @NonNull
    public static IterableMotionEvent iterate(@NonNull MotionEvent motionEvent) {
        return new IterableMotionEvent(motionEvent);
    }
}
