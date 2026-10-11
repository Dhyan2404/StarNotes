.class public final synthetic Lcom/sunia/HTREnginev2/lnd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f:Landroid/media/ImageReader;

.field public final synthetic g:Landroid/media/projection/MediaProjection;

.field public final synthetic h:Landroid/os/Looper;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/media/ImageReader;Landroid/media/projection/MediaProjection;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lnd;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/lnd;->f:Landroid/media/ImageReader;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/lnd;->g:Landroid/media/projection/MediaProjection;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/lnd;->h:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lnd;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/lnd;->f:Landroid/media/ImageReader;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/lnd;->g:Landroid/media/projection/MediaProjection;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lnd;->h:Landroid/os/Looper;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->a(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/media/ImageReader;Landroid/media/projection/MediaProjection;Landroid/os/Looper;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
