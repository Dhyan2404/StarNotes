package org.apache.commons.text.similarity;

import org.apache.commons.lang3.Validate;

/* loaded from: classes12.dex */
public class EditDistanceFrom<R> {

    /* renamed from: a */
    public final EditDistance<R> f110052a;

    /* renamed from: b */
    public final CharSequence f110053b;

    public EditDistanceFrom(EditDistance<R> editDistance, CharSequence charSequence) {
        Validate.isTrue(editDistance != null, "The edit distance may not be null.", new Object[0]);
        this.f110052a = editDistance;
        this.f110053b = charSequence;
    }

    public R apply(CharSequence charSequence) {
        return this.f110052a.apply(this.f110053b, charSequence);
    }

    public EditDistance<R> getEditDistance() {
        return this.f110052a;
    }

    public CharSequence getLeft() {
        return this.f110053b;
    }
}
