.class public Lorg/apache/poi/examples/MacInit;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 4

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mac OS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/Library/Fonts"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lsun/font/FontManagerFactory;->getInstance()Lsun/font/FontManager;

    move-result-object v1

    check-cast v1, Lsun/font/SunFontManager;

    invoke-virtual {v1, v0}, Lsun/font/SunFontManager;->registerFontsInDir(Ljava/lang/String;)V

    new-instance v0, Ljava/awt/Font;

    const/4 v1, 0x0

    const/16 v2, 0x12

    const-string v3, "\u5b8b\u4f53"

    invoke-direct {v0, v3, v1, v2}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-static {}, Lsun/font/FontAccess;->getFontAccess()Lsun/font/FontAccess;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsun/font/FontAccess;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    :cond_0
    return-void
.end method
