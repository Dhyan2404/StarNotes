package com.google.mlkit.vision.digitalink;

import androidx.annotation.NonNull;
import java.util.List;

/* loaded from: classes6.dex */
public class RecognitionResult {

    /* renamed from: a */
    public final List f36752a;

    public RecognitionResult(@NonNull List list) {
        this.f36752a = list;
    }

    @NonNull
    public List<RecognitionCandidate> getCandidates() {
        return this.f36752a;
    }
}
