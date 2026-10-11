.class public final Lcom/sun/imageio/stream/StreamCloser$CloseAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/stream/StreamCloser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CloseAction"
.end annotation


# instance fields
.field private iis:Ljavax/imageio/stream/ImageInputStream;


# direct methods
.method private constructor <init>(Ljavax/imageio/stream/ImageInputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/sun/imageio/stream/StreamCloser$CloseAction;->iis:Ljavax/imageio/stream/ImageInputStream;

    return-void
.end method

.method public synthetic constructor <init>(Ljavax/imageio/stream/ImageInputStream;Lcom/sun/imageio/stream/StreamCloser$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sun/imageio/stream/StreamCloser$CloseAction;-><init>(Ljavax/imageio/stream/ImageInputStream;)V

    return-void
.end method


# virtual methods
.method public performAction()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/imageio/stream/StreamCloser$CloseAction;->iis:Ljavax/imageio/stream/ImageInputStream;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->close()V

    :cond_0
    return-void
.end method
