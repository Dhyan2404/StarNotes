package com.onegravity.rteditor.api;

import android.content.Context;
import android.util.Log;
import com.onegravity.rteditor.api.media.RTAudio;
import com.onegravity.rteditor.api.media.RTAudioImpl;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.api.media.RTImageImpl;
import com.onegravity.rteditor.api.media.RTMediaSource;
import com.onegravity.rteditor.api.media.RTMediaType;
import com.onegravity.rteditor.api.media.RTVideo;
import com.onegravity.rteditor.api.media.RTVideoImpl;
import com.onegravity.rteditor.media.MediaUtils;
import com.onegravity.rteditor.utils.Helper;
import com.onegravity.rteditor.utils.io.IOUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes7.dex */
public class RTMediaFactoryImpl implements RTMediaFactory<RTImage, RTAudio, RTVideo> {
    private static final long serialVersionUID = 6970361368051595063L;
    private File mStoragePath;

    public RTMediaFactoryImpl(Context context) {
        this(context, true);
    }

    private void copyFile(InputStream inputStream, File file) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file);
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            IOUtils.copy(inputStream, fileOutputStream);
            Helper.closeQuietly(fileOutputStream);
        } catch (IOException e2) {
            e = e2;
            fileOutputStream2 = fileOutputStream;
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            Helper.closeQuietly(fileOutputStream2);
            Helper.closeQuietly(inputStream);
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            Helper.closeQuietly(fileOutputStream2);
            Helper.closeQuietly(inputStream);
            throw th;
        }
        Helper.closeQuietly(inputStream);
    }

    private File loadMedia(RTMediaSource rTMediaSource) {
        File createUniqueFile = MediaUtils.createUniqueFile(new File(getAbsolutePath(rTMediaSource.getMediaType())), rTMediaSource.getName(), rTMediaSource.getMimeType(), false);
        copyFile(rTMediaSource.getInputStream(), createUniqueFile);
        return createUniqueFile;
    }

    @Override // com.onegravity.rteditor.api.RTMediaFactory
    public RTAudio createAudio(RTMediaSource rTMediaSource) {
        File loadMedia = loadMedia(rTMediaSource);
        if (loadMedia == null) {
            return null;
        }
        return new RTAudioImpl(loadMedia.getAbsolutePath());
    }

    @Override // com.onegravity.rteditor.api.RTMediaFactory
    public RTImage createImage(RTMediaSource rTMediaSource) {
        File loadMedia = loadMedia(rTMediaSource);
        if (loadMedia == null) {
            return null;
        }
        return new RTImageImpl(loadMedia.getAbsolutePath());
    }

    @Override // com.onegravity.rteditor.api.RTMediaFactory
    public RTVideo createVideo(RTMediaSource rTMediaSource) {
        File loadMedia = loadMedia(rTMediaSource);
        if (loadMedia == null) {
            return null;
        }
        return new RTVideoImpl(loadMedia.getAbsolutePath());
    }

    public String getAbsolutePath(RTMediaType rTMediaType) {
        File file = new File(this.mStoragePath.getAbsolutePath(), rTMediaType.mediaPath());
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }

    public RTMediaFactoryImpl(Context context, boolean z) {
        File filesDir;
        if (z) {
            filesDir = context.getExternalFilesDir(null);
        } else {
            filesDir = context.getFilesDir();
        }
        this.mStoragePath = filesDir;
    }

    @Override // com.onegravity.rteditor.api.RTMediaFactory
    public RTAudio createAudio(String str) {
        return new RTAudioImpl(str);
    }

    @Override // com.onegravity.rteditor.api.RTMediaFactory
    public RTImage createImage(String str) {
        return new RTImageImpl(str);
    }

    @Override // com.onegravity.rteditor.api.RTMediaFactory
    public RTVideo createVideo(String str) {
        return new RTVideoImpl(str);
    }
}
