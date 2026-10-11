.class final Lsun/awt/WDefaultFontCharset;
.super Lsun/awt/AWTCharset;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/awt/WDefaultFontCharset$Encoder;
    }
.end annotation


# instance fields
.field private fontName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lsun/awt/WDefaultFontCharset;->initIDs()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "windows-1252"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "WDefaultFontCharset"

    invoke-direct {p0, v1, v0}, Lsun/awt/AWTCharset;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    iput-object p1, p0, Lsun/awt/WDefaultFontCharset;->fontName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$100(Lsun/awt/WDefaultFontCharset;C)Z
    .locals 0

    invoke-direct {p0, p1}, Lsun/awt/WDefaultFontCharset;->canConvert(C)Z

    move-result p0

    return p0
.end method

.method private synchronized native canConvert(C)Z
.end method

.method private static native initIDs()V
.end method


# virtual methods
.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 2

    new-instance v0, Lsun/awt/WDefaultFontCharset$Encoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsun/awt/WDefaultFontCharset$Encoder;-><init>(Lsun/awt/WDefaultFontCharset;Lsun/awt/WDefaultFontCharset$1;)V

    return-object v0
.end method
