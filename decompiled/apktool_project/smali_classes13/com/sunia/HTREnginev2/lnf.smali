.class public final Lcom/sunia/HTREnginev2/lnf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xpointer/XPointerPart;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/lnf$a;,
        Lcom/sunia/HTREnginev2/lnf$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:I

.field public i:[I

.field public j:I

.field public k:I

.field public l:[I

.field public m:Z

.field public n:Lcom/sunia/HTREnginev2/pom;

.field public o:Lorg/apache/xerces/impl/XMLErrorReporter;

.field public p:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

.field public q:Lorg/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/lnf;->d:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/lnf;->e:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/lnf;->f:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/lnf;->g:Z

    iput v0, p0, Lcom/sunia/HTREnginev2/lnf;->h:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/sunia/HTREnginev2/lnf;->j:I

    iput v0, p0, Lcom/sunia/HTREnginev2/lnf;->k:I

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/lnf;->m:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/lnf;->d:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/lnf;->e:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/lnf;->f:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/lnf;->g:Z

    iput v0, p0, Lcom/sunia/HTREnginev2/lnf;->h:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/sunia/HTREnginev2/lnf;->j:I

    iput v0, p0, Lcom/sunia/HTREnginev2/lnf;->k:I

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/lnf;->m:Z

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lnf;->q:Lorg/apache/xerces/util/SymbolTable;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/impl/XMLErrorReporter;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/lnf;->d:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/lnf;->e:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/lnf;->f:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/lnf;->g:Z

    iput v0, p0, Lcom/sunia/HTREnginev2/lnf;->h:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/sunia/HTREnginev2/lnf;->j:I

    iput v0, p0, Lcom/sunia/HTREnginev2/lnf;->k:I

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/lnf;->m:Z

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lnf;->q:Lorg/apache/xerces/util/SymbolTable;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/lnf;->o:Lorg/apache/xerces/impl/XMLErrorReporter;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 7

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/lnf;->g:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lnf;->i:[I

    array-length v0, v0

    iget v3, p0, Lcom/sunia/HTREnginev2/lnf;->k:I

    add-int/2addr v3, v1

    if-gt v0, v3, :cond_2

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/sunia/HTREnginev2/lnf;->i:[I

    array-length v4, v3

    if-lt v0, v4, :cond_0

    goto :goto_1

    :cond_0
    aget v3, v3, v0

    iget-object v4, p0, Lcom/sunia/HTREnginev2/lnf;->l:[I

    aget v4, v4, v0

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    iget-object v0, p0, Lcom/sunia/HTREnginev2/lnf;->i:[I

    array-length v0, v0

    iget v3, p0, Lcom/sunia/HTREnginev2/lnf;->k:I

    add-int/2addr v3, v1

    if-gt v0, v3, :cond_7

    move v0, v2

    :cond_4
    iget-object v3, p0, Lcom/sunia/HTREnginev2/lnf;->i:[I

    array-length v4, v3

    if-lt v0, v4, :cond_5

    :goto_1
    return v1

    :cond_5
    iget-object v4, p0, Lcom/sunia/HTREnginev2/lnf;->l:[I

    array-length v5, v4

    add-int/lit8 v6, v0, 0x2

    if-ge v5, v6, :cond_6

    return v2

    :cond_6
    aget v3, v3, v0

    add-int/lit8 v0, v0, 0x1

    aget v4, v4, v0

    if-eq v3, v4, :cond_4

    :cond_7
    return v2
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/lnf;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/lnf;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/lnf;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sunia/HTREnginev2/lnf;->d:Z

    iput-boolean v1, p0, Lcom/sunia/HTREnginev2/lnf;->e:Z

    iput-boolean v1, p0, Lcom/sunia/HTREnginev2/lnf;->f:Z

    iput v1, p0, Lcom/sunia/HTREnginev2/lnf;->h:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/sunia/HTREnginev2/lnf;->j:I

    iput v1, p0, Lcom/sunia/HTREnginev2/lnf;->k:I

    iput-boolean v1, p0, Lcom/sunia/HTREnginev2/lnf;->m:Z

    iput-object v0, p0, Lcom/sunia/HTREnginev2/lnf;->n:Lcom/sunia/HTREnginev2/pom;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/lnf;->c()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lnf;->o:Lorg/apache/xerces/impl/XMLErrorReporter;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v0}, Lorg/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/lnf;->o:Lorg/apache/xerces/impl/XMLErrorReporter;

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/lnf;->p:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sunia/HTREnginev2/hmo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/hmo;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/lnf;->p:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    :cond_1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/lnf;->o:Lorg/apache/xerces/impl/XMLErrorReporter;

    new-instance v0, Lcom/sunia/HTREnginev2/imo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/imo;-><init>()V

    const-string v1, "http://www.w3.org/TR/XPTR"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    return-void
.end method

.method public d(Lorg/apache/xerces/xni/QName;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget p1, p0, Lcom/sunia/HTREnginev2/lnf;->k:I

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lnf;->l:[I

    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-lt p1, v1, :cond_0

    array-length p1, v0

    new-array v1, p1, [I

    array-length v4, v0

    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/sunia/HTREnginev2/lnf;->k:I

    mul-int/2addr v0, v2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sunia/HTREnginev2/lnf;->l:[I

    invoke-static {v1, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-boolean p1, p0, Lcom/sunia/HTREnginev2/lnf;->d:Z

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/sunia/HTREnginev2/lnf;->l:[I

    iget v0, p0, Lcom/sunia/HTREnginev2/lnf;->k:I

    iget v1, p0, Lcom/sunia/HTREnginev2/lnf;->j:I

    aput v1, p2, v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sunia/HTREnginev2/lnf;->k:I

    iput p1, p0, Lcom/sunia/HTREnginev2/lnf;->j:I

    iget p2, p0, Lcom/sunia/HTREnginev2/lnf;->h:I

    if-le v0, p2, :cond_1

    if-nez p2, :cond_b

    :cond_1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/lnf;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/lnf;->e:Z

    iget p1, p0, Lcom/sunia/HTREnginev2/lnf;->k:I

    iput p1, p0, Lcom/sunia/HTREnginev2/lnf;->h:I

    goto :goto_2

    :cond_2
    iput-boolean v3, p0, Lcom/sunia/HTREnginev2/lnf;->e:Z

    iput v3, p0, Lcom/sunia/HTREnginev2/lnf;->h:I

    goto :goto_2

    :cond_3
    if-ne p2, p1, :cond_8

    iget p2, p0, Lcom/sunia/HTREnginev2/lnf;->k:I

    iget v0, p0, Lcom/sunia/HTREnginev2/lnf;->h:I

    if-ne p2, v0, :cond_4

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/lnf;->e:Z

    goto :goto_0

    :cond_4
    if-ge p2, v0, :cond_5

    if-nez v0, :cond_6

    :cond_5
    if-le p2, v0, :cond_7

    if-nez v0, :cond_7

    :cond_6
    iput-boolean v3, p0, Lcom/sunia/HTREnginev2/lnf;->e:Z

    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/lnf;->l:[I

    aput v3, v0, p2

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/sunia/HTREnginev2/lnf;->k:I

    aget p2, v0, p2

    add-int/2addr p2, p1

    iput p2, p0, Lcom/sunia/HTREnginev2/lnf;->j:I

    goto :goto_2

    :cond_8
    if-ne p2, v2, :cond_b

    iget-object p2, p0, Lcom/sunia/HTREnginev2/lnf;->l:[I

    iget v0, p0, Lcom/sunia/HTREnginev2/lnf;->k:I

    iget v1, p0, Lcom/sunia/HTREnginev2/lnf;->j:I

    aput v1, p2, v0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/sunia/HTREnginev2/lnf;->j:I

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/lnf;->a()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-boolean p2, p0, Lcom/sunia/HTREnginev2/lnf;->e:Z

    if-nez p2, :cond_9

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/lnf;->f:Z

    goto :goto_1

    :cond_9
    iput-boolean v3, p0, Lcom/sunia/HTREnginev2/lnf;->f:Z

    :goto_1
    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/lnf;->e:Z

    goto :goto_2

    :cond_a
    iput-boolean v3, p0, Lcom/sunia/HTREnginev2/lnf;->e:Z

    iput-boolean v3, p0, Lcom/sunia/HTREnginev2/lnf;->f:Z

    :cond_b
    :goto_2
    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/lnf;->e:Z

    return p0
.end method

.method public e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xerces/xni/XNIException;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/lnf;->o:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/XPTR"

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lnf;->o:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-interface {v1, p0, p1, p2}, Lorg/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchemeData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lnf;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lnf;->a:Ljava/lang/String;

    return-object p0
.end method

.method public isChildFragmentResolved()Z
    .locals 3

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/lnf;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lnf;->n:Lcom/sunia/HTREnginev2/pom;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/lnf;->i:[I

    array-length v1, v1

    if-gtz v1, :cond_0

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/pom;->isChildFragmentResolved()Z

    move-result p0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/lnf;->f:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/lnf;->m:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sunia/HTREnginev2/lnf;->k:I

    iget p0, p0, Lcom/sunia/HTREnginev2/lnf;->h:I

    if-lt v0, p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public isFragmentResolved()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/lnf;->m:Z

    return p0
.end method

.method public parseXPointer(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/lnf;->b()V

    new-instance v6, Lcom/sunia/HTREnginev2/lnf$b;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lnf;->q:Lorg/apache/xerces/util/SymbolTable;

    const/4 v1, 0x0

    invoke-direct {v6, p0, v0, v1}, Lcom/sunia/HTREnginev2/lnf$b;-><init>(Lcom/sunia/HTREnginev2/lnf;Lorg/apache/xerces/util/SymbolTable;Lcom/sunia/HTREnginev2/knf;)V

    new-instance v0, Lcom/sunia/HTREnginev2/knf;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/lnf;->q:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v0, p0, v1}, Lcom/sunia/HTREnginev2/knf;-><init>(Lcom/sunia/HTREnginev2/lnf;Lorg/apache/xerces/util/SymbolTable;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v1, p0, Lcom/sunia/HTREnginev2/lnf;->q:Lorg/apache/xerces/util/SymbolTable;

    const/4 v4, 0x0

    move-object v2, v6

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/sunia/HTREnginev2/lnf$a;->a(Lcom/sunia/HTREnginev2/lnf$a;Lorg/apache/xerces/util/SymbolTable;Lcom/sunia/HTREnginev2/lnf$b;Ljava/lang/String;II)Z

    move-result v0

    const-string v1, "InvalidElementSchemeXPointer"

    if-nez v0, :cond_0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sunia/HTREnginev2/lnf;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {v6}, Lcom/sunia/HTREnginev2/lnf$b;->b(Lcom/sunia/HTREnginev2/lnf$b;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    new-array v0, v0, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-static {v6}, Lcom/sunia/HTREnginev2/lnf$b;->c(Lcom/sunia/HTREnginev2/lnf$b;)Z

    move-result v5

    if-nez v5, :cond_1

    new-array p1, v4, [I

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lnf;->i:[I

    new-array v1, v4, [I

    iput-object v1, p0, Lcom/sunia/HTREnginev2/lnf;->l:[I

    invoke-static {v0, v3, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    invoke-static {v6}, Lcom/sunia/HTREnginev2/lnf$b;->d(Lcom/sunia/HTREnginev2/lnf$b;)I

    move-result v5

    if-eqz v5, :cond_3

    if-eq v5, v2, :cond_2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/sunia/HTREnginev2/lnf;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v6}, Lcom/sunia/HTREnginev2/lnf$b;->d(Lcom/sunia/HTREnginev2/lnf$b;)I

    move-result v5

    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v6}, Lcom/sunia/HTREnginev2/lnf$b;->d(Lcom/sunia/HTREnginev2/lnf$b;)I

    move-result v5

    invoke-static {v6, v5}, Lcom/sunia/HTREnginev2/lnf$b;->a(Lcom/sunia/HTREnginev2/lnf$b;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sunia/HTREnginev2/lnf;->c:Ljava/lang/String;

    new-instance v5, Lcom/sunia/HTREnginev2/pom;

    iget-object v7, p0, Lcom/sunia/HTREnginev2/lnf;->q:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v5, v7}, Lcom/sunia/HTREnginev2/pom;-><init>(Lorg/apache/xerces/util/SymbolTable;)V

    iput-object v5, p0, Lcom/sunia/HTREnginev2/lnf;->n:Lcom/sunia/HTREnginev2/pom;

    iget-object v7, p0, Lcom/sunia/HTREnginev2/lnf;->c:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/sunia/HTREnginev2/pom;->setSchemeName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resolveXPointer(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lnf;->c:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lnf;->n:Lcom/sunia/HTREnginev2/pom;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sunia/HTREnginev2/pom;->resolveXPointer(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;I)Z

    move-result p2

    if-eqz p2, :cond_0

    iput-boolean v1, p0, Lcom/sunia/HTREnginev2/lnf;->d:Z

    iput-boolean v1, p0, Lcom/sunia/HTREnginev2/lnf;->g:Z

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/sunia/HTREnginev2/lnf;->d:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/sunia/HTREnginev2/lnf;->d:Z

    move p2, v2

    :goto_0
    iget-object p3, p0, Lcom/sunia/HTREnginev2/lnf;->i:[I

    array-length v0, p3

    if-lez v0, :cond_2

    invoke-virtual {p0, p1, p4}, Lcom/sunia/HTREnginev2/lnf;->d(Lorg/apache/xerces/xni/QName;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/lnf;->m:Z

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    array-length p1, p3

    if-gtz p1, :cond_3

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/lnf;->m:Z

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, Lcom/sunia/HTREnginev2/lnf;->m:Z

    :goto_1
    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/lnf;->m:Z

    return p0
.end method

.method public setSchemeData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lnf;->b:Ljava/lang/String;

    return-void
.end method

.method public setSchemeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lnf;->a:Ljava/lang/String;

    return-void
.end method
