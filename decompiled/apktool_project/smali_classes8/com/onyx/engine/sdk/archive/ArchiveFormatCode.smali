.class public Lcom/onyx/engine/sdk/archive/ArchiveFormatCode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ARCHIVE_FORMAT_7ZIP:I = 0xe0000

.field public static final ARCHIVE_FORMAT_AR:I = 0x70000

.field public static final ARCHIVE_FORMAT_AR_BSD:I = 0x70002

.field public static final ARCHIVE_FORMAT_AR_GNU:I = 0x70001

.field public static final ARCHIVE_FORMAT_BASE_MASK:I = 0xff0000

.field public static final ARCHIVE_FORMAT_CAB:I = 0xc0000

.field public static final ARCHIVE_FORMAT_CPIO:I = 0x10000

.field public static final ARCHIVE_FORMAT_CPIO_AFIO_LARGE:I = 0x10006

.field public static final ARCHIVE_FORMAT_CPIO_BIN_BE:I = 0x10003

.field public static final ARCHIVE_FORMAT_CPIO_BIN_LE:I = 0x10002

.field public static final ARCHIVE_FORMAT_CPIO_POSIX:I = 0x10001

.field public static final ARCHIVE_FORMAT_CPIO_PWB:I = 0x10007

.field public static final ARCHIVE_FORMAT_CPIO_SVR4_CRC:I = 0x10005

.field public static final ARCHIVE_FORMAT_CPIO_SVR4_NOCRC:I = 0x10004

.field public static final ARCHIVE_FORMAT_EMPTY:I = 0x60000

.field public static final ARCHIVE_FORMAT_ISO9660:I = 0x40000

.field public static final ARCHIVE_FORMAT_ISO9660_ROCKRIDGE:I = 0x40001

.field public static final ARCHIVE_FORMAT_LHA:I = 0xb0000

.field public static final ARCHIVE_FORMAT_MTREE:I = 0x80000

.field public static final ARCHIVE_FORMAT_RAR:I = 0xd0000

.field public static final ARCHIVE_FORMAT_RAR_V5:I = 0x100000

.field public static final ARCHIVE_FORMAT_RAW:I = 0x90000

.field public static final ARCHIVE_FORMAT_SHAR:I = 0x20000

.field public static final ARCHIVE_FORMAT_SHAR_BASE:I = 0x20001

.field public static final ARCHIVE_FORMAT_SHAR_DUMP:I = 0x20002

.field public static final ARCHIVE_FORMAT_TAR:I = 0x30000

.field public static final ARCHIVE_FORMAT_TAR_GNUTAR:I = 0x30004

.field public static final ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE:I = 0x30002

.field public static final ARCHIVE_FORMAT_TAR_PAX_RESTRICTED:I = 0x30003

.field public static final ARCHIVE_FORMAT_TAR_USTAR:I = 0x30001

.field public static final ARCHIVE_FORMAT_WARC:I = 0xf0000

.field public static final ARCHIVE_FORMAT_XAR:I = 0xa0000

.field public static final ARCHIVE_FORMAT_ZIP:I = 0x50000


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRarFormatCode(I)Z
    .locals 1

    const/high16 v0, 0xd0000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x100000

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
