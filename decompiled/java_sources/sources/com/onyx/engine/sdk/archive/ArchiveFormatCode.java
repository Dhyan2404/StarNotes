package com.onyx.engine.sdk.archive;

/* loaded from: classes8.dex */
public class ArchiveFormatCode {
    public static final int ARCHIVE_FORMAT_7ZIP = 917504;
    public static final int ARCHIVE_FORMAT_AR = 458752;
    public static final int ARCHIVE_FORMAT_AR_BSD = 458754;
    public static final int ARCHIVE_FORMAT_AR_GNU = 458753;
    public static final int ARCHIVE_FORMAT_BASE_MASK = 16711680;
    public static final int ARCHIVE_FORMAT_CAB = 786432;
    public static final int ARCHIVE_FORMAT_CPIO = 65536;
    public static final int ARCHIVE_FORMAT_CPIO_AFIO_LARGE = 65542;
    public static final int ARCHIVE_FORMAT_CPIO_BIN_BE = 65539;
    public static final int ARCHIVE_FORMAT_CPIO_BIN_LE = 65538;
    public static final int ARCHIVE_FORMAT_CPIO_POSIX = 65537;
    public static final int ARCHIVE_FORMAT_CPIO_PWB = 65543;
    public static final int ARCHIVE_FORMAT_CPIO_SVR4_CRC = 65541;
    public static final int ARCHIVE_FORMAT_CPIO_SVR4_NOCRC = 65540;
    public static final int ARCHIVE_FORMAT_EMPTY = 393216;
    public static final int ARCHIVE_FORMAT_ISO9660 = 262144;
    public static final int ARCHIVE_FORMAT_ISO9660_ROCKRIDGE = 262145;
    public static final int ARCHIVE_FORMAT_LHA = 720896;
    public static final int ARCHIVE_FORMAT_MTREE = 524288;
    public static final int ARCHIVE_FORMAT_RAR = 851968;
    public static final int ARCHIVE_FORMAT_RAR_V5 = 1048576;
    public static final int ARCHIVE_FORMAT_RAW = 589824;
    public static final int ARCHIVE_FORMAT_SHAR = 131072;
    public static final int ARCHIVE_FORMAT_SHAR_BASE = 131073;
    public static final int ARCHIVE_FORMAT_SHAR_DUMP = 131074;
    public static final int ARCHIVE_FORMAT_TAR = 196608;
    public static final int ARCHIVE_FORMAT_TAR_GNUTAR = 196612;
    public static final int ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE = 196610;
    public static final int ARCHIVE_FORMAT_TAR_PAX_RESTRICTED = 196611;
    public static final int ARCHIVE_FORMAT_TAR_USTAR = 196609;
    public static final int ARCHIVE_FORMAT_WARC = 983040;
    public static final int ARCHIVE_FORMAT_XAR = 655360;
    public static final int ARCHIVE_FORMAT_ZIP = 327680;

    private ArchiveFormatCode() {
    }

    public static boolean isRarFormatCode(int i) {
        return i == 851968 || i == 1048576;
    }
}
