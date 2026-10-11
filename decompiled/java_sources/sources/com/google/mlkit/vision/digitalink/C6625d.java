package com.google.mlkit.vision.digitalink;

import androidx.annotation.NonNull;
import com.google.mlkit.vision.digitalink.Ink;
import java.util.List;

/* renamed from: com.google.mlkit.vision.digitalink.d */
/* loaded from: classes6.dex */
public final class C6625d extends Ink.Stroke {

    /* renamed from: a */
    public final List f36763a;

    public C6625d(List list) {
        if (list == null) {
            throw new NullPointerException("Null points");
        }
        this.f36763a = list;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Ink.Stroke) {
            return this.f36763a.equals(((Ink.Stroke) obj).getPoints());
        }
        return false;
    }

    @Override // com.google.mlkit.vision.digitalink.Ink.Stroke
    @NonNull
    public final List<Ink.Point> getPoints() {
        return this.f36763a;
    }

    public final int hashCode() {
        return this.f36763a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "Stroke{points=" + this.f36763a.toString() + "}";
    }
}
