.class Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xpointer/XPointerPart;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Scanner;,
        Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;
    }
.end annotation


# instance fields
.field private fChildSequence:[I

.field private fCurrentChildDepth:I

.field private fCurrentChildPosition:I

.field private fCurrentChildSequence:[I

.field protected fErrorHandler:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

.field protected fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

.field fFoundDepth:I

.field private fIsElementFound:Z

.field private fIsFragmentResolved:Z

.field private fIsResolveElement:Z

.field fIsShortHand:Z

.field private fSchemeData:Ljava/lang/String;

.field private fSchemeName:Ljava/lang/String;

.field private fShortHandPointer:Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;

.field private fShortHandPointerName:Ljava/lang/String;

.field private fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field private fWasOnlyEmptyElementFound:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    .line 3
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsElementFound:Z

    .line 4
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    .line 5
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsShortHand:Z

    .line 6
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fFoundDepth:I

    const/4 v1, 0x1

    .line 7
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    .line 8
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    .line 9
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    .line 12
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsElementFound:Z

    .line 13
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    .line 14
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsShortHand:Z

    .line 15
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fFoundDepth:I

    const/4 v1, 0x1

    .line 16
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    .line 17
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    .line 18
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    .line 19
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    .line 22
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsElementFound:Z

    .line 23
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    .line 24
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsShortHand:Z

    .line 25
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fFoundDepth:I

    const/4 v1, 0x1

    .line 26
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    .line 27
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    .line 28
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    .line 29
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    .line 30
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    return-void
.end method


# virtual methods
.method public checkMatch()Z
    .locals 7

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsShortHand:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v0, v0

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    add-int/2addr v3, v1

    if-gt v0, v3, :cond_1

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v4, v3

    if-ge v0, v4, :cond_5

    aget v3, v3, v0

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    aget v4, v4, v0

    if-eq v3, v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v0, v0

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    add-int/2addr v3, v1

    if-gt v0, v3, :cond_6

    move v0, v2

    :cond_3
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v4, v3

    if-ge v0, v4, :cond_5

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    array-length v5, v4

    add-int/lit8 v6, v0, 0x2

    if-ge v5, v6, :cond_4

    return v2

    :cond_4
    aget v3, v3, v0

    add-int/lit8 v0, v0, 0x1

    aget v4, v4, v0

    if-eq v3, v4, :cond_3

    return v2

    :cond_5
    return v1

    :cond_6
    return v2
.end method

.method public getSchemeData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fSchemeData:Ljava/lang/String;

    return-object p0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fSchemeName:Ljava/lang/String;

    return-object p0
.end method

.method public init()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fSchemeName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fSchemeData:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fShortHandPointerName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsElementFound:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fFoundDepth:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fShortHandPointer:Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->initErrorReporter()V

    return-void
.end method

.method public initErrorReporter()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerErrorHandler;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerErrorHandler;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerMessageFormatter;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerMessageFormatter;-><init>()V

    const-string v1, "http://www.w3.org/TR/XPTR"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    return-void
.end method

.method public isChildFragmentResolved()Z
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsShortHand:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fShortHandPointer:Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v1, v1

    if-gtz v1, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->isChildFragmentResolved()Z

    move-result p0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fFoundDepth:I

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
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    return p0
.end method

.method public matchChildSequence(Lcom/sun/org/apache/xerces/internal/xni/QName;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-lt p1, v1, :cond_0

    array-length p1, v0

    new-array v1, p1, [I

    array-length v4, v0

    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    mul-int/2addr v0, v2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    invoke-static {v1, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    aput v1, p2, v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-le v0, p2, :cond_1

    if-nez p2, :cond_a

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->checkMatch()Z

    move-result p2

    if-eqz p2, :cond_2

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsElementFound:Z

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fFoundDepth:I

    goto :goto_1

    :cond_2
    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsElementFound:Z

    iput v3, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fFoundDepth:I

    goto :goto_1

    :cond_3
    if-ne p2, p1, :cond_8

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-ne p2, v0, :cond_4

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsElementFound:Z

    goto :goto_0

    :cond_4
    if-ge p2, v0, :cond_5

    if-nez v0, :cond_6

    :cond_5
    if-le p2, v0, :cond_7

    if-nez v0, :cond_7

    :cond_6
    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsElementFound:Z

    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    aput v3, v0, p2

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    aget p2, v0, p2

    add-int/2addr p2, p1

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    goto :goto_1

    :cond_8
    if-ne p2, v2, :cond_a

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    aput v1, p2, v0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->checkMatch()Z

    move-result p2

    if-eqz p2, :cond_9

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsElementFound:Z

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    goto :goto_1

    :cond_9
    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsElementFound:Z

    :cond_a
    :goto_1
    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsElementFound:Z

    return p0
.end method

.method public parseXPointer(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->init()V

    new-instance v6, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    const/4 v1, 0x0

    invoke-direct {v6, p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;-><init>(Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$1;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$1;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$1;-><init>(Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    const/4 v4, 0x0

    move-object v2, v6

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Scanner;->access$300(Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Scanner;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;Ljava/lang/String;II)Z

    move-result v0

    const-string v1, "InvalidElementSchemeXPointer"

    if-nez v0, :cond_0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->access$400(Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    new-array v0, v0, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->access$500(Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->access$600(Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;)I

    move-result v5

    if-eqz v5, :cond_2

    if-eq v5, v2, :cond_1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->access$600(Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;)I

    move-result v5

    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->access$600(Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;)I

    move-result v5

    invoke-static {v6, v5}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->access$200(Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fShortHandPointerName:Ljava/lang/String;

    new-instance v5, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v5, v7}, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    iput-object v5, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fShortHandPointer:Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fShortHandPointerName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->setSchemeName(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-array p1, v4, [I

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fChildSequence:[I

    new-array v1, v4, [I

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    invoke-static {v0, v3, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/XPTR"

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    move-result-object v1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-interface {v1, p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolveXPointer(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fShortHandPointerName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fShortHandPointer:Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;->resolveXPointer(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;I)Z

    move-result p2

    if-eqz p2, :cond_0

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsShortHand:Z

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    move p2, v2

    :goto_0
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v0, p3

    if-lez v0, :cond_2

    invoke-virtual {p0, p1, p4}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->matchChildSequence(Lcom/sun/org/apache/xerces/internal/xni/QName;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    array-length p1, p3

    if-gtz p1, :cond_3

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    :goto_1
    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    return p0
.end method

.method public setSchemeData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fSchemeData:Ljava/lang/String;

    return-void
.end method

.method public setSchemeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->fSchemeName:Ljava/lang/String;

    return-void
.end method
