package androidx.core.view;

import android.graphics.Point;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.view.DragStartHelper;

/* loaded from: classes3.dex */
public class DragStartHelper {

    /* renamed from: a */
    public final View f5821a;

    /* renamed from: b */
    public final OnDragStartListener f5822b;

    /* renamed from: c */
    public int f5823c;

    /* renamed from: d */
    public int f5824d;

    /* renamed from: e */
    public boolean f5825e;

    /* renamed from: f */
    public final View.OnLongClickListener f5826f = new View.OnLongClickListener() { // from class: com.sunia.HTREnginev2.rhf
        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            return DragStartHelper.this.onLongClick(view);
        }
    };

    /* renamed from: g */
    public final View.OnTouchListener f5827g = new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.shf
        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            return DragStartHelper.this.onTouch(view, motionEvent);
        }
    };

    /* loaded from: classes3.dex */
    public interface OnDragStartListener {
        boolean onDragStart(@NonNull View view, @NonNull DragStartHelper dragStartHelper);
    }

    public DragStartHelper(@NonNull View view, @NonNull OnDragStartListener onDragStartListener) {
        this.f5821a = view;
        this.f5822b = onDragStartListener;
    }

    public void attach() {
        this.f5821a.setOnLongClickListener(this.f5826f);
        this.f5821a.setOnTouchListener(this.f5827g);
    }

    public void detach() {
        this.f5821a.setOnLongClickListener(null);
        this.f5821a.setOnTouchListener(null);
    }

    public void getTouchPosition(@NonNull Point point) {
        point.set(this.f5823c, this.f5824d);
    }

    public boolean onLongClick(@NonNull View view) {
        if (this.f5825e) {
            return true;
        }
        boolean onDragStart = this.f5822b.onDragStart(view, this);
        this.f5825e = onDragStart;
        return onDragStart;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0018, code lost:
    
        if (r2 != 3) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(@androidx.annotation.NonNull android.view.View r7, @androidx.annotation.NonNull android.view.MotionEvent r8) {
        /*
            r6 = this;
            float r0 = r8.getX()
            int r0 = (int) r0
            float r1 = r8.getY()
            int r1 = (int) r1
            int r2 = r8.getAction()
            r3 = 0
            if (r2 == 0) goto L49
            r4 = 1
            if (r2 == r4) goto L46
            r5 = 2
            if (r2 == r5) goto L1b
            r7 = 3
            if (r2 == r7) goto L46
            goto L4d
        L1b:
            r2 = 8194(0x2002, float:1.1482E-41)
            boolean r2 = androidx.core.view.MotionEventCompat.isFromSource(r8, r2)
            if (r2 == 0) goto L4d
            int r8 = r8.getButtonState()
            r8 = r8 & r4
            if (r8 != 0) goto L2b
            goto L4d
        L2b:
            boolean r8 = r6.f5825e
            if (r8 == 0) goto L30
            goto L4d
        L30:
            int r8 = r6.f5823c
            if (r8 != r0) goto L39
            int r8 = r6.f5824d
            if (r8 != r1) goto L39
            goto L4d
        L39:
            r6.f5823c = r0
            r6.f5824d = r1
            androidx.core.view.DragStartHelper$OnDragStartListener r8 = r6.f5822b
            boolean r7 = r8.onDragStart(r7, r6)
            r6.f5825e = r7
            return r7
        L46:
            r6.f5825e = r3
            goto L4d
        L49:
            r6.f5823c = r0
            r6.f5824d = r1
        L4d:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.view.DragStartHelper.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
