.class public final Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001:\u0001\u0011B,\u0008\u0007\u0012\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\t\u0012\u00070\u0002\u00a2\u0006\u0002\u0008\u00060\u0004\u0012\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0006\u0010\u0003\u001a\u00020\u0002R%\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\t\u0012\u00070\u0002\u00a2\u0006\u0002\u0008\u00060\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\u000e\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector;",
        "",
        "Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;",
        "getAccountAuth",
        "",
        "",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "a",
        "Ljava/util/Map;",
        "authMap",
        "b",
        "Ljava/lang/String;",
        "getType",
        "()Ljava/lang/String;",
        "type",
        "<init>",
        "(Ljava/util/Map;Ljava/lang/String;)V",
        "Creator",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ldagger/assisted/Assisted;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ldagger/assisted/AssistedInject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "authMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAccountAuth()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector;->a:Ljava/util/Map;

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector;->b:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;

    if-nez p0, :cond_0

    new-instance p0, Lcom/onyx/galaxy/note/account/data/EmptyAccountAuth;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/account/data/EmptyAccountAuth;-><init>()V

    :cond_0
    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector;->b:Ljava/lang/String;

    return-object p0
.end method
