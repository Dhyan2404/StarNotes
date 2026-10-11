package androidx.transition;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;

/* loaded from: classes3.dex */
public class AutoTransition extends TransitionSet {
    public AutoTransition() {
        m6509O();
    }

    /* renamed from: O */
    public final void m6509O() {
        setOrdering(1);
        addTransition(new Fade(2)).addTransition(new ChangeBounds()).addTransition(new Fade(1));
    }

    public AutoTransition(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        m6509O();
    }
}
