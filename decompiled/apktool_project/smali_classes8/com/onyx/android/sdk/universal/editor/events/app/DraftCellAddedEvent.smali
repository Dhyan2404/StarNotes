.class public final Lcom/onyx/android/sdk/universal/editor/events/app/DraftCellAddedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/events/app/DraftCellAddedEvent;",
        "",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "a",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "getVirtualPage",
        "()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "virtualPage",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V",
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
.field public final a:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/DraftCellAddedEvent;->a:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    return-void
.end method


# virtual methods
.method public final getVirtualPage()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/DraftCellAddedEvent;->a:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    return-object p0
.end method
