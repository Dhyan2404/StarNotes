.class public final Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "XSIErrorReporter"
.end annotation


# instance fields
.field fContext:[I

.field fContextCount:I

.field fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

.field fErrors:Ljava/util/Vector;

.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrors:Ljava/util/Vector;

    const/16 p1, 0x8

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContext:[I

    return-void
.end method


# virtual methods
.method public mergeContext()[Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-boolean v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContext:[I

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContextCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContextCount:I

    aget v0, v0, v2

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrors:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr v2, v0

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrors:Ljava/util/Vector;

    add-int v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public popContext()[Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-boolean v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContext:[I

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContextCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContextCount:I

    aget v0, v0, v2

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrors:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr v2, v0

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrors:Ljava/util/Vector;

    add-int v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrors:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->setSize(I)V

    return-object v1
.end method

.method public pushContext()V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-boolean v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContextCount:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContext:[I

    array-length v2, v1

    if-ne v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x8

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContext:[I

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContext:[I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContextCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContextCount:I

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrors:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    aput p0, v0, v1

    return-void
.end method

.method public reportError(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 5
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-boolean p1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrors:Ljava/util/Vector;

    invoke-virtual {p0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 2
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-boolean p1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrors:Ljava/util/Vector;

    invoke-virtual {p0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrors:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->removeAllElements()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContextCount:I

    return-void
.end method
