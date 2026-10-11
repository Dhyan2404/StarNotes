package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@FunctionalInterface
/* loaded from: classes4.dex */
public interface PredictiveModel {
    @Nullable
    Dictionary predict(@NonNull Dictionary dictionary);
}
