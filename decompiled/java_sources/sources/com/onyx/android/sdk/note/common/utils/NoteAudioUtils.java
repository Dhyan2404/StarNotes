package com.onyx.android.sdk.note.common.utils;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.view.Surface;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0002J\u001c\u0010\n\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0002J$\u0010\u000f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0002J \u0010\u0014\u001a\u00020\u00132\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J(\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u0004H\u0002R\u0014\u0010\u001b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u001a¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/NoteAudioUtils;", "", "", "aacPath", "", "limitBytes", "", "decodeAudioToWav", "audioFilePath", "getAudioDuration", "c", "Landroid/media/MediaExtractor;", "extractor", "Landroid/media/MediaFormat;", "mediaFormat", "a", "Landroid/media/MediaCodec;", "codec", "kTimeOutUs", "", "e", "Landroid/media/MediaCodec$BufferInfo;", PrivilegedApp.f6532i, "Ljava/io/ByteArrayOutputStream;", Constants.ELEMNAME_OUTPUT_STRING, C6997f.f39671c, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "TAG", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NoteAudioUtils {

    @NotNull
    public static final NoteAudioUtils INSTANCE = new NoteAudioUtils();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String TAG = "NoteAudioUtils";

    /* renamed from: b */
    public static /* synthetic */ byte[] m34014b(NoteAudioUtils noteAudioUtils, MediaExtractor mediaExtractor, MediaFormat mediaFormat, long j, int i, Object obj) throws IOException {
        if ((i & 4) != 0) {
            j = Long.MAX_VALUE;
        }
        return noteAudioUtils.m34016a(mediaExtractor, mediaFormat, j);
    }

    /* renamed from: d */
    public static /* synthetic */ byte[] m34015d(NoteAudioUtils noteAudioUtils, String str, long j, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            j = Long.MAX_VALUE;
        }
        return noteAudioUtils.m34017c(str, j);
    }

    public static /* synthetic */ byte[] decodeAudioToWav$default(NoteAudioUtils noteAudioUtils, String str, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = Long.MAX_VALUE;
        }
        return noteAudioUtils.decodeAudioToWav(str, j);
    }

    /* renamed from: a */
    public final byte[] m34016a(MediaExtractor extractor, MediaFormat mediaFormat, long limitBytes) throws IOException {
        Throwable th;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        String string = mediaFormat.getString("mime");
        Intrinsics.checkNotNull(string);
        MediaCodec createDecoderByType = MediaCodec.createDecoderByType(string);
        Intrinsics.checkNotNullExpressionValue(createDecoderByType, "createDecoderByType(...)");
        createDecoderByType.configure(mediaFormat, (Surface) null, (MediaCrypto) null, 0);
        createDecoderByType.start();
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            try {
                if (byteArrayOutputStream.size() >= limitBytes) {
                    break;
                }
                if (!z2) {
                    try {
                        z2 = m34018e(extractor, createDecoderByType, 10000L);
                    } catch (Throwable th2) {
                        th = th2;
                        Debug.INSTANCE.m32054i(TAG, "decodeAudioToPcm finish", new Object[0]);
                        createDecoderByType.stop();
                        createDecoderByType.release();
                        extractor.release();
                        byteArrayOutputStream.close();
                        throw th;
                    }
                }
                z = m34019f(createDecoderByType, bufferInfo, byteArrayOutputStream, 10000L);
                z2 = z2;
            } catch (Throwable th3) {
                th = th3;
                Debug.INSTANCE.m32054i(TAG, "decodeAudioToPcm finish", new Object[0]);
                createDecoderByType.stop();
                createDecoderByType.release();
                extractor.release();
                byteArrayOutputStream.close();
                throw th;
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        Debug.INSTANCE.m32054i(TAG, "decodeAudioToPcm finish", new Object[0]);
        createDecoderByType.stop();
        createDecoderByType.release();
        extractor.release();
        byteArrayOutputStream.close();
        return byteArray;
    }

    /* renamed from: c */
    public final byte[] m34017c(String aacPath, long limitBytes) throws IOException {
        MediaFormat mediaFormat;
        MediaExtractor mediaExtractor = new MediaExtractor();
        mediaExtractor.setDataSource(aacPath);
        int trackCount = mediaExtractor.getTrackCount();
        int i = 0;
        while (true) {
            if (i >= trackCount) {
                mediaFormat = null;
                break;
            }
            mediaFormat = mediaExtractor.getTrackFormat(i);
            Intrinsics.checkNotNullExpressionValue(mediaFormat, "getTrackFormat(...)");
            if (StringUtils.startsWith(mediaFormat.getString("mime"), FileExtensionUtils.AUDIO_PREFIX)) {
                mediaExtractor.selectTrack(i);
                break;
            }
            i++;
        }
        if (mediaFormat != null) {
            return m34016a(mediaExtractor, mediaFormat, limitBytes);
        }
        Debug.INSTANCE.m32047e(TAG, "Invalid file with audio track.", new Object[0]);
        mediaExtractor.release();
        return null;
    }

    @Nullable
    public final byte[] decodeAudioToWav(@NotNull String aacPath, long limitBytes) {
        Intrinsics.checkNotNullParameter(aacPath, "aacPath");
        try {
            byte[] m34017c = m34017c(aacPath, limitBytes);
            if (m34017c != null) {
                return WavUtils.INSTANCE.addWavHeader(m34017c);
            }
            return null;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: e */
    public final boolean m34018e(MediaExtractor extractor, MediaCodec codec, long kTimeOutUs) {
        int dequeueInputBuffer = codec.dequeueInputBuffer(kTimeOutUs);
        if (dequeueInputBuffer < 0) {
            return false;
        }
        ByteBuffer inputBuffer = codec.getInputBuffer(dequeueInputBuffer);
        Intrinsics.checkNotNull(inputBuffer);
        int readSampleData = extractor.readSampleData(inputBuffer, 0);
        if (readSampleData < 0) {
            Debug.INSTANCE.m32054i(TAG, "saw input EOS.", new Object[0]);
            codec.queueInputBuffer(dequeueInputBuffer, 0, 0, 0L, 4);
            return true;
        }
        codec.queueInputBuffer(dequeueInputBuffer, 0, readSampleData, extractor.getSampleTime(), 0);
        extractor.advance();
        return false;
    }

    /* renamed from: f */
    public final boolean m34019f(MediaCodec codec, MediaCodec.BufferInfo info, ByteArrayOutputStream output, long kTimeOutUs) throws IOException {
        int dequeueOutputBuffer = codec.dequeueOutputBuffer(info, kTimeOutUs);
        if (dequeueOutputBuffer < 0) {
            if (dequeueOutputBuffer != -2) {
                return false;
            }
            MediaFormat outputFormat = codec.getOutputFormat();
            Intrinsics.checkNotNullExpressionValue(outputFormat, "getOutputFormat(...)");
            Debug.INSTANCE.m32054i(TAG, "output format has changed to " + outputFormat, new Object[0]);
            return false;
        }
        if ((info.flags & 2) != 0) {
            Debug.INSTANCE.m32054i(TAG, "audio encoder: codec config buffer", new Object[0]);
            codec.releaseOutputBuffer(dequeueOutputBuffer, false);
            return false;
        }
        if (info.size != 0) {
            ByteBuffer outputBuffer = codec.getOutputBuffer(dequeueOutputBuffer);
            Intrinsics.checkNotNull(outputBuffer);
            outputBuffer.position(info.offset);
            outputBuffer.limit(info.offset + info.size);
            byte[] bArr = new byte[info.size];
            outputBuffer.get(bArr);
            output.write(bArr);
        }
        codec.releaseOutputBuffer(dequeueOutputBuffer, false);
        if ((info.flags & 4) == 0) {
            return false;
        }
        Debug.INSTANCE.m32054i(TAG, "saw output EOS.", new Object[0]);
        return true;
    }

    public final long getAudioDuration(@NotNull String audioFilePath) {
        Intrinsics.checkNotNullParameter(audioFilePath, "audioFilePath");
        MediaPlayer mediaPlayer = new MediaPlayer();
        try {
            mediaPlayer.setDataSource(audioFilePath);
            mediaPlayer.prepare();
            return mediaPlayer.getDuration();
        } finally {
            mediaPlayer.stop();
            mediaPlayer.release();
        }
    }
}
