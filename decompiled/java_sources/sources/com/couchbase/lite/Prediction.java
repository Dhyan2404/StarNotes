package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.core.C4Prediction;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public final class Prediction {
    private final Map<String, C4Prediction> models = new HashMap();

    public synchronized void registerModel(@NonNull String str, @NonNull PredictiveModel predictiveModel) {
        Preconditions.assertNotNull(str, "name");
        Preconditions.assertNotNull(predictiveModel, "model");
        unregisterModel(str);
        C4Prediction create = C4Prediction.create(str, predictiveModel);
        this.models.put(str, create);
        create.register();
    }

    public synchronized void unregisterModel(@NonNull String str) {
        Preconditions.assertNotNull(str, "name");
        C4Prediction remove = this.models.remove(str);
        if (remove != null) {
            remove.close();
        }
    }
}
