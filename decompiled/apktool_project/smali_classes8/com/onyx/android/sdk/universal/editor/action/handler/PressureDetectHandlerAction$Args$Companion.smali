.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args$Companion;",
        "",
        "()V",
        "restoreUserProviderDrawingArgs",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;",
        "selectionArgs",
        "shapeDrawingArgs",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final restoreUserProviderDrawingArgs()Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/events/note/RestoreUserProviderEvent;

    invoke-direct {v3}, Lcom/onyx/android/sdk/universal/editor/events/note/RestoreUserProviderEvent;-><init>()V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;-><init>(FZLjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final selectionArgs()Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;-><init>(FZLjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final shapeDrawingArgs()Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;-><init>(FZLjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
