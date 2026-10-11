package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;

/* loaded from: classes3.dex */
public class BatchingListUpdateCallback implements ListUpdateCallback {

    /* renamed from: j */
    public static final int f9218j = 0;

    /* renamed from: k */
    public static final int f9219k = 1;

    /* renamed from: l */
    public static final int f9220l = 2;

    /* renamed from: m */
    public static final int f9221m = 3;

    /* renamed from: e */
    public final ListUpdateCallback f9222e;

    /* renamed from: f */
    public int f9223f = 0;

    /* renamed from: g */
    public int f9224g = -1;

    /* renamed from: h */
    public int f9225h = -1;

    /* renamed from: i */
    public Object f9226i = null;

    public BatchingListUpdateCallback(@NonNull ListUpdateCallback listUpdateCallback) {
        this.f9222e = listUpdateCallback;
    }

    public void dispatchLastEvent() {
        int i = this.f9223f;
        if (i == 0) {
            return;
        }
        if (i == 1) {
            this.f9222e.onInserted(this.f9224g, this.f9225h);
        } else if (i == 2) {
            this.f9222e.onRemoved(this.f9224g, this.f9225h);
        } else if (i == 3) {
            this.f9222e.onChanged(this.f9224g, this.f9225h, this.f9226i);
        }
        this.f9226i = null;
        this.f9223f = 0;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    @SuppressLint({"UnknownNullness"})
    public void onChanged(int i, int i2, Object obj) {
        int i3;
        if (this.f9223f == 3) {
            int i4 = this.f9224g;
            int i5 = this.f9225h;
            if (i <= i4 + i5 && (i3 = i + i2) >= i4 && this.f9226i == obj) {
                this.f9224g = Math.min(i, i4);
                this.f9225h = Math.max(i5 + i4, i3) - this.f9224g;
                return;
            }
        }
        dispatchLastEvent();
        this.f9224g = i;
        this.f9225h = i2;
        this.f9226i = obj;
        this.f9223f = 3;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onInserted(int i, int i2) {
        int i3;
        if (this.f9223f == 1 && i >= (i3 = this.f9224g)) {
            int i4 = this.f9225h;
            if (i <= i3 + i4) {
                this.f9225h = i4 + i2;
                this.f9224g = Math.min(i, i3);
                return;
            }
        }
        dispatchLastEvent();
        this.f9224g = i;
        this.f9225h = i2;
        this.f9223f = 1;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onMoved(int i, int i2) {
        dispatchLastEvent();
        this.f9222e.onMoved(i, i2);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onRemoved(int i, int i2) {
        int i3;
        if (this.f9223f == 2 && (i3 = this.f9224g) >= i && i3 <= i + i2) {
            this.f9225h += i2;
            this.f9224g = i;
        } else {
            dispatchLastEvent();
            this.f9224g = i;
            this.f9225h = i2;
            this.f9223f = 2;
        }
    }
}
