.class public final Lorg/apache/xerces/impl/validation/ConfigurableValidationState;
.super Lorg/apache/xerces/impl/validation/ValidationState;
.source "SourceFile"


# instance fields
.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xerces/impl/validation/ValidationState;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/impl/validation/ConfigurableValidationState;->l:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/validation/ConfigurableValidationState;->m:Z

    return-void
.end method


# virtual methods
.method public addId(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xerces/impl/validation/ConfigurableValidationState;->l:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/apache/xerces/impl/validation/ValidationState;->addId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public addIdRef(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xerces/impl/validation/ConfigurableValidationState;->l:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/apache/xerces/impl/validation/ValidationState;->addIdRef(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public checkIDRefID()Ljava/util/Iterator;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xerces/impl/validation/ConfigurableValidationState;->l:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/apache/xerces/impl/validation/ValidationState;->checkIDRefID()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xerces/impl/validation/ConfigurableValidationState;->m:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/apache/xerces/impl/validation/ValidationState;->isEntityDeclared(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xerces/impl/validation/ConfigurableValidationState;->m:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/apache/xerces/impl/validation/ValidationState;->isEntityUnparsed(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public isIdDeclared(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xerces/impl/validation/ConfigurableValidationState;->l:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/apache/xerces/impl/validation/ValidationState;->isIdDeclared(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setIdIdrefChecking(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xerces/impl/validation/ConfigurableValidationState;->l:Z

    return-void
.end method

.method public setUnparsedEntityChecking(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xerces/impl/validation/ConfigurableValidationState;->m:Z

    return-void
.end method
