.class Lsun/font/SunFontManager$TTorT1Filter;
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
    name = "TTorT1Filter"
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
    invoke-direct {p0}, Lsun/font/SunFontManager$TTorT1Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x4

    const/4 p1, 0x0

    if-gtz p0, :cond_0

    return p1

    :cond_0
    const-string v0, ".ttf"

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const-string v0, ".TTF"

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".ttc"

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".TTC"

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".otf"

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".OTF"

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    return v1

    :cond_3
    sget-boolean v0, Lsun/font/SunFontManager;->noType1Font:Z

    if-eqz v0, :cond_4

    return p1

    :cond_4
    const-string v0, ".pfa"

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".pfb"

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".PFA"

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".PFB"

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move p1, v1

    :cond_6
    return p1
.end method
