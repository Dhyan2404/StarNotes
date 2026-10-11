.class Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Scanner"
.end annotation


# static fields
.field private static final CHARTYPE_CARRET:B = 0x3t

.field private static final CHARTYPE_CLOSE_PAREN:B = 0x5t

.field private static final CHARTYPE_COLON:B = 0xat

.field private static final CHARTYPE_DIGIT:B = 0x9t

.field private static final CHARTYPE_EQUAL:B = 0xbt

.field private static final CHARTYPE_INVALID:B = 0x0t

.field private static final CHARTYPE_LETTER:B = 0xct

.field private static final CHARTYPE_MINUS:B = 0x6t

.field private static final CHARTYPE_NONASCII:B = 0xet

.field private static final CHARTYPE_OPEN_PAREN:B = 0x4t

.field private static final CHARTYPE_OTHER:B = 0x1t

.field private static final CHARTYPE_PERIOD:B = 0x7t

.field private static final CHARTYPE_SLASH:B = 0x8t

.field private static final CHARTYPE_UNDERSCORE:B = 0xdt

.field private static final CHARTYPE_WHITESPACE:B = 0x2t


# instance fields
.field private final fASCIICharMap:[B

.field private fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;


# direct methods
.method private constructor <init>(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;->this$0:Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x80

    new-array p1, p1, [B

    .line 3
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    .line 4
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x4t
        0x5t
        0x1t
        0x1t
        0x1t
        0x6t
        0x7t
        0x8t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0xat
        0x1t
        0x1t
        0xbt
        0x1t
        0x1t
        0x1t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x1t
        0x1t
        0x1t
        0x3t
        0xdt
        0x1t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;-><init>(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;->scanExpr(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private scanData(Ljava/lang/String;Ljava/lang/StringBuffer;II)I
    .locals 7

    :goto_0
    if-ne p4, p3, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p1, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xe

    const/16 v2, 0x80

    if-lt v0, v2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v3, v3, v0

    :goto_1
    const/4 v4, 0x4

    const/4 v5, 0x5

    if-ne v3, v4, :cond_5

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 p4, p4, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;->scanData(Ljava/lang/String;Ljava/lang/StringBuffer;II)I

    move-result p4

    if-ne p4, p3, :cond_2

    return p4

    :cond_2
    invoke-virtual {p1, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v1, v1, v0

    :goto_2
    if-eq v1, v5, :cond_4

    return p3

    :cond_4
    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_5
    if-ne v3, v5, :cond_6

    return p4

    :cond_6
    const/4 v6, 0x3

    if-ne v3, v6, :cond_9

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p1, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v2, :cond_7

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v1, v1, v0

    :goto_3
    if-eq v1, v6, :cond_8

    if-eq v1, v4, :cond_8

    if-eq v1, v5, :cond_8

    :goto_4
    return p4

    :cond_8
    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_9
    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5
    add-int/lit8 p4, p4, 0x1

    goto :goto_0
.end method

.method private scanExpr(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ne p4, p5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_1
    const/16 v7, 0x20

    if-eq v6, v7, :cond_1

    const/16 v7, 0xa

    if-eq v6, v7, :cond_1

    const/16 v7, 0x9

    if-eq v6, v7, :cond_1

    const/16 v7, 0xd

    if-ne v6, v7, :cond_2

    :cond_1
    add-int/lit8 p4, p4, 0x1

    if-ne p4, p5, :cond_11

    :cond_2
    if-ne p4, p5, :cond_3

    :goto_2
    return v5

    :cond_3
    const/16 v7, 0x80

    if-lt v6, v7, :cond_4

    const/16 v6, 0xe

    goto :goto_3

    :cond_4
    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v6, v7, v6

    :goto_3
    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p2, v5}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;->addToken(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :pswitch_1
    invoke-virtual {p0, p2, v1}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;->addToken(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;I)V

    add-int/lit8 v3, v3, 0x1

    :goto_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :pswitch_2
    if-nez v3, :cond_d

    invoke-direct {p0, p3, p5, p4}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result v2

    if-ne v2, p4, :cond_5

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;->this$0:Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;

    const-string p1, "InvalidShortHandPointer"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->access$300(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_5
    if-ge v2, p5, :cond_6

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_5

    :cond_6
    const/4 v4, -0x1

    :goto_5
    invoke-virtual {p3, p4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    sget-object v5, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const/16 v6, 0x3a

    if-ne v4, v6, :cond_a

    add-int/lit8 v2, v2, 0x1

    if-ne v2, p5, :cond_7

    return v1

    :cond_7
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    invoke-direct {p0, p3, p5, v2}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_8

    return v1

    :cond_8
    if-ge v4, p5, :cond_9

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    :cond_9
    invoke-virtual {p3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_a
    move v4, v2

    move-object v2, p4

    move-object p4, v5

    :goto_6
    if-eq v4, p5, :cond_b

    const/4 v5, 0x3

    invoke-virtual {p0, p2, v5}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;->addToken(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;I)V

    invoke-static {p2, p4}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$800(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    invoke-static {p2, v2}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$800(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    if-ne v4, p5, :cond_c

    const/4 p4, 0x2

    invoke-virtual {p0, p2, p4}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;->addToken(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;I)V

    invoke-static {p2, v2}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$800(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    :cond_c
    :goto_7
    move p4, v4

    move v4, v1

    goto/16 :goto_0

    :cond_d
    if-lez v3, :cond_10

    if-nez v4, :cond_10

    if-eqz v2, :cond_10

    invoke-direct {p0, p3, v0, p5, p4}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;->scanData(Ljava/lang/String;Ljava/lang/StringBuffer;II)I

    move-result v3

    if-ne v3, p4, :cond_e

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;->this$0:Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;

    const-string p1, "InvalidSchemeDataInXPointer"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->access$300(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_e
    if-ge v3, p5, :cond_f

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 v5, 0x4

    invoke-virtual {p0, p2, v5}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;->addToken(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;I)V

    invoke-static {p2, p4}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$800(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p4

    invoke-virtual {v0, v1, p4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move p4, v3

    move v3, v1

    goto/16 :goto_0

    :cond_10
    return v1

    :cond_11
    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private scanNCName(Ljava/lang/String;II)I
    .locals 5

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xd

    const/16 v2, 0xc

    const/16 v3, 0x80

    if-lt v0, v3, :cond_0

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isNameStart(I)Z

    move-result v0

    if-nez v0, :cond_1

    return p3

    :cond_0
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v0, v4, v0

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    return p3

    :cond_1
    add-int/lit8 p3, p3, 0x1

    if-ge p3, p2, :cond_3

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v3, :cond_2

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isName(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v0, v4, v0

    if-eq v0, v2, :cond_1

    const/16 v4, 0x9

    if-eq v0, v4, :cond_1

    const/4 v4, 0x7

    if-eq v0, v4, :cond_1

    const/4 v4, 0x6

    if-eq v0, v4, :cond_1

    if-eq v0, v1, :cond_1

    :cond_3
    :goto_0
    return p3
.end method


# virtual methods
.method public addToken(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$900(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;I)V

    return-void
.end method
