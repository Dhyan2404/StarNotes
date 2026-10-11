package com.google.android.exoplayer2.drm;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import java.util.Map;

/* loaded from: classes5.dex */
public final class WidevineUtil {
    public static final String PROPERTY_LICENSE_DURATION_REMAINING = "LicenseDurationRemaining";
    public static final String PROPERTY_PLAYBACK_DURATION_REMAINING = "PlaybackDurationRemaining";

    /* renamed from: a */
    public static long m18756a(Map<String, String> map, String str) {
        if (map == null) {
            return C4649C.TIME_UNSET;
        }
        try {
            String str2 = map.get(str);
            return str2 != null ? Long.parseLong(str2) : C4649C.TIME_UNSET;
        } catch (NumberFormatException unused) {
            return C4649C.TIME_UNSET;
        }
    }

    @Nullable
    public static Pair<Long, Long> getLicenseDurationRemainingSec(DrmSession drmSession) {
        Map<String, String> queryKeyStatus = drmSession.queryKeyStatus();
        if (queryKeyStatus == null) {
            return null;
        }
        return new Pair<>(Long.valueOf(m18756a(queryKeyStatus, PROPERTY_LICENSE_DURATION_REMAINING)), Long.valueOf(m18756a(queryKeyStatus, PROPERTY_PLAYBACK_DURATION_REMAINING)));
    }
}
