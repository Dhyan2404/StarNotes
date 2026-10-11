.class public final Lorg/apache/xerces/xpointer/XPointerHandler;
.super Lorg/apache/xerces/xinclude/XIncludeHandler;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xpointer/XPointerProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/xpointer/XPointerHandler$a;,
        Lorg/apache/xerces/xpointer/XPointerHandler$b;
    }
.end annotation


# instance fields
.field protected fErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

.field protected fFixupBase:Z

.field protected fFixupLang:Z

.field protected fFoundMatchingPtrPart:Z

.field protected fIsXPointerResolved:Z

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field protected fXPointerErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

.field protected fXPointerPart:Lorg/apache/xerces/xpointer/XPointerPart;

.field protected fXPointerParts:Ljava/util/ArrayList;

.field public final x0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/xerces/xinclude/XIncludeHandler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lorg/apache/xerces/xpointer/XPointerPart;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    iput-object v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    const-string v0, "element"

    iput-object v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->x0:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    iput-boolean v1, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    iput-boolean v1, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    new-instance v0, Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v0}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/parser/XMLErrorHandler;Lorg/apache/xerces/impl/XMLErrorReporter;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/xerces/xinclude/XIncludeHandler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lorg/apache/xerces/xpointer/XPointerPart;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    iput-object v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    const-string v0, "element"

    iput-object v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->x0:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    iput-boolean v1, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    iput-boolean v1, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iput-object p2, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    iput-object p3, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    return-void
.end method

