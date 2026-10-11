package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.constraintlayout.motion.widget.MotionHelper;
import androidx.constraintlayout.widget.C0503R;

/* loaded from: classes3.dex */
public class MotionEffect extends MotionHelper {
    public static final int AUTO = -1;
    public static final int EAST = 2;
    public static final int NORTH = 0;
    public static final int SOUTH = 1;
    public static final String TAG = "FadeMove";
    public static final int WEST = 3;

    /* renamed from: q */
    public static final int f3487q = -1;

    /* renamed from: i */
    public float f3488i;

    /* renamed from: j */
    public int f3489j;

    /* renamed from: k */
    public int f3490k;

    /* renamed from: l */
    public int f3491l;

    /* renamed from: m */
    public int f3492m;

    /* renamed from: n */
    public boolean f3493n;

    /* renamed from: o */
    public int f3494o;

    /* renamed from: p */
    public int f3495p;

    public MotionEffect(Context context) {
        super(context);
        this.f3488i = 0.1f;
        this.f3489j = 49;
        this.f3490k = 50;
        this.f3491l = 0;
        this.f3492m = 0;
        this.f3493n = true;
        this.f3494o = -1;
        this.f3495p = -1;
    }

    /* renamed from: g */
    public final void m1703g(Context context, AttributeSet attrs) {
        if (attrs != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, C0503R.styleable.MotionEffect);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0503R.styleable.MotionEffect_motionEffect_start) {
                    int i2 = obtainStyledAttributes.getInt(index, this.f3489j);
                    this.f3489j = i2;
                    this.f3489j = Math.max(Math.min(i2, 99), 0);
                } else if (index == C0503R.styleable.MotionEffect_motionEffect_end) {
                    int i3 = obtainStyledAttributes.getInt(index, this.f3490k);
                    this.f3490k = i3;
                    this.f3490k = Math.max(Math.min(i3, 99), 0);
                } else if (index == C0503R.styleable.MotionEffect_motionEffect_translationX) {
                    this.f3491l = obtainStyledAttributes.getDimensionPixelOffset(index, this.f3491l);
                } else if (index == C0503R.styleable.MotionEffect_motionEffect_translationY) {
                    this.f3492m = obtainStyledAttributes.getDimensionPixelOffset(index, this.f3492m);
                } else if (index == C0503R.styleable.MotionEffect_motionEffect_alpha) {
                    this.f3488i = obtainStyledAttributes.getFloat(index, this.f3488i);
                } else if (index == C0503R.styleable.MotionEffect_motionEffect_move) {
                    this.f3495p = obtainStyledAttributes.getInt(index, this.f3495p);
                } else if (index == C0503R.styleable.MotionEffect_motionEffect_strict) {
                    this.f3493n = obtainStyledAttributes.getBoolean(index, this.f3493n);
                } else if (index == C0503R.styleable.MotionEffect_motionEffect_viewTransition) {
                    this.f3494o = obtainStyledAttributes.getResourceId(index, this.f3494o);
                }
            }
            int i4 = this.f3489j;
            int i5 = this.f3490k;
            if (i4 == i5) {
                if (i4 > 0) {
                    this.f3489j = i4 - 1;
                } else {
                    this.f3490k = i5 + 1;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelper, androidx.constraintlayout.motion.widget.MotionHelperInterface
    public boolean isDecorator() {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x01ba, code lost:
    
        if (r15 == 0.0f) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0186, code lost:
    
        if (r14 == 0.0f) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x019a, code lost:
    
        if (r14 == 0.0f) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01aa, code lost:
    
        if (r15 == 0.0f) goto L56;
     */
    @Override // androidx.constraintlayout.motion.widget.MotionHelper, androidx.constraintlayout.motion.widget.MotionHelperInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPreSetup(androidx.constraintlayout.motion.widget.MotionLayout r22, java.util.HashMap<android.view.View, androidx.constraintlayout.motion.widget.MotionController> r23) {
        /*
            Method dump skipped, instructions count: 500
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.helper.widget.MotionEffect.onPreSetup(androidx.constraintlayout.motion.widget.MotionLayout, java.util.HashMap):void");
    }

    public MotionEffect(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f3488i = 0.1f;
        this.f3489j = 49;
        this.f3490k = 50;
        this.f3491l = 0;
        this.f3492m = 0;
        this.f3493n = true;
        this.f3494o = -1;
        this.f3495p = -1;
        m1703g(context, attrs);
    }

    public MotionEffect(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f3488i = 0.1f;
        this.f3489j = 49;
        this.f3490k = 50;
        this.f3491l = 0;
        this.f3492m = 0;
        this.f3493n = true;
        this.f3494o = -1;
        this.f3495p = -1;
        m1703g(context, attrs);
    }
}
