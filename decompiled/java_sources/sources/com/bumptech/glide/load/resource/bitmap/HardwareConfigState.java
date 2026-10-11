package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.util.Util;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class HardwareConfigState {
    public static final int NO_MAX_FD_COUNT = -1;

    /* renamed from: g */
    public static final String f15052g = "HardwareConfig";

    /* renamed from: h */
    @VisibleForTesting
    public static final int f15053h = 128;

    /* renamed from: i */
    public static final int f15054i = 0;

    /* renamed from: k */
    public static final int f15056k = 50;

    /* renamed from: l */
    public static final int f15057l = 700;

    /* renamed from: m */
    public static final int f15058m = 20000;

    /* renamed from: n */
    public static volatile HardwareConfigState f15059n;

    /* renamed from: d */
    @GuardedBy("this")
    public int f15064d;
    public static final boolean BLOCK_HARDWARE_BITMAPS_WHEN_GL_CONTEXT_MIGHT_NOT_BE_INITIALIZED = false;
    public static final boolean HARDWARE_BITMAPS_SUPPORTED = true;

    /* renamed from: j */
    public static final File f15055j = new File("/proc/self/fd");

    /* renamed from: o */
    public static volatile int f15060o = -1;

    /* renamed from: e */
    @GuardedBy("this")
    public boolean f15065e = true;

    /* renamed from: f */
    public final AtomicBoolean f15066f = new AtomicBoolean(false);

    /* renamed from: a */
    public final boolean f15061a = m8965d();

    /* renamed from: b */
    public final int f15062b = 20000;

    /* renamed from: c */
    public final int f15063c = 0;

    @VisibleForTesting
    public HardwareConfigState() {
    }

    /* renamed from: d */
    public static boolean m8965d() {
        return (m8966e() || m8967f()) ? false : true;
    }

    /* renamed from: e */
    public static boolean m8966e() {
        return false;
    }

    /* renamed from: f */
    public static boolean m8967f() {
        return false;
    }

    public static HardwareConfigState getInstance() {
        if (f15059n == null) {
            synchronized (HardwareConfigState.class) {
                if (f15059n == null) {
                    f15059n = new HardwareConfigState();
                }
            }
        }
        return f15059n;
    }

    /* renamed from: a */
    public final boolean m8968a() {
        return BLOCK_HARDWARE_BITMAPS_WHEN_GL_CONTEXT_MIGHT_NOT_BE_INITIALIZED && !this.f15066f.get();
    }

    public boolean areHardwareBitmapsBlocked() {
        Util.assertMainThread();
        return !this.f15066f.get();
    }

    /* renamed from: b */
    public final int m8969b() {
        return f15060o != -1 ? f15060o : this.f15062b;
    }

    public void blockHardwareBitmaps() {
        Util.assertMainThread();
        this.f15066f.set(false);
    }

    /* renamed from: c */
    public final synchronized boolean m8970c() {
        boolean z = true;
        int i = this.f15064d + 1;
        this.f15064d = i;
        if (i >= 50) {
            this.f15064d = 0;
            int length = f15055j.list().length;
            long m8969b = m8969b();
            if (length >= m8969b) {
                z = false;
            }
            this.f15065e = z;
            if (!z && Log.isLoggable(Downsampler.f15030f, 5)) {
                Log.w(Downsampler.f15030f, "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit " + m8969b);
            }
        }
        return this.f15065e;
    }

    @TargetApi(26)
    /* renamed from: g */
    public boolean m8971g(int i, int i2, BitmapFactory.Options options, boolean z, boolean z2) {
        boolean isHardwareConfigAllowed = isHardwareConfigAllowed(i, i2, z, z2);
        if (isHardwareConfigAllowed) {
            options.inPreferredConfig = Bitmap.Config.HARDWARE;
            options.inMutable = false;
        }
        return isHardwareConfigAllowed;
    }

    public boolean isHardwareConfigAllowed(int i, int i2, boolean z, boolean z2) {
        if (!z) {
            if (Log.isLoggable(f15052g, 2)) {
                Log.v(f15052g, "Hardware config disallowed by caller");
            }
            return false;
        }
        if (!this.f15061a) {
            if (Log.isLoggable(f15052g, 2)) {
                Log.v(f15052g, "Hardware config disallowed by device model");
            }
            return false;
        }
        if (!HARDWARE_BITMAPS_SUPPORTED) {
            if (Log.isLoggable(f15052g, 2)) {
                Log.v(f15052g, "Hardware config disallowed by sdk");
            }
            return false;
        }
        if (m8968a()) {
            if (Log.isLoggable(f15052g, 2)) {
                Log.v(f15052g, "Hardware config disallowed by app state");
            }
            return false;
        }
        if (z2) {
            if (Log.isLoggable(f15052g, 2)) {
                Log.v(f15052g, "Hardware config disallowed because exif orientation is required");
            }
            return false;
        }
        int i3 = this.f15063c;
        if (i < i3) {
            if (Log.isLoggable(f15052g, 2)) {
                Log.v(f15052g, "Hardware config disallowed because width is too small");
            }
            return false;
        }
        if (i2 < i3) {
            if (Log.isLoggable(f15052g, 2)) {
                Log.v(f15052g, "Hardware config disallowed because height is too small");
            }
            return false;
        }
        if (m8970c()) {
            return true;
        }
        if (Log.isLoggable(f15052g, 2)) {
            Log.v(f15052g, "Hardware config disallowed because there are insufficient FDs");
        }
        return false;
    }

    public void unblockHardwareBitmaps() {
        Util.assertMainThread();
        this.f15066f.set(true);
    }
}
