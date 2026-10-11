package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.mkv.EbmlProcessor;
import java.io.IOException;

/* loaded from: classes5.dex */
public interface mkf {
    /* renamed from: a */
    void mo54653a(EbmlProcessor ebmlProcessor);

    boolean read(ExtractorInput extractorInput) throws IOException;

    void reset();
}