.method public static synthetic G(Lorg/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/xpointer/XPointerHandler;->H(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final H(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xerces/xni/XNIException;

    iget-object v1, p0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/XPTR"

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v1

    iget-object p0, p0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-interface {v1, p0, p1, p2}, Lorg/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final I(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v0, "http://www.w3.org/TR/XPTR"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    return-void
.end method

.method public characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xerces/xpointer/XPointerHandler;->resolveXPointer(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean p1, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->processXMLBaseAttributes(Lorg/apache/xerces/xni/XMLAttributes;)V

    :cond_0
    iget-boolean p1, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->processXMLLangAttributes(Lorg/apache/xerces/xni/XMLAttributes;)V

    :cond_1
    iget-object p0, p0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {p0}, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->setContextInvalid()V

    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xerces/xinclude/XIncludeHandler;->endCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/apache/xerces/xpointer/XPointerHandler;->resolveXPointer(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public getPointerParts()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getXPointerPart()Lorg/apache/xerces/xpointer/XPointerPart;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lorg/apache/xerces/xpointer/XPointerPart;

    return-object p0
.end method

.method public ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lorg/apache/xerces/xpointer/XPointerPart;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    iput-boolean v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    invoke-virtual {p0}, Lorg/apache/xerces/xpointer/XPointerHandler;->initErrorReporter()V

    return-void
.end method

.method public initErrorReporter()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v0}, Lorg/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sunia/HTREnginev2/hmo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/hmo;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    :cond_1
    iget-object p0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    new-instance v0, Lcom/sunia/HTREnginev2/imo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/imo;-><init>()V

    const-string v1, "http://www.w3.org/TR/XPTR"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    return-void
.end method

.method public isChildFragmentResolved()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lorg/apache/xerces/xpointer/XPointerPart;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/xerces/xpointer/XPointerPart;->isChildFragmentResolved()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFragmentResolved()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lorg/apache/xerces/xpointer/XPointerPart;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/xerces/xpointer/XPointerPart;->isFragmentResolved()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    :cond_1
    return v0
.end method

.method public isXPointerResolved()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean p0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    return p0
.end method

.method public parseXPointer(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/xpointer/XPointerHandler;->init()V

    new-instance v6, Lorg/apache/xerces/xpointer/XPointerHandler$b;

    iget-object v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    const/4 v1, 0x0

    invoke-direct {v6, p0, v0, v1}, Lorg/apache/xerces/xpointer/XPointerHandler$b;-><init>(Lorg/apache/xerces/xpointer/XPointerHandler;Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xpointer/a;)V

    new-instance v0, Lorg/apache/xerces/xpointer/a;

    iget-object v1, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v0, p0, v1}, Lorg/apache/xerces/xpointer/a;-><init>(Lorg/apache/xerces/xpointer/XPointerHandler;Lorg/apache/xerces/util/SymbolTable;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v1, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    const/4 v4, 0x0

    move-object v2, v6

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/xerces/xpointer/XPointerHandler$a;->a(Lorg/apache/xerces/xpointer/XPointerHandler$a;Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xpointer/XPointerHandler$b;Ljava/lang/String;II)Z

    move-result v0

    const-string v1, "InvalidXPointerExpression"

    if-nez v0, :cond_0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/xpointer/XPointerHandler;->H(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-static {v6}, Lorg/apache/xerces/xpointer/XPointerHandler$b;->b(Lorg/apache/xerces/xpointer/XPointerHandler$b;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v6}, Lorg/apache/xerces/xpointer/XPointerHandler$b;->c(Lorg/apache/xerces/xpointer/XPointerHandler$b;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/xpointer/XPointerHandler;->H(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v6}, Lorg/apache/xerces/xpointer/XPointerHandler$b;->c(Lorg/apache/xerces/xpointer/XPointerHandler$b;)I

    move-result v0

    invoke-static {v6, v0}, Lorg/apache/xerces/xpointer/XPointerHandler$b;->a(Lorg/apache/xerces/xpointer/XPointerHandler$b;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lorg/apache/xerces/xpointer/XPointerHandler$b;->c(Lorg/apache/xerces/xpointer/XPointerHandler$b;)I

    move-result v3

    invoke-static {v6, v3}, Lorg/apache/xerces/xpointer/XPointerHandler$b;->a(Lorg/apache/xerces/xpointer/XPointerHandler$b;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lorg/apache/xerces/xpointer/XPointerHandler$b;->c(Lorg/apache/xerces/xpointer/XPointerHandler$b;)I

    move-result v3

    invoke-static {v6, v3}, Lorg/apache/xerces/xpointer/XPointerHandler$b;->a(Lorg/apache/xerces/xpointer/XPointerHandler$b;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "XPTRTOKEN_OPEN_PAREN"

    if-eq v4, v5, :cond_4

    if-ne v3, v2, :cond_3

    const-string v2, "MultipleShortHandPointers"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/xerces/xpointer/XPointerHandler;->H(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/xerces/xpointer/XPointerHandler;->H(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    const/4 v2, 0x1

    move v3, v2

    :goto_2
    invoke-static {v6}, Lorg/apache/xerces/xpointer/XPointerHandler$b;->b(Lorg/apache/xerces/xpointer/XPointerHandler$b;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v6}, Lorg/apache/xerces/xpointer/XPointerHandler$b;->c(Lorg/apache/xerces/xpointer/XPointerHandler$b;)I

    move-result v4

    invoke-static {v6, v4}, Lorg/apache/xerces/xpointer/XPointerHandler$b;->a(Lorg/apache/xerces/xpointer/XPointerHandler$b;I)Ljava/lang/String;

    move-result-object v4

    if-eq v4, v5, :cond_b

    :goto_3
    invoke-static {v6}, Lorg/apache/xerces/xpointer/XPointerHandler$b;->c(Lorg/apache/xerces/xpointer/XPointerHandler$b;)I

    move-result v4

    invoke-static {v6, v4}, Lorg/apache/xerces/xpointer/XPointerHandler$b;->a(Lorg/apache/xerces/xpointer/XPointerHandler$b;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lorg/apache/xerces/xpointer/XPointerHandler$b;->c(Lorg/apache/xerces/xpointer/XPointerHandler$b;)I

    move-result v7

    invoke-static {v6, v7}, Lorg/apache/xerces/xpointer/XPointerHandler$b;->a(Lorg/apache/xerces/xpointer/XPointerHandler$b;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "XPTRTOKEN_CLOSE_PAREN"

    if-eq v7, v8, :cond_6

    const-string v7, "SchemeDataNotFollowedByCloseParenthesis"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lorg/apache/xerces/xpointer/XPointerHandler;->H(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_4
    invoke-static {v6}, Lorg/apache/xerces/xpointer/XPointerHandler$b;->b(Lorg/apache/xerces/xpointer/XPointerHandler$b;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {v6}, Lorg/apache/xerces/xpointer/XPointerHandler$b;->d(Lorg/apache/xerces/xpointer/XPointerHandler$b;)I

    move-result v7

    invoke-static {v6, v7}, Lorg/apache/xerces/xpointer/XPointerHandler$b;->a(Lorg/apache/xerces/xpointer/XPointerHandler$b;I)Ljava/lang/String;

    move-result-object v7

    if-eq v7, v5, :cond_a

    :goto_5
    if-eq v3, v2, :cond_8

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {p1, v5, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "UnbalancedParenthesisInXPointerExpression"

    invoke-virtual {p0, v3, v2}, Lorg/apache/xerces/xpointer/XPointerHandler;->H(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    const-string v2, "element"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Lcom/sunia/HTREnginev2/lnf;

    iget-object v3, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object v5, p0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v2, v3, v5}, Lcom/sunia/HTREnginev2/lnf;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/impl/XMLErrorReporter;)V

    invoke-interface {v2, v0}, Lorg/apache/xerces/xpointer/XPointerPart;->setSchemeName(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Lorg/apache/xerces/xpointer/XPointerPart;->setSchemeData(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v2, v4}, Lorg/apache/xerces/xpointer/XPointerPart;->parseXPointer(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/xerces/xni/XNIException;

    invoke-direct {p1, p0}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_9
    const-string v2, "SchemeUnsupported"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/apache/xerces/xpointer/XPointerHandler;->I(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_c
    invoke-static {v6}, Lorg/apache/xerces/xpointer/XPointerHandler$b;->c(Lorg/apache/xerces/xpointer/XPointerHandler$b;)I

    move-result v0

    invoke-static {v6, v0}, Lorg/apache/xerces/xpointer/XPointerHandler$b;->a(Lorg/apache/xerces/xpointer/XPointerHandler$b;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/xerces/xpointer/XPointerHandler;->H(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    new-instance v2, Lcom/sunia/HTREnginev2/pom;

    iget-object v3, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v2, v3}, Lcom/sunia/HTREnginev2/pom;-><init>(Lorg/apache/xerces/util/SymbolTable;)V

    invoke-interface {v2, v0}, Lorg/apache/xerces/xpointer/XPointerPart;->setSchemeName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public resolveXPointer(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    move v0, v2

    :goto_0
    iget-object v3, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/xpointer/XPointerPart;

    iput-object v3, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lorg/apache/xerces/xpointer/XPointerPart;

    invoke-interface {v3, p1, p2, p3, p4}, Lorg/apache/xerces/xpointer/XPointerPart;->resolveXPointer(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v1, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    move v0, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerPart:Lorg/apache/xerces/xpointer/XPointerPart;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/xerces/xpointer/XPointerPart;->resolveXPointer(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iget-boolean p1, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    if-nez p1, :cond_4

    iput-boolean v1, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    :cond_4
    return v1
.end method

.method public setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fXPointerErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    :cond_1
    :goto_0
    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    move-object v0, p2

    check-cast v0, Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    iput-object v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    :cond_3
    :goto_1
    const-string v0, "http://apache.org/xml/features/xinclude/fixup-language"

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_4

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    goto :goto_2

    :cond_4
    iput-boolean v1, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    :cond_5
    :goto_2
    const-string v0, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    if-ne p1, v0, :cond_7

    if-eqz p2, :cond_6

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    goto :goto_3

    :cond_6
    iput-boolean v1, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    :cond_7
    :goto_3
    const-string v0, "http://apache.org/xml/properties/internal/namespace-context"

    if-ne p1, v0, :cond_8

    move-object v0, p2

    check-cast v0, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    iput-object v0, p0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    :cond_8
    invoke-super {p0, p1, p2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xerces/xinclude/XIncludeHandler;->startCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xerces/xpointer/XPointerHandler;->resolveXPointer(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean p1, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fFixupBase:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->processXMLBaseAttributes(Lorg/apache/xerces/xni/XMLAttributes;)V

    :cond_0
    iget-boolean p1, p0, Lorg/apache/xerces/xpointer/XPointerHandler;->fFixupLang:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->processXMLLangAttributes(Lorg/apache/xerces/xni/XMLAttributes;)V

    :cond_1
    iget-object p0, p0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {p0}, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->setContextInvalid()V

    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method
