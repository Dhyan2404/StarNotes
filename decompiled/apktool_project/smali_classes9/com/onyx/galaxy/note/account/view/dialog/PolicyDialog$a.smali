.class public final Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog$a;->e:Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/cluster/ClusterManager;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/cluster/ClusterManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCurClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getClusterHost()Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;->getGalaxyHostBaseUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog$a;->e:Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;->access$getPolicyType$p(Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;)Lcom/onyx/galaxy/note/account/data/PolicyType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/data/PolicyType;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog$a;->a(Lcom/onyx/android/sdk/data/cluster/ClusterManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
