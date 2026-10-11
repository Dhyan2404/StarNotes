.class public final synthetic Lcom/sunia/HTREnginev2/lgi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic e:Landroidx/work/impl/utils/IdGenerator;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/utils/IdGenerator;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lgi;->e:Landroidx/work/impl/utils/IdGenerator;

    iput p2, p0, Lcom/sunia/HTREnginev2/lgi;->f:I

    iput p3, p0, Lcom/sunia/HTREnginev2/lgi;->g:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lgi;->e:Landroidx/work/impl/utils/IdGenerator;

    iget v1, p0, Lcom/sunia/HTREnginev2/lgi;->f:I

    iget p0, p0, Lcom/sunia/HTREnginev2/lgi;->g:I

    invoke-static {v0, v1, p0}, Landroidx/work/impl/utils/IdGenerator;->a(Landroidx/work/impl/utils/IdGenerator;II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
