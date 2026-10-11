.class public Lcom/sunia/HTREnginev2/bxn$a;
.super Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/bxn;->c()Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/sunia/HTREnginev2/bxn;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/bxn;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bxn$a;->b:Lcom/sunia/HTREnginev2/bxn;

    invoke-direct {p0}, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onIsPermissionRevocationEnabledForAppResult(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bxn$a;->b:Lcom/sunia/HTREnginev2/bxn;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bxn;->f:Landroidx/concurrent/futures/ResolvableFuture;

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/bxn$a;->b:Lcom/sunia/HTREnginev2/bxn;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bxn;->f:Landroidx/concurrent/futures/ResolvableFuture;

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/bxn$a;->b:Lcom/sunia/HTREnginev2/bxn;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bxn;->f:Landroidx/concurrent/futures/ResolvableFuture;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    const-string p0, "PackageManagerCompat"

    const-string p1, "Unable to retrieve the permission revocation setting from the backport"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
