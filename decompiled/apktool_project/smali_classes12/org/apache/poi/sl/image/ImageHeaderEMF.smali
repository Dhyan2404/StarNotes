.class public Lorg/apache/poi/sl/image/ImageHeaderEMF;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final EMF_SIGNATURE:Ljava/lang/String; = " EMF"

.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final deviceBounds:Ljava/awt/Rectangle;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/sl/image/ImageHeaderEMF;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x4

    add-int/2addr p2, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    sget-object p1, Lorg/apache/poi/sl/image/ImageHeaderEMF;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    const-string p2, "Invalid EMF picture - invalid type"

    invoke-interface {p1, p2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    new-instance p1, Ljava/awt/Rectangle;

    const/16 p2, 0xc8

    invoke-direct {p1, v3, v3, p2, p2}, Ljava/awt/Rectangle;-><init>(IIII)V

    iput-object p1, p0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->deviceBounds:Ljava/awt/Rectangle;

    return-void

    :cond_0
    add-int/2addr p2, v1

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    add-int/2addr p2, v1

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    add-int/2addr p2, v1

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v4

    add-int/2addr p2, v1

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v5

    add-int/2addr p2, v1

    new-instance v6, Ljava/awt/Rectangle;

    sub-int/2addr v4, v0

    const/4 v7, -0x1

    if-ne v4, v7, :cond_1

    move v4, v3

    :cond_1
    sub-int/2addr v5, v2

    if-ne v5, v7, :cond_2

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_0
    invoke-direct {v6, v0, v2, v4, v3}, Ljava/awt/Rectangle;-><init>(IIII)V

    iput-object v6, p0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->deviceBounds:Ljava/awt/Rectangle;

    add-int/lit8 p2, p2, 0x10

    new-instance p0, Ljava/lang/String;

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v1, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string p1, " EMF"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "Invalid EMF picture - invalid signature"

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getBounds()Ljava/awt/Rectangle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->deviceBounds:Ljava/awt/Rectangle;

    return-object p0
.end method

.method public getSize()Ljava/awt/Dimension;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->deviceBounds:Ljava/awt/Rectangle;

    invoke-virtual {p0}, Ljava/awt/Rectangle;->getSize()Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method
