.class public Lcom/sunia/HTREnginev2/k2e$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/k2e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# static fields
.field public static final e:S = 0xcs


# instance fields
.field public final a:Lcom/sunia/HTREnginev2/k2e$e;

.field public final b:I

.field public final c:Lcom/sunia/HTREnginev2/k2e$h;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/k2e$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sunia/HTREnginev2/k2e$d;",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/k2e$b;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/k2e$g;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/k2e$g;->b:I

    new-instance v0, Lcom/sunia/HTREnginev2/k2e$h;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/k2e$h;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/k2e$g;->c:Lcom/sunia/HTREnginev2/k2e$h;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {}, Lcom/sunia/HTREnginev2/k2e;->c()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/sunia/HTREnginev2/k2e$g;->d:Ljava/util/List;

    new-instance v3, Lcom/sunia/HTREnginev2/k2e$c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/k2e$d;

    invoke-direct {v3, v0, v1}, Lcom/sunia/HTREnginev2/k2e$c;-><init>(Lcom/sunia/HTREnginev2/k2e$d;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sunia/HTREnginev2/k2e$e;

    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k2e$g;->a()I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {p1, v2, v0, v1}, Lcom/sunia/HTREnginev2/k2e$e;-><init>(SSI)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/k2e$g;->a:Lcom/sunia/HTREnginev2/k2e$e;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/k2e$g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/k2e$c;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/k2e$c;->a()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/k2e$g;->c:Lcom/sunia/HTREnginev2/k2e$h;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k2e$h;->a()I

    move-result p0

    add-int/lit8 p0, p0, 0xc

    add-int/2addr p0, v1

    return p0
.end method

.method public b(Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/k2e$g;->a:Lcom/sunia/HTREnginev2/k2e$e;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/k2e$e;->a(Ljava/io/ByteArrayOutputStream;)V

    iget v0, p0, Lcom/sunia/HTREnginev2/k2e$g;->b:I

    invoke-static {v0}, Lcom/sunia/HTREnginev2/k2e;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/k2e$g;->c:Lcom/sunia/HTREnginev2/k2e$h;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/k2e$h;->c(Ljava/io/ByteArrayOutputStream;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k2e$g;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/k2e$c;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/k2e$c;->b(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method
