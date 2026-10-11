package com.onegravity.rteditor.api.media;

import android.graphics.BitmapFactory;
import android.media.ExifInterface;
import android.util.Log;
import com.onegravity.rteditor.api.format.RTFormat;
import com.onegravity.rteditor.utils.io.FilenameUtils;
import java.io.File;

/* loaded from: classes7.dex */
public abstract class RTMediaImpl implements RTMedia {
    private static final long serialVersionUID = 5098840799124458004L;
    private String mFilePath;

    public RTMediaImpl(String str) {
        this.mFilePath = str;
    }

    private int getDimension(String str, boolean z) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        options.outWidth = 0;
        options.outHeight = 0;
        options.inSampleSize = 1;
        BitmapFactory.decodeFile(str, options);
        return z ? options.outWidth : options.outHeight;
    }

    @Override // com.onegravity.rteditor.api.media.RTMedia
    public boolean exists() {
        return this.mFilePath != null && new File(this.mFilePath).exists();
    }

    @Override // com.onegravity.rteditor.api.media.RTMedia
    public String getFileExtension() {
        return FilenameUtils.getExtension(this.mFilePath);
    }

    @Override // com.onegravity.rteditor.api.media.RTMedia
    public String getFileName() {
        return FilenameUtils.getName(this.mFilePath);
    }

    @Override // com.onegravity.rteditor.api.media.RTMedia
    public String getFilePath(RTFormat rTFormat) {
        return this.mFilePath;
    }

    @Override // com.onegravity.rteditor.api.media.RTMedia
    public int getHeight() {
        return getHeight(getFilePath(RTFormat.SPANNED));
    }

    @Override // com.onegravity.rteditor.api.media.RTMedia
    public long getSize() {
        if (this.mFilePath != null) {
            return new File(this.mFilePath).length();
        }
        return 0L;
    }

    @Override // com.onegravity.rteditor.api.media.RTMedia
    public int getWidth() {
        return getWidth(getFilePath(RTFormat.SPANNED));
    }

    @Override // com.onegravity.rteditor.api.media.RTMedia
    public void remove() {
        removeFile(this.mFilePath);
    }

    public void removeFile(String str) {
        if (str != null) {
            new File(str).delete();
        }
    }

    public void setFilePath(String str) {
        this.mFilePath = str;
    }

    public String getFilePath() {
        return this.mFilePath;
    }

    public int getHeight(String str) {
        try {
            String attribute = new ExifInterface(str).getAttribute(androidx.exifinterface.media.ExifInterface.TAG_IMAGE_LENGTH);
            return attribute.equals("0") ? getDimension(str, false) : Integer.parseInt(attribute);
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            return 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v6, types: [int] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    public int getWidth(String str) {
        try {
            String attribute = new ExifInterface(str).getAttribute(androidx.exifinterface.media.ExifInterface.TAG_IMAGE_WIDTH);
            this = attribute.equals("0") ? getDimension(str, true) : Integer.parseInt(attribute);
            return this;
        } catch (Exception e) {
            Log.e(this.getClass().getSimpleName(), e.getMessage(), e);
            return 0;
        }
    }
}
