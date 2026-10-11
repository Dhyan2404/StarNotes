.class final Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Tokens"
.end annotation


# static fields
.field private static final INITIAL_TOKEN_COUNT:I = 0x100

.field private static final XPTRTOKEN_ELEM_CHILD:I = 0x1

.field private static final XPTRTOKEN_ELEM_NCNAME:I


# instance fields
.field private fCurrentTokenIndex:I

.field private fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field private fTokenCount:I

.field private fTokenNames:Ljava/util/Hashtable;

.field private fTokens:[I

.field private final fgTokenNames:[Ljava/lang/String;

.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;


# direct methods
.method private constructor <init>(Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 3

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->this$0:Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "XPTRTOKEN_ELEM_NCNAME"

    const-string v0, "XPTRTOKEN_ELEM_CHILD"

    .line 3
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fgTokenNames:[Ljava/lang/String;

    const/16 v1, 0x100

    new-array v1, v1, [I

    .line 4
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    .line 6
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/Hashtable;

    .line 7
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    .line 8
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance p1, Ljava/lang/Integer;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;-><init>(Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;)I
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->getTokenCount()I

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->hasMore()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->nextToken()I

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->addToken(I)V

    return-void
.end method

.method public static synthetic access$800(Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->addToken(Ljava/lang/String;)V

    return-void
.end method

.method private addToken(I)V
    .locals 4

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    aput p1, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    .line 7
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    shl-int/lit8 v2, v1, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    const/4 v3, 0x0

    .line 8
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    aput p1, v0, v1

    .line 10
    :goto_0
    iget p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    return-void
.end method

.method private addToken(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 3
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->addToken(I)V

    return-void
.end method

.method private getToken(I)Ljava/lang/Integer;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method private getTokenCount()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    return p0
.end method

.method private getTokenString(I)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private hasMore()Z
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private nextToken()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->this$0:Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;

    const-string v1, "XPointerElementSchemeProcessingError"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    aget p0, v0, v1

    return p0
.end method

.method private nextTokenAsString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->nextToken()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->this$0:Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;

    const-string v1, "XPointerElementSchemeProcessingError"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private peekToken()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->this$0:Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;

    const-string v1, "XPointerElementSchemeProcessingError"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    aget p0, v0, p0

    return p0
.end method

.method private rewind()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    return-void
.end method
