.class public Lorg/apache/commons/math3/linear/RealMatrixFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "{"

.field public static final i:Ljava/lang/String; = "}"

.field public static final j:Ljava/lang/String; = "{"

.field public static final k:Ljava/lang/String; = "}"

.field public static final l:Ljava/lang/String; = ","

.field public static final m:Ljava/lang/String; = ","


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>()V
    .locals 8

    const-string v1, "{"

    const-string v2, "}"

    const-string v3, "{"

    const-string v4, "}"

    const-string v5, ","

    const-string v6, ","

    .line 1
    invoke-static {}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/linear/RealMatrixFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 3
    invoke-static {}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/linear/RealMatrixFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->b:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->c:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->d:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->e:Ljava/lang/String;

    .line 10
    iput-object p6, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->f:Ljava/lang/String;

    .line 11
    iput-object p7, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->g:Ljava/text/NumberFormat;

    const/4 p0, 0x0

    .line 12
    invoke-virtual {p7, p0}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;)V
    .locals 8

    const-string v1, "{"

    const-string v2, "}"

    const-string v3, "{"

    const-string v4, "}"

    const-string v5, ","

    const-string v6, ","

    move-object v0, p0

    move-object v7, p1

    .line 2
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/linear/RealMatrixFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    invoke-static {}, Ljava/text/NumberFormat;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/apache/commons/math3/linear/RealMatrixFormat;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/RealMatrixFormat;->getInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/linear/RealMatrixFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/linear/RealMatrixFormat;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/linear/RealMatrixFormat;

    invoke-static {p0}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/RealMatrixFormat;-><init>(Ljava/text/NumberFormat;)V

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/commons/math3/linear/RealMatrix;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrixFormat;->format(Lorg/apache/commons/math3/linear/RealMatrix;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public format(Lorg/apache/commons/math3/linear/RealMatrix;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 3
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 4
    iget-object v1, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 6
    iget-object v3, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->c:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v0

    .line 7
    :goto_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_1

    if-lez v3, :cond_0

    .line 8
    iget-object v4, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->f:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    :cond_0
    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->g:Ljava/text/NumberFormat;

    invoke-static {v4, v5, v6, p2, p3}, Lorg/apache/commons/math3/util/CompositeFormat;->formatDouble(DLjava/text/NumberFormat;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->d:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_2

    .line 11
    iget-object v3, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->e:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->b:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public getColumnSeparator()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getFormat()Ljava/text/NumberFormat;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->g:Ljava/text/NumberFormat;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getRowPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getRowSeparator()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getRowSuffix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->b:Ljava/lang/String;

    return-object p0
.end method

.method public parse(Ljava/lang/String;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2

    .line 1
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/RealMatrixFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    .line 3
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathParseException;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    const-class v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/exception/MathParseException;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    throw p0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 12

    .line 5
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 6
    iget-object v1, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 8
    iget-object v3, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 9
    iget-object v4, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 10
    iget-object v5, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->f:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 11
    iget-object v6, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->e:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 13
    invoke-static {p1, v1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v1

    const/4 v7, 0x0

    if-nez v1, :cond_0

    return-object v7

    .line 14
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x1

    :cond_1
    :goto_0
    const/4 v10, 0x0

    if-eqz v9, :cond_8

    .line 16
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 17
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 18
    invoke-static {p1, v5, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 19
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {p1, v4, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v11

    if-nez v11, :cond_2

    return-object v7

    .line 20
    :cond_2
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 21
    invoke-static {p1, v6, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 22
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_3
    move v9, v10

    goto :goto_1

    .line 24
    :cond_4
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 25
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_5

    invoke-static {p1, v3, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v11

    if-nez v11, :cond_5

    return-object v7

    :cond_5
    :goto_1
    if-eqz v9, :cond_1

    .line 26
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 27
    iget-object v11, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->g:Ljava/text/NumberFormat;

    invoke-static {p1, v11, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseNumber(Ljava/lang/String;Ljava/text/NumberFormat;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 28
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :cond_6
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    move v9, v10

    goto :goto_0

    .line 30
    :cond_7
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v7

    .line 31
    :cond_8
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    .line 32
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_9
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 34
    invoke-static {p1, v2, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result p0

    if-nez p0, :cond_a

    return-object v7

    .line 35
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 36
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v7

    .line 37
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [[D

    .line 38
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v10

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 39
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [D

    aput-object v1, p0, p2

    move v1, v10

    .line 40
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 41
    aget-object v2, p0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 42
    :cond_d
    invoke-static {p0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method
