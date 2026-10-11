package androidx.media;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media.AudioAttributesImpl;
import java.util.Arrays;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class AudioAttributesImplBase implements AudioAttributesImpl {

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int mContentType;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int mFlags;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int mLegacyStream;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int mUsage;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public AudioAttributesImplBase() {
        this.mUsage = 0;
        this.mContentType = 0;
        this.mFlags = 0;
        this.mLegacyStream = -1;
    }

    /* renamed from: a */
    public static int m4997a(int streamType) {
        switch (streamType) {
            case 0:
                return 2;
            case 1:
            case 7:
                return 13;
            case 2:
                return 6;
            case 3:
                return 1;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 2;
            case 8:
                return 3;
            case 9:
            default:
                return 0;
            case 10:
                return 11;
        }
    }

    public boolean equals(Object o) {
        if (!(o instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) o;
        return this.mContentType == audioAttributesImplBase.getContentType() && this.mFlags == audioAttributesImplBase.getFlags() && this.mUsage == audioAttributesImplBase.getUsage() && this.mLegacyStream == audioAttributesImplBase.mLegacyStream;
    }

    @Override // androidx.media.AudioAttributesImpl
    @Nullable
    public Object getAudioAttributes() {
        return null;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getContentType() {
        return this.mContentType;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getFlags() {
        int i = this.mFlags;
        int legacyStreamType = getLegacyStreamType();
        if (legacyStreamType == 6) {
            i |= 4;
        } else if (legacyStreamType == 7) {
            i |= 1;
        }
        return i & 273;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getLegacyStreamType() {
        int i = this.mLegacyStream;
        return i != -1 ? i : AudioAttributesCompat.m4990a(false, this.mFlags, this.mUsage);
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getRawLegacyStreamType() {
        return this.mLegacyStream;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getUsage() {
        return this.mUsage;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getVolumeControlStream() {
        return AudioAttributesCompat.m4990a(true, this.mFlags, this.mUsage);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.mContentType), Integer.valueOf(this.mFlags), Integer.valueOf(this.mUsage), Integer.valueOf(this.mLegacyStream)});
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.mLegacyStream != -1) {
            sb.append(" stream=");
            sb.append(this.mLegacyStream);
            sb.append(" derived");
        }
        sb.append(" usage=");
        sb.append(AudioAttributesCompat.m4991b(this.mUsage));
        sb.append(" content=");
        sb.append(this.mContentType);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.mFlags).toUpperCase());
        return sb.toString();
    }

    /* renamed from: androidx.media.AudioAttributesImplBase$a */
    /* loaded from: classes3.dex */
    public static class C1182a implements AudioAttributesImpl.Builder {

        /* renamed from: a */
        public int f8115a;

        /* renamed from: b */
        public int f8116b;

        /* renamed from: c */
        public int f8117c;

        /* renamed from: d */
        public int f8118d;

        public C1182a() {
            this.f8115a = 0;
            this.f8116b = 0;
            this.f8117c = 0;
            this.f8118d = -1;
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        @NonNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C1182a setContentType(int contentType) {
            if (contentType == 0 || contentType == 1 || contentType == 2 || contentType == 3 || contentType == 4) {
                this.f8116b = contentType;
            } else {
                this.f8116b = 0;
            }
            return this;
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        @NonNull
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public C1182a setFlags(int flags) {
            this.f8117c = (flags & 1023) | this.f8117c;
            return this;
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        @NonNull
        public AudioAttributesImpl build() {
            return new AudioAttributesImplBase(this.f8116b, this.f8117c, this.f8115a, this.f8118d);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* renamed from: c */
        public final C1182a m5000c(int streamType) {
            switch (streamType) {
                case 0:
                    this.f8116b = 1;
                    break;
                case 1:
                    this.f8116b = 4;
                    break;
                case 2:
                    this.f8116b = 4;
                    break;
                case 3:
                    this.f8116b = 2;
                    break;
                case 4:
                    this.f8116b = 4;
                    break;
                case 5:
                    this.f8116b = 4;
                    break;
                case 6:
                    this.f8116b = 1;
                    this.f8117c |= 4;
                    break;
                case 7:
                    this.f8117c = 1 | this.f8117c;
                    this.f8116b = 4;
                    break;
                case 8:
                    this.f8116b = 4;
                    break;
                case 9:
                    this.f8116b = 4;
                    break;
                case 10:
                    this.f8116b = 1;
                    break;
                default:
                    Log.e(AudioAttributesCompat.f8091a, "Invalid stream type " + streamType + " for AudioAttributesCompat");
                    break;
            }
            this.f8115a = AudioAttributesImplBase.m4997a(streamType);
            return this;
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        @NonNull
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public C1182a setLegacyStreamType(int streamType) {
            if (streamType == 10) {
                throw new IllegalArgumentException("STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback");
            }
            this.f8118d = streamType;
            return m5000c(streamType);
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        @NonNull
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public C1182a setUsage(int usage) {
            switch (usage) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                    this.f8115a = usage;
                    return this;
                case 16:
                    this.f8115a = 12;
                    return this;
                default:
                    this.f8115a = 0;
                    return this;
            }
        }

        public C1182a(AudioAttributesCompat aa) {
            this.f8115a = 0;
            this.f8116b = 0;
            this.f8117c = 0;
            this.f8118d = -1;
            this.f8115a = aa.getUsage();
            this.f8116b = aa.getContentType();
            this.f8117c = aa.getFlags();
            this.f8118d = aa.getRawLegacyStreamType();
        }
    }

    public AudioAttributesImplBase(int contentType, int flags, int usage, int legacyStream) {
        this.mContentType = contentType;
        this.mFlags = flags;
        this.mUsage = usage;
        this.mLegacyStream = legacyStream;
    }
}
