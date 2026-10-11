.class public Lcom/sun/org/apache/regexp/internal/RECompiler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;
    }
.end annotation


# static fields
.field static final ESC_BACKREF:I = 0xfffff

.field static final ESC_CLASS:I = 0xffffd

.field static final ESC_COMPLEX:I = 0xffffe

.field static final ESC_MASK:I = 0xffff0

.field static final NODE_NORMAL:I = 0x0

.field static final NODE_NULLABLE:I = 0x1

.field static final NODE_TOPLEVEL:I = 0x2

.field static final bracketUnbounded:I = -0x1

.field static hashPOSIX:Ljava/util/Hashtable;


# instance fields
.field bracketEnd:[I

.field bracketMin:[I

.field bracketOpt:[I

.field bracketStart:[I

.field brackets:I

.field idx:I

.field instruction:[C

.field len:I

.field lenInstruction:I

.field maxBrackets:I

.field parens:I

.field pattern:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x77

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "alnum"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x61

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "alpha"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x62

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "blank"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x63

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "cntrl"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "digit"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x67

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "graph"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x6c

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "lower"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x70

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "print"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "punct"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x73

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "space"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x75

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "upper"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x78

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "xdigit"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x6a

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "javastart"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x6b

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "javapart"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->maxBrackets:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->brackets:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketStart:[I

    iput-object v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketEnd:[I

    iput-object v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketMin:[I

    iput-object v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketOpt:[I

    const/16 v1, 0x80

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->instruction:[C

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->lenInstruction:I

    return-void
.end method


# virtual methods
.method public allocBrackets()V
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketStart:[I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->maxBrackets:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketStart:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketEnd:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketMin:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketOpt:[I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->maxBrackets:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketStart:[I

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketEnd:[I

    iget-object v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketMin:[I

    iget-object v4, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketOpt:[I

    const/4 v5, -0x1

    aput v5, v4, v0

    aput v5, v3, v0

    aput v5, v2, v0

    aput v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public atom()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/regexp/internal/RESyntaxException;
        }
    .end annotation

    const/16 v0, 0x41

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    move-result v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-ge v2, v3, :cond_6

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x7b

    const/16 v6, 0x3f

    if-ge v4, v3, :cond_3

    iget-object v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    iget v4, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {p0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->escape()I

    iget v4, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v7, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-ge v4, v7, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :cond_0
    iput v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    :cond_1
    const/16 v3, 0x2a

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_2

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    iget v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x24

    if-eq v2, v3, :cond_6

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_6

    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_5

    const/16 v3, 0x7c

    if-eq v2, v3, :cond_6

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    iget v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/RECompiler;->emit(C)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {p0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->escape()I

    move-result v3

    const v4, 0xffff0

    and-int v5, v3, v4

    if-ne v5, v4, :cond_4

    iput v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    goto :goto_3

    :cond_4
    int-to-char v2, v3

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/RECompiler;->emit(C)V

    goto :goto_2

    :cond_5
    :pswitch_1
    if-nez v1, :cond_6

    const-string v2, "Missing operand to closure"

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_6
    :goto_3
    :pswitch_2
    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->internalError()V

    :cond_7
    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->instruction:[C

    add-int/lit8 v2, v0, 0x1

    int-to-char v1, v1

    aput-char v1, p0, v2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public bracket()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/regexp/internal/RESyntaxException;
        }
    .end annotation

    const-string v0, "Expected valid number"

    iget v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->internalError()V

    :cond_1
    iget v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    const-string v3, "Expected digit"

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p0, v3}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v4, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    iget v4, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketMin:[I

    iget v4, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->brackets:I

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v2, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :goto_1
    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v4, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    const-string v5, "Expected comma or right bracket"

    if-lt v2, v4, :cond_5

    invoke-virtual {p0, v5}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    iget v4, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v4, 0x0

    const/16 v6, 0x7d

    if-ne v2, v6, :cond_6

    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketOpt:[I

    iget p0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->brackets:I

    aput v4, v0, p0

    return-void

    :cond_6
    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v7, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-ge v2, v7, :cond_7

    iget-object v7, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    add-int/lit8 v8, v2, 0x1

    iput v8, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x2c

    if-eq v2, v7, :cond_8

    :cond_7
    const-string v2, "Expected comma"

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_8
    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v7, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-lt v2, v7, :cond_9

    invoke-virtual {p0, v5}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_9
    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    iget v5, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_a

    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketOpt:[I

    iget p0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->brackets:I

    const/4 v1, -0x1

    aput v1, v0, p0

    return-void

    :cond_a
    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v5, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-ge v2, v5, :cond_b

    iget-object v5, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    invoke-virtual {p0, v3}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_2
    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-ge v2, v3, :cond_d

    iget-object v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    iget v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_d
    :try_start_1
    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketOpt:[I

    iget v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->brackets:I

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketMin:[I

    iget v5, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->brackets:I

    aget v4, v4, v5

    sub-int/2addr v1, v4

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketOpt:[I

    iget v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->brackets:I

    aget v0, v0, v1

    if-gez v0, :cond_e

    const-string v0, "Bad range"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_e
    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_10

    :cond_f
    const-string v0, "Missing close brace"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public branch([I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/regexp/internal/RESyntaxException;
        }
    .end annotation

    const/16 v0, 0x7c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    move-result v2

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, -0x1

    move v7, v3

    move v6, v5

    :goto_0
    iget v8, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v9, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-ge v8, v9, :cond_2

    iget-object v9, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v0, :cond_2

    iget-object v8, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    iget v9, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x29

    if-eq v8, v9, :cond_2

    aput v1, v4, v1

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/regexp/internal/RECompiler;->closure([I)I

    move-result v8

    aget v9, v4, v1

    if-nez v9, :cond_0

    move v7, v1

    :cond_0
    if-eq v6, v5, :cond_1

    invoke-virtual {p0, v6, v8}, Lcom/sun/org/apache/regexp/internal/RECompiler;->setNextOfEnd(II)V

    :cond_1
    move v6, v8

    goto :goto_0

    :cond_2
    if-ne v6, v5, :cond_3

    const/16 v0, 0x4e

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    :cond_3
    if-eqz v7, :cond_4

    aget p0, p1, v1

    or-int/2addr p0, v3

    aput p0, p1, v1

    :cond_4
    return v2
.end method

.method public characterClass()I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/regexp/internal/RESyntaxException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    iget v2, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->internalError()V

    :cond_0
    iget v1, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/lit8 v3, v1, 0x1

    iget v4, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    const/16 v5, 0x5d

    const/4 v6, 0x1

    if-ge v3, v4, :cond_1

    iget-object v3, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    add-int/2addr v1, v6

    iput v1, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_2

    :cond_1
    const-string v1, "Empty or unterminated class"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_2
    iget v1, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v3, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    const/16 v4, 0x7a

    const/16 v7, 0x61

    if-ge v1, v3, :cond_6

    iget-object v3, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_6

    iget v1, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/2addr v1, v6

    iput v1, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    :goto_0
    iget v8, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v9, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-ge v8, v9, :cond_3

    iget-object v9, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_3

    iget-object v8, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    iget v9, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-gt v8, v4, :cond_3

    iget v8, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/2addr v8, v6

    iput v8, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    goto :goto_0

    :cond_3
    iget v8, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/lit8 v9, v8, 0x1

    iget v10, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-ge v9, v10, :cond_5

    iget-object v9, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v3, :cond_5

    iget-object v3, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    iget v8, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/2addr v8, v6

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_5

    iget-object v3, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    iget v8, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {v3, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/sun/org/apache/regexp/internal/RECompiler;->hashPOSIX:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    if-eqz v3, :cond_4

    iget v1, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    const/16 v1, 0x50

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    move-result v0

    return v0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid POSIX character class \'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_5
    const-string v1, "Invalid POSIX character class syntax"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    move-result v2

    iget v3, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    new-instance v8, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;

    invoke-direct {v8, v0}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;-><init>(Lcom/sun/org/apache/regexp/internal/RECompiler;)V

    const v9, 0xffff

    move v10, v1

    move v13, v10

    move v11, v6

    move v12, v9

    :goto_1
    iget v14, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v15, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-ge v14, v15, :cond_18

    iget-object v15, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v5, :cond_18

    iget-object v14, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    iget v15, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2d

    const-string v5, "Bad character class"

    if-eq v14, v15, :cond_f

    const/16 v15, 0x5c

    if-eq v14, v15, :cond_9

    const/16 v15, 0x5e

    if-eq v14, v15, :cond_7

    iget-object v12, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    iget v14, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v12

    :goto_2
    const/16 v14, 0x5d

    goto/16 :goto_6

    :cond_7
    xor-int/lit8 v11, v11, 0x1

    iget v5, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    if-ne v5, v3, :cond_8

    invoke-virtual {v8, v1, v9, v6}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->include(IIZ)V

    :cond_8
    iget v5, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    :goto_3
    const/16 v5, 0x5d

    goto :goto_1

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->escape()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    int-to-char v12, v12

    goto :goto_2

    :pswitch_0
    invoke-virtual {v0, v5}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :pswitch_1
    if-eqz v10, :cond_a

    invoke-virtual {v0, v5}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_a
    iget-object v12, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    iget v14, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    sub-int/2addr v14, v6

    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v14, 0x44

    if-eq v12, v14, :cond_d

    const/16 v14, 0x53

    if-eq v12, v14, :cond_d

    const/16 v14, 0x57

    if-eq v12, v14, :cond_d

    const/16 v5, 0x64

    if-eq v12, v5, :cond_c

    const/16 v5, 0x73

    if-eq v12, v5, :cond_e

    const/16 v5, 0x77

    if-eq v12, v5, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v8, v7, v4, v11}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->include(IIZ)V

    const/16 v5, 0x41

    const/16 v12, 0x5a

    invoke-virtual {v8, v5, v12, v11}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->include(IIZ)V

    const/16 v5, 0x5f

    invoke-virtual {v8, v5, v11}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->include(CZ)V

    :cond_c
    const/16 v5, 0x30

    const/16 v12, 0x39

    invoke-virtual {v8, v5, v12, v11}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->include(IIZ)V

    goto :goto_4

    :cond_d
    invoke-virtual {v0, v5}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_e
    const/16 v5, 0x9

    invoke-virtual {v8, v5, v11}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->include(CZ)V

    const/16 v5, 0xd

    invoke-virtual {v8, v5, v11}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->include(CZ)V

    const/16 v5, 0xc

    invoke-virtual {v8, v5, v11}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->include(CZ)V

    const/16 v5, 0xa

    invoke-virtual {v8, v5, v11}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->include(CZ)V

    const/16 v5, 0x8

    invoke-virtual {v8, v5, v11}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->include(CZ)V

    const/16 v5, 0x20

    invoke-virtual {v8, v5, v11}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->include(CZ)V

    :goto_4
    move v12, v9

    goto :goto_3

    :cond_f
    if-eqz v10, :cond_10

    const-string v10, "Bad class range"

    invoke-virtual {v0, v10}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_10
    if-ne v12, v9, :cond_11

    move v13, v1

    goto :goto_5

    :cond_11
    move v13, v12

    :goto_5
    iget v10, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/lit8 v14, v10, 0x1

    iget v15, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-ge v14, v15, :cond_15

    iget-object v14, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v14, 0x5d

    if-ne v10, v14, :cond_16

    move v10, v6

    move v12, v9

    :goto_6
    if-eqz v10, :cond_13

    if-lt v13, v12, :cond_12

    invoke-virtual {v0, v5}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {v8, v13, v12, v11}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->include(IIZ)V

    move v10, v1

    move v12, v9

    goto :goto_7

    :cond_13
    iget v5, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v15, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-ge v5, v15, :cond_14

    iget-object v15, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v15, 0x2d

    if-eq v5, v15, :cond_17

    :cond_14
    invoke-virtual {v8, v12, v11}, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->include(CZ)V

    goto :goto_7

    :cond_15
    const/16 v14, 0x5d

    :cond_16
    move v10, v6

    :cond_17
    :goto_7
    move v5, v14

    goto/16 :goto_1

    :cond_18
    iget v3, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v4, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-ne v3, v4, :cond_19

    const-string v3, "Unterminated character class"

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_19
    iget v3, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/2addr v3, v6

    iput v3, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget-object v3, v0, Lcom/sun/org/apache/regexp/internal/RECompiler;->instruction:[C

    add-int/lit8 v4, v2, 0x1

    iget v5, v8, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->num:I

    int-to-char v5, v5

    aput-char v5, v3, v4

    :goto_8
    iget v3, v8, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->num:I

    if-ge v1, v3, :cond_1a

    iget-object v3, v8, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->minRange:[I

    aget v3, v3, v1

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/regexp/internal/RECompiler;->emit(C)V

    iget-object v3, v8, Lcom/sun/org/apache/regexp/internal/RECompiler$RERange;->maxRange:[I

    aget v3, v3, v1

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/regexp/internal/RECompiler;->emit(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1a
    return v2

    :pswitch_data_0
    .packed-switch 0xffffd
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public closure([I)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/regexp/internal/RESyntaxException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    const/4 v1, 0x0

    filled-new-array {v1}, [I

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/RECompiler;->terminal([I)I

    move-result v3

    aget v4, p1, v1

    aget v5, v2, v1

    or-int/2addr v4, v5

    aput v4, p1, v1

    iget v4, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v5, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-lt v4, v5, :cond_0

    return v3

    :cond_0
    iget-object v5, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7b

    const/16 v6, 0x2b

    const/16 v7, 0x2a

    const/16 v8, 0x3f

    const/4 v9, 0x1

    if-eq v4, v7, :cond_1

    if-eq v4, v6, :cond_2

    if-eq v4, v8, :cond_1

    if-eq v4, v5, :cond_3

    goto :goto_0

    :cond_1
    aget v10, p1, v1

    or-int/2addr v10, v9

    aput v10, p1, v1

    :cond_2
    iget p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/2addr p1, v9

    iput p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    :cond_3
    iget-object p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->instruction:[C

    add-int/lit8 v10, v3, 0x0

    aget-char p1, p1, v10

    const/16 v10, 0x5e

    if-eq p1, v10, :cond_4

    const/16 v10, 0x24

    if-ne p1, v10, :cond_5

    :cond_4
    const-string p1, "Bad closure operand"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_5
    aget p1, v2, v1

    and-int/2addr p1, v9

    if-eqz p1, :cond_6

    const-string p1, "Closure operand can\'t be nullable"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_6
    :goto_0
    iget p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-ge p1, v2, :cond_7

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v8, :cond_7

    iget p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/2addr p1, v9

    iput p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    move p1, v1

    goto :goto_1

    :cond_7
    move p1, v9

    :goto_1
    if-eqz p1, :cond_19

    const/16 v2, 0x47

    const/16 v10, 0x4e

    const/16 v11, 0x7c

    if-eq v4, v7, :cond_16

    if-eq v4, v6, :cond_15

    if-eq v4, v8, :cond_16

    if-eq v4, v5, :cond_8

    goto/16 :goto_8

    :cond_8
    invoke-virtual {p0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->allocBrackets()V

    move v4, v1

    :goto_2
    iget v5, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->brackets:I

    if-ge v4, v5, :cond_a

    iget-object v6, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketStart:[I

    aget v6, v6, v4

    iget v12, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    if-ne v6, v12, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_a
    move v9, v1

    :goto_3
    if-nez v9, :cond_c

    iget v4, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->maxBrackets:I

    if-lt v5, v4, :cond_b

    invoke-virtual {p0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->reallocBrackets()V

    :cond_b
    iget-object v4, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketStart:[I

    iget v5, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->brackets:I

    iget v6, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    aput v6, v4, v5

    invoke-virtual {p0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracket()V

    iget-object v4, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketEnd:[I

    iget v5, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->brackets:I

    iget v6, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    aput v6, v4, v5

    add-int/lit8 v4, v5, 0x1

    iput v4, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->brackets:I

    move v4, v5

    :cond_c
    iget-object v5, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketMin:[I

    aget v6, v5, v4

    add-int/lit8 v9, v6, -0x1

    aput v9, v5, v4

    if-lez v6, :cond_11

    if-gtz v9, :cond_e

    iget-object p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketOpt:[I

    aget p1, p1, v4

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_d
    iget-object p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketEnd:[I

    aget p1, p1, v4

    iput p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    goto/16 :goto_8

    :cond_e
    :goto_4
    iget p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->brackets:I

    if-ge v1, p1, :cond_10

    if-eq v1, v4, :cond_f

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketStart:[I

    aget v5, v2, v1

    iget v6, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    if-ge v5, v6, :cond_f

    if-lt v5, v0, :cond_f

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->brackets:I

    aget v5, v2, p1

    aput v5, v2, v1

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketEnd:[I

    aget v5, v2, p1

    aput v5, v2, v1

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketMin:[I

    aget v5, v2, p1

    aput v5, v2, v1

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketOpt:[I

    aget p1, v2, p1

    aput p1, v2, v1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    goto/16 :goto_8

    :cond_11
    iget-object v5, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketOpt:[I

    aget v6, v5, v4

    const/4 v9, -0x1

    if-ne v6, v9, :cond_12

    aput v1, v5, v4

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketEnd:[I

    aget v0, v0, v4

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    move v4, v7

    goto :goto_6

    :cond_12
    add-int/lit8 v9, v6, -0x1

    aput v9, v5, v4

    if-lez v6, :cond_14

    if-lez v9, :cond_13

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    goto :goto_5

    :cond_13
    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketEnd:[I

    aget v0, v0, v4

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    :goto_5
    move v4, v8

    goto :goto_6

    :cond_14
    iput v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->lenInstruction:I

    invoke-virtual {p0, v10, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    iget-object p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketEnd:[I

    aget p1, p1, v4

    iput p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    goto/16 :goto_8

    :cond_15
    invoke-virtual {p0, v11, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->setNextOfEnd(II)V

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/sun/org/apache/regexp/internal/RECompiler;->setNextOfEnd(II)V

    invoke-virtual {p0, v11, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->setNextOfEnd(II)V

    invoke-virtual {p0, v10, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->setNextOfEnd(II)V

    goto :goto_8

    :cond_16
    :goto_6
    if-nez p1, :cond_17

    goto :goto_8

    :cond_17
    if-ne v4, v8, :cond_18

    invoke-virtual {p0, v11, v1, v3}, Lcom/sun/org/apache/regexp/internal/RECompiler;->nodeInsert(CII)V

    invoke-virtual {p0, v11, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->setNextOfEnd(II)V

    invoke-virtual {p0, v10, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->setNextOfEnd(II)V

    add-int/lit8 v0, v3, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->setNextOfEnd(II)V

    :cond_18
    if-ne v4, v7, :cond_1d

    invoke-virtual {p0, v11, v1, v3}, Lcom/sun/org/apache/regexp/internal/RECompiler;->nodeInsert(CII)V

    add-int/lit8 p1, v3, 0x3

    invoke-virtual {p0, v11, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->setNextOfEnd(II)V

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->setNextOfEnd(II)V

    invoke-virtual {p0, p1, v3}, Lcom/sun/org/apache/regexp/internal/RECompiler;->setNextOfEnd(II)V

    invoke-virtual {p0, v11, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->setNextOfEnd(II)V

    invoke-virtual {p0, v10, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->setNextOfEnd(II)V

    goto :goto_8

    :cond_19
    const/16 p1, 0x45

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->setNextOfEnd(II)V

    if-eq v4, v7, :cond_1c

    if-eq v4, v6, :cond_1b

    if-eq v4, v8, :cond_1a

    goto :goto_7

    :cond_1a
    const/16 p1, 0x2f

    invoke-virtual {p0, p1, v1, v3}, Lcom/sun/org/apache/regexp/internal/RECompiler;->nodeInsert(CII)V

    goto :goto_7

    :cond_1b
    const/16 p1, 0x3d

    invoke-virtual {p0, p1, v1, v3}, Lcom/sun/org/apache/regexp/internal/RECompiler;->nodeInsert(CII)V

    goto :goto_7

    :cond_1c
    const/16 p1, 0x38

    invoke-virtual {p0, p1, v1, v3}, Lcom/sun/org/apache/regexp/internal/RECompiler;->nodeInsert(CII)V

    :goto_7
    iget p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->lenInstruction:I

    invoke-virtual {p0, v3, p1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->setNextOfEnd(II)V

    :cond_1d
    :goto_8
    return v3
.end method

.method public compile(Ljava/lang/String;)Lcom/sun/org/apache/regexp/internal/REProgram;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/regexp/internal/RESyntaxException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->lenInstruction:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->parens:I

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->brackets:I

    const/4 v1, 0x2

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->expr([I)I

    iget v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-eq v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x29

    if-ne p1, v1, :cond_0

    const-string p1, "Unmatched close paren"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_0
    const-string p1, "Unexpected input remains"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_1
    iget p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->lenInstruction:I

    new-array v1, p1, [C

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->instruction:[C

    invoke-static {v2, v0, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lcom/sun/org/apache/regexp/internal/REProgram;

    iget p0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->parens:I

    invoke-direct {p1, p0, v1}, Lcom/sun/org/apache/regexp/internal/REProgram;-><init>(I[C)V

    return-object p1
.end method

.method public emit(C)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->ensure(I)V

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->instruction:[C

    iget v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->lenInstruction:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->lenInstruction:I

    aput-char p1, v0, v1

    return-void
.end method

.method public ensure(I)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->instruction:[C

    array-length v0, v0

    iget v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->lenInstruction:I

    add-int/2addr v1, p1

    if-lt v1, v0, :cond_1

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->lenInstruction:I

    add-int v2, v1, p1

    if-lt v2, v0, :cond_0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    new-array p1, v0, [C

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->instruction:[C

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->instruction:[C

    :cond_1
    return-void
.end method

.method public escape()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/regexp/internal/RESyntaxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    iget v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->internalError()V

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-ne v0, v1, :cond_1

    const-string v0, "Escape terminates string"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    const/4 v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_e

    const/16 v2, 0x44

    if-eq v0, v2, :cond_d

    const/16 v2, 0x53

    if-eq v0, v2, :cond_d

    const/16 v2, 0x57

    if-eq v0, v2, :cond_d

    const/16 v2, 0x62

    if-eq v0, v2, :cond_e

    const/16 v2, 0x64

    if-eq v0, v2, :cond_d

    const/16 v2, 0x66

    if-eq v0, v2, :cond_c

    const/16 v3, 0x6e

    const/16 v4, 0xa

    if-eq v0, v3, :cond_b

    const/16 v3, 0x77

    if-eq v0, v3, :cond_d

    const/16 v3, 0x78

    const/16 v5, 0x30

    if-eq v0, v3, :cond_6

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    return v0

    :pswitch_0
    const/16 p0, 0x9

    return p0

    :pswitch_1
    const/16 p0, 0xd

    return p0

    :pswitch_2
    iget v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    if-ne v0, v5, :cond_5

    :cond_3
    sub-int/2addr v0, v5

    iget v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_4

    shl-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v5

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_4

    shl-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    sub-int/2addr p0, v5

    add-int/2addr v0, p0

    :cond_4
    return v0

    :cond_5
    const p0, 0xfffff

    return p0

    :cond_6
    :pswitch_3
    const/16 v3, 0x75

    if-ne v0, v3, :cond_7

    const/4 v1, 0x4

    :cond_7
    const/4 v3, 0x0

    :goto_0
    iget v6, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v7, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-ge v6, v7, :cond_a

    add-int/lit8 v7, v1, -0x1

    if-lez v1, :cond_a

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v5, :cond_8

    const/16 v6, 0x39

    if-gt v1, v6, :cond_8

    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v1

    sub-int/2addr v3, v5

    goto :goto_1

    :cond_8
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    const/16 v6, 0x61

    if-lt v1, v6, :cond_9

    if-gt v1, v2, :cond_9

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v1, v1, -0x61

    add-int/2addr v3, v1

    add-int/2addr v3, v4

    goto :goto_1

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " hexadecimal digits after \\"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :goto_1
    iget v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    move v1, v7

    goto :goto_0

    :cond_a
    return v3

    :cond_b
    return v4

    :cond_c
    const/16 p0, 0xc

    return p0

    :cond_d
    :pswitch_4
    const p0, 0xffffd

    return p0

    :cond_e
    const p0, 0xffffe

    return p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
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

    :pswitch_data_1
    .packed-switch 0x72
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public expr([I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/regexp/internal/RESyntaxException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->parens:I

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x2

    and-int/2addr v2, v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    iget v6, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x28

    if-ne v2, v6, :cond_1

    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/lit8 v7, v2, 0x2

    iget v8, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    if-ge v7, v8, :cond_0

    iget-object v7, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    add-int/2addr v2, v4

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x3f

    if-ne v2, v7, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    iget v7, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/2addr v7, v3

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x3a

    if-ne v2, v7, :cond_0

    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    const/16 v2, 0x3c

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    move-result v2

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->parens:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->parens:I

    invoke-virtual {p0, v6, v2}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    move-result v2

    move v3, v4

    goto :goto_0

    :cond_1
    move v2, v5

    move v3, v2

    :goto_0
    aget v6, p1, v1

    and-int/lit8 v6, v6, -0x3

    aput v6, p1, v1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->branch([I)I

    move-result v6

    if-ne v2, v5, :cond_2

    move v2, v6

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2, v6}, Lcom/sun/org/apache/regexp/internal/RECompiler;->setNextOfEnd(II)V

    :goto_1
    iget v5, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v6, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    const/16 v7, 0x7c

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_3

    iget v5, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->branch([I)I

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/sun/org/apache/regexp/internal/RECompiler;->setNextOfEnd(II)V

    goto :goto_1

    :cond_3
    if-lez v3, :cond_6

    iget p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    iget v5, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->len:I

    const/16 v6, 0x29

    if-ge p1, v5, :cond_4

    iget-object v5, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v6, :cond_4

    iget p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    goto :goto_2

    :cond_4
    const-string p1, "Missing close paren"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :goto_2
    if-ne v3, v4, :cond_5

    invoke-virtual {p0, v6, v0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    move-result p1

    goto :goto_3

    :cond_5
    const/16 p1, 0x3e

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    move-result p1

    goto :goto_3

    :cond_6
    const/16 p1, 0x45

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    move-result p1

    :goto_3
    invoke-virtual {p0, v2, p1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->setNextOfEnd(II)V

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->instruction:[C

    add-int/lit8 v1, v2, 0x2

    aget-char v0, v0, v1

    move v1, v2

    :goto_4
    if-eqz v0, :cond_8

    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->lenInstruction:I

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->instruction:[C

    add-int/lit8 v3, v1, 0x0

    aget-char v0, v0, v3

    if-ne v0, v7, :cond_7

    add-int/lit8 v0, v1, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->setNextOfEnd(II)V

    :cond_7
    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->instruction:[C

    add-int/lit8 v3, v1, 0x2

    aget-char v0, v0, v3

    add-int/2addr v1, v0

    goto :goto_4

    :cond_8
    return v2
.end method

.method public internalError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    new-instance p0, Ljava/lang/Error;

    const-string v0, "Internal error!"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public node(CI)I
    .locals 4

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->ensure(I)V

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->instruction:[C

    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->lenInstruction:I

    add-int/lit8 v3, v2, 0x0

    aput-char p1, v1, v3

    add-int/lit8 p1, v2, 0x1

    int-to-char p2, p2

    aput-char p2, v1, p1

    add-int/lit8 p1, v2, 0x2

    const/4 p2, 0x0

    aput-char p2, v1, p1

    add-int/2addr v2, v0

    iput v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->lenInstruction:I

    sub-int/2addr v2, v0

    return v2
.end method

.method public nodeInsert(CII)V
    .locals 4

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->ensure(I)V

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->instruction:[C

    add-int/lit8 v2, p3, 0x3

    iget v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->lenInstruction:I

    sub-int/2addr v3, p3

    invoke-static {v1, p3, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->instruction:[C

    add-int/lit8 v2, p3, 0x0

    aput-char p1, v1, v2

    add-int/lit8 p1, p3, 0x1

    int-to-char p2, p2

    aput-char p2, v1, p1

    add-int/lit8 p3, p3, 0x2

    const/4 p1, 0x0

    aput-char p1, v1, p3

    iget p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->lenInstruction:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->lenInstruction:I

    return-void
.end method

.method public declared-synchronized reallocBrackets()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketStart:[I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->allocBrackets()V

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->maxBrackets:I

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [I

    new-array v2, v0, [I

    new-array v3, v0, [I

    new-array v4, v0, [I

    iget v5, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->brackets:I

    :goto_0
    if-ge v5, v0, :cond_1

    const/4 v6, -0x1

    aput v6, v4, v5

    aput v6, v3, v5

    aput v6, v2, v5

    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketStart:[I

    iget v6, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->brackets:I

    const/4 v7, 0x0

    invoke-static {v5, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketEnd:[I

    iget v6, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->brackets:I

    invoke-static {v5, v7, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketMin:[I

    iget v6, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->brackets:I

    invoke-static {v5, v7, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketOpt:[I

    iget v6, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->brackets:I

    invoke-static {v5, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketStart:[I

    iput-object v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketEnd:[I

    iput-object v3, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketMin:[I

    iput-object v4, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->bracketOpt:[I

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->maxBrackets:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNextOfEnd(II)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->instruction:[C

    add-int/lit8 v1, p1, 0x2

    aget-char v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->lenInstruction:I

    if-ge p1, v1, :cond_1

    if-ne p1, p2, :cond_0

    move p2, v1

    :cond_0
    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->instruction:[C

    add-int/lit8 v1, p1, 0x2

    aget-char v0, v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->lenInstruction:I

    if-ge p1, v0, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->instruction:[C

    add-int/lit8 v0, p1, 0x2

    sub-int/2addr p2, p1

    int-to-short p1, p2

    int-to-char p1, p1

    aput-char p1, p0, v0

    :cond_2
    return-void
.end method

.method public syntaxError(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/regexp/internal/RESyntaxException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/regexp/internal/RESyntaxException;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/regexp/internal/RESyntaxException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public terminal([I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/regexp/internal/RESyntaxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    iget v1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v2, 0x24

    if-eq v0, v2, :cond_1

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3f

    if-eq v0, v2, :cond_3

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_3

    const/16 v2, 0x7c

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->characterClass()I

    move-result p0

    return p0

    :pswitch_1
    const-string v0, "Unexpected close paren"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->expr([I)I

    move-result p0

    return p0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->internalError()V

    :pswitch_3
    const-string v0, "Mismatched class"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :pswitch_4
    iget-object p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    move-result p0

    return p0

    :cond_2
    :goto_1
    const-string v0, "Unexpected end of input"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_3
    :pswitch_5
    const-string v0, "Missing operand to closure"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :pswitch_6
    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    invoke-virtual {p0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->escape()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    iput v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    aget v0, p1, v1

    and-int/lit8 v0, v0, -0x2

    aput v0, p1, v1

    goto :goto_2

    :pswitch_7
    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    int-to-char v0, v0

    iget v2, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->parens:I

    if-gt v2, v0, :cond_4

    const-string v2, "Bad backreference"

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/RECompiler;->syntaxError(Ljava/lang/String;)V

    :cond_4
    aget v2, p1, v1

    or-int/lit8 v2, v2, 0x1

    aput v2, p1, v1

    const/16 p1, 0x23

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    move-result p0

    return p0

    :pswitch_8
    aget v0, p1, v1

    and-int/lit8 v0, v0, -0x2

    aput v0, p1, v1

    iget-object p1, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->pattern:Ljava/lang/String;

    iget v0, p0, Lcom/sun/org/apache/regexp/internal/RECompiler;->idx:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x5c

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->node(CI)I

    move-result p0

    return p0

    :goto_2
    aget v0, p1, v1

    and-int/lit8 v0, v0, -0x2

    aput v0, p1, v1

    invoke-virtual {p0}, Lcom/sun/org/apache/regexp/internal/RECompiler;->atom()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xffffd
        :pswitch_8
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
