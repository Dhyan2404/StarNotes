.class public final Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;
.super Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0017\u0010\u000b\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR$\u0010\u0013\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;",
        "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "workBundle",
        "",
        "execute",
        "",
        "f",
        "Ljava/lang/String;",
        "getNotePageId",
        "()Ljava/lang/String;",
        "notePageId",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "g",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "getVirtualPageBoxInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "setVirtualPageBoxInfo",
        "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V",
        "virtualPageBoxInfo",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/String;)V",
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
.field public final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notePageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->findBoxInfoByPageId(Ljava/lang/String;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;->g:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public final getNotePageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;->g:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final setVirtualPageBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;->g:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method
