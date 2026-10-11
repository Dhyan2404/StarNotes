package androidx.media;

import android.media.AudioAttributes;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.media.AudioAttributesImplApi21;

@RequiresApi(26)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class AudioAttributesImplApi26 extends AudioAttributesImplApi21 {

    @RequiresApi(26)
    /* renamed from: androidx.media.AudioAttributesImplApi26$a */
    /* loaded from: classes3.dex */
    public static class C1181a extends AudioAttributesImplApi21.C1180a {
        public C1181a() {
        }

        @Override // androidx.media.AudioAttributesImplApi21.C1180a, androidx.media.AudioAttributesImpl.Builder
        @NonNull
        public AudioAttributesImpl build() {
            return new AudioAttributesImplApi26(this.f8114a.build());
        }

        @Override // androidx.media.AudioAttributesImplApi21.C1180a, androidx.media.AudioAttributesImpl.Builder
        @NonNull
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public C1181a setUsage(int usage) {
            this.f8114a.setUsage(usage);
            return this;
        }

        public C1181a(Object aa) {
            super(aa);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public AudioAttributesImplApi26() {
    }

    @Override // androidx.media.AudioAttributesImplApi21, androidx.media.AudioAttributesImpl
    public int getVolumeControlStream() {
        return this.mAudioAttributes.getVolumeControlStream();
    }

    public AudioAttributesImplApi26(AudioAttributes audioAttributes) {
        super(audioAttributes, -1);
    }
}
