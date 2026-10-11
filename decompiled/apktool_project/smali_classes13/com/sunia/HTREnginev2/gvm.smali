.class public final Lcom/sunia/HTREnginev2/gvm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/grammars/XMLGrammarPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/gvm$b;,
        Lcom/sunia/HTREnginev2/gvm$a;
    }
.end annotation


# static fields
.field public static final e:I = 0xb

.field public static final f:[Lorg/apache/xerces/xni/grammars/Grammar;


# instance fields
.field public a:[Lcom/sunia/HTREnginev2/gvm$a;

.field public b:Z

.field public c:I

.field public final d:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xerces/xni/grammars/Grammar;

    sput-object v0, Lcom/sunia/HTREnginev2/gvm;->f:[Lorg/apache/xerces/xni/grammars/Grammar;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/gvm;->a:[Lcom/sunia/HTREnginev2/gvm$a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/gvm;->c:I

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/gvm;->d:Ljava/lang/ref/ReferenceQueue;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/sunia/HTREnginev2/gvm$a;

    iput-object v1, p0, Lcom/sunia/HTREnginev2/gvm;->a:[Lcom/sunia/HTREnginev2/gvm$a;

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/gvm;->b:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/gvm;->a:[Lcom/sunia/HTREnginev2/gvm$a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/gvm;->c:I

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/gvm;->d:Ljava/lang/ref/ReferenceQueue;

    new-array p1, p1, [Lcom/sunia/HTREnginev2/gvm$a;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gvm;->a:[Lcom/sunia/HTREnginev2/gvm$a;

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/gvm;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/gvm;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    check-cast v0, Lcom/sunia/HTREnginev2/gvm$b;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/gvm$b;->a:Lcom/sunia/HTREnginev2/gvm$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/gvm;->g(Lcom/sunia/HTREnginev2/gvm$a;)Lorg/apache/xerces/xni/grammars/Grammar;

    goto :goto_0
.end method

.method public b(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 5

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gvm;->a:[Lcom/sunia/HTREnginev2/gvm$a;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/gvm;->a()V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/gvm;->e(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v2, v1

    iget-object v3, p0, Lcom/sunia/HTREnginev2/gvm;->a:[Lcom/sunia/HTREnginev2/gvm$a;

    array-length v4, v3

    rem-int/2addr v2, v4

    aget-object v2, v3, v2

    :goto_0
    if-nez v2, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v3, v2, Lcom/sunia/HTREnginev2/gvm$a;->f:Lcom/sunia/HTREnginev2/gvm$b;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/xni/grammars/Grammar;

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/sunia/HTREnginev2/gvm;->g(Lcom/sunia/HTREnginev2/gvm$a;)Lorg/apache/xerces/xni/grammars/Grammar;

    goto :goto_1

    :cond_1
    iget v3, v2, Lcom/sunia/HTREnginev2/gvm$a;->a:I

    if-ne v3, v1, :cond_2

    iget-object v3, v2, Lcom/sunia/HTREnginev2/gvm$a;->e:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v3, p1}, Lcom/sunia/HTREnginev2/gvm;->c(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v3

    if-eqz v3, :cond_2

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    iget-object v2, v2, Lcom/sunia/HTREnginev2/gvm$a;->d:Lcom/sunia/HTREnginev2/gvm$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public c(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 2

    instance-of p0, p1, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;

    if-eqz p0, :cond_5

    instance-of p0, p2, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    check-cast p1, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;

    check-cast p2, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;

    invoke-interface {p1}, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p2}, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_1
    invoke-interface {p2}, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p2}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v0

    :cond_3
    invoke-interface {p2}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public cacheGrammars(Ljava/lang/String;[Lorg/apache/xerces/xni/grammars/Grammar;)V
    .locals 1

    iget-boolean p1, p0, Lcom/sunia/HTREnginev2/gvm;->b:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    array-length v0, p2

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v0, p2, p1

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/gvm;->f(Lorg/apache/xerces/xni/grammars/Grammar;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sunia/HTREnginev2/gvm;->a:[Lcom/sunia/HTREnginev2/gvm$a;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    iput v0, p0, Lcom/sunia/HTREnginev2/gvm;->c:I

    return-void

    :cond_0
    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/gvm$a;->a()V

    iget-object v2, p0, Lcom/sunia/HTREnginev2/gvm;->a:[Lcom/sunia/HTREnginev2/gvm$a;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public d(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 5

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gvm;->a:[Lcom/sunia/HTREnginev2/gvm$a;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/gvm;->a()V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/gvm;->e(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v2, v1

    iget-object v3, p0, Lcom/sunia/HTREnginev2/gvm;->a:[Lcom/sunia/HTREnginev2/gvm$a;

    array-length v4, v3

    rem-int/2addr v2, v4

    aget-object v2, v3, v2

    :goto_0
    if-nez v2, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v3, v2, Lcom/sunia/HTREnginev2/gvm$a;->f:Lcom/sunia/HTREnginev2/gvm$b;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/xni/grammars/Grammar;

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/sunia/HTREnginev2/gvm;->g(Lcom/sunia/HTREnginev2/gvm$a;)Lorg/apache/xerces/xni/grammars/Grammar;

    goto :goto_1

    :cond_1
    iget v4, v2, Lcom/sunia/HTREnginev2/gvm$a;->a:I

    if-ne v4, v1, :cond_2

    iget-object v4, v2, Lcom/sunia/HTREnginev2/gvm$a;->e:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v4, p1}, Lcom/sunia/HTREnginev2/gvm;->c(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v4

    if-eqz v4, :cond_2

    monitor-exit v0

    return-object v3

    :cond_2
    :goto_1
    iget-object v2, v2, Lcom/sunia/HTREnginev2/gvm$a;->d:Lcom/sunia/HTREnginev2/gvm$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public e(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)I
    .locals 1

    instance-of p0, p1, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;

    if-eqz p0, :cond_2

    check-cast p1, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;

    invoke-interface {p1}, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_1
    xor-int/2addr p0, v0

    return p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public f(Lorg/apache/xerces/xni/grammars/Grammar;)V
    .locals 10

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/gvm;->b:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gvm;->a:[Lcom/sunia/HTREnginev2/gvm$a;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/gvm;->a()V

    invoke-interface {p1}, Lorg/apache/xerces/xni/grammars/Grammar;->getGrammarDescription()Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sunia/HTREnginev2/gvm;->e(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v2

    const v1, 0x7fffffff

    and-int/2addr v1, v2

    iget-object v3, p0, Lcom/sunia/HTREnginev2/gvm;->a:[Lcom/sunia/HTREnginev2/gvm$a;

    array-length v5, v3

    rem-int v8, v1, v5

    aget-object v1, v3, v8

    :goto_0
    if-nez v1, :cond_0

    new-instance v9, Lcom/sunia/HTREnginev2/gvm$a;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gvm;->a:[Lcom/sunia/HTREnginev2/gvm$a;

    aget-object v6, v1, v8

    iget-object v7, p0, Lcom/sunia/HTREnginev2/gvm;->d:Ljava/lang/ref/ReferenceQueue;

    move-object v1, v9

    move v3, v8

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/sunia/HTREnginev2/gvm$a;-><init>(IILorg/apache/xerces/xni/grammars/XMLGrammarDescription;Lorg/apache/xerces/xni/grammars/Grammar;Lcom/sunia/HTREnginev2/gvm$a;Ljava/lang/ref/ReferenceQueue;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/gvm;->a:[Lcom/sunia/HTREnginev2/gvm$a;

    aput-object v9, p1, v8

    iget p1, p0, Lcom/sunia/HTREnginev2/gvm;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sunia/HTREnginev2/gvm;->c:I

    monitor-exit v0

    goto :goto_1

    :cond_0
    iget v3, v1, Lcom/sunia/HTREnginev2/gvm$a;->a:I

    if-ne v3, v2, :cond_2

    iget-object v3, v1, Lcom/sunia/HTREnginev2/gvm$a;->e:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v3, v4}, Lcom/sunia/HTREnginev2/gvm;->c(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, v1, Lcom/sunia/HTREnginev2/gvm$a;->f:Lcom/sunia/HTREnginev2/gvm$b;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_1

    new-instance v2, Lcom/sunia/HTREnginev2/gvm$b;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gvm;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, v1, p1, p0}, Lcom/sunia/HTREnginev2/gvm$b;-><init>(Lcom/sunia/HTREnginev2/gvm$a;Lorg/apache/xerces/xni/grammars/Grammar;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v2, v1, Lcom/sunia/HTREnginev2/gvm$a;->f:Lcom/sunia/HTREnginev2/gvm$b;

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, v1, Lcom/sunia/HTREnginev2/gvm$a;->d:Lcom/sunia/HTREnginev2/gvm$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public final g(Lcom/sunia/HTREnginev2/gvm$a;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 4

    iget-object v0, p1, Lcom/sunia/HTREnginev2/gvm$a;->c:Lcom/sunia/HTREnginev2/gvm$a;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/sunia/HTREnginev2/gvm$a;->d:Lcom/sunia/HTREnginev2/gvm$a;

    iput-object v1, v0, Lcom/sunia/HTREnginev2/gvm$a;->d:Lcom/sunia/HTREnginev2/gvm$a;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/gvm;->a:[Lcom/sunia/HTREnginev2/gvm$a;

    iget v2, p1, Lcom/sunia/HTREnginev2/gvm$a;->b:I

    iget-object v3, p1, Lcom/sunia/HTREnginev2/gvm$a;->d:Lcom/sunia/HTREnginev2/gvm$a;

    aput-object v3, v1, v2

    :goto_0
    iget-object v1, p1, Lcom/sunia/HTREnginev2/gvm$a;->d:Lcom/sunia/HTREnginev2/gvm$a;

    if-eqz v1, :cond_1

    iput-object v0, v1, Lcom/sunia/HTREnginev2/gvm$a;->c:Lcom/sunia/HTREnginev2/gvm$a;

    :cond_1
    iget v0, p0, Lcom/sunia/HTREnginev2/gvm;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/gvm;->c:I

    iget-object p0, p1, Lcom/sunia/HTREnginev2/gvm$a;->f:Lcom/sunia/HTREnginev2/gvm$b;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gvm$b;->a:Lcom/sunia/HTREnginev2/gvm$a;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/xni/grammars/Grammar;

    return-object p0
.end method

.method public h(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 5

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gvm;->a:[Lcom/sunia/HTREnginev2/gvm$a;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/gvm;->a()V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/gvm;->e(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v2, v1

    iget-object v3, p0, Lcom/sunia/HTREnginev2/gvm;->a:[Lcom/sunia/HTREnginev2/gvm$a;

    array-length v4, v3

    rem-int/2addr v2, v4

    aget-object v2, v3, v2

    :goto_0
    if-nez v2, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v3, v2, Lcom/sunia/HTREnginev2/gvm$a;->a:I

    if-ne v3, v1, :cond_1

    iget-object v3, v2, Lcom/sunia/HTREnginev2/gvm$a;->e:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v3, p1}, Lcom/sunia/HTREnginev2/gvm;->c(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/sunia/HTREnginev2/gvm;->g(Lcom/sunia/HTREnginev2/gvm$a;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1
    iget-object v2, v2, Lcom/sunia/HTREnginev2/gvm$a;->d:Lcom/sunia/HTREnginev2/gvm$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public lockPool()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/gvm;->b:Z

    return-void
.end method

.method public retrieveGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/gvm;->d(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object p0

    return-object p0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/gvm;->a:[Lcom/sunia/HTREnginev2/gvm$a;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/gvm;->a()V

    sget-object p0, Lcom/sunia/HTREnginev2/gvm;->f:[Lorg/apache/xerces/xni/grammars/Grammar;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public unlockPool()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/gvm;->b:Z

    return-void
.end method
