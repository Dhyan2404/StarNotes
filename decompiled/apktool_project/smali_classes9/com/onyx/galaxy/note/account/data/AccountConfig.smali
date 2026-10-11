.class public final Lcom/onyx/galaxy/note/account/data/AccountConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR*\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\n0\u0010j\u0008\u0012\u0004\u0012\u00020\n`\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/data/AccountConfig;",
        "Ljava/io/Serializable;",
        "()V",
        "enableSwitchCluster",
        "",
        "getEnableSwitchCluster",
        "()Z",
        "setEnableSwitchCluster",
        "(Z)V",
        "loginAuthType",
        "",
        "getLoginAuthType",
        "()Ljava/lang/String;",
        "setLoginAuthType",
        "(Ljava/lang/String;)V",
        "loginTypes",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "getLoginTypes",
        "()Ljava/util/ArrayList;",
        "setLoginTypes",
        "(Ljava/util/ArrayList;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private enableSwitchCluster:Z

.field private loginAuthType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private loginTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/data/AccountConfig;->loginTypes:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/data/AccountConfig;->loginAuthType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getEnableSwitchCluster()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/account/data/AccountConfig;->enableSwitchCluster:Z

    return p0
.end method

.method public final getLoginAuthType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/data/AccountConfig;->loginAuthType:Ljava/lang/String;

    return-object p0
.end method

.method public final getLoginTypes()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/data/AccountConfig;->loginTypes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final setEnableSwitchCluster(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/account/data/AccountConfig;->enableSwitchCluster:Z

    return-void
.end method

.method public final setLoginAuthType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/data/AccountConfig;->loginAuthType:Ljava/lang/String;

    return-void
.end method

.method public final setLoginTypes(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/data/AccountConfig;->loginTypes:Ljava/util/ArrayList;

    return-void
.end method
