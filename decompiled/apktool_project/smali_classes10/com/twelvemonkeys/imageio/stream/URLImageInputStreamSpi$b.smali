.class public Lcom/twelvemonkeys/imageio/stream/URLImageInputStreamSpi$b;
.super Ljavax/imageio/stream/MemoryCacheImageInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twelvemonkeys/imageio/stream/URLImageInputStreamSpi;->createInputStreamInstance(Ljava/lang/Object;ZLjava/io/File;)Ljavax/imageio/stream/ImageInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic i:Ljava/io/InputStream;

.field public final synthetic j:Lcom/twelvemonkeys/imageio/stream/URLImageInputStreamSpi;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/imageio/stream/URLImageInputStreamSpi;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/stream/URLImageInputStreamSpi$b;->j:Lcom/twelvemonkeys/imageio/stream/URLImageInputStreamSpi;

    iput-object p3, p0, Lcom/twelvemonkeys/imageio/stream/URLImageInputStreamSpi$b;->i:Ljava/io/InputStream;

    invoke-direct {p0, p2}, Ljavax/imageio/stream/MemoryCacheImageInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljavax/imageio/stream/MemoryCacheImageInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/stream/URLImageInputStreamSpi$b;->i:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/stream/URLImageInputStreamSpi$b;->i:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
.end method
