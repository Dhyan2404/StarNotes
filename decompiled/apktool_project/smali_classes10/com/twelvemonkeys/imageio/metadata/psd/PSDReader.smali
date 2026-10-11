.class public final Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader;
.super Lcom/twelvemonkeys/imageio/metadata/MetadataReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader$PSDResource;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twelvemonkeys/imageio/metadata/MetadataReader;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljavax/imageio/stream/ImageInputStream;)Lcom/twelvemonkeys/imageio/metadata/Directory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "input"

    invoke-static {p1, p0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result v0

    const v1, 0x3842494d

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->readShort()S

    move-result v0

    new-instance v1, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader$PSDResource;

    invoke-direct {v1, v0, p1}, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader$PSDResource;-><init>(SLjavax/imageio/stream/ImageInputStream;)V

    new-instance v2, Lcom/sunia/HTREnginev2/ilk;

    invoke-virtual {v1}, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader$PSDResource;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader$PSDResource;->data()[B

    move-result-object v1

    invoke-direct {v2, v0, v3, v1}, Lcom/sunia/HTREnginev2/ilk;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljavax/imageio/IIOException;

    const-string v1, "Wrong image resource type, expected \'8BIM\': \'%08x\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Lcom/sunia/HTREnginev2/hlk;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/hlk;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method
