package com.sunia.HTREnginev2;

import androidx.annotation.OptIn;
import androidx.lifecycle.SavedStateHandle;
import dagger.Module;
import dagger.Provides;
import dagger.hilt.InstallIn;
import dagger.hilt.android.UnstableApi;
import dagger.hilt.android.components.ActivityRetainedComponent;
import dagger.hilt.android.internal.managers.SavedStateHandleHolder;
import dagger.hilt.android.lifecycle.ActivityRetainedSavedState;
import dagger.hilt.android.scopes.ActivityRetainedScoped;

@Module
@InstallIn({ActivityRetainedComponent.class})
/* loaded from: classes10.dex */
public abstract class a1m {
    @Provides
    @OptIn(markerClass = {UnstableApi.class})
    @ActivityRetainedScoped
    @ActivityRetainedSavedState
    /* renamed from: a */
    public static SavedStateHandle m52932a(SavedStateHandleHolder savedStateHandleHolder) {
        return savedStateHandleHolder.m60888a();
    }
}
