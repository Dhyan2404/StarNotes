.class public abstract Lorg/jsoup/select/a;
.super Lorg/jsoup/select/Evaluator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/select/a$b;,
        Lorg/jsoup/select/a$a;
    }
.end annotation


# instance fields
.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/select/Evaluator;",
            ">;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/select/a;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/select/a;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jsoup/select/Evaluator;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/jsoup/select/a;-><init>()V

    iget-object v0, p0, Lorg/jsoup/select/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/jsoup/select/a;->c()V

    return-void
.end method


# virtual methods
.method public a()Lorg/jsoup/select/Evaluator;
    .locals 1

    iget v0, p0, Lorg/jsoup/select/a;->d:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/jsoup/select/a;->c:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/select/Evaluator;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public b(Lorg/jsoup/select/Evaluator;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/select/a;->c:Ljava/util/ArrayList;

    iget p0, p0, Lorg/jsoup/select/a;->d:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/select/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/jsoup/select/a;->d:I

    return-void
.end method
