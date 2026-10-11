package androidx.constraintlayout.core.state.helpers;

import androidx.constraintlayout.core.state.Reference;
import androidx.constraintlayout.core.state.State;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.Guideline;

/* loaded from: classes3.dex */
public class GuidelineReference implements Facade, Reference {

    /* renamed from: a */
    public final State f3194a;

    /* renamed from: b */
    public int f3195b;

    /* renamed from: c */
    public Guideline f3196c;

    /* renamed from: d */
    public int f3197d = -1;

    /* renamed from: e */
    public int f3198e = -1;

    /* renamed from: f */
    public float f3199f = 0.0f;

    /* renamed from: g */
    public Object f3200g;

    public GuidelineReference(State state) {
        this.f3194a = state;
    }

    @Override // androidx.constraintlayout.core.state.helpers.Facade, androidx.constraintlayout.core.state.Reference
    public void apply() {
        this.f3196c.setOrientation(this.f3195b);
        int i = this.f3197d;
        if (i != -1) {
            this.f3196c.setGuideBegin(i);
            return;
        }
        int i2 = this.f3198e;
        if (i2 != -1) {
            this.f3196c.setGuideEnd(i2);
        } else {
            this.f3196c.setGuidePercent(this.f3199f);
        }
    }

    public GuidelineReference end(Object obj) {
        this.f3197d = -1;
        this.f3198e = this.f3194a.convertDimension(obj);
        this.f3199f = 0.0f;
        return this;
    }

    @Override // androidx.constraintlayout.core.state.helpers.Facade, androidx.constraintlayout.core.state.Reference
    public ConstraintWidget getConstraintWidget() {
        if (this.f3196c == null) {
            this.f3196c = new Guideline();
        }
        return this.f3196c;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public Facade getFacade() {
        return null;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public Object getKey() {
        return this.f3200g;
    }

    public int getOrientation() {
        return this.f3195b;
    }

    public GuidelineReference percent(float f) {
        this.f3197d = -1;
        this.f3198e = -1;
        this.f3199f = f;
        return this;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public void setConstraintWidget(ConstraintWidget constraintWidget) {
        if (constraintWidget instanceof Guideline) {
            this.f3196c = (Guideline) constraintWidget;
        } else {
            this.f3196c = null;
        }
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public void setKey(Object obj) {
        this.f3200g = obj;
    }

    public void setOrientation(int i) {
        this.f3195b = i;
    }

    public GuidelineReference start(Object obj) {
        this.f3197d = this.f3194a.convertDimension(obj);
        this.f3198e = -1;
        this.f3199f = 0.0f;
        return this;
    }
}
