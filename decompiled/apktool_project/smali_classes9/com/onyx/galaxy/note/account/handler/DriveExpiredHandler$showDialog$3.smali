.class final Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$showDialog$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->h(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $provider:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$showDialog$3;->$provider:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$showDialog$3;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    sget-object v0, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->INSTANCE:Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$showDialog$3;->$provider:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->access$handleTokenExpire(Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Z)V

    return-void
.end method
