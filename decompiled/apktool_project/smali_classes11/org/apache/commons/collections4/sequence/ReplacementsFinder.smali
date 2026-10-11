.class public Lorg/apache/commons/collections4/sequence/ReplacementsFinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/sequence/CommandVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/sequence/CommandVisitor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:I

.field public final d:Lorg/apache/commons/collections4/sequence/ReplacementsHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/sequence/ReplacementsHandler<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/sequence/ReplacementsHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/sequence/ReplacementsHandler<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->c:I

    iput-object p1, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->d:Lorg/apache/commons/collections4/sequence/ReplacementsHandler;

    return-void
.end method


# virtual methods
.method public visitDeleteCommand(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitInsertCommand(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitKeepCommand(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p1, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->c:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->d:Lorg/apache/commons/collections4/sequence/ReplacementsHandler;

    iget v1, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->c:I

    iget-object v2, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->b:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->a:Ljava/util/List;

    invoke-interface {p1, v1, v2, v3}, Lorg/apache/commons/collections4/sequence/ReplacementsHandler;->handleReplacement(ILjava/util/List;Ljava/util/List;)V

    iget-object p1, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iput v0, p0, Lorg/apache/commons/collections4/sequence/ReplacementsFinder;->c:I

    :goto_0
    return-void
.end method
