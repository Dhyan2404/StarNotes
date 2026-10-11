.class public final Lcom/onyx/android/sdk/universal/editor/events/app/ToggleNotePageLoadingEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0005\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u000c\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/events/app/ToggleNotePageLoadingEvent;",
        "",
        "",
        "a",
        "Z",
        "isShow",
        "()Z",
        "Lcom/onyx/android/sdk/universal/editor/bean/CopyState;",
        "b",
        "Lcom/onyx/android/sdk/universal/editor/bean/CopyState;",
        "getState",
        "()Lcom/onyx/android/sdk/universal/editor/bean/CopyState;",
        "state",
        "<init>",
        "(ZLcom/onyx/android/sdk/universal/editor/bean/CopyState;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Lcom/onyx/android/sdk/universal/editor/bean/CopyState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLcom/onyx/android/sdk/universal/editor/bean/CopyState;)V
    .locals 1
    .param p2    # Lcom/onyx/android/sdk/universal/editor/bean/CopyState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ToggleNotePageLoadingEvent;->a:Z

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ToggleNotePageLoadingEvent;->b:Lcom/onyx/android/sdk/universal/editor/bean/CopyState;

    return-void
.end method


# virtual methods
.method public final getState()Lcom/onyx/android/sdk/universal/editor/bean/CopyState;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ToggleNotePageLoadingEvent;->b:Lcom/onyx/android/sdk/universal/editor/bean/CopyState;

    return-object p0
.end method

.method public final isShow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ToggleNotePageLoadingEvent;->a:Z

    return p0
.end method
