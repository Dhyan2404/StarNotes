.class public Lnet/sf/saxon/expr/number/IrregularGroupFormatter;
.super Lnet/sf/saxon/expr/number/NumericGroupFormatter;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/z/IntSet;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/z/IntSet;Ljava/util/List;Lnet/sf/saxon/str/UnicodeString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/z/IntSet;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lnet/sf/saxon/str/UnicodeString;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/sf/saxon/expr/number/NumericGroupFormatter;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/number/IrregularGroupFormatter;->a:Lnet/sf/saxon/z/IntSet;

    iput-object p2, p0, Lnet/sf/saxon/expr/number/IrregularGroupFormatter;->b:Ljava/util/List;

    iput-object p3, p0, Lnet/sf/saxon/expr/number/NumericGroupFormatter;->adjustedPicture:Lnet/sf/saxon/str/UnicodeString;

    return-void
.end method


# virtual methods
.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    move v1, p1

    move v2, v1

    :goto_0
    int-to-long v3, v1

    invoke-virtual {v0}, Lnet/sf/saxon/value/StringValue;->length()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    iget-object v3, p0, Lnet/sf/saxon/expr/number/IrregularGroupFormatter;->a:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {v3, v1}, Lnet/sf/saxon/z/IntSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lnet/sf/saxon/value/StringValue;->length32()I

    move-result v1

    add-int/2addr v1, v2

    new-array v2, v1, [I

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0}, Lnet/sf/saxon/value/StringValue;->length32()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_3

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v0}, Lnet/sf/saxon/value/StringValue;->getContent()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v6

    int-to-long v7, v4

    invoke-virtual {v6, v7, v8}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v6

    aput v6, v2, v3

    if-lez v4, :cond_2

    iget-object v3, p0, Lnet/sf/saxon/expr/number/IrregularGroupFormatter;->a:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {v0}, Lnet/sf/saxon/value/StringValue;->length32()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v3, v6}, Lnet/sf/saxon/z/IntSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v5, -0x1

    iget-object v6, p0, Lnet/sf/saxon/expr/number/IrregularGroupFormatter;->b:Ljava/util/List;

    add-int/lit8 v7, p1, 0x1

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v2, v5

    move p1, v7

    goto :goto_2

    :cond_2
    move v3, v5

    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    invoke-static {v2, v1}, Lnet/sf/saxon/str/StringTool;->fromCodePoints([II)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSeparator()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/number/IrregularGroupFormatter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/number/IrregularGroupFormatter;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
