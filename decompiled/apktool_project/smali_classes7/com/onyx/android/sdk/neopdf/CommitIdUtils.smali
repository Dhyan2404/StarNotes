.class public final Lcom/onyx/android/sdk/neopdf/CommitIdUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/CommitIdUtils;",
        "",
        "()V",
        "generateCommitId",
        "",
        "sdk-neopdf_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/neopdf/CommitIdUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/neopdf/CommitIdUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neopdf/CommitIdUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/neopdf/CommitIdUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/CommitIdUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final generateCommitId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/neopdf/lib/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/lib/UUIDUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/lib/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
