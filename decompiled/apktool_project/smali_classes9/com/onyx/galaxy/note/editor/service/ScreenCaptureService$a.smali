.class public final Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService;->d(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$a;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$a;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$a;->e:Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService;->access$getEventBus$cp()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/ScreenBitmapEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ScreenBitmapEvent;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->safelyPostEvent(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
