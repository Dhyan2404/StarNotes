.class public Landroidx/recyclerview/widget/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/g;->a(Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3


# instance fields
.field public final a:Landroidx/recyclerview/widget/g$c;

.field public final b:Landroid/os/Handler;

.field public c:Ljava/lang/Runnable;

.field public final synthetic d:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

.field public final synthetic e:Landroidx/recyclerview/widget/g;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/g;Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/g$a;->e:Landroidx/recyclerview/widget/g;

    iput-object p2, p0, Landroidx/recyclerview/widget/g$a;->d:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/recyclerview/widget/g$c;

    invoke-direct {p1}, Landroidx/recyclerview/widget/g$c;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/g$a;->a:Landroidx/recyclerview/widget/g$c;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/g$a;->b:Landroid/os/Handler;

    new-instance p1, Landroidx/recyclerview/widget/g$a$a;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/g$a$a;-><init>(Landroidx/recyclerview/widget/g$a;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/g$a;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/g$d;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/g$a;->a:Landroidx/recyclerview/widget/g$c;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/g$c;->c(Landroidx/recyclerview/widget/g$d;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/g$a;->b:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/recyclerview/widget/g$a;->c:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public addTile(ILandroidx/recyclerview/widget/TileList$Tile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0, p1, p2}, Landroidx/recyclerview/widget/g$d;->c(IILjava/lang/Object;)Landroidx/recyclerview/widget/g$d;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/g$a;->a(Landroidx/recyclerview/widget/g$d;)V

    return-void
.end method

.method public removeTile(II)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p1, p2}, Landroidx/recyclerview/widget/g$d;->a(III)Landroidx/recyclerview/widget/g$d;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/g$a;->a(Landroidx/recyclerview/widget/g$d;)V

    return-void
.end method

.method public updateItemCount(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Landroidx/recyclerview/widget/g$d;->a(III)Landroidx/recyclerview/widget/g$d;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/g$a;->a(Landroidx/recyclerview/widget/g$d;)V

    return-void
.end method
