package com.onyx.android.sdk.media.player;

import android.media.MediaDataSource;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.FileInputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e¢\u0006\u0004\b\u0019\u0010\u001aJ(\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0016J\b\u0010\n\u001a\u00020\u0002H\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\r\u001a\u00020\u000bH\u0002R\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0011R\u0016\u0010\u0018\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/media/player/FileListMediaDataSource;", "Landroid/media/MediaDataSource;", "", "position", "", "buffer", "", TypedValues.CycleType.S_WAVE_OFFSET, "size", "readAt", "getSize", "", "close", C6997f.f39671c, "", "", "e", "Ljava/util/List;", "filePathList", "", "Ljava/nio/channels/FileChannel;", "fileChannels", C6998g.f39679a, "J", "length", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class FileListMediaDataSource extends MediaDataSource {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<String> filePathList;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<FileChannel> fileChannels;

    /* renamed from: g, reason: from kotlin metadata */
    public long length;

    public FileListMediaDataSource(@NotNull List<String> filePathList) {
        Intrinsics.checkNotNullParameter(filePathList, "filePathList");
        this.filePathList = filePathList;
        this.fileChannels = new ArrayList();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Iterator<FileChannel> it2 = this.fileChannels.iterator();
        while (it2.hasNext()) {
            FileUtils.INSTANCE.closeQuietly(it2.next());
        }
    }

    /* renamed from: f */
    public final void m33510f() {
        if (CollectionKt.isNonBlank(this.fileChannels)) {
            return;
        }
        for (String str : this.filePathList) {
            List<FileChannel> list = this.fileChannels;
            FileChannel channel = new FileInputStream(str).getChannel();
            Intrinsics.checkNotNullExpressionValue(channel, "getChannel(...)");
            list.add(channel);
        }
        int size = this.fileChannels.size();
        for (int i = 0; i < size; i++) {
            this.length += this.fileChannels.get(i).size();
        }
    }

    @Override // android.media.MediaDataSource
    public long getSize() {
        if (this.length <= 0) {
            m33510f();
        }
        return this.length;
    }

    @Override // android.media.MediaDataSource
    public int readAt(long position, @NotNull byte[] buffer, int offset, int size) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        m33510f();
        long j = 0;
        for (FileChannel fileChannel : this.fileChannels) {
            long size2 = fileChannel.size() + j;
            boolean z = false;
            if (j <= position && position < size2) {
                z = true;
            }
            if (z) {
                fileChannel.position(position - j);
                return fileChannel.read(ByteBuffer.wrap(buffer, offset, size));
            }
            j = size2;
        }
        return -1;
    }
}
