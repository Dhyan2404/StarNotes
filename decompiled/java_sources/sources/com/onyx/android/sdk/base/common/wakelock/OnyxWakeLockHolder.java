package com.onyx.android.sdk.base.common.wakelock;

import android.content.Context;
import android.os.PowerManager;
import android.util.Log;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.opencensus.contrib.http.util.HttpMeasureConstants;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 22\u00020\u0001:\u00012B\u0011\u0012\b\b\u0002\u0010/\u001a\u00020\f¢\u0006\u0004\b0\u00101J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u001a\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\"\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006J*\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\tH\u0016J\u0006\u0010\r\u001a\u00020\fJ\b\u0010\u000e\u001a\u00020\u0004H\u0016J\u0006\u0010\u000f\u001a\u00020\u0004J\u0010\u0010\u0010\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006R\u0014\u0010\u0013\u001a\u00020\u00068\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u001a\u0010\u001c\u001a\u00020\t8\u0006X\u0086D¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001f\u001a\u00020\t8\u0006X\u0086D¢\u0006\f\n\u0004\b\u001d\u0010\u0019\u001a\u0004\b\u001e\u0010\u001bR\u001a\u0010\"\u001a\u00020\t8\u0006X\u0086D¢\u0006\f\n\u0004\b \u0010\u0019\u001a\u0004\b!\u0010\u001bR\u001c\u0010'\u001a\b\u0018\u00010#R\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010.\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-¨\u00063"}, m61528d2 = {"Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;", "Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;", "Landroid/content/Context;", "context", "", "acquireInfiniteWakeLock", "", "tag", "acquireWakeLock", "", "flags", HttpMeasureConstants.f94668b, "", "isHeld", "releaseWakeLock", "forceReleaseWakeLock", "dumpWakelocks", "a", Constants.STRING_SIG, "UNIVERSAL_TAG", "", "b", "J", "DEFAULT_ACQUIRE_TIMEOUT", "c", "I", "getFULL_FLAGS", "()I", "FULL_FLAGS", "d", "getON_AFTER_RELEASE", "ON_AFTER_RELEASE", "e", "getWAKEUP_FLAGS", "WAKEUP_FLAGS", "Landroid/os/PowerManager$WakeLock;", "Landroid/os/PowerManager;", C6997f.f39671c, "Landroid/os/PowerManager$WakeLock;", "wakeLock", "Ljava/util/concurrent/atomic/AtomicInteger;", C6998g.f39679a, "Ljava/util/concurrent/atomic/AtomicInteger;", "wakeLockCounting", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "referenceCounted", "ref", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Z)V", "Companion", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OnyxWakeLockHolder implements WakeLockHolder {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String UNIVERSAL_TAG;

    /* renamed from: b, reason: from kotlin metadata */
    public final long DEFAULT_ACQUIRE_TIMEOUT;

    /* renamed from: c, reason: from kotlin metadata */
    public final int FULL_FLAGS;

    /* renamed from: d, reason: from kotlin metadata */
    public final int ON_AFTER_RELEASE;

    /* renamed from: e, reason: from kotlin metadata */
    public final int WAKEUP_FLAGS;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public volatile PowerManager.WakeLock wakeLock;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final AtomicInteger wakeLockCounting;

    /* renamed from: h, reason: from kotlin metadata */
    public volatile boolean referenceCounted;

    @Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004J&\u0010\u000f\u001a\u00060\rR\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder$Companion;", "", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;", "onAcquireInfinite", "wakeLockHolder", "", "onRelease", "", "flags", "", "tag", "Landroid/os/PowerManager$WakeLock;", "Landroid/os/PowerManager;", "a", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final PowerManager.WakeLock m31897a(Context context, int flags, String tag) {
            Object systemService = context.getApplicationContext().getSystemService("power");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.os.PowerManager");
            PowerManager.WakeLock newWakeLock = ((PowerManager) systemService).newWakeLock(flags, tag);
            Intrinsics.checkNotNullExpressionValue(newWakeLock, "newWakeLock(...)");
            return newWakeLock;
        }

        @NotNull
        public final OnyxWakeLockHolder onAcquireInfinite(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            OnyxWakeLockHolder onyxWakeLockHolder = new OnyxWakeLockHolder(false, 1, null);
            onyxWakeLockHolder.acquireInfiniteWakeLock(context);
            return onyxWakeLockHolder;
        }

        public final void onRelease(@Nullable OnyxWakeLockHolder wakeLockHolder) {
            if (wakeLockHolder != null) {
                wakeLockHolder.releaseWakeLock();
            }
        }

        public Companion() {
        }
    }

    public OnyxWakeLockHolder() {
        this(false, 1, null);
    }

    public static /* synthetic */ void acquireWakeLock$default(OnyxWakeLockHolder onyxWakeLockHolder, Context context, int i, String str, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            str = onyxWakeLockHolder.UNIVERSAL_TAG;
        }
        onyxWakeLockHolder.acquireWakeLock(context, i, str);
    }

    public final synchronized void acquireInfiniteWakeLock(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        acquireWakeLock(context, this.FULL_FLAGS, this.UNIVERSAL_TAG, -1);
    }

    @Override // com.onyx.android.sdk.base.common.wakelock.WakeLockHolder
    public synchronized void acquireWakeLock(@NotNull Context context, @Nullable String tag) {
        Intrinsics.checkNotNullParameter(context, "context");
        acquireWakeLock(context, this.FULL_FLAGS, tag);
    }

    public final synchronized void dumpWakelocks(@Nullable String tag) {
        if ((this.wakeLock != null && this.wakeLockCounting.get() <= 0) || (this.wakeLock == null && this.wakeLockCounting.get() > 0)) {
            Log.e(tag, " Counting unmatched!");
            return;
        }
        if (this.wakeLock == null && this.wakeLockCounting.get() <= 0) {
            Log.e(tag, "Wake lock released.");
        }
        Log.e(tag, "Wake lock in using: " + this.wakeLock + " counting: " + this.wakeLockCounting.get());
    }

    public final synchronized void forceReleaseWakeLock() {
        if (this.wakeLock == null) {
            return;
        }
        PowerManager.WakeLock wakeLock = this.wakeLock;
        Intrinsics.checkNotNull(wakeLock);
        if (wakeLock.isHeld()) {
            PowerManager.WakeLock wakeLock2 = this.wakeLock;
            Intrinsics.checkNotNull(wakeLock2);
            wakeLock2.setReferenceCounted(false);
            PowerManager.WakeLock wakeLock3 = this.wakeLock;
            Intrinsics.checkNotNull(wakeLock3);
            wakeLock3.release();
        }
        this.wakeLock = null;
        this.wakeLockCounting.set(0);
    }

    public final int getFULL_FLAGS() {
        return this.FULL_FLAGS;
    }

    public final int getON_AFTER_RELEASE() {
        return this.ON_AFTER_RELEASE;
    }

    public final int getWAKEUP_FLAGS() {
        return this.WAKEUP_FLAGS;
    }

    public final boolean isHeld() {
        if (this.wakeLock != null) {
            PowerManager.WakeLock wakeLock = this.wakeLock;
            Intrinsics.checkNotNull(wakeLock);
            if (wakeLock.isHeld()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.onyx.android.sdk.base.common.wakelock.WakeLockHolder
    public synchronized void releaseWakeLock() {
        if (this.wakeLock == null) {
            return;
        }
        try {
            PowerManager.WakeLock wakeLock = this.wakeLock;
            Intrinsics.checkNotNull(wakeLock);
            if (wakeLock.isHeld()) {
                PowerManager.WakeLock wakeLock2 = this.wakeLock;
                Intrinsics.checkNotNull(wakeLock2);
                wakeLock2.release();
            }
            this.wakeLockCounting.decrementAndGet();
            if (this.wakeLockCounting.get() <= 0 || !this.referenceCounted) {
                this.wakeLockCounting.set(0);
                this.wakeLock = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public OnyxWakeLockHolder(boolean z) {
        this.UNIVERSAL_TAG = "onyx-framework";
        this.DEFAULT_ACQUIRE_TIMEOUT = 600000L;
        this.FULL_FLAGS = 26;
        this.ON_AFTER_RELEASE = 536870912;
        this.WAKEUP_FLAGS = 536870912 | 268435482;
        this.wakeLockCounting = new AtomicInteger(0);
        this.referenceCounted = z;
    }

    public final synchronized void acquireWakeLock(@NotNull Context context, int flags, @Nullable String tag) {
        Intrinsics.checkNotNullParameter(context, "context");
        acquireWakeLock(context, flags, tag, (int) this.DEFAULT_ACQUIRE_TIMEOUT);
    }

    @Override // com.onyx.android.sdk.base.common.wakelock.WakeLockHolder
    public synchronized void acquireWakeLock(@NotNull Context context, int flags, @Nullable String tag, int ms) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            if (this.wakeLock == null) {
                this.wakeLock = INSTANCE.m31897a(context, flags, tag);
                PowerManager.WakeLock wakeLock = this.wakeLock;
                Intrinsics.checkNotNull(wakeLock);
                wakeLock.setReferenceCounted(this.referenceCounted);
            }
            if (this.wakeLock != null) {
                if (ms > 0) {
                    PowerManager.WakeLock wakeLock2 = this.wakeLock;
                    Intrinsics.checkNotNull(wakeLock2);
                    wakeLock2.acquire(ms);
                } else {
                    PowerManager.WakeLock wakeLock3 = this.wakeLock;
                    Intrinsics.checkNotNull(wakeLock3);
                    wakeLock3.acquire(this.DEFAULT_ACQUIRE_TIMEOUT);
                }
                if (this.referenceCounted) {
                    this.wakeLockCounting.incrementAndGet();
                } else {
                    this.wakeLockCounting.set(1);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public /* synthetic */ OnyxWakeLockHolder(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z);
    }
}
