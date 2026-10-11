.class public Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected fCachedDTD:Z

.field protected fGrammarFound:Z

.field protected final fVSs:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->fVSs:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->fGrammarFound:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->fCachedDTD:Z

    return-void
.end method


# virtual methods
.method public final addValidationState(Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->fVSs:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public final isCachedDTD()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->fCachedDTD:Z

    return p0
.end method

.method public final isGrammarFound()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->fGrammarFound:Z

    return p0
.end method

.method public final reset()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->fVSs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->fGrammarFound:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->fCachedDTD:Z

    return-void
.end method

.method public final setCachedDTD(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->fCachedDTD:Z

    return-void
.end method

.method public final setEntityState(Lcom/sun/org/apache/xerces/internal/impl/validation/EntityState;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->fVSs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->fVSs:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->setEntityState(Lcom/sun/org/apache/xerces/internal/impl/validation/EntityState;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setGrammarFound(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->fGrammarFound:Z

    return-void
.end method
