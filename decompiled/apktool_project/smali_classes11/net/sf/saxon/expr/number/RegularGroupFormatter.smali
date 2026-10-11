.class public Lnet/sf/saxon/expr/number/RegularGroupFormatter;
.super Lnet/sf/saxon/expr/number/NumericGroupFormatter;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lnet/sf/saxon/str/UnicodeString;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/number/NumericGroupFormatter;-><init>()V

    iput p1, p0, Lnet/sf/saxon/expr/number/RegularGroupFormatter;->a:I

    iput-object p2, p0, Lnet/sf/saxon/expr/number/RegularGroupFormatter;->b:Ljava/lang/String;

    iput-object p3, p0, Lnet/sf/saxon/expr/number/NumericGroupFormatter;->adjustedPicture:Lnet/sf/saxon/str/UnicodeString;

    return-void
.end method


# virtual methods
.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget v0, p0, Lnet/sf/saxon/expr/number/RegularGroupFormatter;->a:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/expr/number/RegularGroupFormatter;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v1, :cond_1

    if-eqz v3, :cond_0

    iget v4, p0, Lnet/sf/saxon/expr/number/RegularGroupFormatter;->a:I

    rem-int v4, v3, v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lnet/sf/saxon/expr/number/RegularGroupFormatter;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    int-to-long v4, v1

    invoke-virtual {p1, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v4

    invoke-static {v0, v4}, Lnet/sf/saxon/str/StringTool;->prependWideChar(Ljava/lang/StringBuilder;I)V

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSeparator()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/number/RegularGroupFormatter;->b:Ljava/lang/String;

    return-object p0
.end method
