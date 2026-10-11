.class public Lnet/sf/saxon/style/PackageVersion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/sf/saxon/style/PackageVersion;",
        ">;"
    }
.end annotation


# static fields
.field public static MAX_VALUE:Lnet/sf/saxon/style/PackageVersion;

.field public static ONE:Lnet/sf/saxon/style/PackageVersion;

.field public static ZERO:Lnet/sf/saxon/style/PackageVersion;


# instance fields
.field public parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public suffix:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/style/PackageVersion;

    const/4 v1, 0x0

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/style/PackageVersion;-><init>([I)V

    sput-object v0, Lnet/sf/saxon/style/PackageVersion;->ZERO:Lnet/sf/saxon/style/PackageVersion;

    new-instance v0, Lnet/sf/saxon/style/PackageVersion;

    const/4 v1, 0x1

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/style/PackageVersion;-><init>([I)V

    sput-object v0, Lnet/sf/saxon/style/PackageVersion;->ONE:Lnet/sf/saxon/style/PackageVersion;

    new-instance v0, Lnet/sf/saxon/style/PackageVersion;

    const v1, 0x7fffffff

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/style/PackageVersion;-><init>([I)V

    sput-object v0, Lnet/sf/saxon/style/PackageVersion;->MAX_VALUE:Lnet/sf/saxon/style/PackageVersion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/style/PackageVersion;->parts:Ljava/util/List;

    const-string v0, "-"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "XTSE0020"

    if-eqz v0, :cond_1

    const/16 v0, 0x2d

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 10
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnet/sf/saxon/style/PackageVersion;->suffix:Ljava/lang/String;

    .line 11
    invoke-static {v3}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal NCName as package-version NamePart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    move-object v0, p1

    :goto_0
    const-string v3, ""

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string p1, "."

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v3, p1, v1

    .line 18
    :try_start_0
    iget-object v4, p0, Lnet/sf/saxon/style/PackageVersion;->parts:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package-version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/style/PackageVersion;->b()V

    return-void

    .line 21
    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The package-version cannot end with \'.\'"

    invoke-direct {p0, p1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The package-version cannot start with \'.\'"

    invoke-direct {p0, p1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_5
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No numeric component of package-version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/style/PackageVersion;->parts:Ljava/util/List;

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 4
    iget-object v3, p0, Lnet/sf/saxon/style/PackageVersion;->parts:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/PackageVersion;->b()V

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/style/PackageVersion;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/style/PackageVersion;->parts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/style/PackageVersion;->parts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/style/PackageVersion;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/PackageVersion;->compareTo(Lnet/sf/saxon/style/PackageVersion;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/style/PackageVersion;)I
    .locals 6

    .line 2
    iget-object v0, p1, Lnet/sf/saxon/style/PackageVersion;->parts:Ljava/util/List;

    .line 3
    iget-object v1, p0, Lnet/sf/saxon/style/PackageVersion;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    .line 4
    iget-object v2, p0, Lnet/sf/saxon/style/PackageVersion;->parts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 5
    iget-object v4, p0, Lnet/sf/saxon/style/PackageVersion;->parts:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v4

    if-eqz v4, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_4

    .line 6
    iget-object p0, p0, Lnet/sf/saxon/style/PackageVersion;->suffix:Ljava/lang/String;

    if-eqz p0, :cond_3

    .line 7
    iget-object p1, p1, Lnet/sf/saxon/style/PackageVersion;->suffix:Ljava/lang/String;

    if-nez p1, :cond_2

    const/4 p0, -0x1

    return p0

    .line 8
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 9
    :cond_3
    iget-object p0, p1, Lnet/sf/saxon/style/PackageVersion;->suffix:Ljava/lang/String;

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/style/PackageVersion;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lnet/sf/saxon/style/PackageVersion;

    iget-object v0, p0, Lnet/sf/saxon/style/PackageVersion;->parts:Ljava/util/List;

    iget-object v2, p1, Lnet/sf/saxon/style/PackageVersion;->parts:Ljava/util/List;

    invoke-static {v0, v2}, Lnet/sf/saxon/style/PackageVersion;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/style/PackageVersion;->suffix:Ljava/lang/String;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lnet/sf/saxon/style/PackageVersion;->suffix:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p1, Lnet/sf/saxon/style/PackageVersion;->suffix:Ljava/lang/String;

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public equalsIgnoringSuffix(Lnet/sf/saxon/style/PackageVersion;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/PackageVersion;->parts:Ljava/util/List;

    iget-object p1, p1, Lnet/sf/saxon/style/PackageVersion;->parts:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/style/PackageVersion;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0xbc873

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int/lit8 v1, v1, 0x3

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/style/PackageVersion;->suffix:Ljava/lang/String;

    if-eqz p0, :cond_1

    shl-int/lit8 v0, v1, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    xor-int v1, v0, p0

    :cond_1
    return v1
.end method

.method public isPrefix(Lnet/sf/saxon/style/PackageVersion;)Z
    .locals 4

    iget-object v0, p1, Lnet/sf/saxon/style/PackageVersion;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/style/PackageVersion;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    move v0, v2

    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/style/PackageVersion;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/style/PackageVersion;->parts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v3, p1, Lnet/sf/saxon/style/PackageVersion;->parts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/style/PackageVersion;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/style/PackageVersion;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/style/PackageVersion;->suffix:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/style/PackageVersion;->suffix:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
