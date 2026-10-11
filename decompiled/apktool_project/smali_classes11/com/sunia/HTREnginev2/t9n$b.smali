.class public final Lcom/sunia/HTREnginev2/t9n$b;
.super Landroidx/collection/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/t9n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/LruCache<",
        "Lcom/sunia/HTREnginev2/rnj;",
        "Lcom/sunia/HTREnginev2/qnj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/collection/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Lcom/sunia/HTREnginev2/rnj;)Lcom/sunia/HTREnginev2/qnj;
    .locals 0

    invoke-static {p1}, Lcom/sunia/HTREnginev2/t9n;->b(Lcom/sunia/HTREnginev2/rnj;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/qnj;->c(Ljava/lang/reflect/Method;)Lcom/sunia/HTREnginev2/qnj;

    move-result-object p0

    return-object p0
.end method

.method public c(ZLcom/sunia/HTREnginev2/rnj;Lcom/sunia/HTREnginev2/qnj;Lcom/sunia/HTREnginev2/qnj;)V
    .locals 0

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/rnj;->h()V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/sunia/HTREnginev2/qnj;->d()V

    :cond_0
    return-void
.end method

.method public bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/HTREnginev2/rnj;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/t9n$b;->b(Lcom/sunia/HTREnginev2/rnj;)Lcom/sunia/HTREnginev2/qnj;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/sunia/HTREnginev2/rnj;

    check-cast p3, Lcom/sunia/HTREnginev2/qnj;

    check-cast p4, Lcom/sunia/HTREnginev2/qnj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sunia/HTREnginev2/t9n$b;->c(ZLcom/sunia/HTREnginev2/rnj;Lcom/sunia/HTREnginev2/qnj;Lcom/sunia/HTREnginev2/qnj;)V

    return-void
.end method
