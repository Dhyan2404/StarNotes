package androidx.work;

import android.app.Notification;
import androidx.annotation.NonNull;

/* loaded from: classes3.dex */
public final class ForegroundInfo {

    /* renamed from: a */
    public final int f11388a;

    /* renamed from: b */
    public final int f11389b;

    /* renamed from: c */
    public final Notification f11390c;

    public ForegroundInfo(int notificationId, @NonNull Notification notification) {
        this(notificationId, notification, 0);
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || ForegroundInfo.class != o.getClass()) {
            return false;
        }
        ForegroundInfo foregroundInfo = (ForegroundInfo) o;
        if (this.f11388a == foregroundInfo.f11388a && this.f11389b == foregroundInfo.f11389b) {
            return this.f11390c.equals(foregroundInfo.f11390c);
        }
        return false;
    }

    public int getForegroundServiceType() {
        return this.f11389b;
    }

    @NonNull
    public Notification getNotification() {
        return this.f11390c;
    }

    public int getNotificationId() {
        return this.f11388a;
    }

    public int hashCode() {
        return (((this.f11388a * 31) + this.f11389b) * 31) + this.f11390c.hashCode();
    }

    public String toString() {
        return "ForegroundInfo{mNotificationId=" + this.f11388a + ", mForegroundServiceType=" + this.f11389b + ", mNotification=" + this.f11390c + '}';
    }

    public ForegroundInfo(int notificationId, @NonNull Notification notification, int foregroundServiceType) {
        this.f11388a = notificationId;
        this.f11390c = notification;
        this.f11389b = foregroundServiceType;
    }
}
