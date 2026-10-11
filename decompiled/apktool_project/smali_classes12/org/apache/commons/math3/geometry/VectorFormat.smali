.class public abstract Lorg/apache/commons/math3/geometry/VectorFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_PREFIX:Ljava/lang/String; = "{"

.field public static final DEFAULT_SEPARATOR:Ljava/lang/String; = "; "

.field public static final DEFAULT_SUFFIX:Ljava/lang/String; = "}"


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
    .locals 4

    const-string v0, "; "

    .line 1
    invoke-static {}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v1

    const-string v2, "{"

    const-string v3, "}"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/commons/math3/geometry/VectorFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-static {}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/geometry/VectorFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->b:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->d:Ljava/lang/String;

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->e:Ljava/lang/String;

    .line 10
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->f:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->g:Ljava/text/NumberFormat;

    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;)V
    .locals 3

    const-string v0, "}"

    const-string v1, "; "

    const-string v2, "{"

    .line 2
    invoke-direct {p0, v2, v0, v1, p1}, Lorg/apache/commons/math3/geometry/VectorFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    invoke-static {}, Ljava/text/NumberFormat;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/commons/math3/geometry/Vector;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "TS;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/VectorFormat;->format(Lorg/apache/commons/math3/geometry/Vector;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public varargs format(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;[D)Ljava/lang/StringBuffer;
    .locals 4

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 3
    invoke-virtual {p2, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 4
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 6
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    :cond_0
    aget-wide v1, p3, v0

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->g:Ljava/text/NumberFormat;

    invoke-static {v1, v2, v3, p1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->formatDouble(DLjava/text/NumberFormat;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public abstract format(Lorg/apache/commons/math3/geometry/Vector;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "TS;>;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            ")",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation
.end method

.method public getFormat()Ljava/text/NumberFormat;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->g:Ljava/text/NumberFormat;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getSeparator()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->b:Ljava/lang/String;

    return-object p0
.end method

.method public abstract parse(Ljava/lang/String;)Lorg/apache/commons/math3/geometry/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathParseException;
        }
    .end annotation
.end method

.method public abstract parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/geometry/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            ")",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "TS;>;"
        }
    .end annotation
.end method

.method public parseCoordinates(ILjava/lang/String;Ljava/text/ParsePosition;)[D
    .locals 6

    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    new-array v1, p1, [D

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->d:Ljava/lang/String;

    invoke-static {p2, v2, p3}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_3

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    if-lez v2, :cond_1

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->f:Ljava/lang/String;

    invoke-static {p2, v4, p3}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v3

    :cond_1
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->g:Ljava/text/NumberFormat;

    invoke-static {p2, v4, p3}, Lorg/apache/commons/math3/util/CompositeFormat;->parseNumber(Ljava/lang/String;Ljava/text/NumberFormat;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p3, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v3

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->e:Ljava/lang/String;

    invoke-static {p2, p0, p3}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result p0

    if-nez p0, :cond_4

    return-object v3

    :cond_4
    return-object v1
.end method
