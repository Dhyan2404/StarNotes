package com.google.android.exoplayer2.drm;

import android.media.DeniedByServerException;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes5.dex */
public final class DrmUtil {
    public static final int ERROR_SOURCE_EXO_MEDIA_DRM = 1;
    public static final int ERROR_SOURCE_LICENSE_ACQUISITION = 2;
    public static final int ERROR_SOURCE_PROVISIONING = 3;

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface ErrorSource {
    }

    @RequiresApi(18)
    /* renamed from: com.google.android.exoplayer2.drm.DrmUtil$a */
    /* loaded from: classes5.dex */
    public static final class C4725a {
        @DoNotInline
        /* renamed from: a */
        public static boolean m18728a(@Nullable Throwable th) {
            return th instanceof DeniedByServerException;
        }

        @DoNotInline
        /* renamed from: b */
        public static boolean m18729b(@Nullable Throwable th) {
            return th instanceof NotProvisionedException;
        }
    }

    @RequiresApi(21)
    /* renamed from: com.google.android.exoplayer2.drm.DrmUtil$b */
    /* loaded from: classes5.dex */
    public static final class C4726b {
        @DoNotInline
        /* renamed from: a */
        public static boolean m18730a(@Nullable Throwable th) {
            return th instanceof MediaDrm.MediaDrmStateException;
        }

        @DoNotInline
        /* renamed from: b */
        public static int m18731b(Throwable th) {
            return Util.getErrorCodeForMediaDrmErrorCode(Util.getErrorCodeFromPlatformDiagnosticsInfo(((MediaDrm.MediaDrmStateException) th).getDiagnosticInfo()));
        }
    }

    @RequiresApi(23)
    /* renamed from: com.google.android.exoplayer2.drm.DrmUtil$c */
    /* loaded from: classes5.dex */
    public static final class C4727c {
        @DoNotInline
        /* renamed from: a */
        public static boolean m18732a(@Nullable Throwable th) {
            return th instanceof MediaDrmResetException;
        }
    }

    public static int getErrorCodeForMediaDrmException(Exception exc, int i) {
        int i2 = Util.SDK_INT;
        if (i2 >= 21 && C4726b.m18730a(exc)) {
            return C4726b.m18731b(exc);
        }
        if (i2 >= 23 && C4727c.m18732a(exc)) {
            return 6006;
        }
        if (i2 >= 18 && C4725a.m18729b(exc)) {
            return 6002;
        }
        if (i2 >= 18 && C4725a.m18728a(exc)) {
            return 6007;
        }
        if (exc instanceof UnsupportedDrmException) {
            return 6001;
        }
        if (exc instanceof DefaultDrmSessionManager.MissingSchemeDataException) {
            return 6003;
        }
        if (exc instanceof KeysExpiredException) {
            return 6008;
        }
        if (i == 1) {
            return 6006;
        }
        if (i == 2) {
            return 6004;
        }
        if (i == 3) {
            return 6002;
        }
        throw new IllegalArgumentException();
    }
}
