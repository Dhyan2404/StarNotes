package androidx.transition;

import android.graphics.Rect;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes3.dex */
public class SidePropagation extends VisibilityPropagation {

    /* renamed from: d */
    public float f10608d = 3.0f;

    /* renamed from: e */
    public int f10609e = 80;

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0017, code lost:
    
        r5 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0026, code lost:
    
        if ((r6.getLayoutDirection() == 1) != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0013, code lost:
    
        if ((r6.getLayoutDirection() == 1) != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0015, code lost:
    
        r5 = 5;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m6567b(android.view.View r6, int r7, int r8, int r9, int r10, int r11, int r12, int r13, int r14) {
        /*
            r5 = this;
            int r5 = r5.f10609e
            r0 = 8388611(0x800003, float:1.1754948E-38)
            r1 = 5
            r2 = 3
            r3 = 0
            r4 = 1
            if (r5 != r0) goto L19
            int r5 = r6.getLayoutDirection()
            if (r5 != r4) goto L12
            goto L13
        L12:
            r4 = r3
        L13:
            if (r4 == 0) goto L17
        L15:
            r5 = r1
            goto L29
        L17:
            r5 = r2
            goto L29
        L19:
            r0 = 8388613(0x800005, float:1.175495E-38)
            if (r5 != r0) goto L29
            int r5 = r6.getLayoutDirection()
            if (r5 != r4) goto L25
            goto L26
        L25:
            r4 = r3
        L26:
            if (r4 == 0) goto L15
            goto L17
        L29:
            if (r5 == r2) goto L51
            if (r5 == r1) goto L48
            r6 = 48
            if (r5 == r6) goto L3f
            r6 = 80
            if (r5 == r6) goto L36
            goto L59
        L36:
            int r8 = r8 - r12
            int r9 = r9 - r7
            int r5 = java.lang.Math.abs(r9)
            int r3 = r8 + r5
            goto L59
        L3f:
            int r14 = r14 - r8
            int r9 = r9 - r7
            int r5 = java.lang.Math.abs(r9)
            int r3 = r14 + r5
            goto L59
        L48:
            int r7 = r7 - r11
            int r10 = r10 - r8
            int r5 = java.lang.Math.abs(r10)
            int r3 = r7 + r5
            goto L59
        L51:
            int r13 = r13 - r7
            int r10 = r10 - r8
            int r5 = java.lang.Math.abs(r10)
            int r3 = r13 + r5
        L59:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.SidePropagation.m6567b(android.view.View, int, int, int, int, int, int, int, int):int");
    }

    /* renamed from: c */
    public final int m6568c(ViewGroup viewGroup) {
        int i = this.f10609e;
        return (i == 3 || i == 5 || i == 8388611 || i == 8388613) ? viewGroup.getWidth() : viewGroup.getHeight();
    }

    @Override // androidx.transition.TransitionPropagation
    public long getStartDelay(@NonNull ViewGroup viewGroup, @NonNull Transition transition, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        int i;
        int i2;
        int i3;
        TransitionValues transitionValues3 = transitionValues;
        if (transitionValues3 == null && transitionValues2 == null) {
            return 0L;
        }
        Rect epicenter = transition.getEpicenter();
        if (transitionValues2 == null || getViewVisibility(transitionValues3) == 0) {
            i = -1;
        } else {
            transitionValues3 = transitionValues2;
            i = 1;
        }
        int viewX = getViewX(transitionValues3);
        int viewY = getViewY(transitionValues3);
        int[] iArr = new int[2];
        viewGroup.getLocationOnScreen(iArr);
        int round = iArr[0] + Math.round(viewGroup.getTranslationX());
        int round2 = iArr[1] + Math.round(viewGroup.getTranslationY());
        int width = round + viewGroup.getWidth();
        int height = round2 + viewGroup.getHeight();
        if (epicenter != null) {
            i2 = epicenter.centerX();
            i3 = epicenter.centerY();
        } else {
            i2 = (round + width) / 2;
            i3 = (round2 + height) / 2;
        }
        float m6567b = m6567b(viewGroup, viewX, viewY, i2, i3, round, round2, width, height) / m6568c(viewGroup);
        long duration = transition.getDuration();
        if (duration < 0) {
            duration = 300;
        }
        return Math.round((((float) (duration * i)) / this.f10608d) * m6567b);
    }

    public void setPropagationSpeed(float f) {
        if (f == 0.0f) {
            throw new IllegalArgumentException("propagationSpeed may not be 0");
        }
        this.f10608d = f;
    }

    public void setSide(int i) {
        this.f10609e = i;
    }
}
