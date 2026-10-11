.class public Lnet/sf/saxon/trans/KeyDefinitionSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/om/StructuredQName;

.field public final b:I

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/trans/KeyDefinition;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/StructuredQName;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/trans/KeyDefinitionSet;->h:Z

    iput-object p1, p0, Lnet/sf/saxon/trans/KeyDefinitionSet;->a:Lnet/sf/saxon/om/StructuredQName;

    iput p2, p0, Lnet/sf/saxon/trans/KeyDefinitionSet;->b:I

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lnet/sf/saxon/trans/KeyDefinitionSet;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addKeyDefinition(Lnet/sf/saxon/trans/KeyDefinition;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/KeyDefinitionSet;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/KeyDefinition;->getCollationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/trans/KeyDefinitionSet;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/KeyDefinition;->isComposite()Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/trans/KeyDefinitionSet;->e:Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/trans/KeyDefinitionSet;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/KeyDefinition;->getCollationName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/trans/KeyDefinitionSet;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/trans/KeyDefinition;->getCollationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "All keys with the same name must use the same collation"

    const-string v0, "XTSE1220"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lnet/sf/saxon/trans/KeyDefinition;->isComposite()Z

    move-result v0

    iget-boolean v1, p0, Lnet/sf/saxon/trans/KeyDefinitionSet;->e:Z

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lnet/sf/saxon/trans/KeyDefinitionSet;->getKeyDefinitions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/trans/KeyDefinition;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/KeyDefinition;->getMatch()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/trans/KeyDefinition;->getMatch()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lnet/sf/saxon/trans/KeyDefinition;->isBackwardsCompatible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lnet/sf/saxon/trans/KeyDefinitionSet;->f:Z

    :cond_6
    invoke-virtual {p1}, Lnet/sf/saxon/trans/KeyDefinition;->isRangeKey()Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Lnet/sf/saxon/trans/KeyDefinitionSet;->g:Z

    :cond_7
    iget-object p0, p0, Lnet/sf/saxon/trans/KeyDefinitionSet;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_8
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "All keys with the same name must have the same value for @composite"

    const-string v0, "XTSE1222"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public getCollationName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/KeyDefinitionSet;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getKeyDefinitions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/trans/KeyDefinition;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/trans/KeyDefinitionSet;->c:Ljava/util/List;

    return-object p0
.end method

.method public getKeyName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/KeyDefinitionSet;->a:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getKeySetNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/trans/KeyDefinitionSet;->b:I

    return p0
.end method

.method public isBackwardsCompatible()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/KeyDefinitionSet;->f:Z

    return p0
.end method

.method public isComposite()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/KeyDefinitionSet;->e:Z

    return p0
.end method

.method public isRangeKey()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/KeyDefinitionSet;->g:Z

    return p0
.end method

.method public isReusable()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/KeyDefinitionSet;->h:Z

    return p0
.end method

.method public setReusable(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trans/KeyDefinitionSet;->h:Z

    return-void
.end method
