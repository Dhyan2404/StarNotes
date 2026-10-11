.class final Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Parser"
.end annotation


# instance fields
.field private fidx:I

.field private final flen:I

.field private final format:Ljava/lang/String;

.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;

.field private final value:Ljava/lang/String;

.field private vidx:I

.field private final vlen:I


# direct methods
.method private constructor <init>(Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->format:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->flen:I

    .line 6
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vlen:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private parseAndSetYear(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v1

    const/16 v2, 0x2d

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v2

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;->access$100(C)Z

    move-result v5

    if-nez v5, :cond_4

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    sub-int v3, v2, v0

    if-lt v3, p1, :cond_3

    sub-int/2addr v2, v0

    const/4 p1, 0x7

    if-ge v2, p1, :cond_2

    if-eqz v1, :cond_1

    neg-int v4, v4

    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-static {p1, v4}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;->access$202(Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;I)I

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;->access$302(Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    invoke-virtual {v2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(Ljava/math/BigInteger;)V

    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget v5, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x30

    goto :goto_0
.end method

.method private parseBigDecimal()Ljava/math/BigDecimal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    :goto_0
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v1

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;->access$100(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    invoke-virtual {v2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseInt(II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v2

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;->access$100(C)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    sub-int v4, v3, v0

    if-gt v4, p2, :cond_0

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x30

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    sub-int/2addr p2, v0

    if-lt p2, p1, :cond_1

    return v1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private peek()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vlen:I

    if-ne v0, v1, :cond_0

    const p0, 0xffff

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method private read()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vlen:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private skip(C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->read()C

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public parse()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :cond_0
    :goto_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->fidx:I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->flen:I

    if-ge v0, v1, :cond_c

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->format:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->fidx:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x25

    if-eq v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->skip(C)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->format:Ljava/lang/String;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->fidx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->fidx:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x44

    const/4 v2, 0x2

    if-eq v0, v1, :cond_b

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_a

    const/16 v1, 0x59

    if-eq v0, v1, :cond_9

    const/16 v1, 0x68

    if-eq v0, v1, :cond_8

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_7

    const/16 v1, 0x73

    if-eq v0, v1, :cond_6

    const/16 v1, 0x7a

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v0

    const/16 v1, 0x5a

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;->setTimezone(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x2b

    if-eq v0, v1, :cond_3

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_0

    :cond_3
    iget v4, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    invoke-direct {p0, v2, v2}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v4

    const/16 v5, 0x3a

    invoke-direct {p0, v5}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->skip(C)V

    invoke-direct {p0, v2, v2}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v2

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;

    mul-int/lit8 v4, v4, 0x3c

    add-int/2addr v4, v2

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, -0x1

    :goto_1
    mul-int/2addr v4, v3

    invoke-virtual {v5, v4}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;->setTimezone(I)V

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/InternalError;

    invoke-direct {p0}, Ljava/lang/InternalError;-><init>()V

    throw p0

    :cond_6
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {p0, v2, v2}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseBigDecimal()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {p0, v2, v2}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;->setMinute(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {p0, v2, v2}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;->setHour(I)V

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseAndSetYear(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {p0, v2, v2}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {p0, v2, v2}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    goto/16 :goto_0

    :cond_c
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vlen:I

    if-ne v0, v1, :cond_d

    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
