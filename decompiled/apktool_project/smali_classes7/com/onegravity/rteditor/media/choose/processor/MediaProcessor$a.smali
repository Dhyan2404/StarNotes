.class public Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor$a;
.super Ljava/io/BufferedInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;->b(Ljava/lang/String;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljava/net/HttpURLConnection;

.field public final synthetic f:Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor$a;->f:Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;

    iput-object p3, p0, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor$a;->e:Ljava/net/HttpURLConnection;

    invoke-direct {p0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    iget-object p0, p0, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor$a;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method
