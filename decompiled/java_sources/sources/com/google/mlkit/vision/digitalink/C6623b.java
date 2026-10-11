package com.google.mlkit.vision.digitalink;

import androidx.annotation.NonNull;
import com.google.mlkit.vision.digitalink.Ink;
import java.util.List;

/* renamed from: com.google.mlkit.vision.digitalink.b */
/* loaded from: classes6.dex */
public final class C6623b extends Ink {

    /* renamed from: a */
    public final List f36759a;

    public C6623b(List list) {
        if (list == null) {
            throw new NullPointerException("Null strokes");
        }
        this.f36759a = list;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Ink) {
            return this.f36759a.equals(((Ink) obj).getStrokes());
        }
        return false;
    }

    @Override // com.google.mlkit.vision.digitalink.Ink
    @NonNull
    public final List<Ink.Stroke> getStrokes() {
        return this.f36759a;
    }

    public final int hashCode() {
        return this.f36759a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "Ink{strokes=" + this.f36759a.toString() + "}";
    }
}
