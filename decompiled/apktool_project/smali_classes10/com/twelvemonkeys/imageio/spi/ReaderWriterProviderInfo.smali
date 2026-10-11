.class public abstract Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;
.super Lcom/twelvemonkeys/imageio/spi/ProviderInfo;
.source "SourceFile"


# instance fields
.field public final d:[Ljava/lang/String;

.field public final e:[Ljava/lang/String;

.field public final f:[Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:[Ljava/lang/String;

.field public final i:[Ljava/lang/Class;

.field public final j:Ljava/lang/String;

.field public final k:[Ljava/lang/String;

.field public final l:[Ljava/lang/Class;

.field public final m:Z

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:[Ljava/lang/String;

.field public final q:[Ljava/lang/String;

.field public final r:Z

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:[Ljava/lang/String;

.field public final v:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
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

    move-object v0, p0

    invoke-static {p1}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/twelvemonkeys/imageio/spi/ProviderInfo;-><init>(Ljava/lang/Package;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljavax/imageio/stream/ImageInputStream;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iput-object v2, v0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->i:[Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljavax/imageio/stream/ImageOutputStream;

    aput-object v2, v1, v4

    iput-object v1, v0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->l:[Ljava/lang/Class;

    move-object v1, p2

    iput-object v1, v0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->d:[Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->e:[Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->f:[Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->g:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->h:[Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->j:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->k:[Ljava/lang/String;

    move v1, p9

    iput-boolean v1, v0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->m:Z

    move-object v1, p10

    iput-object v1, v0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->n:Ljava/lang/String;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->o:Ljava/lang/String;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->p:[Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->q:[Ljava/lang/String;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->r:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->s:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->t:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->u:[Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->v:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public extraImageMetadataFormatClassNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->v:[Ljava/lang/String;

    return-object p0
.end method

.method public extraImageMetadataFormatNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->u:[Ljava/lang/String;

    return-object p0
.end method

.method public extraStreamMetadataFormatClassNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->q:[Ljava/lang/String;

    return-object p0
.end method

.method public extraStreamMetadataFormatNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->p:[Ljava/lang/String;

    return-object p0
.end method

.method public formatNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->d:[Ljava/lang/String;

    return-object p0
.end method

.method public inputTypes()[Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->i:[Ljava/lang/Class;

    return-object p0
.end method

.method public mimeTypes()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->f:[Ljava/lang/String;

    return-object p0
.end method

.method public nativeImageMetadataFormatClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->t:Ljava/lang/String;

    return-object p0
.end method

.method public nativeImageMetadataFormatName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->s:Ljava/lang/String;

    return-object p0
.end method

.method public nativeStreamMetadataFormatClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->o:Ljava/lang/String;

    return-object p0
.end method

.method public nativeStreamMetadataFormatName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->n:Ljava/lang/String;

    return-object p0
.end method

.method public outputTypes()[Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->l:[Ljava/lang/Class;

    return-object p0
.end method

.method public readerClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->g:Ljava/lang/String;

    return-object p0
.end method

.method public readerSpiClassNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->h:[Ljava/lang/String;

    return-object p0
.end method

.method public suffixes()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->e:[Ljava/lang/String;

    return-object p0
.end method

.method public supportsStandardImageMetadataFormat()Z
    .locals 0

    iget-boolean p0, p0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->r:Z

    return p0
.end method

.method public supportsStandardStreamMetadataFormat()Z
    .locals 0

    iget-boolean p0, p0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->m:Z

    return p0
.end method

.method public writerClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->j:Ljava/lang/String;

    return-object p0
.end method

.method public writerSpiClassNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->k:[Ljava/lang/String;

    return-object p0
.end method
