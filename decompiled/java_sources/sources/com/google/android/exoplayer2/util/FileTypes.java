package com.google.android.exoplayer2.util;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class FileTypes {

    /* renamed from: A */
    public static final String f28308A = ".vtt";
    public static final int AC3 = 0;
    public static final int AC4 = 1;
    public static final int ADTS = 2;
    public static final int AMR = 3;

    /* renamed from: B */
    public static final String f28309B = ".webvtt";

    /* renamed from: C */
    public static final String f28310C = ".jpg";

    /* renamed from: D */
    public static final String f28311D = ".jpeg";
    public static final int FLAC = 4;
    public static final int FLV = 5;
    public static final int JPEG = 14;
    public static final int MATROSKA = 6;
    public static final int MP3 = 7;
    public static final int MP4 = 8;
    public static final int OGG = 9;

    /* renamed from: PS */
    public static final int f28312PS = 10;

    /* renamed from: TS */
    public static final int f28313TS = 11;
    public static final int UNKNOWN = -1;
    public static final int WAV = 12;
    public static final int WEBVTT = 13;

    /* renamed from: a */
    @VisibleForTesting
    public static final String f28314a = "Content-Type";

    /* renamed from: b */
    public static final String f28315b = ".ac3";

    /* renamed from: c */
    public static final String f28316c = ".ec3";

    /* renamed from: d */
    public static final String f28317d = ".ac4";

    /* renamed from: e */
    public static final String f28318e = ".adts";

    /* renamed from: f */
    public static final String f28319f = ".aac";

    /* renamed from: g */
    public static final String f28320g = ".amr";

    /* renamed from: h */
    public static final String f28321h = ".flac";

    /* renamed from: i */
    public static final String f28322i = ".flv";

    /* renamed from: j */
    public static final String f28323j = ".mk";

    /* renamed from: k */
    public static final String f28324k = ".webm";

    /* renamed from: l */
    public static final String f28325l = ".og";

    /* renamed from: m */
    public static final String f28326m = ".opus";

    /* renamed from: n */
    public static final String f28327n = ".mp3";

    /* renamed from: o */
    public static final String f28328o = ".mp4";

    /* renamed from: p */
    public static final String f28329p = ".m4";

    /* renamed from: q */
    public static final String f28330q = ".mp4";

    /* renamed from: r */
    public static final String f28331r = ".cmf";

    /* renamed from: s */
    public static final String f28332s = ".ps";

    /* renamed from: t */
    public static final String f28333t = ".mpeg";

    /* renamed from: u */
    public static final String f28334u = ".mpg";

    /* renamed from: v */
    public static final String f28335v = ".m2p";

    /* renamed from: w */
    public static final String f28336w = ".ts";

    /* renamed from: x */
    public static final String f28337x = ".ts";

    /* renamed from: y */
    public static final String f28338y = ".wav";

    /* renamed from: z */
    public static final String f28339z = ".wave";

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface Type {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int inferFileTypeFromMimeType(@Nullable String str) {
        char c;
        if (str == null) {
            return -1;
        }
        String normalizeMimeType = MimeTypes.normalizeMimeType(str);
        normalizeMimeType.hashCode();
        switch (normalizeMimeType.hashCode()) {
            case -2123537834:
                if (normalizeMimeType.equals(MimeTypes.AUDIO_E_AC3_JOC)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1662384011:
                if (normalizeMimeType.equals(MimeTypes.VIDEO_PS)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -1662384007:
                if (normalizeMimeType.equals(MimeTypes.VIDEO_MP2T)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1662095187:
                if (normalizeMimeType.equals(MimeTypes.VIDEO_WEBM)) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1606874997:
                if (normalizeMimeType.equals(MimeTypes.AUDIO_AMR_WB)) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1487394660:
                if (normalizeMimeType.equals("image/jpeg")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -1248337486:
                if (normalizeMimeType.equals(MimeTypes.APPLICATION_MP4)) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -1004728940:
                if (normalizeMimeType.equals(MimeTypes.TEXT_VTT)) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -387023398:
                if (normalizeMimeType.equals(MimeTypes.AUDIO_MATROSKA)) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -43467528:
                if (normalizeMimeType.equals(MimeTypes.APPLICATION_WEBM)) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 13915911:
                if (normalizeMimeType.equals(MimeTypes.VIDEO_FLV)) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 187078296:
                if (normalizeMimeType.equals(MimeTypes.AUDIO_AC3)) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case 187078297:
                if (normalizeMimeType.equals(MimeTypes.AUDIO_AC4)) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 187078669:
                if (normalizeMimeType.equals("audio/amr")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case 187090232:
                if (normalizeMimeType.equals("audio/mp4")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case 187091926:
                if (normalizeMimeType.equals(MimeTypes.AUDIO_OGG)) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case 187099443:
                if (normalizeMimeType.equals("audio/wav")) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 1331848029:
                if (normalizeMimeType.equals("video/mp4")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case 1503095341:
                if (normalizeMimeType.equals(MimeTypes.AUDIO_AMR_NB)) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case 1504578661:
                if (normalizeMimeType.equals(MimeTypes.AUDIO_E_AC3)) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case 1504619009:
                if (normalizeMimeType.equals(MimeTypes.AUDIO_FLAC)) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case 1504831518:
                if (normalizeMimeType.equals("audio/mpeg")) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            case 1505118770:
                if (normalizeMimeType.equals(MimeTypes.AUDIO_WEBM)) {
                    c = 22;
                    break;
                }
                c = 65535;
                break;
            case 2039520277:
                if (normalizeMimeType.equals(MimeTypes.VIDEO_MATROSKA)) {
                    c = 23;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 11:
            case 19:
                return 0;
            case 1:
                return 10;
            case 2:
                return 11;
            case 3:
            case '\b':
            case '\t':
            case 22:
            case 23:
                return 6;
            case 4:
            case '\r':
            case 18:
                return 3;
            case 5:
                return 14;
            case 6:
            case 14:
            case 17:
                return 8;
            case 7:
                return 13;
            case '\n':
                return 5;
            case '\f':
                return 1;
            case 15:
                return 9;
            case 16:
                return 12;
            case 20:
                return 4;
            case 21:
                return 7;
            default:
                return -1;
        }
    }

    public static int inferFileTypeFromResponseHeaders(Map<String, List<String>> map) {
        List<String> list = map.get("Content-Type");
        return inferFileTypeFromMimeType((list == null || list.isEmpty()) ? null : list.get(0));
    }

    public static int inferFileTypeFromUri(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return -1;
        }
        if (lastPathSegment.endsWith(f28315b) || lastPathSegment.endsWith(f28316c)) {
            return 0;
        }
        if (lastPathSegment.endsWith(f28317d)) {
            return 1;
        }
        if (lastPathSegment.endsWith(f28318e) || lastPathSegment.endsWith(f28319f)) {
            return 2;
        }
        if (lastPathSegment.endsWith(f28320g)) {
            return 3;
        }
        if (lastPathSegment.endsWith(f28321h)) {
            return 4;
        }
        if (lastPathSegment.endsWith(f28322i)) {
            return 5;
        }
        if (lastPathSegment.startsWith(f28323j, lastPathSegment.length() - 4) || lastPathSegment.endsWith(f28324k)) {
            return 6;
        }
        if (lastPathSegment.endsWith(".mp3")) {
            return 7;
        }
        if (lastPathSegment.endsWith(".mp4") || lastPathSegment.startsWith(f28329p, lastPathSegment.length() - 4) || lastPathSegment.startsWith(".mp4", lastPathSegment.length() - 5) || lastPathSegment.startsWith(f28331r, lastPathSegment.length() - 5)) {
            return 8;
        }
        if (lastPathSegment.startsWith(f28325l, lastPathSegment.length() - 4) || lastPathSegment.endsWith(f28326m)) {
            return 9;
        }
        if (lastPathSegment.endsWith(f28332s) || lastPathSegment.endsWith(f28333t) || lastPathSegment.endsWith(f28334u) || lastPathSegment.endsWith(f28335v)) {
            return 10;
        }
        if (lastPathSegment.endsWith(".ts") || lastPathSegment.startsWith(".ts", lastPathSegment.length() - 4)) {
            return 11;
        }
        if (lastPathSegment.endsWith(f28338y) || lastPathSegment.endsWith(f28339z)) {
            return 12;
        }
        if (lastPathSegment.endsWith(f28308A) || lastPathSegment.endsWith(f28309B)) {
            return 13;
        }
        return (lastPathSegment.endsWith(f28310C) || lastPathSegment.endsWith(f28311D)) ? 14 : -1;
    }
}
