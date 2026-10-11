package androidx.core.view;

import android.app.Activity;
import android.view.DragAndDropPermissions;
import android.view.DragEvent;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;

/* loaded from: classes3.dex */
public final class DragAndDropPermissionsCompat {

    /* renamed from: a */
    public final DragAndDropPermissions f5820a;

    @RequiresApi(24)
    /* renamed from: androidx.core.view.DragAndDropPermissionsCompat$a */
    /* loaded from: classes3.dex */
    public static class C0769a {
        @DoNotInline
        /* renamed from: a */
        public static void m3324a(DragAndDropPermissions dragAndDropPermissions) {
            dragAndDropPermissions.release();
        }

        @DoNotInline
        /* renamed from: b */
        public static DragAndDropPermissions m3325b(Activity activity, DragEvent dragEvent) {
            return activity.requestDragAndDropPermissions(dragEvent);
        }
    }

    public DragAndDropPermissionsCompat(DragAndDropPermissions dragAndDropPermissions) {
        this.f5820a = dragAndDropPermissions;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static DragAndDropPermissionsCompat request(@NonNull Activity activity, @NonNull DragEvent dragEvent) {
        DragAndDropPermissions m3325b = C0769a.m3325b(activity, dragEvent);
        if (m3325b != null) {
            return new DragAndDropPermissionsCompat(m3325b);
        }
        return null;
    }

    public void release() {
        C0769a.m3324a(this.f5820a);
    }
}
