package com.sunia.HTREnginev2;

import android.app.Activity;
import android.content.Context;
import androidx.fragment.app.FragmentActivity;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.Reusable;
import dagger.hilt.InstallIn;
import dagger.hilt.android.components.ActivityComponent;
import dagger.hilt.android.qualifiers.ActivityContext;

@Module
@InstallIn({ActivityComponent.class})
/* renamed from: com.sunia.HTREnginev2.p6 */
/* loaded from: classes10.dex */
public abstract class AbstractC14226p6 {
    @Provides
    @Reusable
    /* renamed from: b */
    public static FragmentActivity m56229b(Activity activity) {
        try {
            return (FragmentActivity) activity;
        } catch (ClassCastException e) {
            throw new IllegalStateException("Expected activity to be a FragmentActivity: " + activity, e);
        }
    }

    @Binds
    @ActivityContext
    /* renamed from: a */
    public abstract Context m56230a(Activity activity);
}
