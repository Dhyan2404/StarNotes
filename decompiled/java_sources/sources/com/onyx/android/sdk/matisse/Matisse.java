package com.onyx.android.sdk.matisse;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.onyx.android.sdk.matisse.p031ui.MatisseActivity;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Set;

/* loaded from: classes7.dex */
public final class Matisse {

    /* renamed from: a */
    public final WeakReference<Activity> f42694a;

    /* renamed from: b */
    public final WeakReference<Fragment> f42695b;

    public Matisse(Activity activity) {
        this(activity, null);
    }

    public static Matisse from(Activity activity) {
        return new Matisse(activity);
    }

    public static boolean obtainOriginalState(Intent intent) {
        return intent.getBooleanExtra("extra_result_original_enable", false);
    }

    public static List<String> obtainPathResult(Intent intent) {
        return intent.getStringArrayListExtra(MatisseActivity.EXTRA_RESULT_SELECTION_PATH);
    }

    public static List<Uri> obtainResult(Intent intent) {
        return intent.getParcelableArrayListExtra(MatisseActivity.EXTRA_RESULT_SELECTION);
    }

    @Nullable
    /* renamed from: a */
    public Activity m33408a() {
        return this.f42694a.get();
    }

    @Nullable
    /* renamed from: b */
    public Fragment m33409b() {
        WeakReference<Fragment> weakReference = this.f42695b;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public SelectionCreator choose(Set<MimeType> set) {
        return choose(set, true);
    }

    public Matisse(Fragment fragment) {
        this(fragment.getActivity(), fragment);
    }

    public static Matisse from(Fragment fragment) {
        return new Matisse(fragment);
    }

    public SelectionCreator choose(Set<MimeType> set, boolean z) {
        return new SelectionCreator(this, set, z);
    }

    public Matisse(Activity activity, Fragment fragment) {
        this.f42694a = new WeakReference<>(activity);
        this.f42695b = new WeakReference<>(fragment);
    }
}
