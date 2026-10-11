.class public Lnet/sf/saxon/style/PackageVersionRanges$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/style/PackageVersionRanges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lnet/sf/saxon/style/PackageVersion;

.field public c:Lnet/sf/saxon/style/PackageVersion;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/style/PackageVersionRanges$a;->d:Z

    iput-boolean v0, p0, Lnet/sf/saxon/style/PackageVersionRanges$a;->e:Z

    iput-object p1, p0, Lnet/sf/saxon/style/PackageVersionRanges$a;->a:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lnet/sf/saxon/style/PackageVersionRanges$a;->d:Z

    goto/16 :goto_1

    :cond_0
    const-string v1, "+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_1

    new-instance v0, Lnet/sf/saxon/style/PackageVersion;

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/style/PackageVersion;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/style/PackageVersionRanges$a;->b:Lnet/sf/saxon/style/PackageVersion;

    sget-object p1, Lnet/sf/saxon/style/PackageVersion;->MAX_VALUE:Lnet/sf/saxon/style/PackageVersion;

    iput-object p1, p0, Lnet/sf/saxon/style/PackageVersionRanges$a;->c:Lnet/sf/saxon/style/PackageVersion;

    goto :goto_1

    :cond_1
    const-string v1, ".*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v2, p0, Lnet/sf/saxon/style/PackageVersionRanges$a;->e:Z

    new-instance v0, Lnet/sf/saxon/style/PackageVersion;

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/style/PackageVersion;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/style/PackageVersionRanges$a;->b:Lnet/sf/saxon/style/PackageVersion;

    goto :goto_1

    :cond_2
    const-string v1, ".*\\s*to\\s+.*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "\\s*to\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v5, 0x2

    if-gt v3, v5, :cond_4

    aget-object p1, v1, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lnet/sf/saxon/style/PackageVersion;->ZERO:Lnet/sf/saxon/style/PackageVersion;

    goto :goto_0

    :cond_3
    new-instance p1, Lnet/sf/saxon/style/PackageVersion;

    aget-object v0, v1, v0

    invoke-direct {p1, v0}, Lnet/sf/saxon/style/PackageVersion;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lnet/sf/saxon/style/PackageVersionRanges$a;->b:Lnet/sf/saxon/style/PackageVersion;

    new-instance p1, Lnet/sf/saxon/style/PackageVersion;

    aget-object v0, v1, v2

    invoke-direct {p1, v0}, Lnet/sf/saxon/style/PackageVersion;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/sf/saxon/style/PackageVersionRanges$a;->c:Lnet/sf/saxon/style/PackageVersion;

    goto :goto_1

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid version range:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XTSE0020"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance v0, Lnet/sf/saxon/style/PackageVersion;

    invoke-direct {v0, p1}, Lnet/sf/saxon/style/PackageVersion;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/style/PackageVersionRanges$a;->b:Lnet/sf/saxon/style/PackageVersion;

    iput-object v0, p0, Lnet/sf/saxon/style/PackageVersionRanges$a;->c:Lnet/sf/saxon/style/PackageVersion;

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lnet/sf/saxon/style/PackageVersion;)Z
    .locals 2

    iget-boolean v0, p0, Lnet/sf/saxon/style/PackageVersionRanges$a;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lnet/sf/saxon/style/PackageVersionRanges$a;->e:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/style/PackageVersionRanges$a;->b:Lnet/sf/saxon/style/PackageVersion;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/PackageVersion;->isPrefix(Lnet/sf/saxon/style/PackageVersion;)Z

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/style/PackageVersionRanges$a;->b:Lnet/sf/saxon/style/PackageVersion;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/style/PackageVersion;->compareTo(Lnet/sf/saxon/style/PackageVersion;)I

    move-result v0

    if-gtz v0, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/style/PackageVersionRanges$a;->c:Lnet/sf/saxon/style/PackageVersion;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/style/PackageVersion;->compareTo(Lnet/sf/saxon/style/PackageVersion;)I

    move-result p0

    if-gtz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/PackageVersionRanges$a;->a:Ljava/lang/String;

    return-object p0
.end method
