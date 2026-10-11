.class public Landroidx/core/provider/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/c;->d(Landroid/content/Context;Landroidx/core/provider/FontRequest;ILjava/util/concurrent/Executor;Landroidx/core/provider/a;)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroidx/core/provider/c$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Landroidx/core/provider/FontRequest;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/core/provider/c$c;->e:Ljava/lang/String;

    iput-object p2, p0, Landroidx/core/provider/c$c;->f:Landroid/content/Context;

    iput-object p3, p0, Landroidx/core/provider/c$c;->g:Landroidx/core/provider/FontRequest;

    iput p4, p0, Landroidx/core/provider/c$c;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/core/provider/c$e;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroidx/core/provider/c$c;->e:Ljava/lang/String;

    iget-object v1, p0, Landroidx/core/provider/c$c;->f:Landroid/content/Context;

    iget-object v2, p0, Landroidx/core/provider/c$c;->g:Landroidx/core/provider/FontRequest;

    iget p0, p0, Landroidx/core/provider/c$c;->h:I

    invoke-static {v0, v1, v2, p0}, Landroidx/core/provider/c;->c(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/c$e;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    new-instance p0, Landroidx/core/provider/c$e;

    const/4 v0, -0x3

    invoke-direct {p0, v0}, Landroidx/core/provider/c$e;-><init>(I)V

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/core/provider/c$c;->a()Landroidx/core/provider/c$e;

    move-result-object p0

    return-object p0
.end method
