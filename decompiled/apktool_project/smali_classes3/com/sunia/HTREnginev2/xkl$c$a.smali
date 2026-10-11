.class public Lcom/sunia/HTREnginev2/xkl$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/xkl$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroidx/core/util/Consumer;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/sunia/HTREnginev2/xkl$c;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/xkl$c;Landroidx/core/util/Consumer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xkl$c$a;->g:Lcom/sunia/HTREnginev2/xkl$c;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/xkl$c$a;->e:Landroidx/core/util/Consumer;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/xkl$c$a;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xkl$c$a;->e:Landroidx/core/util/Consumer;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xkl$c$a;->f:Ljava/lang/Object;

    invoke-interface {v0, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
