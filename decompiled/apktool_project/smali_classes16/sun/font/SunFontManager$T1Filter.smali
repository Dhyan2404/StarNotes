.class Lsun/font/SunFontManager$T1Filter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/SunFontManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "T1Filter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsun/font/SunFontManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsun/font/SunFontManager$T1Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    sget-boolean p0, Lsun/font/SunFontManager;->noType1Font:Z

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x4

    if-gtz p0, :cond_1

    return p1

    :cond_1
    const-string v0, ".pfa"

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".pfb"

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".PFA"

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".PFB"

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p1, 0x1

    :cond_3
    return p1
.end method
