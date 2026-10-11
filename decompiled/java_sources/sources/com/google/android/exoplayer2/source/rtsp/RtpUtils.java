package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes5.dex */
public final class RtpUtils {

    /* renamed from: a */
    public static final String f26299a = "rtp://0.0.0.0";

    public static DataSpec getIncomingRtpDataSpec(int i) {
        return new DataSpec(Uri.parse(Util.formatInvariant("%s:%d", f26299a, Integer.valueOf(i))));
    }
}
