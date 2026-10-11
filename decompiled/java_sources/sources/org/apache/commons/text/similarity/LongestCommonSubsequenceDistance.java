package org.apache.commons.text.similarity;

/* loaded from: classes12.dex */
public class LongestCommonSubsequenceDistance implements EditDistance<Integer> {

    /* renamed from: a */
    public final LongestCommonSubsequence f110064a = new LongestCommonSubsequence();

    @Override // org.apache.commons.text.similarity.EditDistance, org.apache.commons.text.similarity.SimilarityScore
    public Integer apply(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence != null && charSequence2 != null) {
            return Integer.valueOf((charSequence.length() + charSequence2.length()) - (this.f110064a.apply(charSequence, charSequence2).intValue() * 2));
        }
        throw new IllegalArgumentException("Inputs must not be null");
    }
}
