.class public final Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public e:I

.field public f:I

.field public final synthetic g:Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->g:Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    iput-object p2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->c:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/jaxp/datatype/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;-><init>(Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :cond_0
    :goto_0
    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->e:I

    iget v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->c:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->f:I

    iget v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->d:I

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->b:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->a:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->e:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x25

    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->g(C)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->a:Ljava/lang/String;

    iget v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x44

    const/4 v2, 0x2

    if-eq v0, v1, :cond_d

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_c

    const/16 v1, 0x59

    if-eq v0, v1, :cond_b

    const/16 v1, 0x68

    if-eq v0, v1, :cond_a

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_9

    const/16 v1, 0x73

    if-eq v0, v1, :cond_8

    const/16 v1, 0x7a

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->e()C

    move-result v0

    const/16 v1, 0x5a

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->f:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->f:I

    iget-object v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->g:Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTimezone(I)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x2b

    if-eq v0, v1, :cond_5

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_0

    :cond_5
    iget v4, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->f:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->f:I

    invoke-virtual {p0, v2, v2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->c(II)I

    move-result v4

    const/16 v5, 0x3a

    invoke-virtual {p0, v5}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->g(C)V

    invoke-virtual {p0, v2, v2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->c(II)I

    move-result v2

    iget-object v5, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->g:Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    mul-int/lit8 v4, v4, 0x3c

    add-int/2addr v4, v2

    if-ne v0, v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, -0x1

    :goto_1
    mul-int/2addr v4, v3

    invoke-virtual {v5, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTimezone(I)V

    goto/16 :goto_0

    :cond_7
    new-instance p0, Ljava/lang/InternalError;

    invoke-direct {p0}, Ljava/lang/InternalError;-><init>()V

    throw p0

    :cond_8
    iget-object v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->g:Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-virtual {p0, v2, v2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->c(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->e()C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->g:Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->b()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->g:Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-virtual {p0, v2, v2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->c(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMinute(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->g:Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-virtual {p0, v2, v2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->c(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setHour(I)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->d()V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->g:Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-virtual {p0, v2, v2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->c(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->g:Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-virtual {p0, v2, v2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->c(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    goto/16 :goto_0
.end method

.method public final b()Ljava/math/BigDecimal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->f:I

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->e()C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->f:I

    :goto_0
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->f:I

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->e()C

    move-result v1

    invoke-static {v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->access$200(C)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->b:Ljava/lang/String;

    iget p0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->f:I

    invoke-virtual {v2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->f:I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->b:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->f:I

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->e()C

    move-result v1

    invoke-static {v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->access$200(C)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->f:I

    sub-int v2, v1, v0

    if-lt v2, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->f:I

    goto :goto_0

    :cond_1
    :goto_1
    iget p2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->f:I

    sub-int v1, p2, v0

    if-lt v1, p1, :cond_2

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->b:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->f:I

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->e()C

    move-result v1

    const/16 v2, 0x2d

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->f:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->f:I

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->e()C

    move-result v2

    invoke-static {v2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->access$200(C)Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->f:I

    sub-int v3, v2, v0

    sub-int/2addr v3, v1

    const/4 v1, 0x4

    if-lt v3, v1, :cond_2

    iget-object v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->g:Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    if-ge v3, v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(I)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(Ljava/math/BigInteger;)V

    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->b:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->f:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->f:I

    goto :goto_0
.end method

.method public final e()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->f:I

    iget v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->d:I

    if-ne v0, v1, :cond_0

    const p0, 0xffff

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public final f()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->f:I

    iget v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->d:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->b:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->f:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->b:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->f()C

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->b:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
