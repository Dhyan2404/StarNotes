package com.google.android.exoplayer2.extractor;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.Id3Decoder;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.io.EOFException;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class Id3Peeker {

    /* renamed from: a */
    public final ParsableByteArray f23537a = new ParsableByteArray(10);

    @Nullable
    public Metadata peekId3Data(ExtractorInput extractorInput, @Nullable Id3Decoder.FramePredicate framePredicate) throws IOException {
        Metadata metadata = null;
        int i = 0;
        while (true) {
            try {
                extractorInput.peekFully(this.f23537a.getData(), 0, 10);
                this.f23537a.setPosition(0);
                if (this.f23537a.readUnsignedInt24() != 4801587) {
                    break;
                }
                this.f23537a.skipBytes(3);
                int readSynchSafeInt = this.f23537a.readSynchSafeInt();
                int i2 = readSynchSafeInt + 10;
                if (metadata == null) {
                    byte[] bArr = new byte[i2];
                    System.arraycopy(this.f23537a.getData(), 0, bArr, 0, 10);
                    extractorInput.peekFully(bArr, 10, readSynchSafeInt);
                    metadata = new Id3Decoder(framePredicate).decode(bArr, i2);
                } else {
                    extractorInput.advancePeekPosition(readSynchSafeInt);
                }
                i += i2;
            } catch (EOFException unused) {
            }
        }
        extractorInput.resetPeekPosition();
        extractorInput.advancePeekPosition(i);
        return metadata;
    }
}
