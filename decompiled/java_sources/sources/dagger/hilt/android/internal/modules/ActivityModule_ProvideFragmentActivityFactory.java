package dagger.hilt.android.internal.modules;

import android.app.Activity;
import androidx.fragment.app.FragmentActivity;
import com.sunia.HTREnginev2.AbstractC14226p6;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import javax.inject.Provider;

@ScopeMetadata("dagger.Reusable")
@DaggerGenerated
@QualifierMetadata
/* loaded from: classes10.dex */
public final class ActivityModule_ProvideFragmentActivityFactory implements Factory<FragmentActivity> {

    /* renamed from: a */
    public final Provider<Activity> f94527a;

    public ActivityModule_ProvideFragmentActivityFactory(Provider<Activity> activityProvider) {
        this.f94527a = activityProvider;
    }

    public static ActivityModule_ProvideFragmentActivityFactory create(Provider<Activity> activityProvider) {
        return new ActivityModule_ProvideFragmentActivityFactory(activityProvider);
    }

    public static FragmentActivity provideFragmentActivity(Activity activity) {
        return (FragmentActivity) Preconditions.checkNotNullFromProvides(AbstractC14226p6.m56229b(activity));
    }

    @Override // javax.inject.Provider
    public FragmentActivity get() {
        return provideFragmentActivity(this.f94527a.get());
    }
}
