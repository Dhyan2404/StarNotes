.class public Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/util/regex/WildcardStringParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:[C

.field public b:I

.field public final synthetic c:Lcom/twelvemonkeys/util/regex/WildcardStringParser;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/util/regex/WildcardStringParser;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->c:Lcom/twelvemonkeys/util/regex/WildcardStringParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->a:[C

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->b:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->a:[C

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-char v2, v2, v1

    invoke-static {v2}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->isInAlphabet(C)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public b()C
    .locals 3

    iget v0, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->b:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->a:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-char p0, v1, v0

    return p0

    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": trying to access character outside character array!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 p0, 0x20

    return p0
.end method

.method public c()C
    .locals 4

    iget v0, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->b:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->a:[C

    array-length v3, v2

    if-ge v1, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    aget-char p0, v2, v0

    return p0

    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": trying to access character outside character array!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 p0, 0x20

    return p0
.end method

.method public d()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->a:[C

    if-eqz p0, :cond_1

    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public e()I
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->a:[C

    array-length p0, p0

    return p0
.end method

.method public f()Z
    .locals 2

    iget v0, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->b:I

    iget-object p0, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->a:[C

    array-length p0, p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/twelvemonkeys/util/regex/WildcardStringParser$a;->a:[C

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
