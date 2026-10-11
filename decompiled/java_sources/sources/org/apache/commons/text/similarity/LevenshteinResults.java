package org.apache.commons.text.similarity;

import java.util.Objects;

/* loaded from: classes12.dex */
public class LevenshteinResults {

    /* renamed from: a */
    public final Integer f110060a;

    /* renamed from: b */
    public final Integer f110061b;

    /* renamed from: c */
    public final Integer f110062c;

    /* renamed from: d */
    public final Integer f110063d;

    public LevenshteinResults(Integer num, Integer num2, Integer num3, Integer num4) {
        this.f110060a = num;
        this.f110061b = num2;
        this.f110062c = num3;
        this.f110063d = num4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LevenshteinResults levenshteinResults = (LevenshteinResults) obj;
        return Objects.equals(this.f110060a, levenshteinResults.f110060a) && Objects.equals(this.f110061b, levenshteinResults.f110061b) && Objects.equals(this.f110062c, levenshteinResults.f110062c) && Objects.equals(this.f110063d, levenshteinResults.f110063d);
    }

    public Integer getDeleteCount() {
        return this.f110062c;
    }

    public Integer getDistance() {
        return this.f110060a;
    }

    public Integer getInsertCount() {
        return this.f110061b;
    }

    public Integer getSubstituteCount() {
        return this.f110063d;
    }

    public int hashCode() {
        return Objects.hash(this.f110060a, this.f110061b, this.f110062c, this.f110063d);
    }

    public String toString() {
        return "Distance: " + this.f110060a + ", Insert: " + this.f110061b + ", Delete: " + this.f110062c + ", Substitute: " + this.f110063d;
    }
}
