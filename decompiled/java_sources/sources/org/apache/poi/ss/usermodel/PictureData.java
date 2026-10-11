package org.apache.poi.ss.usermodel;

/* loaded from: classes13.dex */
public interface PictureData {
    byte[] getData();

    String getMimeType();

    int getPictureType();

    String suggestFileExtension();
}
