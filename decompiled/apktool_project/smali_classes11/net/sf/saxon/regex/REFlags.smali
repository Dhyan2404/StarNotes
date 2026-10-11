.class public Lnet/sf/saxon/regex/REFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/regex/REFlags;->j:Z

    const-string v1, "XSD10"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "XSD11"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "XP"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lnet/sf/saxon/regex/REFlags;->j:Z

    iput-boolean v2, p0, Lnet/sf/saxon/regex/REFlags;->h:Z

    :cond_1
    :goto_0
    const-string v1, "XP20"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lnet/sf/saxon/regex/REFlags;->f:Z

    goto :goto_1

    :cond_2
    const-string v1, "XP30"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "XP31"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    iput-boolean v2, p0, Lnet/sf/saxon/regex/REFlags;->f:Z

    iput-boolean v2, p0, Lnet/sf/saxon/regex/REFlags;->g:Z

    :cond_4
    :goto_1
    const/16 p2, 0x3b

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-ltz p2, :cond_5

    move v1, p2

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_2
    move v3, v0

    :goto_3
    if-ge v3, v1, :cond_c

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x69

    if-eq v4, v5, :cond_b

    const/16 v5, 0x6d

    if-eq v4, v5, :cond_a

    const/16 v5, 0x71

    if-eq v4, v5, :cond_8

    const/16 v5, 0x73

    if-eq v4, v5, :cond_7

    const/16 v5, 0x78

    if-ne v4, v5, :cond_6

    iput-boolean v2, p0, Lnet/sf/saxon/regex/REFlags;->d:Z

    goto :goto_4

    :cond_6
    new-instance p0, Lnet/sf/saxon/regex/RESyntaxException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unrecognized flag \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/regex/RESyntaxException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iput-boolean v2, p0, Lnet/sf/saxon/regex/REFlags;->c:Z

    goto :goto_4

    :cond_8
    iput-boolean v2, p0, Lnet/sf/saxon/regex/REFlags;->e:Z

    iget-boolean v4, p0, Lnet/sf/saxon/regex/REFlags;->g:Z

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    new-instance p0, Lnet/sf/saxon/regex/RESyntaxException;

    const-string p1, "\'q\' flag requires XPath 3.0 to be enabled"

    invoke-direct {p0, p1}, Lnet/sf/saxon/regex/RESyntaxException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    iput-boolean v2, p0, Lnet/sf/saxon/regex/REFlags;->b:Z

    goto :goto_4

    :cond_b
    iput-boolean v2, p0, Lnet/sf/saxon/regex/REFlags;->a:Z

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_c
    add-int/2addr p2, v2

    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_10

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x4b

    if-eq v1, v3, :cond_f

    const/16 v3, 0x67

    if-eq v1, v3, :cond_e

    const/16 v3, 0x6b

    if-eq v1, v3, :cond_d

    goto :goto_6

    :cond_d
    iput-boolean v2, p0, Lnet/sf/saxon/regex/REFlags;->j:Z

    goto :goto_6

    :cond_e
    iput-boolean v2, p0, Lnet/sf/saxon/regex/REFlags;->i:Z

    goto :goto_6

    :cond_f
    iput-boolean v0, p0, Lnet/sf/saxon/regex/REFlags;->j:Z

    :goto_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_10
    return-void
.end method


# virtual methods
.method public isAllowUnknownBlockNames()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/regex/REFlags;->j:Z

    return p0
.end method

.method public isAllowWhitespace()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/regex/REFlags;->d:Z

    return p0
.end method

.method public isAllowsXPath20Extensions()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/regex/REFlags;->f:Z

    return p0
.end method

.method public isAllowsXPath30Extensions()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/regex/REFlags;->g:Z

    return p0
.end method

.method public isAllowsXSD11Syntax()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/regex/REFlags;->h:Z

    return p0
.end method

.method public isCaseIndependent()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/regex/REFlags;->a:Z

    return p0
.end method

.method public isDebug()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/regex/REFlags;->i:Z

    return p0
.end method

.method public isLiteral()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/regex/REFlags;->e:Z

    return p0
.end method

.method public isMultiLine()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/regex/REFlags;->b:Z

    return p0
.end method

.method public isSingleLine()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/regex/REFlags;->c:Z

    return p0
.end method

.method public setAllowUnknownBlockNames(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/regex/REFlags;->j:Z

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/regex/REFlags;->i:Z

    return-void
.end method
