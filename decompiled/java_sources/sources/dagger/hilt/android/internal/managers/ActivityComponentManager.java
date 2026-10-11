package dagger.hilt.android.internal.managers;

import android.app.Activity;
import android.app.Application;
import androidx.activity.ComponentActivity;
import dagger.hilt.EntryPoint;
import dagger.hilt.EntryPoints;
import dagger.hilt.InstallIn;
import dagger.hilt.android.components.ActivityRetainedComponent;
import dagger.hilt.android.internal.builders.ActivityComponentBuilder;
import dagger.hilt.internal.GeneratedComponentManager;

/* loaded from: classes10.dex */
public class ActivityComponentManager implements GeneratedComponentManager<Object> {
    protected final Activity activity;

    /* renamed from: e */
    public volatile Object f94494e;

    /* renamed from: f */
    public final Object f94495f = new Object();

    /* renamed from: g */
    public final GeneratedComponentManager<ActivityRetainedComponent> f94496g;

    @EntryPoint
    @InstallIn({ActivityRetainedComponent.class})
    /* loaded from: classes10.dex */
    public interface ActivityComponentBuilderEntryPoint {
        ActivityComponentBuilder activityComponentBuilder();
    }

    public ActivityComponentManager(Activity activity) {
        this.activity = activity;
        this.f94496g = new ActivityRetainedComponentManager((ComponentActivity) activity);
    }

    public Object createComponent() {
        String str;
        if (this.activity.getApplication() instanceof GeneratedComponentManager) {
            return ((ActivityComponentBuilderEntryPoint) EntryPoints.get(this.f94496g, ActivityComponentBuilderEntryPoint.class)).activityComponentBuilder().activity(this.activity).build();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Hilt Activity must be attached to an @HiltAndroidApp Application. ");
        if (Application.class.equals(this.activity.getApplication().getClass())) {
            str = "Did you forget to specify your Application's class name in your manifest's <application />'s android:name attribute?";
        } else {
            str = "Found: " + this.activity.getApplication().getClass();
        }
        sb.append(str);
        throw new IllegalStateException(sb.toString());
    }

    @Override // dagger.hilt.internal.GeneratedComponentManager
    public Object generatedComponent() {
        if (this.f94494e == null) {
            synchronized (this.f94495f) {
                if (this.f94494e == null) {
                    this.f94494e = createComponent();
                }
            }
        }
        return this.f94494e;
    }

    public final SavedStateHandleHolder getSavedStateHandleHolder() {
        return ((ActivityRetainedComponentManager) this.f94496g).m60881c();
    }
}
