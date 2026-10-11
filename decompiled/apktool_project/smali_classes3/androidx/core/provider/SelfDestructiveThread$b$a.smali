.class public Landroidx/core/provider/SelfDestructiveThread$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/SelfDestructiveThread$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Landroidx/core/provider/SelfDestructiveThread$b;


# direct methods
.method public constructor <init>(Landroidx/core/provider/SelfDestructiveThread$b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/core/provider/SelfDestructiveThread$b$a;->f:Landroidx/core/provider/SelfDestructiveThread$b;

    iput-object p2, p0, Landroidx/core/provider/SelfDestructiveThread$b$a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread$b$a;->f:Landroidx/core/provider/SelfDestructiveThread$b;

    iget-object v0, v0, Landroidx/core/provider/SelfDestructiveThread$b;->g:Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;

    iget-object p0, p0, Landroidx/core/provider/SelfDestructiveThread$b$a;->e:Ljava/lang/Object;

    invoke-interface {v0, p0}, Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;->onReply(Ljava/lang/Object;)V

    return-void
.end method
