.class public Lretrofit2/d$a;
.super Lretrofit2/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/d;->c()Lretrofit2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lretrofit2/d<",
        "Ljava/lang/Iterable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lretrofit2/d;


# direct methods
.method public constructor <init>(Lretrofit2/d;)V
    .locals 0

    iput-object p1, p0, Lretrofit2/d$a;->a:Lretrofit2/d;

    invoke-direct {p0}, Lretrofit2/d;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/sunia/HTREnginev2/vkl;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Lretrofit2/d$a;->d(Lcom/sunia/HTREnginev2/vkl;Ljava/lang/Iterable;)V

    return-void
.end method

.method public d(Lcom/sunia/HTREnginev2/vkl;Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/vkl;",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lretrofit2/d$a;->a:Lretrofit2/d;

    invoke-virtual {v1, p1, v0}, Lretrofit2/d;->a(Lcom/sunia/HTREnginev2/vkl;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method
