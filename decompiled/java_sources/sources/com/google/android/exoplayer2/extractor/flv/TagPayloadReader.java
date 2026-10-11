package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.util.ParsableByteArray;

/* loaded from: classes5.dex */
public abstract class TagPayloadReader {

    /* renamed from: a */
    public final TrackOutput f23633a;

    /* loaded from: classes5.dex */
    public static final class UnsupportedFormatException extends ParserException {
        public UnsupportedFormatException(String str) {
            super(str, null, false, 1);
        }
    }

    public TagPayloadReader(TrackOutput trackOutput) {
        this.f23633a = trackOutput;
    }

    /* renamed from: a */
    public final boolean m18854a(ParsableByteArray parsableByteArray, long j) throws ParserException {
        return mo18855b(parsableByteArray) && mo18856c(parsableByteArray, j);
    }

    /* renamed from: b */
    public abstract boolean mo18855b(ParsableByteArray parsableByteArray) throws ParserException;

    /* renamed from: c */
    public abstract boolean mo18856c(ParsableByteArray parsableByteArray, long j) throws ParserException;

    /* renamed from: d */
    public abstract void mo18857d();
}
