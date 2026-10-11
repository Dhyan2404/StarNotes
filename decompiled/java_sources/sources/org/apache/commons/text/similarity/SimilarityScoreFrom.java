package org.apache.commons.text.similarity;

import org.apache.commons.lang3.Validate;

/* loaded from: classes12.dex */
public class SimilarityScoreFrom<R> {

    /* renamed from: a */
    public final SimilarityScore<R> f110065a;

    /* renamed from: b */
    public final CharSequence f110066b;

    public SimilarityScoreFrom(SimilarityScore<R> similarityScore, CharSequence charSequence) {
        Validate.isTrue(similarityScore != null, "The edit distance may not be null.", new Object[0]);
        this.f110065a = similarityScore;
        this.f110066b = charSequence;
    }

    public R apply(CharSequence charSequence) {
        return this.f110065a.apply(this.f110066b, charSequence);
    }

    public CharSequence getLeft() {
        return this.f110066b;
    }

    public SimilarityScore<R> getSimilarityScore() {
        return this.f110065a;
    }
}
