.class public Lorg/apache/xerces/impl/XMLDTDScannerImpl;
.super Lorg/apache/xerces/impl/XMLScanner;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLDTDScanner;
.implements Lorg/apache/xerces/xni/parser/XMLComponent;
.implements Lorg/apache/xerces/impl/XMLEntityHandler;


# static fields
.field public static final J:[Ljava/lang/String;

.field public static final O:[Ljava/lang/Boolean;

.field public static final Q:[Ljava/lang/String;

.field protected static final SCANNER_STATE_END_OF_INPUT:I = 0x0

.field protected static final SCANNER_STATE_MARKUP_DECL:I = 0x2

.field protected static final SCANNER_STATE_TEXT_DECL:I = 0x1

.field public static final Z:[Ljava/lang/Object;

.field public static final k0:Z


# instance fields
.field protected fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

.field protected fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

.field protected fScannerState:I

.field protected fSeenExternalDTD:Z

.field protected fSeenPEReferences:Z

.field protected fStandalone:Z

.field public i:Z

.field public j:[I

.field public k:I

.field public l:[I

.field public m:[Z

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public final r:[Ljava/lang/String;

.field public final s:Lorg/apache/xerces/xni/XMLString;

.field public final t:Lorg/apache/xerces/util/XMLStringBuffer;

.field public final u:Lorg/apache/xerces/util/XMLStringBuffer;

.field public final v:Lorg/apache/xerces/xni/XMLString;

.field public final w:Lorg/apache/xerces/xni/XMLString;

.field public x:[Ljava/lang/String;

.field public y:I

.field public final z:Lorg/apache/xerces/util/XMLStringBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "http://xml.org/sax/features/validation"

    const-string v1, "http://apache.org/xml/features/scanner/notify-char-refs"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->J:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->O:[Ljava/lang/Boolean;

    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v1, "http://apache.org/xml/properties/internal/entity-manager"

    const-string v3, "http://apache.org/xml/properties/internal/symbol-table"

    filled-new-array {v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->Q:[Ljava/lang/String;

    filled-new-array {v2, v2, v2}, [Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->Z:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/xerces/impl/XMLScanner;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->j:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->l:[I

    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->m:[Z

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->r:[Ljava/lang/String;

    new-instance v1, Lorg/apache/xerces/xni/XMLString;

    invoke-direct {v1}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->s:Lorg/apache/xerces/xni/XMLString;

    new-instance v1, Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v1}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    new-instance v1, Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v1}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->u:Lorg/apache/xerces/util/XMLStringBuffer;

    new-instance v1, Lorg/apache/xerces/xni/XMLString;

    invoke-direct {v1}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->v:Lorg/apache/xerces/xni/XMLString;

    new-instance v1, Lorg/apache/xerces/xni/XMLString;

    invoke-direct {v1}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->w:Lorg/apache/xerces/xni/XMLString;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->x:[Ljava/lang/String;

    new-instance v0, Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->z:Lorg/apache/xerces/util/XMLStringBuffer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/impl/XMLErrorReporter;Lorg/apache/xerces/impl/XMLEntityManager;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/xerces/impl/XMLScanner;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->j:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->l:[I

    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->m:[Z

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->r:[Ljava/lang/String;

    new-instance v1, Lorg/apache/xerces/xni/XMLString;

    invoke-direct {v1}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->s:Lorg/apache/xerces/xni/XMLString;

    new-instance v1, Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v1}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    new-instance v1, Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v1}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->u:Lorg/apache/xerces/util/XMLStringBuffer;

    new-instance v1, Lorg/apache/xerces/xni/XMLString;

    invoke-direct {v1}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->v:Lorg/apache/xerces/xni/XMLString;

    new-instance v1, Lorg/apache/xerces/xni/XMLString;

    invoke-direct {v1}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->w:Lorg/apache/xerces/xni/XMLString;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->x:[Ljava/lang/String;

    new-instance v0, Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->z:Lorg/apache/xerces/util/XMLStringBuffer;

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iput-object p2, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iput-object p3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    const-string p0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p3, p0, p1}, Lorg/apache/xerces/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static getScannerStateName(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "??? ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->i:Z

    iput v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p:I

    iput v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->q:I

    iput v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    iput v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->n:I

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fStandalone:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fSeenExternalDTD:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fSeenPEReferences:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->setScannerState(I)V

    return-void
.end method

.method public final c(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->x:[Ljava/lang/String;

    array-length v1, v0

    if-ne v1, p1, :cond_0

    mul-int/lit8 v1, p1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->x:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->m:[Z

    iget p0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->n:I

    add-int/lit8 p0, p0, -0x1

    aget-boolean p0, v0, p0

    return p0
.end method

.method public final e()I
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->j:[I

    iget v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->k:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->k:I

    aget p0, v0, v1

    return p0
.end method

.method public endEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/apache/xerces/impl/XMLScanner;->endEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    iget v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->d()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->f()I

    move-result v3

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    if-nez v3, :cond_1

    iget v5, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v6, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v6, v6, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lorg/apache/xerces/impl/XMLEntityManager$Entity;->name:Ljava/lang/String;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    const-string v8, "ILL_FORMED_PARAMETER_ENTITY_WHEN_USED_IN_DECL"

    invoke-virtual {v5, v4, v8, v6, v7}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_1
    iget v5, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    if-eq v3, v5, :cond_2

    iget-boolean v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fValidation:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "ImproperDeclarationNesting"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v3, v5, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v1, v0

    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p:I

    :cond_4
    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz p0, :cond_8

    if-eqz v1, :cond_8

    invoke-interface {p0, p1, p2}, Lorg/apache/xerces/xni/XMLDTDHandler;->endParameterEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    :cond_5
    const-string p2, "[dtd]"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->q:I

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    const-string p1, "IncludeSectUnterminated"

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iput v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/XMLEntityManager;->endExternalSubset()V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz p1, :cond_7

    invoke-interface {p1, p2}, Lorg/apache/xerces/xni/XMLDTDHandler;->endExternalSubset(Lorg/apache/xerces/xni/Augmentations;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {p1, p2}, Lorg/apache/xerces/xni/XMLDTDHandler;->endDTD(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_7
    iget p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final f()I
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->l:[I

    iget v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->n:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->n:I

    aget p0, v0, v1

    return p0
.end method

.method public final g(I)V
    .locals 4

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->j:[I

    array-length v1, v0

    iget v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->k:I

    if-ne v1, v2, :cond_0

    mul-int/lit8 v1, v2, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->j:[I

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->j:[I

    iget v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->k:I

    aput p1, v0, v1

    return-void
.end method

.method public getDTDContentModelHandler()Lorg/apache/xerces/xni/XMLDTDContentModelHandler;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    return-object p0
.end method

.method public getDTDHandler()Lorg/apache/xerces/xni/XMLDTDHandler;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    return-object p0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->J:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->O:[Ljava/lang/Boolean;

    aget-object p0, p1, p0

    return-object p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->Q:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->Z:[Ljava/lang/Object;

    aget-object p0, p1, p0

    return-object p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->J:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->Q:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final h(IZ)V
    .locals 4

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->l:[I

    array-length v1, v0

    iget v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->n:I

    if-ne v1, v2, :cond_0

    mul-int/lit8 v1, v2, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->l:[I

    iget v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->n:I

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Z

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->m:[Z

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->m:[Z

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->m:[Z

    iget v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->n:I

    aput-boolean p2, v0, v1

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->l:[I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->n:I

    aput p1, p2, v1

    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->y:I

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v2, "CDATA"

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v2, "IDREFS"

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v2, "IDREF"

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v2, "ID"

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v2, "ENTITY"

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_2

    :cond_4
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v2, "ENTITIES"

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_2

    :cond_5
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v2, "NMTOKENS"

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_2

    :cond_6
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v2, "NMTOKEN"

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_2

    :cond_7
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v2, "NOTATION"

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0x29

    const/16 v4, 0x28

    const/16 v5, 0x7c

    const/4 v6, 0x1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    xor-int/2addr v1, v6

    invoke-virtual {p0, v6, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "MSG_SPACE_REQUIRED_AFTER_NOTATION_IN_NOTATIONTYPE"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v1, v7}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v1

    if-eq v1, v4, :cond_9

    const-string v1, "MSG_OPEN_PAREN_REQUIRED_IN_NOTATIONTYPE"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    iget v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    add-int/2addr v1, v6

    iput v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    :cond_a
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    xor-int/2addr v1, v6

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    const-string v1, "MSG_NAME_REQUIRED_IN_NOTATIONTYPE"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o()I

    move-result v1

    if-ne v1, v5, :cond_c

    goto :goto_0

    :cond_b
    iget v4, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->y:I

    add-int/2addr v4, v6

    invoke-virtual {p0, v4}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->c(I)V

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->x:[Ljava/lang/String;

    iget v7, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->y:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->y:I

    aput-object v1, v4, v7

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    xor-int/2addr v1, v6

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v1

    :goto_0
    if-eq v1, v5, :cond_a

    :cond_c
    if-eq v1, v3, :cond_d

    const-string v0, "NotationTypeUnterminated"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    iget p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    sub-int/2addr p1, v6

    iput p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    goto :goto_2

    :cond_e
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v1

    if-eq v1, v4, :cond_f

    const-string v1, "AttTypeRequiredInAttDef"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    iget v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    add-int/2addr v1, v6

    iput v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    :cond_10
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    xor-int/2addr v1, v6

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanNmtoken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    const-string v1, "MSG_NMTOKEN_REQUIRED_IN_ENUMERATION"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o()I

    move-result v1

    if-ne v1, v5, :cond_12

    goto :goto_1

    :cond_11
    iget v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->y:I

    add-int/2addr v2, v6

    invoke-virtual {p0, v2}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->c(I)V

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->x:[Ljava/lang/String;

    iget v4, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->y:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->y:I

    aput-object v1, v2, v4

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    xor-int/2addr v1, v6

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v1

    :goto_1
    if-eq v1, v5, :cond_10

    :cond_12
    if-eq v1, v3, :cond_13

    const-string v0, "EnumerationUnterminated"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    iget p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    sub-int/2addr p1, v6

    iput p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    const-string v2, "ENUMERATION"

    :goto_2
    return-object v2
.end method

.method public final j(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->k:I

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->g(I)V

    :goto_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    add-int/2addr v2, v4

    iput v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v2, :cond_0

    invoke-interface {v2, v5}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->startGroup(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->g(I)V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {p0, v0, v2}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, "MSG_OPEN_PAREN_OR_ELEMENT_TYPE_REQUIRED_IN_CHILDREN"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v3, :cond_3

    invoke-interface {v3, v2, v5}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->element(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_3
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v3, v2}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    const/4 v3, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/16 v8, 0x2a

    const/16 v9, 0x3f

    if-eq v2, v9, :cond_4

    if-eq v2, v8, :cond_4

    const/16 v10, 0x2b

    if-ne v2, v10, :cond_8

    :cond_4
    iget-object v10, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v10, :cond_7

    if-ne v2, v9, :cond_5

    move v8, v7

    goto :goto_2

    :cond_5
    if-ne v2, v8, :cond_6

    move v8, v3

    goto :goto_2

    :cond_6
    move v8, v6

    :goto_2
    invoke-interface {v10, v8, v5}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLorg/apache/xerces/xni/Augmentations;)V

    :cond_7
    iget-object v8, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v8}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v8, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    int-to-char v2, v2

    invoke-virtual {v8, v2}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {p0, v0, v2}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    const/16 v8, 0x7c

    const/16 v9, 0x2c

    if-ne v2, v9, :cond_a

    if-eq v1, v8, :cond_a

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_9

    invoke-interface {v1, v4, v5}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->separator(SLorg/apache/xerces/xni/Augmentations;)V

    :cond_9
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_4

    :cond_a
    if-ne v2, v8, :cond_c

    if-eq v1, v9, :cond_c

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_b

    invoke-interface {v1, v0, v5}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->separator(SLorg/apache/xerces/xni/Augmentations;)V

    :cond_b
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v8}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    :goto_4
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    move v1, v2

    goto/16 :goto_1

    :cond_c
    const/16 v1, 0x29

    if-eq v2, v1, :cond_d

    const-string v2, "MSG_CLOSE_PAREN_REQUIRED_IN_CHILDREN"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v2, v8}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v2, :cond_e

    invoke-interface {v2, v5}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->endGroup(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_e
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->e()I

    move-result v2

    iget-object v8, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v9, ")?"

    invoke-virtual {v8, v9}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_12

    invoke-interface {v1, v7, v5}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLorg/apache/xerces/xni/Augmentations;)V

    goto :goto_5

    :cond_f
    iget-object v8, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v9, ")+"

    invoke-virtual {v8, v9}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_12

    invoke-interface {v1, v6, v5}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLorg/apache/xerces/xni/Augmentations;)V

    goto :goto_5

    :cond_10
    iget-object v8, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v9, ")*"

    invoke-virtual {v8, v9}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_12

    invoke-interface {v1, v3, v5}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLorg/apache/xerces/xni/Augmentations;)V

    goto :goto_5

    :cond_11
    iget-object v8, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v8}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v8, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v8, v1}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_12
    :goto_5
    iget v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    sub-int/2addr v1, v4

    iput v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    iget v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->k:I

    if-nez v1, :cond_13

    return-void

    :cond_13
    move v1, v2

    goto/16 :goto_3
.end method

.method public final k(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fReportEntity:Z

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v3, "INCLUDE"

    invoke-virtual {v1, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "INVALID_PE_IN_CONDITIONAL"

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const/16 v5, 0x5b

    const-string v6, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    const/4 v7, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    iget v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->n:I

    if-eq p1, v1, :cond_0

    iget-boolean p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fValidation:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v1, v1, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lorg/apache/xerces/impl/XMLEntityManager$Entity;->name:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v4, v3, v1, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {p1, v5}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v6, v7}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0, v7}, Lorg/apache/xerces/xni/XMLDTDHandler;->startConditional(SLorg/apache/xerces/xni/Augmentations;)V

    :cond_2
    iget p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->q:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->q:I

    iput-boolean v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fReportEntity:Z

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v8, "IGNORE"

    invoke-virtual {v1, v8}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    iget v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->n:I

    if-eq p1, v1, :cond_4

    iget-boolean p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fValidation:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v1, v1, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lorg/apache/xerces/impl/XMLEntityManager$Entity;->name:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v4, v3, v1, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_4
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz p1, :cond_5

    invoke-interface {p1, v2, v7}, Lorg/apache/xerces/xni/XMLDTDHandler;->startConditional(SLorg/apache/xerces/xni/Augmentations;)V

    :cond_5
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {p1, v5}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v6, v7}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iput-boolean v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fReportEntity:Z

    iget p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->q:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->q:I

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->z:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    :cond_7
    :goto_0
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x3c

    invoke-virtual {v1, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->z:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_8
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x21

    invoke-virtual {v1, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v5}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->z:Lorg/apache/xerces/util/XMLStringBuffer;

    const-string v3, "!["

    invoke-virtual {v1, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    :cond_9
    iget v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->q:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->q:I

    goto :goto_0

    :cond_a
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->z:Lorg/apache/xerces/util/XMLStringBuffer;

    const-string v3, "!"

    invoke-virtual {v1, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->z:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_c
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_d

    :goto_1
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->z:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_d
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x3e

    invoke-virtual {v1, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->q:I

    add-int/lit8 v4, v1, -0x1

    iput v4, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->q:I

    if-ne v1, p1, :cond_f

    iget p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->v:Lorg/apache/xerces/xni/XMLString;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->z:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v2, v1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget v1, v1, Lorg/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v2, v0, v1}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->v:Lorg/apache/xerces/xni/XMLString;

    invoke-interface {p1, v0, v7}, Lorg/apache/xerces/xni/XMLDTDHandler;->ignoredCharacters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {p0, v7}, Lorg/apache/xerces/xni/XMLDTDHandler;->endConditional(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_e
    return-void

    :cond_f
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->z:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_0

    :cond_10
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_d

    goto :goto_1

    :cond_11
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v1

    iget v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-nez v3, :cond_12

    const-string p1, "IgnoreSectUnterminated"

    invoke-virtual {p0, p1, v7}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_12
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->z:Lorg/apache/xerces/util/XMLStringBuffer;

    int-to-char v1, v1

    invoke-virtual {v3, v1}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p0, v6, v7}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public final l()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fReportEntity:Z

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v1

    const/16 v2, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-virtual {p0, v4, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    move v1, v0

    move v5, v4

    goto :goto_4

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_PEDECL"

    invoke-virtual {p0, v1, v3}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v1

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "MSG_SPACE_REQUIRED_BEFORE_PERCENT_IN_PEDECL"

    goto :goto_2

    :cond_5
    move v5, v0

    move v1, v4

    goto :goto_4

    :cond_6
    :goto_1
    const-string v1, "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_ENTITYDECL"

    :goto_2
    invoke-virtual {p0, v1, v3}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    move v1, v0

    move v5, v1

    :goto_4
    if-eqz v1, :cond_c

    :cond_7
    :goto_5
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v1, "NameRequiredInPEReference"

    invoke-virtual {p0, v1, v3}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_8
    iget-object v6, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v7, 0x3b

    invoke-virtual {v6, v7}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "SemicolonRequiredInPEReference"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v6, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_9
    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->startPE(Ljava/lang/String;Z)Ljava/lang/String;

    :goto_6
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_7

    :cond_a
    if-nez v5, :cond_7

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-virtual {p0, v4, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    move-result v1

    if-eqz v1, :cond_b

    move v5, v4

    goto :goto_7

    :cond_b
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v5

    goto :goto_5

    :cond_c
    :goto_7
    iget-boolean v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fNamespaces:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanNCName()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_d
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v1

    :goto_8
    if-nez v1, :cond_e

    const-string v2, "MSG_ENTITY_NAME_REQUIRED_IN_ENTITYDECL"

    invoke-virtual {p0, v2, v3}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {p0, v4, v2}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    move-result v2

    if-nez v2, :cond_11

    iget-boolean v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fNamespaces:Z

    const-string v6, "MSG_SPACE_REQUIRED_AFTER_ENTITY_NAME_IN_ENTITYDECL"

    if-eqz v2, :cond_10

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    const/16 v7, 0x3a

    if-ne v2, v7, :cond_10

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    new-instance v2, Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v2, v1}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v7, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-virtual {v2, v7}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v2}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v7, "ColonNotLegalWithNS"

    invoke-virtual {p0, v7, v2}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {p0, v4, v2}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    move-result v2

    if-nez v2, :cond_11

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v6, v2}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_10
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v6, v2}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    :goto_9
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->r:[Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lorg/apache/xerces/impl/XMLScanner;->scanExternalID([Ljava/lang/String;Z)V

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->r:[Ljava/lang/String;

    aget-object v12, v2, v0

    aget-object v2, v2, v4

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v6

    xor-int/2addr v6, v4

    invoke-virtual {p0, v4, v6}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    move-result v6

    if-nez v5, :cond_15

    iget-object v7, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v8, "NDATA"

    invoke-virtual {v7, v8}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    if-nez v6, :cond_12

    const-string v6, "MSG_SPACE_REQUIRED_BEFORE_NDATA_IN_UNPARSED_ENTITYDECL"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v6

    xor-int/2addr v6, v4

    invoke-virtual {p0, v4, v6}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    move-result v6

    if-nez v6, :cond_13

    const-string v6, "MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_UNPARSED_ENTITYDECL"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    iget-object v6, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_14

    const-string v7, "MSG_NOTATION_NAME_REQUIRED_FOR_UNPARSED_ENTITYDECL"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    move-object v13, v6

    goto :goto_a

    :cond_15
    move-object v13, v3

    :goto_a
    if-nez v12, :cond_16

    iget-object v6, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->v:Lorg/apache/xerces/xni/XMLString;

    iget-object v7, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->w:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {p0, v6, v7}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanEntityValue(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;)I

    move-result v6

    iget-object v7, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v7, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->u:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v7, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->v:Lorg/apache/xerces/xni/XMLString;

    iget-object v9, v8, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget v10, v8, Lorg/apache/xerces/xni/XMLString;->offset:I

    iget v8, v8, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v7, v9, v10, v8}, Lorg/apache/xerces/util/XMLStringBuffer;->append([CII)V

    iget-object v7, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->u:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->w:Lorg/apache/xerces/xni/XMLString;

    iget-object v9, v8, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget v10, v8, Lorg/apache/xerces/xni/XMLString;->offset:I

    iget v8, v8, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v7, v9, v10, v8}, Lorg/apache/xerces/util/XMLStringBuffer;->append([CII)V

    goto :goto_b

    :cond_16
    move v6, v0

    :goto_b
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v7

    xor-int/2addr v7, v4

    invoke-virtual {p0, v0, v7}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    iget-object v7, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x3e

    invoke-virtual {v7, v8}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-nez v7, :cond_17

    const-string v7, "EntityDeclUnterminated"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    iget v7, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    sub-int/2addr v7, v4

    iput v7, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    if-eqz v5, :cond_18

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_18
    if-eqz v12, :cond_1b

    iget-object v5, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lorg/apache/xerces/impl/XMLEntityScanner;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    if-eqz v13, :cond_19

    move-object v7, v1

    move-object v8, v2

    move-object v9, v12

    move-object v10, v5

    move-object v11, v13

    invoke-virtual/range {v6 .. v11}, Lorg/apache/xerces/impl/XMLEntityManager;->addUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_19
    invoke-virtual {v6, v1, v2, v12, v5}, Lorg/apache/xerces/impl/XMLEntityManager;->addExternalEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    iget-object v6, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v6, :cond_1c

    iget-object v6, p0, Lorg/apache/xerces/impl/XMLScanner;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-static {v12, v5, v0}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v2, v12, v5, v0}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    if-eqz v13, :cond_1a

    invoke-interface {v0, v1, v2, v13, v3}, Lorg/apache/xerces/xni/XMLDTDHandler;->unparsedEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_d

    :cond_1a
    invoke-interface {v0, v1, v2, v3}, Lorg/apache/xerces/xni/XMLDTDHandler;->externalEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_d

    :cond_1b
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v6}, Lorg/apache/xerces/impl/XMLEntityManager;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_1c

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v5, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->u:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-interface {v0, v1, v2, v5, v3}, Lorg/apache/xerces/xni/XMLDTDHandler;->internalEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_1c
    :goto_d
    iput-boolean v4, p0, Lorg/apache/xerces/impl/XMLScanner;->fReportEntity:Z

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    const-string v1, "#PCDATA"

    invoke-virtual {v0, v1}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->pcdata(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    move-object v0, v1

    :goto_0
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v3, ")*"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p1, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz p1, :cond_4

    invoke-interface {p1, v1}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->endGroup(Lorg/apache/xerces/xni/Augmentations;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v0, 0x3

    invoke-interface {p1, v0, v1}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLorg/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    const-string v0, "MixedContentUnterminated"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p1, v2}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz p1, :cond_4

    invoke-interface {p1, v1}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->endGroup(Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    :cond_3
    const-string v0, "MSG_CLOSE_PAREN_REQUIRED_IN_CHILDREN"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    iget p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    return-void

    :cond_5
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v4}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_6

    invoke-interface {v0, v2, v1}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->separator(SLorg/apache/xerces/xni/Augmentations;)V

    :cond_6
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v3, "MSG_ELEMENT_TYPE_REQUIRED_IN_MIXED_CONTENT"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v3, v0}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v3, :cond_8

    invoke-interface {v3, v0, v1}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->element(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_8
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    goto/16 :goto_0
.end method

.method public final n()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fReportEntity:Z

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p0, v2, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v1, "MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_NOTATIONDECL"

    invoke-virtual {p0, v1, v3}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-boolean v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fNamespaces:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanNCName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    const-string v4, "MSG_NOTATION_NAME_REQUIRED_IN_NOTATIONDECL"

    invoke-virtual {p0, v4, v3}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    xor-int/2addr v4, v2

    invoke-virtual {p0, v2, v4}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lorg/apache/xerces/impl/XMLScanner;->fNamespaces:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    new-instance v4, Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v4, v1}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v5, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "ColonNotLegalWithNS"

    invoke-virtual {p0, v5, v4}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    xor-int/2addr v4, v2

    invoke-virtual {p0, v2, v4}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    goto :goto_1

    :cond_3
    const-string v4, "MSG_SPACE_REQUIRED_AFTER_NOTATION_NAME_IN_NOTATIONDECL"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->r:[Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Lorg/apache/xerces/impl/XMLScanner;->scanExternalID([Ljava/lang/String;Z)V

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->r:[Ljava/lang/String;

    aget-object v5, v4, v0

    aget-object v4, v4, v2

    iget-object v6, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/XMLEntityScanner;->getBaseSystemId()Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_5

    if-nez v4, :cond_5

    const-string v7, "ExternalIDorPublicIDRequired"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v7

    xor-int/2addr v7, v2

    invoke-virtual {p0, v0, v7}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    iget-object v7, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x3e

    invoke-virtual {v7, v8}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "NotationDeclUnterminated"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget v7, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    sub-int/2addr v7, v2

    iput v7, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    iget-object v7, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lorg/apache/xerces/impl/XMLScanner;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-static {v5, v6, v0}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v4, v5, v6, v0}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLScanner;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-interface {v0, v1, v4, v3}, Lorg/apache/xerces/xni/XMLDTDHandler;->notationDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_7
    iput-boolean v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fReportEntity:Z

    return-void
.end method

.method public final o()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    :cond_1
    iget v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->y:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->c(I)V

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->x:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->y:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->y:I

    sget-object p0, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    aput-object p0, v1, v2

    return v0
.end method

.method public final p(ZZ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->n:I

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v4, 0x25

    invoke-virtual {p2, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p2, "NameRequiredInPEReference"

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v0, 0x3b

    invoke-virtual {p2, v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "SemicolonRequiredInPEReference"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v2}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->startPE(Ljava/lang/String;Z)Ljava/lang/String;

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {p1, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result p1

    if-nez p1, :cond_0

    return v3

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    if-nez v1, :cond_4

    iget p0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->n:I

    if-eq v0, p0, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    return v2
.end method

.method public reset()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/apache/xerces/impl/XMLScanner;->reset()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->a()V

    return-void
.end method

.method public reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lorg/apache/xerces/impl/XMLScanner;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->a()V

    return-void
.end method

.method public final scanAttDefaultDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->s:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {p3}, Lorg/apache/xerces/xni/XMLString;->clear()V

    invoke-virtual {p4}, Lorg/apache/xerces/xni/XMLString;->clear()V

    iget-object p3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v0, "#REQUIRED"

    invoke-virtual {p3, v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_2

    :cond_0
    iget-object p3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v0, "#IMPLIED"

    invoke-virtual {p3, v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_2

    :cond_1
    iget-object p3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v0, "#FIXED"

    invoke-virtual {p3, v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result p3

    xor-int/2addr p3, v1

    invoke-virtual {p0, v1, p3}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    move-result p3

    if-nez p3, :cond_3

    const-string p3, "MSG_SPACE_REQUIRED_AFTER_FIXED_IN_DEFAULTDECL"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p3, v2}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    move-object v0, p3

    :cond_3
    :goto_0
    iget-boolean p3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fStandalone:Z

    if-nez p3, :cond_4

    iget-boolean p3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fSeenExternalDTD:Z

    if-nez p3, :cond_5

    iget-boolean p3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fSeenPEReferences:Z

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    move v6, v1

    move-object v2, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p2

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xerces/impl/XMLScanner;->scanAttributeValue(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Ljava/lang/String;ZLjava/lang/String;)Z

    :goto_2
    return-object v0
.end method

.method public final scanAttlistDecl()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v6, p0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/apache/xerces/impl/XMLScanner;->fReportEntity:Z

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    const/4 v8, 0x1

    xor-int/2addr v0, v8

    invoke-virtual {v6, v8, v0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ATTLISTDECL"

    invoke-virtual {v6, v0, v9}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, v6, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_1

    const-string v0, "MSG_ELEMENT_TYPE_REQUIRED_IN_ATTLISTDECL"

    invoke-virtual {v6, v0, v9}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v6, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_2

    invoke-interface {v0, v15, v9}, Lorg/apache/xerces/xni/XMLDTDHandler;->startAttlist(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    xor-int/2addr v0, v8

    invoke-virtual {v6, v8, v0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    move-result v0

    const/16 v14, 0x3e

    if-nez v0, :cond_5

    iget-object v0, v6, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v14}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v6, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_3

    invoke-interface {v0, v9}, Lorg/apache/xerces/xni/XMLDTDHandler;->endAttlist(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_3
    iget v0, v6, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    sub-int/2addr v0, v8

    iput v0, v6, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    return-void

    :cond_4
    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_ATTRIBUTE_NAME_IN_ATTDEF"

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_0
    iget-object v0, v6, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v14}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v6, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_6

    invoke-interface {v0, v9}, Lorg/apache/xerces/xni/XMLDTDHandler;->endAttlist(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_6
    iget v0, v6, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    sub-int/2addr v0, v8

    iput v0, v6, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    iput-boolean v8, v6, Lorg/apache/xerces/impl/XMLScanner;->fReportEntity:Z

    return-void

    :cond_7
    iget-object v0, v6, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_8

    const-string v0, "AttNameRequiredInAttDef"

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    xor-int/2addr v0, v8

    invoke-virtual {v6, v8, v0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_ATTTYPE_IN_ATTDEF"

    filled-new-array {v15, v12}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {v6, v15, v12}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    xor-int/2addr v0, v8

    invoke-virtual {v6, v8, v0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_DEFAULTDECL_IN_ATTDEF"

    filled-new-array {v15, v12}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    iget-object v4, v6, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->v:Lorg/apache/xerces/xni/XMLString;

    iget-object v5, v6, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->w:Lorg/apache/xerces/xni/XMLString;

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v12

    move-object v3, v13

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanAttDefaultDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v6, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_e

    iget v1, v6, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->y:I

    if-eqz v1, :cond_b

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, v6, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->x:[Ljava/lang/String;

    invoke-static {v3, v7, v2, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_b
    move-object v2, v9

    :goto_1
    if-eqz v0, :cond_d

    const-string v1, "#REQUIRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "#IMPLIED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    iget-object v10, v6, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v15

    move v1, v14

    move-object v14, v2

    move-object v3, v15

    move-object v15, v0

    invoke-interface/range {v10 .. v18}, Lorg/apache/xerces/xni/XMLDTDHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_2

    :cond_d
    move v1, v14

    move-object v3, v15

    iget-object v10, v6, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    iget-object v4, v6, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->v:Lorg/apache/xerces/xni/XMLString;

    iget-object v5, v6, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->w:Lorg/apache/xerces/xni/XMLString;

    const/16 v18, 0x0

    move-object v11, v3

    move-object v14, v2

    move-object v15, v0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    invoke-interface/range {v10 .. v18}, Lorg/apache/xerces/xni/XMLDTDHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_2

    :cond_e
    move v1, v14

    move-object v3, v15

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    xor-int/2addr v0, v8

    invoke-virtual {v6, v7, v0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    move v14, v1

    move-object v15, v3

    goto/16 :goto_0
.end method

.method public final scanComment()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fReportEntity:Z

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/XMLScanner;->scanComment(Lorg/apache/xerces/util/XMLStringBuffer;)V

    iget v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lorg/apache/xerces/xni/XMLDTDHandler;->comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    iput-boolean v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fReportEntity:Z

    return-void
.end method

.method public scanDTDExternalSubset(Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lorg/apache/xerces/impl/XMLEntityHandler;)V

    iget v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iput-boolean v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fSeenExternalDTD:Z

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanTextDecl()Z

    move-result v0

    iget v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-nez v3, :cond_0

    return v1

    :cond_0
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->setScannerState(I)V

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanDecls(Z)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    if-nez p1, :cond_1

    return v2
.end method

.method public scanDTDInternalSubset(ZZZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lorg/apache/xerces/impl/XMLEntityScanner;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lorg/apache/xerces/impl/XMLEntityHandler;)V

    iput-boolean p2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fStandalone:Z

    iget p2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz p2, :cond_0

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-interface {p2, v2, v0}, Lorg/apache/xerces/xni/XMLDTDHandler;->startDTD(Lorg/apache/xerces/xni/XMLLocator;Lorg/apache/xerces/xni/Augmentations;)V

    iput-boolean v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->i:Z

    :cond_0
    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->setScannerState(I)V

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanDecls(Z)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz p1, :cond_2

    if-nez p3, :cond_2

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/XMLDTDHandler;->endDTD(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->setScannerState(I)V

    const/4 p0, 0x0

    return p0

    :cond_3
    if-nez p1, :cond_1

    return v1
.end method

.method public final scanDecls(Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    move v2, v1

    :goto_0
    if-eqz v2, :cond_12

    iget v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    const-string v4, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    const/4 v5, 0x0

    if-eqz v2, :cond_9

    iget v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLScanner;->scanPI()V

    goto/16 :goto_2

    :cond_1
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanComment()V

    goto/16 :goto_2

    :cond_3
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v3, "ELEMENT"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanElementDecl()V

    goto/16 :goto_2

    :cond_4
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v3, "ATTLIST"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanAttlistDecl()V

    goto/16 :goto_2

    :cond_5
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v3, "ENTITY"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->l()V

    goto/16 :goto_2

    :cond_6
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v3, "NOTATION"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->n()V

    goto/16 :goto_2

    :cond_7
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    if-nez v2, :cond_8

    iget v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->n:I

    invoke-virtual {p0, v2}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->k(I)V

    goto/16 :goto_2

    :cond_8
    iget v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    :goto_1
    invoke-virtual {p0, v4, v5}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    iget v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->q:I

    const/16 v6, 0x5d

    if-lez v2, :cond_d

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v6}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v6}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    const-string v2, "IncludeSectUnterminated"

    invoke-virtual {p0, v2, v5}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_c

    invoke-interface {v2, v5}, Lorg/apache/xerces/xni/XMLDTDHandler;->endConditional(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_c
    iget v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->q:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->q:I

    iget v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    goto :goto_2

    :cond_d
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    if-ne v2, v6, :cond_e

    return v0

    :cond_e
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_2

    :cond_f
    invoke-virtual {p0, v4, v5}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    if-eq v2, v3, :cond_11

    if-eq v2, v6, :cond_11

    invoke-static {v2}, Lorg/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_11
    :goto_2
    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    move v2, p1

    goto/16 :goto_0

    :cond_12
    :goto_3
    iget p0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-eqz p0, :cond_13

    move v0, v1

    :cond_13
    return v0
.end method

.method public final scanElementDecl()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fReportEntity:Z

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p0, v2, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v1, "MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ELEMENTDECL"

    invoke-virtual {p0, v1, v3}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v4, "MSG_ELEMENT_TYPE_REQUIRED_IN_ELEMENTDECL"

    invoke-virtual {p0, v4, v3}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    xor-int/2addr v4, v2

    invoke-virtual {p0, v2, v4}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "MSG_SPACE_REQUIRED_BEFORE_CONTENTSPEC_IN_ELEMENTDECL"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_3

    invoke-interface {v4, v1, v3}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->startContentModel(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_3
    iput-boolean v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fReportEntity:Z

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v5, "EMPTY"

    invoke-virtual {v4, v5}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_9

    invoke-interface {v4, v3}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->empty(Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v5, "ANY"

    invoke-virtual {v4, v5}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_9

    invoke-interface {v4, v3}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->any(Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "MSG_OPEN_PAREN_OR_ELEMENT_TYPE_REQUIRED_IN_CHILDREN"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_7

    invoke-interface {v4, v3}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->startGroup(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_7
    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget v4, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    xor-int/2addr v4, v2

    invoke-virtual {p0, v0, v4}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v5, "#PCDATA"

    invoke-virtual {v4, v5}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->m(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->j(Ljava/lang/String;)V

    :goto_0
    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_9
    :goto_1
    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_a

    invoke-interface {v4, v3}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->endContentModel(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_a
    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fReportEntity:Z

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    xor-int/2addr v4, v2

    invoke-virtual {p0, v0, v4}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p(ZZ)Z

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v4, 0x3e

    invoke-virtual {v0, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "ElementDeclUnterminated"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    iput-boolean v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fReportEntity:Z

    iget v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz p0, :cond_c

    invoke-interface {p0, v1, v5, v3}, Lorg/apache/xerces/xni/XMLDTDHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_c
    return-void
.end method

.method public final scanEntityValue(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    const/16 v1, 0x27

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const-string v1, "OpenQuoteMissingInDecl"

    invoke-virtual {p0, v1, v2}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->s:Lorg/apache/xerces/xni/XMLString;

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4, v0, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILorg/apache/xerces/xni/XMLString;)I

    move-result v4

    const/4 v5, 0x0

    if-eq v4, v0, :cond_f

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v3}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->u:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v3}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    :cond_1
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->s:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->u:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->s:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v3

    const/16 v6, 0x3b

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v7, 0x23

    invoke-virtual {v3, v7}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->u:Lorg/apache/xerces/util/XMLStringBuffer;

    const-string v4, "&#"

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->u:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v3, v4}, Lorg/apache/xerces/impl/XMLScanner;->scanCharReferenceValue(Lorg/apache/xerces/util/XMLStringBuffer;Lorg/apache/xerces/util/XMLStringBuffer;)I

    goto/16 :goto_3

    :cond_2
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->u:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v4, "NameRequiredInReference"

    invoke-virtual {p0, v4, v2}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->u:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    :goto_0
    iget-object v4, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4, v6}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "SemicolonRequiredInReference"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v3, v6}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->u:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v3, v6}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_3

    :cond_5
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v4, 0x25

    invoke-virtual {v3, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_6
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->u:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    const-string v7, "NameRequiredInPEReference"

    invoke-virtual {p0, v7, v2}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    iget-object v7, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7, v6}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "SemicolonRequiredInPEReference"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "PEReferenceWithinMarkup"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    iget-object v7, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->u:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v7, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->u:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, v6}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    :goto_1
    const/4 v7, 0x1

    invoke-virtual {p0, v3, v7}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->startPE(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v8, v3}, Lorg/apache/xerces/impl/XMLEntityManager;->getParamEntityRefCount(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v7

    add-int/2addr v5, v3

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_a
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v3

    invoke-static {v3}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->u:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v3}, Lorg/apache/xerces/impl/XMLScanner;->scanSurrogates(Lorg/apache/xerces/util/XMLStringBuffer;)Z

    goto :goto_3

    :cond_b
    invoke-virtual {p0, v3}, Lorg/apache/xerces/impl/XMLScanner;->isInvalidLiteral(I)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "InvalidCharInLiteral"

    invoke-virtual {p0, v4, v3}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    goto :goto_3

    :cond_c
    if-ne v3, v0, :cond_d

    iget v4, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    if-eq v1, v4, :cond_e

    :cond_d
    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->u:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_2

    :cond_e
    :goto_3
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->s:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v3, v0, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILorg/apache/xerces/xni/XMLString;)I

    move-result v3

    if-ne v3, v0, :cond_1

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->s:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v1, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->u:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->s:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v1, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->u:Lorg/apache/xerces/util/XMLStringBuffer;

    goto :goto_4

    :cond_f
    move-object v1, v3

    :goto_4
    invoke-virtual {p1, v3}, Lorg/apache/xerces/xni/XMLString;->setValues(Lorg/apache/xerces/xni/XMLString;)V

    invoke-virtual {p2, v1}, Lorg/apache/xerces/xni/XMLString;->setValues(Lorg/apache/xerces/xni/XMLString;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {p1, v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result p1

    if-nez p1, :cond_10

    const-string p1, "CloseQuoteMissingInDecl"

    invoke-virtual {p0, p1, v2}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    return v5
.end method

.method public final scanPIData(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/apache/xerces/impl/XMLScanner;->scanPIData(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;)V

    iget v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lorg/apache/xerces/xni/XMLDTDHandler;->processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public final scanTextDecl()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v1, "<?xml"

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/XMLScanner;->isValidNameChar(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    const-string v3, "xml"

    invoke-virtual {v0, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fNamespaces:Z

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/XMLScanner;->isValidNCName(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/XMLScanner;->isValidNameChar(I)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v4, v3, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget v5, v3, Lorg/apache/xerces/xni/XMLString;->offset:I

    iget v3, v3, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v0, v4, v5, v3}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->s:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {p0, v0, v3}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanPIData(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->t:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->r:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/XMLScanner;->scanXMLDeclOrTextDecl(Z[Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->r:[Ljava/lang/String;

    aget-object v2, v0, v2

    aget-object v0, v0, v1

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->setXMLVersion(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    iget-object v3, v3, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isEncodingExternallySpecified()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3, v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->setEncoding(Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_5

    const/4 v4, 0x0

    invoke-interface {v3, v2, v0, v4}, Lorg/apache/xerces/xni/XMLDTDHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_5
    move v2, v1

    :cond_6
    :goto_3
    iget-object p0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-boolean v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    return v2
.end method

.method public final scanningInternalSubset()Z
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    return-void
.end method

.method public setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    return-void
.end method

.method public setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lorg/apache/xerces/xni/XMLDTDHandler;->startDTD(Lorg/apache/xerces/xni/XMLLocator;Lorg/apache/xerces/xni/Augmentations;)V

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {p0, v0}, Lorg/apache/xerces/xni/XMLDTDHandler;->endDTD(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lorg/apache/xerces/impl/XMLEntityHandler;)V

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/XMLEntityManager;->startDTDEntity(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    return-void
.end method

.method public final setScannerState(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    return-void
.end method

.method public startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xerces/impl/XMLScanner;->startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    const-string v0, "[dtd]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->i:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-interface {v1, v3, v2}, Lorg/apache/xerces/xni/XMLDTDHandler;->startDTD(Lorg/apache/xerces/xni/XMLLocator;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_1

    invoke-interface {v1, p2, v2}, Lorg/apache/xerces/xni/XMLDTDHandler;->startExternalSubset(Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_1
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityManager;->startExternalSubset()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_3

    iget v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->o:I

    iget-boolean v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fReportEntity:Z

    invoke-virtual {p0, v1, v2}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->h(IZ)V

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->isExternal()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->p:I

    :cond_3
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    iget-boolean p0, p0, Lorg/apache/xerces/impl/XMLScanner;->fReportEntity:Z

    if-eqz p0, :cond_4

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/apache/xerces/xni/XMLDTDHandler;->startParameterEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_4
    return-void
.end method

.method public startPE(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->n:I

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fSeenPEReferences:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iput-boolean v3, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->fSeenPEReferences:Z

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/XMLEntityManager;->o()V

    :cond_0
    iget-boolean v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fValidation:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v2, v1}, Lorg/apache/xerces/impl/XMLEntityManager;->isDeclaredEntity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "EntityNotDeclared"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v2, v5, v4, p1, v3}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, v1}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lorg/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Z)V

    iget p1, p0, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->n:I

    if-eq v0, p1, :cond_2

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/XMLEntityScanner;->isExternal()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->scanTextDecl()Z

    :cond_2
    return-object v1
.end method
