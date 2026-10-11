package androidx.input.motionprediction.kalman;

import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.lang.reflect.Array;
import java.util.Iterator;
import java.util.Locale;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class MultiPointerPredictor implements KalmanPredictor {

    /* renamed from: c */
    public static final String f7736c = "MultiPointerPredictor";

    /* renamed from: d */
    public static final boolean f7737d = Log.isLoggable(f7736c, 3);

    /* renamed from: a */
    public final SparseArray<SinglePointerPredictor> f7738a = new SparseArray<>();

    /* renamed from: b */
    public int f7739b = 0;

    @Override // androidx.input.motionprediction.kalman.KalmanPredictor
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        int pointerId = motionEvent.getPointerId(actionIndex);
        if (actionMasked == 0 || actionMasked == 5) {
            SinglePointerPredictor singlePointerPredictor = new SinglePointerPredictor(pointerId, motionEvent.getToolType(actionIndex));
            int i = this.f7739b;
            if (i > 0) {
                singlePointerPredictor.setReportRate(i);
            }
            singlePointerPredictor.onTouchEvent(motionEvent);
            this.f7738a.put(pointerId, singlePointerPredictor);
        } else if (actionMasked == 1) {
            SinglePointerPredictor singlePointerPredictor2 = this.f7738a.get(pointerId);
            if (singlePointerPredictor2 != null) {
                this.f7738a.remove(pointerId);
                singlePointerPredictor2.onTouchEvent(motionEvent);
            }
            this.f7738a.clear();
        } else if (actionMasked == 6) {
            SinglePointerPredictor singlePointerPredictor3 = this.f7738a.get(pointerId);
            if (singlePointerPredictor3 != null) {
                this.f7738a.remove(pointerId);
                singlePointerPredictor3.onTouchEvent(motionEvent);
            }
        } else if (actionMasked == 3) {
            this.f7738a.clear();
        } else {
            if (actionMasked != 2) {
                return false;
            }
            for (int i2 = 0; i2 < this.f7738a.size(); i2++) {
                this.f7738a.valueAt(i2).onTouchEvent(motionEvent);
            }
        }
        return true;
    }

    @Override // androidx.input.motionprediction.kalman.KalmanPredictor
    @Nullable
    public MotionEvent predict(int i) {
        boolean z;
        int size = this.f7738a.size();
        if (size == 0) {
            if (f7737d) {
                Log.d(f7736c, "predict() -> null: no pointer on screen");
            }
            return null;
        }
        if (size == 1) {
            MotionEvent predict = this.f7738a.valueAt(0).predict(i);
            if (f7737d) {
                Log.d(f7736c, "predict() -> MotionEvent: " + predict);
            }
            return predict;
        }
        int[] iArr = new int[size];
        MotionEvent[] motionEventArr = new MotionEvent[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = this.f7738a.keyAt(i2);
            motionEventArr[i2] = this.f7738a.valueAt(i2).predict(i);
        }
        int i3 = Integer.MAX_VALUE;
        int i4 = 0;
        while (true) {
            if (i4 >= size) {
                z = false;
                break;
            }
            MotionEvent motionEvent = motionEventArr[i4];
            if (motionEvent == null) {
                z = true;
                break;
            }
            if (motionEvent.getHistorySize() < i3) {
                i3 = motionEvent.getHistorySize();
            }
            i4++;
        }
        if (z) {
            for (int i5 = 0; i5 < size; i5++) {
                MotionEvent motionEvent2 = motionEventArr[i5];
                if (motionEvent2 != null) {
                    motionEvent2.recycle();
                }
            }
            return null;
        }
        int i6 = i3 + 1;
        MotionEvent.PointerCoords[][] pointerCoordsArr = (MotionEvent.PointerCoords[][]) Array.newInstance((Class<?>) MotionEvent.PointerCoords.class, i6, size);
        for (int i7 = 0; i7 < size; i7++) {
            Iterator<BatchedMotionEvent> it2 = BatchedMotionEvent.iterate(motionEventArr[i7]).iterator();
            int i8 = 0;
            while (it2.hasNext()) {
                pointerCoordsArr[i8][i7] = it2.next().coords[0];
                i8++;
                if (i6 <= i8) {
                    break;
                }
            }
        }
        for (int i9 = 0; i9 < size; i9++) {
            motionEventArr[i9].recycle();
        }
        MotionEvent.PointerProperties[] pointerPropertiesArr = new MotionEvent.PointerProperties[size];
        for (int i10 = 0; i10 < size; i10++) {
            MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
            pointerPropertiesArr[i10] = pointerProperties;
            pointerProperties.id = iArr[i10];
        }
        MotionEvent obtain = MotionEvent.obtain(0L, 0L, 2, size, pointerPropertiesArr, pointerCoordsArr[0], 0, 0, 1.0f, 1.0f, 0, 0, 0, 0);
        for (int i11 = 1; i11 < i6; i11++) {
            obtain.addBatch(0L, pointerCoordsArr[i11], 0);
        }
        if (f7737d) {
            StringBuilder sb = new StringBuilder(String.format(Locale.ROOT, "predict() -> MotionEvent: (pointerCount=%d, historySize=%d);", Integer.valueOf(obtain.getPointerCount()), Integer.valueOf(obtain.getHistorySize())));
            Iterator<BatchedMotionEvent> it3 = BatchedMotionEvent.iterate(obtain).iterator();
            while (it3.hasNext()) {
                BatchedMotionEvent next = it3.next();
                sb.append("      ");
                for (MotionEvent.PointerCoords pointerCoords : next.coords) {
                    sb.append(String.format(Locale.ROOT, "(%f, %f)", Float.valueOf(pointerCoords.x), Float.valueOf(pointerCoords.y)));
                }
                sb.append("\n");
            }
            Log.d(f7736c, sb.toString());
        }
        return obtain;
    }

    @Override // androidx.input.motionprediction.kalman.KalmanPredictor
    public void setReportRate(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("reportRateMs should always be a strictlypositive number");
        }
        this.f7739b = i;
        for (int i2 = 0; i2 < this.f7738a.size(); i2++) {
            this.f7738a.valueAt(i2).setReportRate(this.f7739b);
        }
    }
}
