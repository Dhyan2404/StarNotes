package com.google.mlkit.common.sdkinternal.model;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_common.zzi;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.model.LocalModel;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;

@KeepForSdk
/* loaded from: classes6.dex */
public class LocalModelLoader {

    /* renamed from: a */
    public MappedByteBuffer f36589a;

    /* renamed from: b */
    public final Context f36590b;

    /* renamed from: c */
    public final LocalModel f36591c;

    @KeepForSdk
    public LocalModelLoader(@NonNull Context context, @NonNull LocalModel localModel) {
        this.f36590b = context;
        this.f36591c = localModel;
    }

    @NonNull
    @KeepForSdk
    public LocalModel getLocalModel() {
        return this.f36591c;
    }

    @NonNull
    @KeepForSdk
    @WorkerThread
    public MappedByteBuffer load() throws MlKitException {
        FileChannel channel;
        Preconditions.checkNotNull(this.f36590b, "Context can not be null");
        Preconditions.checkNotNull(this.f36591c, "Model source can not be null");
        MappedByteBuffer mappedByteBuffer = this.f36589a;
        if (mappedByteBuffer != null) {
            return mappedByteBuffer;
        }
        LocalModel localModel = this.f36591c;
        String absoluteFilePath = localModel.getAbsoluteFilePath();
        String assetFilePath = localModel.getAssetFilePath();
        Uri uri = localModel.getUri();
        if (absoluteFilePath != null) {
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(absoluteFilePath, "r");
                try {
                    FileChannel channel2 = randomAccessFile.getChannel();
                    try {
                        this.f36589a = channel2.map(FileChannel.MapMode.READ_ONLY, 0L, channel2.size());
                        channel2.close();
                        randomAccessFile.close();
                    } finally {
                    }
                } finally {
                }
            } catch (IOException e) {
                throw new MlKitException("Can not open the local file: ".concat(String.valueOf(this.f36591c.getAbsoluteFilePath())), 14, e);
            }
        } else if (assetFilePath != null) {
            try {
                AssetFileDescriptor openFd = this.f36590b.getAssets().openFd(assetFilePath);
                try {
                    channel = new FileInputStream(openFd.getFileDescriptor()).getChannel();
                    try {
                        this.f36589a = channel.map(FileChannel.MapMode.READ_ONLY, openFd.getStartOffset(), openFd.getDeclaredLength());
                        channel.close();
                        openFd.close();
                    } finally {
                    }
                } finally {
                }
            } catch (IOException e2) {
                throw new MlKitException("Can not load the file from asset: " + assetFilePath + ". Please double check your asset file name and ensure it's not compressed. See documentation for details how to use aaptOptions to skip file compression", 14, e2);
            }
        } else {
            if (uri == null) {
                throw new MlKitException("Can not load the model. One of filePath, assetFilePath or URI must be set for the model.", 14);
            }
            try {
                AssetFileDescriptor zza = zzi.zza(this.f36590b, uri, "r");
                try {
                    channel = zza.createInputStream().getChannel();
                    try {
                        this.f36589a = channel.map(FileChannel.MapMode.READ_ONLY, zza.getStartOffset(), zza.getLength());
                        channel.close();
                        zza.close();
                    } finally {
                        if (channel != null) {
                            try {
                                channel.close();
                            } catch (Throwable th) {
                                th.addSuppressed(th);
                            }
                        }
                    }
                } finally {
                }
            } catch (IOException e3) {
                throw new MlKitException("Can not load the file from URI: ".concat(uri.toString()), 14, e3);
            }
        }
        return this.f36589a;
    }
}
