package dagger.hilt.android.internal.managers;

import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import dagger.hilt.android.internal.ThreadUtil;
import dagger.hilt.internal.Preconditions;

/* loaded from: classes10.dex */
public final class SavedStateHandleHolder {

    /* renamed from: a */
    public CreationExtras f94512a;

    /* renamed from: b */
    public SavedStateHandle f94513b;

    /* renamed from: c */
    public final boolean f94514c;

    public SavedStateHandleHolder(@Nullable CreationExtras extras) {
        this.f94514c = extras == null;
        this.f94512a = extras;
    }

    /* renamed from: a */
    public SavedStateHandle m60888a() {
        ThreadUtil.ensureMainThread();
        Preconditions.checkState(!this.f94514c, "Activity that does not extend ComponentActivity cannot use SavedStateHandle", new Object[0]);
        SavedStateHandle savedStateHandle = this.f94513b;
        if (savedStateHandle != null) {
            return savedStateHandle;
        }
        Preconditions.checkNotNull(this.f94512a, "The first access to SavedStateHandle should happen between super.onCreate() and super.onDestroy()");
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(this.f94512a);
        mutableCreationExtras.set(SavedStateHandleSupport.DEFAULT_ARGS_KEY, Bundle.EMPTY);
        this.f94512a = mutableCreationExtras;
        SavedStateHandle createSavedStateHandle = SavedStateHandleSupport.createSavedStateHandle(mutableCreationExtras);
        this.f94513b = createSavedStateHandle;
        this.f94512a = null;
        return createSavedStateHandle;
    }

    public void clear() {
        this.f94512a = null;
    }

    public boolean isInvalid() {
        return this.f94513b == null && this.f94512a == null;
    }

    public void setExtras(CreationExtras extras) {
        if (this.f94513b != null) {
            return;
        }
        this.f94512a = extras;
    }
}
