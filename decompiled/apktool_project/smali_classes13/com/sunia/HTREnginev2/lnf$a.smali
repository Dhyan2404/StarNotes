.class public Lcom/sunia/HTREnginev2/lnf$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/lnf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field public static final d:B = 0x0t

.field public static final e:B = 0x1t

.field public static final f:B = 0x2t

.field public static final g:B = 0x3t

.field public static final h:B = 0x4t

.field public static final i:B = 0x5t

.field public static final j:B = 0x6t

.field public static final k:B = 0x7t

.field public static final l:B = 0x8t


# instance fields
.field public final a:[B

.field public b:Lorg/apache/xerces/util/SymbolTable;

.field public final synthetic c:Lcom/sunia/HTREnginev2/lnf;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/lnf;Lorg/apache/xerces/util/SymbolTable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lnf$a;->c:Lcom/sunia/HTREnginev2/lnf;

    const/16 p1, 0x80

    new-array p1, p1, [B

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lnf$a;->a:[B

    iput-object p2, p0, Lcom/sunia/HTREnginev2/lnf$a;->b:Lorg/apache/xerces/util/SymbolTable;

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
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
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
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x1t
        0x1t
        0x1t
        0x1t
        0x7t
        0x1t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/lnf;Lorg/apache/xerces/util/SymbolTable;Lcom/sunia/HTREnginev2/knf;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/lnf$a;-><init>(Lcom/sunia/HTREnginev2/lnf;Lorg/apache/xerces/util/SymbolTable;)V

    return-void
.end method

.method public static synthetic a(Lcom/sunia/HTREnginev2/lnf$a;Lorg/apache/xerces/util/SymbolTable;Lcom/sunia/HTREnginev2/lnf$b;Ljava/lang/String;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lcom/sunia/HTREnginev2/lnf$a;->c(Lorg/apache/xerces/util/SymbolTable;Lcom/sunia/HTREnginev2/lnf$b;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public b(Lcom/sunia/HTREnginev2/lnf$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sunia/HTREnginev2/lnf$b;->e(Lcom/sunia/HTREnginev2/lnf$b;I)V

    return-void
.end method

.method public final c(Lorg/apache/xerces/util/SymbolTable;Lcom/sunia/HTREnginev2/lnf$b;Ljava/lang/String;II)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x1

    if-ne p4, p5, :cond_0

    return v0

    :cond_0
    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x80

    if-lt v1, v2, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sunia/HTREnginev2/lnf$a;->a:[B

    aget-byte v1, v2, v1

    :goto_1
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/lit8 p4, p4, 0x1

    if-ne p4, p5, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0, p2, v0}, Lcom/sunia/HTREnginev2/lnf$a;->b(Lcom/sunia/HTREnginev2/lnf$b;I)V

    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v2

    :goto_2
    const/16 v3, 0x30

    if-lt v0, v3, :cond_5

    const/16 v3, 0x39

    if-le v0, v3, :cond_3

    goto :goto_3

    :cond_3
    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v3, v0, -0x30

    add-int/2addr v1, v3

    add-int/lit8 p4, p4, 0x1

    if-ne p4, p5, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    :cond_5
    :goto_3
    if-nez v1, :cond_6

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lnf$a;->c:Lcom/sunia/HTREnginev2/lnf;

    new-instance p1, Ljava/lang/Character;

    int-to-char p2, v0

    invoke-direct {p1, p2}, Ljava/lang/Character;-><init>(C)V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "InvalidChildSequenceCharacter"

    invoke-virtual {p0, p2, p1}, Lcom/sunia/HTREnginev2/lnf;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_6
    invoke-static {p2, v1}, Lcom/sunia/HTREnginev2/lnf$b;->e(Lcom/sunia/HTREnginev2/lnf$b;I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p3, p5, p4}, Lcom/sunia/HTREnginev2/lnf$a;->d(Ljava/lang/String;II)I

    move-result v0

    if-ne v0, p4, :cond_7

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lnf$a;->c:Lcom/sunia/HTREnginev2/lnf;

    const-string p1, "InvalidNCNameInElementSchemeData"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/lnf;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_7
    if-ge v0, p5, :cond_8

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    :cond_8
    invoke-virtual {p3, p4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p2, v2}, Lcom/sunia/HTREnginev2/lnf$a;->b(Lcom/sunia/HTREnginev2/lnf$b;I)V

    invoke-static {p2, p4}, Lcom/sunia/HTREnginev2/lnf$b;->f(Lcom/sunia/HTREnginev2/lnf$b;Ljava/lang/String;)V

    move p4, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final d(Ljava/lang/String;II)I
    .locals 5

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/16 v3, 0x80

    if-lt v0, v3, :cond_0

    invoke-static {v0}, Lorg/apache/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v0

    if-nez v0, :cond_1

    return p3

    :cond_0
    iget-object v4, p0, Lcom/sunia/HTREnginev2/lnf$a;->a:[B

    aget-byte v0, v4, v0

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    return p3

    :cond_1
    add-int/lit8 p3, p3, 0x1

    if-lt p3, p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v3, :cond_3

    invoke-static {v0}, Lorg/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sunia/HTREnginev2/lnf$a;->a:[B

    aget-byte v0, v4, v0

    if-eq v0, v2, :cond_1

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    if-eq v0, v1, :cond_1

    :goto_0
    return p3
.end method
