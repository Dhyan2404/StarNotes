.class public abstract Lcom/twelvemonkeys/imageio/metadata/MetadataWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract write(Lcom/twelvemonkeys/imageio/metadata/Directory;Ljavax/imageio/stream/ImageOutputStream;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
