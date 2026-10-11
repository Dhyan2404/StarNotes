package com.dropbox.core.p005v1;

import com.google.android.exoplayer2.util.FileTypes;

/* loaded from: classes4.dex */
public class DbxThumbnailFormat {
    public static final DbxThumbnailFormat JPEG = new DbxThumbnailFormat("jpeg");
    public static final DbxThumbnailFormat PNG = new DbxThumbnailFormat("png");
    public final String ident;

    public DbxThumbnailFormat(String str) {
        this.ident = str;
    }

    public static DbxThumbnailFormat bestForFileName(String str, DbxThumbnailFormat dbxThumbnailFormat) {
        String lowerCase = str.toLowerCase();
        return (lowerCase.endsWith(".png") || lowerCase.endsWith(".gif")) ? PNG : (lowerCase.endsWith(FileTypes.f28311D) || lowerCase.endsWith(FileTypes.f28310C) || lowerCase.endsWith(".jpe")) ? JPEG : dbxThumbnailFormat;
    }
}
