.class public Lcom/twelvemonkeys/util/service/ServiceRegistry$f;
.super Lcom/twelvemonkeys/util/FilterIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twelvemonkeys/util/service/ServiceRegistry;->containingCategories(Ljava/lang/Object;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twelvemonkeys/util/FilterIterator<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lcom/twelvemonkeys/util/service/ServiceRegistry;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/util/service/ServiceRegistry;Ljava/util/Iterator;Lcom/twelvemonkeys/util/FilterIterator$Filter;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$f;->i:Lcom/twelvemonkeys/util/service/ServiceRegistry;

    iput-object p4, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$f;->h:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/twelvemonkeys/util/FilterIterator;-><init>(Ljava/util/Iterator;Lcom/twelvemonkeys/util/FilterIterator$Filter;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1

    invoke-super {p0}, Lcom/twelvemonkeys/util/FilterIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$f;->g:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/service/ServiceRegistry$f;->a()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$f;->g:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$f;->i:Lcom/twelvemonkeys/util/service/ServiceRegistry;

    invoke-static {v1, v0}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->a(Lcom/twelvemonkeys/util/service/ServiceRegistry;Ljava/lang/Class;)Lcom/twelvemonkeys/util/service/ServiceRegistry$g;

    move-result-object v0

    iget-object v1, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$f;->h:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->c(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$f;->g:Ljava/lang/Class;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No current element"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
