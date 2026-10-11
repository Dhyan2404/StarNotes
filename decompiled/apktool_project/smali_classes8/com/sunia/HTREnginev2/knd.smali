.class public final synthetic Lcom/sunia/HTREnginev2/knd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;

.field public final synthetic g:Landroid/media/ImageReader;

.field public final synthetic h:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;Landroid/media/ImageReader;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/knd;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/knd;->f:Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/knd;->g:Landroid/media/ImageReader;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/knd;->h:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/knd;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/knd;->f:Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/knd;->g:Landroid/media/ImageReader;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/knd;->h:Landroid/os/Handler;

    invoke-static {v0, v1, v2, p0}, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->b(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;Landroid/media/ImageReader;Landroid/os/Handler;)V

    return-void
.end method
