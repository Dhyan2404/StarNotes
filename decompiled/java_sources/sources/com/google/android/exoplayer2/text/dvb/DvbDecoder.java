package com.google.android.exoplayer2.text.dvb;

import com.google.android.exoplayer2.text.SimpleSubtitleDecoder;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.sunia.HTREnginev2.akf;
import com.sunia.HTREnginev2.zjf;
import java.util.List;

/* loaded from: classes5.dex */
public final class DvbDecoder extends SimpleSubtitleDecoder {

    /* renamed from: o */
    public final zjf f27012o;

    public DvbDecoder(List<byte[]> list) {
        super("DvbDecoder");
        ParsableByteArray parsableByteArray = new ParsableByteArray(list.get(0));
        this.f27012o = new zjf(parsableByteArray.readUnsignedShort(), parsableByteArray.readUnsignedShort());
    }

    @Override // com.google.android.exoplayer2.text.SimpleSubtitleDecoder
    public Subtitle decode(byte[] bArr, int i, boolean z) {
        if (z) {
            this.f27012o.m58693r();
        }
        return new akf(this.f27012o.m58692b(bArr, i));
    }
}
