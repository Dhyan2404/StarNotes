.class public abstract Lcom/onyx/android/sdk/replicator/note/proto/pb/BaseAppPBData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/replicator/note/proto/pb/AppPBData;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/BaseAppPBData;",
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/AppPBData;",
        "()V",
        "collectDataExportToFile",
        "",
        "pbDataContext",
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/AppPBDataContext;",
        "copyPBToDB",
        "sdk-replicator_overseasRelease"
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collectDataExportToFile(Lcom/onyx/android/sdk/replicator/note/proto/pb/AppPBDataContext;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/AppPBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pbDataContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public copyPBToDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/AppPBDataContext;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/AppPBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pbDataContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
