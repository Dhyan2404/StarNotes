package com.google.mlkit.vision.digitalink;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes6.dex */
public abstract class RecognitionContext {

    /* loaded from: classes6.dex */
    public static abstract class Builder {
        @NonNull
        public abstract RecognitionContext build();

        @NonNull
        public abstract Builder setPreContext(@NonNull String str);

        @NonNull
        public abstract Builder setWritingArea(@Nullable WritingArea writingArea);
    }

    @NonNull
    public static Builder builder() {
        return new C6626e();
    }

    @NonNull
    public abstract String getPreContext();

    @Nullable
    public abstract WritingArea getWritingArea();
}
