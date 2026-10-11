.class public abstract Ljavax/imageio/spi/ImageReaderSpi;
.super Ljavax/imageio/spi/ImageReaderWriterSpi;
.source "SourceFile"


# static fields
.field public static final STANDARD_INPUT_TYPE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field protected inputTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private readerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected writerSpiNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljavax/imageio/stream/ImageInputStream;

    aput-object v2, v0, v1

    sput-object v0, Ljavax/imageio/spi/ImageReaderSpi;->STANDARD_INPUT_TYPE:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljavax/imageio/spi/ImageReaderWriterSpi;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ljavax/imageio/spi/ImageReaderSpi;->inputTypes:[Ljava/lang/Class;

    .line 3
    iput-object v0, p0, Ljavax/imageio/spi/ImageReaderSpi;->writerSpiNames:[Ljava/lang/String;

    .line 4
    iput-object v0, p0, Ljavax/imageio/spi/ImageReaderSpi;->readerClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p7

    move-object/from16 v13, p8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move/from16 v12, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    move-object/from16 v15, p17

    move-object/from16 v16, p18

    .line 5
    invoke-direct/range {v0 .. v16}, Ljavax/imageio/spi/ImageReaderWriterSpi;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object/from16 v1, p0

    .line 6
    iput-object v0, v1, Ljavax/imageio/spi/ImageReaderSpi;->inputTypes:[Ljava/lang/Class;

    .line 7
    iput-object v0, v1, Ljavax/imageio/spi/ImageReaderSpi;->writerSpiNames:[Ljava/lang/String;

    .line 8
    iput-object v0, v1, Ljavax/imageio/spi/ImageReaderSpi;->readerClass:Ljava/lang/Class;

    move-object/from16 v0, p7

    if-eqz v0, :cond_3

    .line 9
    array-length v2, v0

    if-eqz v2, :cond_2

    .line 10
    sget-object v2, Ljavax/imageio/spi/ImageReaderSpi;->STANDARD_INPUT_TYPE:[Ljava/lang/Class;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljavax/imageio/stream/ImageInputStream;

    aput-object v3, v0, v2

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual/range {p7 .. p7}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    :goto_0
    iput-object v0, v1, Ljavax/imageio/spi/ImageReaderSpi;->inputTypes:[Ljava/lang/Class;

    move-object/from16 v0, p8

    if-eqz v0, :cond_1

    .line 12
    array-length v2, v0

    if-lez v2, :cond_1

    .line 13
    invoke-virtual/range {p8 .. p8}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v1, Ljavax/imageio/spi/ImageReaderSpi;->writerSpiNames:[Ljava/lang/String;

    :cond_1
    return-void

    .line 14
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputTypes.length == 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputTypes == null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract canDecodeInput(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public createReaderInstance()Ljavax/imageio/ImageReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljavax/imageio/spi/ImageReaderSpi;->createReaderInstance(Ljava/lang/Object;)Ljavax/imageio/ImageReader;

    move-result-object p0

    return-object p0
.end method

.method public abstract createReaderInstance(Ljava/lang/Object;)Ljavax/imageio/ImageReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getImageWriterSpiNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/spi/ImageReaderSpi;->writerSpiNames:[Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getInputTypes()[Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Ljavax/imageio/spi/ImageReaderSpi;->inputTypes:[Ljava/lang/Class;

    invoke-virtual {p0}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Class;

    return-object p0
.end method

.method public isOwnReader(Ljavax/imageio/ImageReader;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->pluginClassName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "reader == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
