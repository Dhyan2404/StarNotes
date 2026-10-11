package androidx.work;

import android.annotation.SuppressLint;
import android.net.Uri;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.credentials.provider.utils.PrivilegedApp;
import androidx.room.ColumnInfo;
import androidx.room.Ignore;
import androidx.work.impl.utils.DurationApi26Impl;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.time.Duration;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u0000 .2\u00020\u0001:\u0003/.0B1\b\u0017\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b)\u0010*B;\b\u0017\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b)\u0010+B_\b\u0017\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0019\u0012\b\b\u0002\u0010!\u001a\u00020\u0019\u0012\u000e\b\u0002\u0010(\u001a\b\u0012\u0004\u0012\u00020#0\"¢\u0006\u0004\b)\u0010,B\u0011\b\u0017\u0012\u0006\u0010\b\u001a\u00020\u0000¢\u0006\u0004\b)\u0010-J\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0007J\u0006\u0010\u0005\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0007J\u0013\u0010\t\u001a\u00020\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u0001H\u0097\u0002J\b\u0010\u000b\u001a\u00020\nH\u0017J\b\u0010\r\u001a\u00020\fH\u0017R\u001a\u0010\u0013\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0004\u001a\u00020\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0015R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0015R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0015R\u001a\u0010\u001e\u001a\u00020\u00198GX\u0087\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u001a\u0010!\u001a\u00020\u00198GX\u0087\u0004¢\u0006\f\n\u0004\b\u001f\u0010\u001b\u001a\u0004\b \u0010\u001dR \u0010(\u001a\b\u0012\u0004\u0012\u00020#0\"8GX\u0087\u0004¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'¨\u00061"}, m61528d2 = {"Landroidx/work/Constraints;", "", "", "requiresCharging", "requiresDeviceIdle", "requiresBatteryNotLow", "requiresStorageNotLow", "hasContentUriTriggers", Constants.ATTRVAL_OTHER, "equals", "", "hashCode", "", "toString", "Landroidx/work/NetworkType;", "a", "Landroidx/work/NetworkType;", "getRequiredNetworkType", "()Landroidx/work/NetworkType;", "requiredNetworkType", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "c", "d", "e", "", C6997f.f39671c, "J", "getContentTriggerUpdateDelayMillis", "()J", "contentTriggerUpdateDelayMillis", C6998g.f39679a, "getContentTriggerMaxDelayMillis", "contentTriggerMaxDelayMillis", "", "Landroidx/work/Constraints$ContentUriTrigger;", C6999h.f39688c, "Ljava/util/Set;", "getContentUriTriggers", "()Ljava/util/Set;", "contentUriTriggers", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/work/NetworkType;ZZZ)V", "(Landroidx/work/NetworkType;ZZZZ)V", "(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V", "(Landroidx/work/Constraints;)V", "Companion", "Builder", "ContentUriTrigger", "work-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class Constraints {

    @JvmField
    @NotNull
    public static final Constraints NONE = new Constraints(null, false, false, false, 15, null);

    /* renamed from: a, reason: from kotlin metadata */
    @ColumnInfo(name = "required_network_type")
    @NotNull
    public final NetworkType requiredNetworkType;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @ColumnInfo(name = "requires_charging")
    public final boolean requiresCharging;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @ColumnInfo(name = "requires_device_idle")
    public final boolean requiresDeviceIdle;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @ColumnInfo(name = "requires_battery_not_low")
    public final boolean requiresBatteryNotLow;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    @ColumnInfo(name = "requires_storage_not_low")
    public final boolean requiresStorageNotLow;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    @ColumnInfo(name = "trigger_content_update_delay")
    public final long contentTriggerUpdateDelayMillis;

    /* renamed from: g, reason: from kotlin metadata and from toString */
    @ColumnInfo(name = "trigger_max_content_delay")
    public final long contentTriggerMaxDelayMillis;

    /* renamed from: h, reason: from kotlin metadata and from toString */
    @ColumnInfo(name = "content_uri_triggers")
    @NotNull
    public final Set<ContentUriTrigger> contentUriTriggers;

    @Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b-\u0010.B\u0011\b\u0017\u0012\u0006\u0010/\u001a\u00020\u0019¢\u0006\u0004\b-\u00100J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0002H\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0002J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0002J\u0018\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0002H\u0007J\u0018\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0007J\u0010\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0017H\u0007J\u0018\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0007J\u0010\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0017H\u0007J\u0006\u0010\u001a\u001a\u00020\u0019R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u0005\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001cR\u0016\u0010 \u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010\n\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\u001cR\u0016\u0010\f\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010\u001cR\u0016\u0010%\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010'\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010$R\u001c\u0010,\u001a\b\u0012\u0004\u0012\u00020)0(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+¨\u00061"}, m61528d2 = {"Landroidx/work/Constraints$Builder;", "", "", "requiresCharging", "setRequiresCharging", "requiresDeviceIdle", "setRequiresDeviceIdle", "Landroidx/work/NetworkType;", "networkType", "setRequiredNetworkType", "requiresBatteryNotLow", "setRequiresBatteryNotLow", "requiresStorageNotLow", "setRequiresStorageNotLow", "Landroid/net/Uri;", "uri", "triggerForDescendants", "addContentUriTrigger", "", "duration", "Ljava/util/concurrent/TimeUnit;", "timeUnit", "setTriggerContentUpdateDelay", "Ljava/time/Duration;", "setTriggerContentMaxDelay", "Landroidx/work/Constraints;", PrivilegedApp.f6529f, "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "b", "c", "Landroidx/work/NetworkType;", "requiredNetworkType", "d", "e", C6997f.f39671c, "J", "triggerContentUpdateDelay", C6998g.f39679a, "triggerContentMaxDelay", "", "Landroidx/work/Constraints$ContentUriTrigger;", C6999h.f39688c, "Ljava/util/Set;", "contentUriTriggers", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "constraints", "(Landroidx/work/Constraints;)V", "work-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a, reason: from kotlin metadata */
        public boolean requiresCharging;

        /* renamed from: b, reason: from kotlin metadata */
        public boolean requiresDeviceIdle;

        /* renamed from: c, reason: from kotlin metadata */
        @NotNull
        public NetworkType requiredNetworkType;

        /* renamed from: d, reason: from kotlin metadata */
        public boolean requiresBatteryNotLow;

        /* renamed from: e, reason: from kotlin metadata */
        public boolean requiresStorageNotLow;

        /* renamed from: f, reason: from kotlin metadata */
        public long triggerContentUpdateDelay;

        /* renamed from: g, reason: from kotlin metadata */
        public long triggerContentMaxDelay;

        /* renamed from: h, reason: from kotlin metadata */
        @NotNull
        public Set<ContentUriTrigger> contentUriTriggers;

        public Builder() {
            this.requiredNetworkType = NetworkType.NOT_REQUIRED;
            this.triggerContentUpdateDelay = -1L;
            this.triggerContentMaxDelay = -1L;
            this.contentUriTriggers = new LinkedHashSet();
        }

        @RequiresApi(24)
        @NotNull
        public final Builder addContentUriTrigger(@NotNull Uri uri, boolean triggerForDescendants) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            this.contentUriTriggers.add(new ContentUriTrigger(uri, triggerForDescendants));
            return this;
        }

        @NotNull
        public final Constraints build() {
            Set set = CollectionsKt.toSet(this.contentUriTriggers);
            long j = this.triggerContentUpdateDelay;
            long j2 = this.triggerContentMaxDelay;
            return new Constraints(this.requiredNetworkType, this.requiresCharging, this.requiresDeviceIdle, this.requiresBatteryNotLow, this.requiresStorageNotLow, j, j2, set);
        }

        @NotNull
        public final Builder setRequiredNetworkType(@NotNull NetworkType networkType) {
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            this.requiredNetworkType = networkType;
            return this;
        }

        @NotNull
        public final Builder setRequiresBatteryNotLow(boolean requiresBatteryNotLow) {
            this.requiresBatteryNotLow = requiresBatteryNotLow;
            return this;
        }

        @NotNull
        public final Builder setRequiresCharging(boolean requiresCharging) {
            this.requiresCharging = requiresCharging;
            return this;
        }

        @RequiresApi(23)
        @NotNull
        public final Builder setRequiresDeviceIdle(boolean requiresDeviceIdle) {
            this.requiresDeviceIdle = requiresDeviceIdle;
            return this;
        }

        @NotNull
        public final Builder setRequiresStorageNotLow(boolean requiresStorageNotLow) {
            this.requiresStorageNotLow = requiresStorageNotLow;
            return this;
        }

        @RequiresApi(24)
        @NotNull
        public final Builder setTriggerContentMaxDelay(long duration, @NotNull TimeUnit timeUnit) {
            Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
            this.triggerContentMaxDelay = timeUnit.toMillis(duration);
            return this;
        }

        @RequiresApi(24)
        @NotNull
        public final Builder setTriggerContentUpdateDelay(long duration, @NotNull TimeUnit timeUnit) {
            Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
            this.triggerContentUpdateDelay = timeUnit.toMillis(duration);
            return this;
        }

        @RequiresApi(26)
        @NotNull
        public final Builder setTriggerContentMaxDelay(@NotNull Duration duration) {
            Intrinsics.checkNotNullParameter(duration, "duration");
            this.triggerContentMaxDelay = DurationApi26Impl.toMillisCompat(duration);
            return this;
        }

        @RequiresApi(26)
        @NotNull
        public final Builder setTriggerContentUpdateDelay(@NotNull Duration duration) {
            Intrinsics.checkNotNullParameter(duration, "duration");
            this.triggerContentUpdateDelay = DurationApi26Impl.toMillisCompat(duration);
            return this;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder(@NotNull Constraints constraints) {
            Intrinsics.checkNotNullParameter(constraints, "constraints");
            this.requiredNetworkType = NetworkType.NOT_REQUIRED;
            this.triggerContentUpdateDelay = -1L;
            this.triggerContentMaxDelay = -1L;
            this.contentUriTriggers = new LinkedHashSet();
            this.requiresCharging = constraints.getRequiresCharging();
            this.requiresDeviceIdle = constraints.getRequiresDeviceIdle();
            this.requiredNetworkType = constraints.getRequiredNetworkType();
            this.requiresBatteryNotLow = constraints.getRequiresBatteryNotLow();
            this.requiresStorageNotLow = constraints.getRequiresStorageNotLow();
            this.triggerContentUpdateDelay = constraints.getContentTriggerUpdateDelayMillis();
            this.triggerContentMaxDelay = constraints.getContentTriggerMaxDelayMillis();
            this.contentUriTriggers = CollectionsKt.toMutableSet(constraints.getContentUriTriggers());
        }
    }

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u0013\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0016R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u000f\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, m61528d2 = {"Landroidx/work/Constraints$ContentUriTrigger;", "", Constants.ATTRVAL_OTHER, "", "equals", "", "hashCode", "Landroid/net/Uri;", "a", "Landroid/net/Uri;", "getUri", "()Landroid/net/Uri;", "uri", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "isTriggeredForDescendants", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/net/Uri;Z)V", "work-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes3.dex */
    public static final class ContentUriTrigger {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final Uri uri;

        /* renamed from: b, reason: from kotlin metadata */
        public final boolean isTriggeredForDescendants;

        public ContentUriTrigger(@NotNull Uri uri, boolean z) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            this.uri = uri;
            this.isTriggeredForDescendants = z;
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!Intrinsics.areEqual(ContentUriTrigger.class, other != null ? other.getClass() : null)) {
                return false;
            }
            Intrinsics.checkNotNull(other, "null cannot be cast to non-null type androidx.work.Constraints.ContentUriTrigger");
            ContentUriTrigger contentUriTrigger = (ContentUriTrigger) other;
            return Intrinsics.areEqual(this.uri, contentUriTrigger.uri) && this.isTriggeredForDescendants == contentUriTrigger.isTriggeredForDescendants;
        }

        @NotNull
        public final Uri getUri() {
            return this.uri;
        }

        public int hashCode() {
            return (this.uri.hashCode() * 31) + Boolean.hashCode(this.isTriggeredForDescendants);
        }

        /* renamed from: isTriggeredForDescendants, reason: from getter */
        public final boolean getIsTriggeredForDescendants() {
            return this.isTriggeredForDescendants;
        }
    }

    public /* synthetic */ Constraints(NetworkType networkType, boolean z, boolean z2, boolean z3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? NetworkType.NOT_REQUIRED : networkType, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2, (i & 8) != 0 ? false : z3);
    }

    @SuppressLint({"NewApi"})
    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || !Intrinsics.areEqual(Constraints.class, other.getClass())) {
            return false;
        }
        Constraints constraints = (Constraints) other;
        if (this.requiresCharging == constraints.requiresCharging && this.requiresDeviceIdle == constraints.requiresDeviceIdle && this.requiresBatteryNotLow == constraints.requiresBatteryNotLow && this.requiresStorageNotLow == constraints.requiresStorageNotLow && this.contentTriggerUpdateDelayMillis == constraints.contentTriggerUpdateDelayMillis && this.contentTriggerMaxDelayMillis == constraints.contentTriggerMaxDelayMillis && this.requiredNetworkType == constraints.requiredNetworkType) {
            return Intrinsics.areEqual(this.contentUriTriggers, constraints.contentUriTriggers);
        }
        return false;
    }

    @RequiresApi(24)
    public final long getContentTriggerMaxDelayMillis() {
        return this.contentTriggerMaxDelayMillis;
    }

    @RequiresApi(24)
    public final long getContentTriggerUpdateDelayMillis() {
        return this.contentTriggerUpdateDelayMillis;
    }

    @RequiresApi(24)
    @NotNull
    public final Set<ContentUriTrigger> getContentUriTriggers() {
        return this.contentUriTriggers;
    }

    @NotNull
    public final NetworkType getRequiredNetworkType() {
        return this.requiredNetworkType;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final boolean hasContentUriTriggers() {
        return this.contentUriTriggers.isEmpty() ^ true;
    }

    @SuppressLint({"NewApi"})
    public int hashCode() {
        int hashCode = ((((((((this.requiredNetworkType.hashCode() * 31) + (this.requiresCharging ? 1 : 0)) * 31) + (this.requiresDeviceIdle ? 1 : 0)) * 31) + (this.requiresBatteryNotLow ? 1 : 0)) * 31) + (this.requiresStorageNotLow ? 1 : 0)) * 31;
        long j = this.contentTriggerUpdateDelayMillis;
        int i = (hashCode + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.contentTriggerMaxDelayMillis;
        return ((i + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.contentUriTriggers.hashCode();
    }

    /* renamed from: requiresBatteryNotLow, reason: from getter */
    public final boolean getRequiresBatteryNotLow() {
        return this.requiresBatteryNotLow;
    }

    /* renamed from: requiresCharging, reason: from getter */
    public final boolean getRequiresCharging() {
        return this.requiresCharging;
    }

    @RequiresApi(23)
    /* renamed from: requiresDeviceIdle, reason: from getter */
    public final boolean getRequiresDeviceIdle() {
        return this.requiresDeviceIdle;
    }

    /* renamed from: requiresStorageNotLow, reason: from getter */
    public final boolean getRequiresStorageNotLow() {
        return this.requiresStorageNotLow;
    }

    @SuppressLint({"NewApi"})
    @NotNull
    public String toString() {
        return "Constraints{requiredNetworkType=" + this.requiredNetworkType + ", requiresCharging=" + this.requiresCharging + ", requiresDeviceIdle=" + this.requiresDeviceIdle + ", requiresBatteryNotLow=" + this.requiresBatteryNotLow + ", requiresStorageNotLow=" + this.requiresStorageNotLow + ", contentTriggerUpdateDelayMillis=" + this.contentTriggerUpdateDelayMillis + ", contentTriggerMaxDelayMillis=" + this.contentTriggerMaxDelayMillis + ", contentUriTriggers=" + this.contentUriTriggers + ", }";
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"NewApi"})
    @Ignore
    public Constraints(@NotNull NetworkType requiredNetworkType, boolean z, boolean z2, boolean z3) {
        this(requiredNetworkType, z, false, z2, z3);
        Intrinsics.checkNotNullParameter(requiredNetworkType, "requiredNetworkType");
    }

    public /* synthetic */ Constraints(NetworkType networkType, boolean z, boolean z2, boolean z3, boolean z4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? NetworkType.NOT_REQUIRED : networkType, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2, (i & 8) != 0 ? false : z3, (i & 16) == 0 ? z4 : false);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @RequiresApi(23)
    @SuppressLint({"NewApi"})
    @Ignore
    public Constraints(@NotNull NetworkType requiredNetworkType, boolean z, boolean z2, boolean z3, boolean z4) {
        this(requiredNetworkType, z, z2, z3, z4, -1L, 0L, null, 192, null);
        Intrinsics.checkNotNullParameter(requiredNetworkType, "requiredNetworkType");
    }

    public /* synthetic */ Constraints(NetworkType networkType, boolean z, boolean z2, boolean z3, boolean z4, long j, long j2, Set set, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? NetworkType.NOT_REQUIRED : networkType, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2, (i & 8) != 0 ? false : z3, (i & 16) == 0 ? z4 : false, (i & 32) != 0 ? -1L : j, (i & 64) == 0 ? j2 : -1L, (i & 128) != 0 ? SetsKt__SetsKt.emptySet() : set);
    }

    @RequiresApi(24)
    public Constraints(@NotNull NetworkType requiredNetworkType, boolean z, boolean z2, boolean z3, boolean z4, long j, long j2, @NotNull Set<ContentUriTrigger> contentUriTriggers) {
        Intrinsics.checkNotNullParameter(requiredNetworkType, "requiredNetworkType");
        Intrinsics.checkNotNullParameter(contentUriTriggers, "contentUriTriggers");
        this.requiredNetworkType = requiredNetworkType;
        this.requiresCharging = z;
        this.requiresDeviceIdle = z2;
        this.requiresBatteryNotLow = z3;
        this.requiresStorageNotLow = z4;
        this.contentTriggerUpdateDelayMillis = j;
        this.contentTriggerMaxDelayMillis = j2;
        this.contentUriTriggers = contentUriTriggers;
    }

    @SuppressLint({"NewApi"})
    public Constraints(@NotNull Constraints other) {
        Intrinsics.checkNotNullParameter(other, "other");
        this.requiresCharging = other.requiresCharging;
        this.requiresDeviceIdle = other.requiresDeviceIdle;
        this.requiredNetworkType = other.requiredNetworkType;
        this.requiresBatteryNotLow = other.requiresBatteryNotLow;
        this.requiresStorageNotLow = other.requiresStorageNotLow;
        this.contentUriTriggers = other.contentUriTriggers;
        this.contentTriggerUpdateDelayMillis = other.contentTriggerUpdateDelayMillis;
        this.contentTriggerMaxDelayMillis = other.contentTriggerMaxDelayMillis;
    }
}
