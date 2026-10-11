package com.google.android.exoplayer2.p008ui;

import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import java.util.Locale;

/* loaded from: classes5.dex */
public class DefaultTrackNameProvider implements TrackNameProvider {

    /* renamed from: a */
    public final Resources f27531a;

    public DefaultTrackNameProvider(Resources resources) {
        this.f27531a = (Resources) Assertions.checkNotNull(resources);
    }

    /* renamed from: h */
    public static int m20942h(Format format) {
        int trackType = MimeTypes.getTrackType(format.sampleMimeType);
        if (trackType != -1) {
            return trackType;
        }
        if (MimeTypes.getVideoMediaMimeType(format.codecs) != null) {
            return 2;
        }
        if (MimeTypes.getAudioMediaMimeType(format.codecs) != null) {
            return 1;
        }
        if (format.width == -1 && format.height == -1) {
            return (format.channelCount == -1 && format.sampleRate == -1) ? -1 : 1;
        }
        return 2;
    }

    /* renamed from: a */
    public final String m20943a(Format format) {
        int i = format.channelCount;
        return (i == -1 || i < 1) ? "" : i != 1 ? i != 2 ? (i == 6 || i == 7) ? this.f27531a.getString(C4970R.string.exo_track_surround_5_point_1) : i != 8 ? this.f27531a.getString(C4970R.string.exo_track_surround) : this.f27531a.getString(C4970R.string.exo_track_surround_7_point_1) : this.f27531a.getString(C4970R.string.exo_track_stereo) : this.f27531a.getString(C4970R.string.exo_track_mono);
    }

    /* renamed from: b */
    public final String m20944b(Format format) {
        int i = format.bitrate;
        return i == -1 ? "" : this.f27531a.getString(C4970R.string.exo_track_bitrate, Float.valueOf(i / 1000000.0f));
    }

    /* renamed from: c */
    public final String m20945c(Format format) {
        return TextUtils.isEmpty(format.label) ? "" : format.label;
    }

    /* renamed from: d */
    public final String m20946d(Format format) {
        String m20950i = m20950i(m20947e(format), m20949g(format));
        return TextUtils.isEmpty(m20950i) ? m20945c(format) : m20950i;
    }

    /* renamed from: e */
    public final String m20947e(Format format) {
        String str = format.language;
        if (TextUtils.isEmpty(str) || C4649C.LANGUAGE_UNDETERMINED.equals(str)) {
            return "";
        }
        Locale forLanguageTag = Util.SDK_INT >= 21 ? Locale.forLanguageTag(str) : new Locale(str);
        Locale defaultDisplayLocale = Util.getDefaultDisplayLocale();
        String displayName = forLanguageTag.getDisplayName(defaultDisplayLocale);
        if (TextUtils.isEmpty(displayName)) {
            return "";
        }
        try {
            int offsetByCodePoints = displayName.offsetByCodePoints(0, 1);
            String valueOf = String.valueOf(displayName.substring(0, offsetByCodePoints).toUpperCase(defaultDisplayLocale));
            String valueOf2 = String.valueOf(displayName.substring(offsetByCodePoints));
            displayName = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        } catch (IndexOutOfBoundsException unused) {
        }
        return displayName;
    }

    /* renamed from: f */
    public final String m20948f(Format format) {
        int i = format.width;
        int i2 = format.height;
        return (i == -1 || i2 == -1) ? "" : this.f27531a.getString(C4970R.string.exo_track_resolution, Integer.valueOf(i), Integer.valueOf(i2));
    }

    /* renamed from: g */
    public final String m20949g(Format format) {
        String string = (format.roleFlags & 2) != 0 ? this.f27531a.getString(C4970R.string.exo_track_role_alternate) : "";
        if ((format.roleFlags & 4) != 0) {
            string = m20950i(string, this.f27531a.getString(C4970R.string.exo_track_role_supplementary));
        }
        if ((format.roleFlags & 8) != 0) {
            string = m20950i(string, this.f27531a.getString(C4970R.string.exo_track_role_commentary));
        }
        return (format.roleFlags & 1088) != 0 ? m20950i(string, this.f27531a.getString(C4970R.string.exo_track_role_closed_captions)) : string;
    }

    @Override // com.google.android.exoplayer2.p008ui.TrackNameProvider
    public String getTrackName(Format format) {
        int m20942h = m20942h(format);
        String m20950i = m20942h == 2 ? m20950i(m20949g(format), m20948f(format), m20944b(format)) : m20942h == 1 ? m20950i(m20946d(format), m20943a(format), m20944b(format)) : m20946d(format);
        return m20950i.length() == 0 ? this.f27531a.getString(C4970R.string.exo_track_unknown) : m20950i;
    }

    /* renamed from: i */
    public final String m20950i(String... strArr) {
        String str = "";
        for (String str2 : strArr) {
            if (str2.length() > 0) {
                str = TextUtils.isEmpty(str) ? str2 : this.f27531a.getString(C4970R.string.exo_item_list, str, str2);
            }
        }
        return str;
    }
}
