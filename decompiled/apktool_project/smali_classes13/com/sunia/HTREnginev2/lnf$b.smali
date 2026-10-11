.class public final Lcom/sunia/HTREnginev2/lnf$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/lnf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# static fields
.field public static final h:I = 0x0

.field public static final i:I = 0x1

.field public static final j:I = 0x100


# instance fields
.field public final a:[Ljava/lang/String;

.field public b:[I

.field public c:I

.field public d:I

.field public e:Lorg/apache/xerces/util/SymbolTable;

.field public f:Ljava/util/HashMap;

.field public final synthetic g:Lcom/sunia/HTREnginev2/lnf;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/lnf;Lorg/apache/xerces/util/SymbolTable;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lnf$b;->g:Lcom/sunia/HTREnginev2/lnf;

    const-string p1, "XPTRTOKEN_ELEM_NCNAME"

    const-string v0, "XPTRTOKEN_ELEM_CHILD"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sunia/HTREnginev2/lnf$b;->a:[Ljava/lang/String;

    const/16 v1, 0x100

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sunia/HTREnginev2/lnf$b;->b:[I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sunia/HTREnginev2/lnf$b;->c:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sunia/HTREnginev2/lnf$b;->f:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/lnf$b;->e:Lorg/apache/xerces/util/SymbolTable;

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lnf$b;->f:Ljava/util/HashMap;

    new-instance p1, Ljava/lang/Integer;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/lnf;Lorg/apache/xerces/util/SymbolTable;Lcom/sunia/HTREnginev2/knf;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/lnf$b;-><init>(Lcom/sunia/HTREnginev2/lnf;Lorg/apache/xerces/util/SymbolTable;)V

    return-void
.end method

.method public static synthetic a(Lcom/sunia/HTREnginev2/lnf$b;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/lnf$b;->k(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sunia/HTREnginev2/lnf$b;)I
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/lnf$b;->j()I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/sunia/HTREnginev2/lnf$b;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/lnf$b;->l()Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/sunia/HTREnginev2/lnf$b;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/lnf$b;->m()I

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/sunia/HTREnginev2/lnf$b;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/lnf$b;->g(I)V

    return-void
.end method

.method public static synthetic f(Lcom/sunia/HTREnginev2/lnf$b;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/lnf$b;->h(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final g(I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/lnf$b;->b:[I

    iget v1, p0, Lcom/sunia/HTREnginev2/lnf$b;->c:I

    aput p1, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/lnf$b;->b:[I

    iget v1, p0, Lcom/sunia/HTREnginev2/lnf$b;->c:I

    shl-int/lit8 v2, v1, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sunia/HTREnginev2/lnf$b;->b:[I

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lnf$b;->b:[I

    iget v1, p0, Lcom/sunia/HTREnginev2/lnf$b;->c:I

    aput p1, v0, v1

    :goto_0
    iget p1, p0, Lcom/sunia/HTREnginev2/lnf$b;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sunia/HTREnginev2/lnf$b;->c:I

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lnf$b;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/lnf$b;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/lnf$b;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/lnf$b;->g(I)V

    return-void
.end method

.method public final i(I)Ljava/lang/Integer;
    .locals 1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lnf$b;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public final j()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/lnf$b;->c:I

    return p0
.end method

.method public final k(I)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lnf$b;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final l()Z
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/lnf$b;->d:I

    iget p0, p0, Lcom/sunia/HTREnginev2/lnf$b;->c:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final m()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lcom/sunia/HTREnginev2/lnf$b;->d:I

    iget v1, p0, Lcom/sunia/HTREnginev2/lnf$b;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lnf$b;->g:Lcom/sunia/HTREnginev2/lnf;

    const-string v1, "XPointerElementSchemeProcessingError"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sunia/HTREnginev2/lnf;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/lnf$b;->b:[I

    iget v1, p0, Lcom/sunia/HTREnginev2/lnf$b;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sunia/HTREnginev2/lnf$b;->d:I

    aget p0, v0, v1

    return p0
.end method

.method public final n()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/lnf$b;->m()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/lnf$b;->k(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lnf$b;->g:Lcom/sunia/HTREnginev2/lnf;

    const-string v1, "XPointerElementSchemeProcessingError"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sunia/HTREnginev2/lnf;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final o()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lcom/sunia/HTREnginev2/lnf$b;->d:I

    iget v1, p0, Lcom/sunia/HTREnginev2/lnf$b;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lnf$b;->g:Lcom/sunia/HTREnginev2/lnf;

    const-string v1, "XPointerElementSchemeProcessingError"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sunia/HTREnginev2/lnf;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/lnf$b;->b:[I

    iget p0, p0, Lcom/sunia/HTREnginev2/lnf$b;->d:I

    aget p0, v0, p0

    return p0
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/lnf$b;->d:I

    return-void
.end method
