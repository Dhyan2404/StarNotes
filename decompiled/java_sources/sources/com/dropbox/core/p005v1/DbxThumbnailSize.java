package com.dropbox.core.p005v1;

import com.google.android.material.motion.MotionUtils;
import net.p110sf.saxon.ma.json.JsonParser;
import net.p110sf.saxon.om.StandardNames;

/* loaded from: classes4.dex */
public class DbxThumbnailSize {
    public final int height;
    public final String ident;
    public final int width;
    public static final DbxThumbnailSize w32h32 = new DbxThumbnailSize("xs", 32, 32);
    public static final DbxThumbnailSize w64h64 = new DbxThumbnailSize("s", 64, 64);
    public static final DbxThumbnailSize w128h128 = new DbxThumbnailSize("m", 128, 128);
    public static final DbxThumbnailSize w640h480 = new DbxThumbnailSize("l", StandardNames.XSI, JsonParser.DUPLICATES_SPECIFIED);
    public static final DbxThumbnailSize w1024h768 = new DbxThumbnailSize("xl", 1024, 768);

    public DbxThumbnailSize(String str, int i, int i2) {
        this.ident = str;
        this.width = i;
        this.height = i2;
    }

    public String toString() {
        return MotionUtils.f31761c + this.ident + " " + this.width + "x" + this.height + MotionUtils.f31762d;
    }
}
