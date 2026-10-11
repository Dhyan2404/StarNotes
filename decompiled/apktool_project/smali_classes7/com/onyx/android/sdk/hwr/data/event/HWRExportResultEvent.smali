.class public final Lcom/onyx/android/sdk/hwr/data/event/HWRExportResultEvent;
.super Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent<",
        "Lcom/onyx/android/sdk/hwr/data/event/HWRExportResultEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0008R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/data/event/HWRExportResultEvent;",
        "Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
        "e",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
        "getOutput",
        "()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
        "setOutput",
        "(Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;)V",
        "output",
        "<init>",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public e:Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRExportResultEvent;->e:Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    return-void
.end method


# virtual methods
.method public final getOutput()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRExportResultEvent;->e:Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    return-object p0
.end method

.method public final setOutput(Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRExportResultEvent;->e:Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    return-void
.end method
