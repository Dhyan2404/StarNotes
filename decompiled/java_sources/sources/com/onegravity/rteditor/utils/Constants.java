package com.onegravity.rteditor.utils;

/* loaded from: classes7.dex */
public abstract class Constants {
    public static final long APPLY_DEFAULT_STYLE_DELAY_MS = 30;
    public static final char CH_NBSP = 160;
    public static final char CH_ZWSP = 8203;
    public static final int CROP_IMAGE = 107;
    public static final int FONT_SIZE_STR_MIN_LEN = 3;
    public static final String HEX_COLOR_START = "#";
    public static final String RICH_TEXT_SOURCE_ANDROID = "android";
    public static final String RICH_TEXT_SOURCE_IOS = "ios";
    public static final String RICH_TEXT_SOURCE_WEB = "web";
    public static final int RICH_TEXT_VERSION_CODE = 2;
    public static final String TAG_BR_INVALID = "<br>";
    public static final String TAG_BR_VALID = "<br/>";
    public static final String TAG_DIV_START = "<div";
    public static final String TAG_FONT_SIZE_COMPAT = "data-size";
    public static final String TAG_VERSION = "version";
    public static final String VERSION_ATTR_C = "data-client";
    public static final String VERSION_ATTR_V = "data-version";

    /* loaded from: classes7.dex */
    public enum MediaAction {
        PICK_PICTURE(101),
        PICK_VIDEO(102),
        PICK_AUDIO(103),
        CAPTURE_PICTURE(104),
        CAPTURE_VIDEO(105),
        CAPTURE_AUDIO(106);

        private int mRequestCode;

        MediaAction(int i) {
            this.mRequestCode = i;
        }

        public int requestCode() {
            return this.mRequestCode;
        }
    }
}
