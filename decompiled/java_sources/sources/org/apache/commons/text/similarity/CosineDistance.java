package org.apache.commons.text.similarity;

import com.sunia.HTREnginev2.kee;
import com.sunia.HTREnginev2.mjl;
import com.sunia.HTREnginev2.zin;

/* loaded from: classes12.dex */
public class CosineDistance implements EditDistance<Double> {

    /* renamed from: a */
    public final zin<CharSequence> f110050a = new mjl();

    /* renamed from: b */
    public final CosineSimilarity f110051b = new CosineSimilarity();

    @Override // org.apache.commons.text.similarity.EditDistance, org.apache.commons.text.similarity.SimilarityScore
    public Double apply(CharSequence charSequence, CharSequence charSequence2) {
        CharSequence[] mo55645a = this.f110050a.mo55645a(charSequence);
        CharSequence[] mo55645a2 = this.f110050a.mo55645a(charSequence2);
        return Double.valueOf(1.0d - this.f110051b.cosineSimilarity(kee.m55206a(mo55645a), kee.m55206a(mo55645a2)).doubleValue());
    }
}
