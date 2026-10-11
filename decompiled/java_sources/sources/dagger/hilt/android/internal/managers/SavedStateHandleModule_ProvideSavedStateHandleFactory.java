package dagger.hilt.android.internal.managers;

import androidx.lifecycle.SavedStateHandle;
import com.sunia.HTREnginev2.a1m;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import javax.inject.Provider;

@ScopeMetadata("dagger.hilt.android.scopes.ActivityRetainedScoped")
@DaggerGenerated
@QualifierMetadata({"dagger.hilt.android.lifecycle.ActivityRetainedSavedState"})
/* loaded from: classes10.dex */
public final class SavedStateHandleModule_ProvideSavedStateHandleFactory implements Factory<SavedStateHandle> {

    /* renamed from: a */
    public final Provider<SavedStateHandleHolder> f94515a;

    public SavedStateHandleModule_ProvideSavedStateHandleFactory(Provider<SavedStateHandleHolder> savedStateHandleHolderProvider) {
        this.f94515a = savedStateHandleHolderProvider;
    }

    public static SavedStateHandleModule_ProvideSavedStateHandleFactory create(Provider<SavedStateHandleHolder> savedStateHandleHolderProvider) {
        return new SavedStateHandleModule_ProvideSavedStateHandleFactory(savedStateHandleHolderProvider);
    }

    public static SavedStateHandle provideSavedStateHandle(SavedStateHandleHolder savedStateHandleHolder) {
        return (SavedStateHandle) Preconditions.checkNotNullFromProvides(a1m.m52932a(savedStateHandleHolder));
    }

    @Override // javax.inject.Provider
    public SavedStateHandle get() {
        return provideSavedStateHandle(this.f94515a.get());
    }
}
