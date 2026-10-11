.class public Lorg/apache/poi/picture/PictureTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IMAGE:",
        "Ljava/awt/Image;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final cache:Lorg/apache/poi/picture/PicturesCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/picture/PicturesCache<",
            "TIMAGE;>;"
        }
    .end annotation
.end field

.field private final filename:Ljava/lang/String;

.field private final picture:Lorg/apache/poi/wp/usermodel/IPicture;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/picture/PictureTask;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/picture/PictureTask;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/wp/usermodel/IPicture;Lorg/apache/poi/picture/PicturesCache;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/wp/usermodel/IPicture;",
            "Lorg/apache/poi/picture/PicturesCache<",
            "TIMAGE;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/picture/PictureTask;->picture:Lorg/apache/poi/wp/usermodel/IPicture;

    iput-object p2, p0, Lorg/apache/poi/picture/PictureTask;->cache:Lorg/apache/poi/picture/PicturesCache;

    iput-object p3, p0, Lorg/apache/poi/picture/PictureTask;->filename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/picture/PictureTask;->picture:Lorg/apache/poi/wp/usermodel/IPicture;

    iget-object v1, p0, Lorg/apache/poi/picture/PictureTask;->cache:Lorg/apache/poi/picture/PicturesCache;

    invoke-interface {v0, v1}, Lorg/apache/poi/wp/usermodel/IPicture;->getImage(Lorg/apache/poi/wp/draw/ImageCreator;)Ljava/awt/Image;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/picture/PictureTask;->cache:Lorg/apache/poi/picture/PicturesCache;

    iget-object p0, p0, Lorg/apache/poi/picture/PictureTask;->filename:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lorg/apache/poi/picture/PicturesCache;->saveImage(Ljava/awt/Image;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
