.class public final synthetic Lcom/sunia/HTREnginev2/mnd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mnd;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/mnd;->b:Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/mnd;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mnd;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/mnd;->b:Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mnd;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->c(Landroid/os/Handler;Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/media/ImageReader;)V

    return-void
.end method
