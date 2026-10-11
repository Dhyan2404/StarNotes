package com.onyx.android.sdk.note.common.utils;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\rB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bJ\u0010\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/WavUtils;", "", "()V", "addWavHeader", "", "pmcSrc", "getWavHeaderData", "pcmSize", "", "writeWavHeader", "", Constant.SRC_TAG, "Ljava/io/File;", "WaveHeader", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class WavUtils {

    @NotNull
    public static final WavUtils INSTANCE = new WavUtils();

    @Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0019\n\u0002\b\u0018\n\u0002\u0010\n\n\u0002\b#\n\u0002\u0010\u0012\n\u0002\b\u0007\u0018\u0000 M2\u00020\u0001:\u0001MB\u0007¢\u0006\u0004\bK\u0010LJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004H\u0002J\u0018\u0010\f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u0017\u0010\u0010\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\"\u0010\u0016\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u001a\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\r\u001a\u0004\b\u0017\u0010\u000f\"\u0004\b\u0018\u0010\u0019R\"\u0010\u001e\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\r\u001a\u0004\b\u001c\u0010\u000f\"\u0004\b\u001d\u0010\u0019R\"\u0010\"\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u0011\u001a\u0004\b \u0010\u0013\"\u0004\b!\u0010\u0015R\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\"\u0010.\u001a\u00020#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010%\u001a\u0004\b,\u0010'\"\u0004\b-\u0010)R\"\u00102\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u0010\u0011\u001a\u0004\b0\u0010\u0013\"\u0004\b1\u0010\u0015R\"\u00106\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u0010\u0011\u001a\u0004\b4\u0010\u0013\"\u0004\b5\u0010\u0015R\"\u0010:\u001a\u00020#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u0010%\u001a\u0004\b8\u0010'\"\u0004\b9\u0010)R\"\u0010>\u001a\u00020#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u0010%\u001a\u0004\b<\u0010'\"\u0004\b=\u0010)R\"\u0010B\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010\r\u001a\u0004\b@\u0010\u000f\"\u0004\bA\u0010\u0019R\"\u0010F\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u0010\u0011\u001a\u0004\bD\u0010\u0013\"\u0004\bE\u0010\u0015R\u0011\u0010J\u001a\u00020G8F¢\u0006\u0006\u001a\u0004\bH\u0010I¨\u0006N"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader;", "", "Ljava/io/ByteArrayOutputStream;", "bos", "", "s", "", "c", GoogleApiAvailabilityLight.f29016b, "b", "", "id", "a", Constants.STATIC_CHAR_DATA_FIELD_SIG, "getFileID", "()[C", "fileID", "I", "getFileLength", "()I", "setFileLength", "(I)V", "fileLength", "getWavTag", "setWavTag", "([C)V", "wavTag", "d", "getFmtHdrID", "setFmtHdrID", "FmtHdrID", "e", "getFmtHdrLeth", "setFmtHdrLeth", "FmtHdrLeth", "", C6997f.f39671c, "S", "getFormatTag", Constants.GET_NODE_TYPE_SIG, "setFormatTag", "(S)V", "FormatTag", C6998g.f39679a, "getChannels", "setChannels", SsManifestParser.C4932c.f26645k, C6999h.f39688c, "getSamplesPerSec", "setSamplesPerSec", "SamplesPerSec", "i", "getAvgBytesPerSec", "setAvgBytesPerSec", "AvgBytesPerSec", "j", "getBlockAlign", "setBlockAlign", "BlockAlign", C4921e.f26537n, "getBitsPerSample", "setBitsPerSample", ExifInterface.TAG_BITS_PER_SAMPLE, "l", "getDataHdrID", "setDataHdrID", "DataHdrID", "m", "getDataHdrLeth", "setDataHdrLeth", "DataHdrLeth", "", "getHeader", "()[B", org.apache.poi.convert.htmlgen.Constants.NAME_HEADER, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class WaveHeader {

        /* renamed from: Companion, reason: from kotlin metadata */
        @NotNull
        public static final Companion INSTANCE = new Companion(null);
        public static final int HEADER_LENGTH = 44;

        /* renamed from: b, reason: from kotlin metadata */
        public int fileLength;

        /* renamed from: e, reason: from kotlin metadata */
        public int FmtHdrLeth;

        /* renamed from: f, reason: from kotlin metadata */
        public short FormatTag;

        /* renamed from: g, reason: from kotlin metadata */
        public short Channels;

        /* renamed from: h, reason: from kotlin metadata */
        public int SamplesPerSec;

        /* renamed from: i, reason: from kotlin metadata */
        public int AvgBytesPerSec;

        /* renamed from: j, reason: from kotlin metadata */
        public short BlockAlign;

        /* renamed from: k, reason: from kotlin metadata */
        public short BitsPerSample;

        /* renamed from: m, reason: from kotlin metadata */
        public int DataHdrLeth;

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final char[] fileID = {'R', 'I', 'F', 'F'};

        /* renamed from: c, reason: from kotlin metadata */
        @NotNull
        public char[] wavTag = {'W', 'A', 'V', 'E'};

        /* renamed from: d, reason: from kotlin metadata */
        @NotNull
        public char[] FmtHdrID = {'f', 'm', 't', ' '};

        /* renamed from: l, reason: from kotlin metadata */
        @NotNull
        public char[] DataHdrID = {'d', 'a', 't', 'a'};

        @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/WavUtils$WaveHeader$Companion;", "", "()V", "HEADER_LENGTH", "", "isWave", "", "data", "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes8.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final boolean isWave(@Nullable byte[] data) {
                if (data == null || data.length < 44) {
                    return false;
                }
                WaveHeader waveHeader = new WaveHeader();
                int length = waveHeader.getFileID().length;
                for (int i = 0; i < length; i++) {
                    if (data[i] != ((byte) waveHeader.getFileID()[i])) {
                        return false;
                    }
                }
                int length2 = waveHeader.getFileID().length + 4;
                int length3 = waveHeader.getWavTag().length + length2;
                for (int i2 = length2; i2 < length3; i2++) {
                    if (data[i2] != ((byte) waveHeader.getWavTag()[i2 - length2])) {
                        return false;
                    }
                }
                return true;
            }

            public Companion() {
            }
        }

        /* renamed from: a */
        public final void m34085a(ByteArrayOutputStream bos, char[] id) {
            for (char c : id) {
                bos.write(c);
            }
        }

        /* renamed from: b */
        public final void m34086b(ByteArrayOutputStream bos, int n) throws IOException {
            bos.write(new byte[]{(byte) ((n << 24) >> 24), (byte) ((n << 16) >> 24), (byte) ((n << 8) >> 24), (byte) (n >> 24)});
        }

        /* renamed from: c */
        public final void m34087c(ByteArrayOutputStream bos, int s) throws IOException {
            bos.write(new byte[]{(byte) ((s << 24) >> 24), (byte) ((s << 16) >> 24)});
        }

        public final int getAvgBytesPerSec() {
            return this.AvgBytesPerSec;
        }

        public final short getBitsPerSample() {
            return this.BitsPerSample;
        }

        public final short getBlockAlign() {
            return this.BlockAlign;
        }

        public final short getChannels() {
            return this.Channels;
        }

        @NotNull
        public final char[] getDataHdrID() {
            return this.DataHdrID;
        }

        public final int getDataHdrLeth() {
            return this.DataHdrLeth;
        }

        @NotNull
        public final char[] getFileID() {
            return this.fileID;
        }

        public final int getFileLength() {
            return this.fileLength;
        }

        @NotNull
        public final char[] getFmtHdrID() {
            return this.FmtHdrID;
        }

        public final int getFmtHdrLeth() {
            return this.FmtHdrLeth;
        }

        public final short getFormatTag() {
            return this.FormatTag;
        }

        @NotNull
        public final byte[] getHeader() throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            m34085a(byteArrayOutputStream, this.fileID);
            m34086b(byteArrayOutputStream, this.fileLength);
            m34085a(byteArrayOutputStream, this.wavTag);
            m34085a(byteArrayOutputStream, this.FmtHdrID);
            m34086b(byteArrayOutputStream, this.FmtHdrLeth);
            m34087c(byteArrayOutputStream, this.FormatTag);
            m34087c(byteArrayOutputStream, this.Channels);
            m34086b(byteArrayOutputStream, this.SamplesPerSec);
            m34086b(byteArrayOutputStream, this.AvgBytesPerSec);
            m34087c(byteArrayOutputStream, this.BlockAlign);
            m34087c(byteArrayOutputStream, this.BitsPerSample);
            m34085a(byteArrayOutputStream, this.DataHdrID);
            m34086b(byteArrayOutputStream, this.DataHdrLeth);
            byteArrayOutputStream.flush();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            FileUtils.INSTANCE.closeQuietly(byteArrayOutputStream);
            Intrinsics.checkNotNull(byteArray);
            return byteArray;
        }

        public final int getSamplesPerSec() {
            return this.SamplesPerSec;
        }

        @NotNull
        public final char[] getWavTag() {
            return this.wavTag;
        }

        public final void setAvgBytesPerSec(int i) {
            this.AvgBytesPerSec = i;
        }

        public final void setBitsPerSample(short s) {
            this.BitsPerSample = s;
        }

        public final void setBlockAlign(short s) {
            this.BlockAlign = s;
        }

        public final void setChannels(short s) {
            this.Channels = s;
        }

        public final void setDataHdrID(@NotNull char[] cArr) {
            Intrinsics.checkNotNullParameter(cArr, "<set-?>");
            this.DataHdrID = cArr;
        }

        public final void setDataHdrLeth(int i) {
            this.DataHdrLeth = i;
        }

        public final void setFileLength(int i) {
            this.fileLength = i;
        }

        public final void setFmtHdrID(@NotNull char[] cArr) {
            Intrinsics.checkNotNullParameter(cArr, "<set-?>");
            this.FmtHdrID = cArr;
        }

        public final void setFmtHdrLeth(int i) {
            this.FmtHdrLeth = i;
        }

        public final void setFormatTag(short s) {
            this.FormatTag = s;
        }

        public final void setSamplesPerSec(int i) {
            this.SamplesPerSec = i;
        }

        public final void setWavTag(@NotNull char[] cArr) {
            Intrinsics.checkNotNullParameter(cArr, "<set-?>");
            this.wavTag = cArr;
        }
    }

    @Nullable
    public final byte[] addWavHeader(@NotNull byte[] pmcSrc) {
        Intrinsics.checkNotNullParameter(pmcSrc, "pmcSrc");
        try {
            byte[] wavHeaderData = getWavHeaderData(pmcSrc.length);
            byte[] bArr = new byte[pmcSrc.length + wavHeaderData.length];
            System.arraycopy(wavHeaderData, 0, bArr, 0, wavHeaderData.length);
            System.arraycopy(pmcSrc, 0, bArr, wavHeaderData.length, pmcSrc.length);
            return bArr;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @NotNull
    public final byte[] getWavHeaderData(int pcmSize) throws IOException {
        WaveHeader waveHeader = new WaveHeader();
        waveHeader.setFileLength(pcmSize + 36);
        waveHeader.setFmtHdrLeth(16);
        waveHeader.setBitsPerSample((short) 16);
        waveHeader.setChannels((short) 1);
        waveHeader.setFormatTag((short) 1);
        waveHeader.setSamplesPerSec(16000);
        waveHeader.setBlockAlign((short) ((waveHeader.getChannels() * waveHeader.getBitsPerSample()) / 8));
        waveHeader.setAvgBytesPerSec(waveHeader.getBlockAlign() * waveHeader.getSamplesPerSec());
        waveHeader.setDataHdrLeth(pcmSize);
        return waveHeader.getHeader();
    }

    public final void writeWavHeader(@Nullable File src) {
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2 = null;
        try {
            try {
                randomAccessFile = new RandomAccessFile(src, "rw");
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            byte[] wavHeaderData = getWavHeaderData((int) (randomAccessFile.getChannel().size() - 44));
            randomAccessFile2 = null;
            randomAccessFile.getChannel().write(ByteBuffer.wrap(wavHeaderData, 0, wavHeaderData.length), 0L);
            FileUtils.INSTANCE.closeQuietly(randomAccessFile);
        } catch (Exception e2) {
            e = e2;
            randomAccessFile2 = randomAccessFile;
            e.printStackTrace();
            FileUtils.INSTANCE.closeQuietly(randomAccessFile2);
            Debug.INSTANCE.m32037d("Write wav header SUCCESS!");
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile2 = randomAccessFile;
            FileUtils.INSTANCE.closeQuietly(randomAccessFile2);
            throw th;
        }
        Debug.INSTANCE.m32037d("Write wav header SUCCESS!");
    }
}
