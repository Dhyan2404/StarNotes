package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.mlkit.vision.digitalink.RecognitionContext;
import com.google.mlkit.vision.digitalink.WritingArea;

/* loaded from: classes6.dex */
public final class vlp extends RecognitionContext {

    /* renamed from: a */
    public final String f87680a;

    /* renamed from: b */
    public final WritingArea f87681b;

    public /* synthetic */ vlp(String str, WritingArea writingArea, com.google.mlkit.vision.digitalink.zzh zzhVar) {
        this.f87680a = str;
        this.f87681b = writingArea;
    }

    public final boolean equals(Object obj) {
        WritingArea writingArea;
        if (obj == this) {
            return true;
        }
        if (obj instanceof RecognitionContext) {
            RecognitionContext recognitionContext = (RecognitionContext) obj;
            if (this.f87680a.equals(recognitionContext.getPreContext()) && ((writingArea = this.f87681b) != null ? writingArea.equals(recognitionContext.getWritingArea()) : recognitionContext.getWritingArea() == null)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.mlkit.vision.digitalink.RecognitionContext
    @NonNull
    public final String getPreContext() {
        return this.f87680a;
    }

    @Override // com.google.mlkit.vision.digitalink.RecognitionContext
    @Nullable
    public final WritingArea getWritingArea() {
        return this.f87681b;
    }

    public final int hashCode() {
        int hashCode = this.f87680a.hashCode() ^ 1000003;
        WritingArea writingArea = this.f87681b;
        return (writingArea == null ? 0 : writingArea.hashCode()) ^ (hashCode * 1000003);
    }

    public final String toString() {
        return "RecognitionContext{preContext=" + this.f87680a + ", writingArea=" + String.valueOf(this.f87681b) + "}";
    }
}
