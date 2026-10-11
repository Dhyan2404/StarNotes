package androidx.work;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.LiveData;
import com.google.android.material.motion.MotionUtils;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes3.dex */
public interface Operation {

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final State.IN_PROGRESS IN_PROGRESS;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final State.SUCCESS SUCCESS;

    /* loaded from: classes3.dex */
    public static abstract class State {

        /* loaded from: classes3.dex */
        public static final class FAILURE extends State {

            /* renamed from: a */
            public final Throwable f11404a;

            public FAILURE(@NonNull Throwable exception) {
                this.f11404a = exception;
            }

            @NonNull
            public Throwable getThrowable() {
                return this.f11404a;
            }

            @NonNull
            public String toString() {
                return "FAILURE (" + this.f11404a.getMessage() + MotionUtils.f31762d;
            }
        }

        /* loaded from: classes3.dex */
        public static final class IN_PROGRESS extends State {
            @NonNull
            public String toString() {
                return "IN_PROGRESS";
            }

            public IN_PROGRESS() {
            }
        }

        /* loaded from: classes3.dex */
        public static final class SUCCESS extends State {
            @NonNull
            public String toString() {
                return "SUCCESS";
            }

            public SUCCESS() {
            }
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public State() {
        }
    }

    static {
        SUCCESS = new State.SUCCESS();
        IN_PROGRESS = new State.IN_PROGRESS();
    }

    @NonNull
    ListenableFuture<State.SUCCESS> getResult();

    @NonNull
    LiveData<State> getState();
}
