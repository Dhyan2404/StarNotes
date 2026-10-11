.class public final Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel$Companion;",
        "",
        "()V",
        "INVALID_POSITION",
        "",
        "getINVALID_POSITION",
        "()Ljava/lang/String;",
        "INVALID_POSITION_INT",
        "",
        "getINVALID_POSITION_INT",
        "()I",
        "sdk-reader_overseasRelease"
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getINVALID_POSITION()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->access$getINVALID_POSITION$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getINVALID_POSITION_INT()I
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->access$getINVALID_POSITION_INT$cp()I

    move-result p0

    return p0
.end method
