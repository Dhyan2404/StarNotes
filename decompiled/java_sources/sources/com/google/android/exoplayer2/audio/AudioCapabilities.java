package com.google.android.exoplayer2.audio;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.net.Uri;
import android.provider.Settings;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import java.util.Arrays;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes5.dex */
public final class AudioCapabilities {

    /* renamed from: c */
    public static final int f23006c = 8;

    /* renamed from: d */
    public static final int f23007d = 48000;

    /* renamed from: g */
    public static final String f23010g = "external_surround_sound_enabled";

    /* renamed from: a */
    public final int[] f23011a;

    /* renamed from: b */
    public final int f23012b;
    public static final AudioCapabilities DEFAULT_AUDIO_CAPABILITIES = new AudioCapabilities(new int[]{2}, 8);

    /* renamed from: e */
    public static final AudioCapabilities f23008e = new AudioCapabilities(new int[]{2, 5, 6}, 8);

    /* renamed from: f */
    public static final int[] f23009f = {5, 6, 18, 17, 14, 7, 8};

    @RequiresApi(29)
    /* renamed from: com.google.android.exoplayer2.audio.AudioCapabilities$a */
    /* loaded from: classes5.dex */
    public static final class C4684a {
        @DoNotInline
        /* renamed from: a */
        public static int[] m18422a() {
            ImmutableList.Builder builder = ImmutableList.builder();
            for (int i : AudioCapabilities.f23009f) {
                if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(i).setSampleRate(48000).build(), new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(0).build())) {
                    builder.add((ImmutableList.Builder) Integer.valueOf(i));
                }
            }
            builder.add((ImmutableList.Builder) 2);
            return Ints.toArray(builder.build());
        }
    }

    public AudioCapabilities(@Nullable int[] iArr, int i) {
        if (iArr != null) {
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.f23011a = copyOf;
            Arrays.sort(copyOf);
        } else {
            this.f23011a = new int[0];
        }
        this.f23012b = i;
    }

    /* renamed from: b */
    public static boolean m18419b() {
        if (Util.SDK_INT >= 17) {
            String str = Util.MANUFACTURER;
            if ("Amazon".equals(str) || "Xiaomi".equals(str)) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"InlinedApi"})
    /* renamed from: c */
    public static AudioCapabilities m18420c(Context context, @Nullable Intent intent) {
        return (m18419b() && Settings.Global.getInt(context.getContentResolver(), f23010g, 0) == 1) ? f23008e : (Util.SDK_INT < 29 || !(Util.isTv(context) || Util.isAutomotive(context))) ? (intent == null || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 0) ? DEFAULT_AUDIO_CAPABILITIES : new AudioCapabilities(intent.getIntArrayExtra("android.media.extra.ENCODINGS"), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8)) : new AudioCapabilities(C4684a.m18422a(), 8);
    }

    @Nullable
    /* renamed from: d */
    public static Uri m18421d() {
        if (m18419b()) {
            return Settings.Global.getUriFor(f23010g);
        }
        return null;
    }

    public static AudioCapabilities getCapabilities(Context context) {
        return m18420c(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioCapabilities)) {
            return false;
        }
        AudioCapabilities audioCapabilities = (AudioCapabilities) obj;
        return Arrays.equals(this.f23011a, audioCapabilities.f23011a) && this.f23012b == audioCapabilities.f23012b;
    }

    public int getMaxChannelCount() {
        return this.f23012b;
    }

    public int hashCode() {
        return this.f23012b + (Arrays.hashCode(this.f23011a) * 31);
    }

    public boolean supportsEncoding(int i) {
        return Arrays.binarySearch(this.f23011a, i) >= 0;
    }

    public String toString() {
        int i = this.f23012b;
        String arrays = Arrays.toString(this.f23011a);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 67);
        sb.append("AudioCapabilities[maxChannelCount=");
        sb.append(i);
        sb.append(", supportedEncodings=");
        sb.append(arrays);
        sb.append(IteratorUtils.f104924b);
        return sb.toString();
    }
}
