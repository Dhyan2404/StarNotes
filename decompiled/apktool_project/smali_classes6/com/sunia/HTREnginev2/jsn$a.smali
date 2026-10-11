.class public Lcom/sunia/HTREnginev2/jsn$a;
.super Lcom/sunia/HTREnginev2/wpj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/jsn;->l(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/wpj<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lcom/sunia/HTREnginev2/jsn;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/jsn;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jsn$a;->h:Lcom/sunia/HTREnginev2/jsn;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/jsn$a;->g:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/sunia/HTREnginev2/wpj;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jsn$a;->h:Lcom/sunia/HTREnginev2/jsn;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/jsn;->m(Lcom/sunia/HTREnginev2/jsn;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jsn$a;->g:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
