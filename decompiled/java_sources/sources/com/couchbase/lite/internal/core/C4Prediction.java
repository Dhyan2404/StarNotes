package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.Dictionary;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.PredictiveModel;
import com.couchbase.lite.internal.DbContext;
import com.couchbase.lite.internal.ShellDb;
import com.couchbase.lite.internal.core.C4Prediction;
import com.couchbase.lite.internal.core.impl.NativeC4Prediction;
import com.couchbase.lite.internal.core.peers.TaggedWeakPeerBinding;
import com.couchbase.lite.internal.exec.ClientTask;
import com.couchbase.lite.internal.fleece.FLEncoder;
import com.couchbase.lite.internal.fleece.FLSliceResult;
import com.couchbase.lite.internal.fleece.FLValue;
import com.couchbase.lite.internal.fleece.MRoot;
import com.couchbase.lite.internal.logging.Log;
import java.util.concurrent.Callable;

/* loaded from: classes4.dex */
public final class C4Prediction implements AutoCloseable {

    @NonNull
    private final NativeImpl impl;

    @NonNull
    private final PredictiveModel model;

    @NonNull
    private final String name;
    private final long token = PREDICTION_CONTEXT.reserveKey();
    private static final LogDomain LOG_DOMAIN = LogDomain.QUERY;

    @NonNull
    @VisibleForTesting
    static final TaggedWeakPeerBinding<C4Prediction> PREDICTION_CONTEXT = new TaggedWeakPeerBinding<>();

    @NonNull
    private static final NativeImpl NATIVE_IMPL = new NativeC4Prediction();

    /* loaded from: classes4.dex */
    public interface NativeImpl {
        void nRegisterModel(String str, long j);

        void nUnregisterModel(String str);
    }

    public C4Prediction(@NonNull NativeImpl nativeImpl, @NonNull String str, @NonNull PredictiveModel predictiveModel) {
        this.impl = nativeImpl;
        this.name = str;
        this.model = predictiveModel;
    }

    @NonNull
    public static C4Prediction create(@NonNull String str, @NonNull PredictiveModel predictiveModel) {
        return new C4Prediction(NATIVE_IMPL, str, predictiveModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Dictionary lambda$predict$0(long j, long j2) throws Exception {
        return this.model.predict((Dictionary) new MRoot(new DbContext(new ShellDb(j)), FLValue.getFLValue(j2), false).asNative());
    }

    @Nullable
    private FLSliceResult predict(final long j, final long j2) {
        ClientTask clientTask = new ClientTask(new Callable() { // from class: com.sunia.HTREnginev2.lz
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Dictionary lambda$predict$0;
                lambda$predict$0 = C4Prediction.this.lambda$predict$0(j2, j);
                return lambda$predict$0;
            }
        });
        clientTask.execute();
        Exception failure = clientTask.getFailure();
        if (failure != null) {
            Log.m9909w(LOG_DOMAIN, "Prediction model failed", failure);
            return null;
        }
        Dictionary dictionary = (Dictionary) clientTask.getResult();
        if (dictionary == null) {
            Log.m9908w(LOG_DOMAIN, "Null prediction");
            return null;
        }
        try {
            FLEncoder managedEncoder = FLEncoder.getManagedEncoder();
            try {
                dictionary.encodeTo(managedEncoder);
                FLSliceResult finish3 = managedEncoder.finish3();
                managedEncoder.close();
                return finish3;
            } finally {
            }
        } catch (LiteCoreException e) {
            Log.m9909w(LOG_DOMAIN, "Failed encoding a predictive result", e);
            return null;
        }
    }

    @Nullable
    public static FLSliceResult prediction(long j, long j2, long j3) {
        C4Prediction c4Prediction = (C4Prediction) PREDICTION_CONTEXT.getBinding(j);
        Log.m9899d(LOG_DOMAIN, "C4Prediction.prediction: %s (%x, %x)", c4Prediction, Long.valueOf(j2), Long.valueOf(j3));
        if (c4Prediction == null) {
            return null;
        }
        return c4Prediction.predict(j2, j3);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        PREDICTION_CONTEXT.unbind(this.token);
        this.impl.nUnregisterModel(this.name);
    }

    public void register() {
        PREDICTION_CONTEXT.bind(this.token, this);
        this.impl.nRegisterModel(this.name, this.token);
    }

    @NonNull
    public String toString() {
        return "C4Prediction{@" + this.token + ": " + this.name + ", " + this.model + "}";
    }
}
