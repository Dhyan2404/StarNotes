package dagger.hilt.android.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;

/* loaded from: classes10.dex */
public interface RetainedLifecycle {

    /* loaded from: classes10.dex */
    public interface OnClearedListener {
        void onCleared();
    }

    @MainThread
    void addOnClearedListener(@NonNull OnClearedListener listener);

    @MainThread
    void removeOnClearedListener(@NonNull OnClearedListener listener);
}
