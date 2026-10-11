package com.google.mlkit.vision.digitalink;

import androidx.annotation.Nullable;
import com.google.mlkit.vision.digitalink.RecognitionContext;
import com.sunia.HTREnginev2.vlp;

/* renamed from: com.google.mlkit.vision.digitalink.e */
/* loaded from: classes6.dex */
public final class C6626e extends RecognitionContext.Builder {

    /* renamed from: a */
    public String f36779a;

    /* renamed from: b */
    public WritingArea f36780b;

    @Override // com.google.mlkit.vision.digitalink.RecognitionContext.Builder
    public final RecognitionContext build() {
        String str = this.f36779a;
        if (str != null) {
            return new vlp(str, this.f36780b, null);
        }
        throw new IllegalStateException("Missing required properties: preContext");
    }

    @Override // com.google.mlkit.vision.digitalink.RecognitionContext.Builder
    public final RecognitionContext.Builder setPreContext(String str) {
        if (str == null) {
            throw new NullPointerException("Null preContext");
        }
        this.f36779a = str;
        return this;
    }

    @Override // com.google.mlkit.vision.digitalink.RecognitionContext.Builder
    public final RecognitionContext.Builder setWritingArea(@Nullable WritingArea writingArea) {
        this.f36780b = writingArea;
        return this;
    }
}
