package androidx.input.motionprediction.kalman.matrix;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class DVector2 {

    /* renamed from: a1 */
    public double f7785a1;

    /* renamed from: a2 */
    public double f7786a2;

    public double magnitude() {
        return Math.hypot(this.f7785a1, this.f7786a2);
    }

    public void set(@NonNull DVector2 dVector2) {
        this.f7785a1 = dVector2.f7785a1;
        this.f7786a2 = dVector2.f7786a2;
    }
}
