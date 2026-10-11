package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.SeekMap;
import java.io.IOException;

/* loaded from: classes5.dex */
public interface bfk {
    @Nullable
    /* renamed from: a */
    SeekMap mo52917a();

    /* renamed from: b */
    void mo52918b(long j);

    long read(ExtractorInput extractorInput) throws IOException;
}
