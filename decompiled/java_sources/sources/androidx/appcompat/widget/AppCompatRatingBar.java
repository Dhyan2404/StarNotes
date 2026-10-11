package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.C0118R;
import com.sunia.HTREnginev2.C14295qc;

/* loaded from: classes3.dex */
public class AppCompatRatingBar extends RatingBar {

    /* renamed from: e */
    public final C14295qc f1598e;

    public AppCompatRatingBar(@NonNull Context context) {
        this(context, null);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public synchronized void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        Bitmap m56674b = this.f1598e.m56674b();
        if (m56674b != null) {
            setMeasuredDimension(View.resolveSizeAndState(m56674b.getWidth() * getNumStars(), i, 0), getMeasuredHeight());
        }
    }

    public AppCompatRatingBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C0118R.attr.ratingBarStyle);
    }

    public AppCompatRatingBar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ThemeUtils.checkAppCompatTheme(this, getContext());
        C14295qc c14295qc = new C14295qc(this);
        this.f1598e = c14295qc;
        c14295qc.mo56675c(attributeSet, i);
    }
}
