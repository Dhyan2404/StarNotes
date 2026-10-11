.class public final Lnet/sf/saxon/str/LargeTextBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/str/LargeTextBuffer$b;,
        Lnet/sf/saxon/str/LargeTextBuffer$a;,
        Lnet/sf/saxon/str/LargeTextBuffer$c;,
        Lnet/sf/saxon/str/LargeTextBuffer$d;
    }
.end annotation


# static fields
.field public static final d:I = 0x10

.field public static final e:I = 0x10000

.field public static final f:I = 0xffff

.field public static final synthetic g:Z


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/str/LargeTextBuffer$d;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lnet/sf/saxon/str/LargeTextBuffer$d;

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/str/LargeTextBuffer;->a:Ljava/util/List;

    new-instance v0, Lnet/sf/saxon/str/LargeTextBuffer$c;

    const/4 v1, 0x0

    new-array v2, v1, [B

    invoke-direct {v0, v2}, Lnet/sf/saxon/str/LargeTextBuffer$c;-><init>([B)V

    iput-object v0, p0, Lnet/sf/saxon/str/LargeTextBuffer;->b:Lnet/sf/saxon/str/LargeTextBuffer$d;

    iput v1, p0, Lnet/sf/saxon/str/LargeTextBuffer;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/str/LargeTextBuffer$d;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/str/LargeTextBuffer;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public appendUnicodeString(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 11

    const/high16 v0, 0x10000

    iget v1, p0, Lnet/sf/saxon/str/LargeTextBuffer;->c:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-gez v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/LargeTextBuffer;->b(Lnet/sf/saxon/str/UnicodeString;)V

    goto :goto_1

    :cond_0
    const-wide/16 v5, 0x0

    invoke-virtual {p1, v5, v6, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/str/LargeTextBuffer;->b(Lnet/sf/saxon/str/UnicodeString;)V

    sub-long/2addr v1, v3

    add-long/2addr v3, v5

    :goto_0
    const-wide/32 v7, 0x10000

    cmp-long v0, v1, v7

    if-lez v0, :cond_1

    add-long v9, v3, v7

    invoke-virtual {p1, v3, v4, v9, v10}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/str/LargeTextBuffer;->b(Lnet/sf/saxon/str/UnicodeString;)V

    sub-long/2addr v1, v7

    move-wide v3, v9

    goto :goto_0

    :cond_1
    cmp-long v0, v1, v5

    if-lez v0, :cond_2

    add-long/2addr v1, v3

    invoke-virtual {p1, v3, v4, v1, v2}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/LargeTextBuffer;->b(Lnet/sf/saxon/str/UnicodeString;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final b(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/str/LargeTextBuffer;->b:Lnet/sf/saxon/str/LargeTextBuffer$d;

    iget v1, p0, Lnet/sf/saxon/str/LargeTextBuffer;->c:I

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->getWidth()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lnet/sf/saxon/str/LargeTextBuffer$d;->b(III)Lnet/sf/saxon/str/LargeTextBuffer$d;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/str/LargeTextBuffer;->b:Lnet/sf/saxon/str/LargeTextBuffer$d;

    instance-of v1, v0, Lnet/sf/saxon/str/LargeTextBuffer$c;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/str/LargeTextBuffer$c;

    iget-object v0, v0, Lnet/sf/saxon/str/LargeTextBuffer$c;->a:[B

    iget v1, p0, Lnet/sf/saxon/str/LargeTextBuffer;->c:I

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->c([BI)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lnet/sf/saxon/str/LargeTextBuffer$a;

    if-eqz v1, :cond_1

    check-cast v0, Lnet/sf/saxon/str/LargeTextBuffer$a;

    iget-object v0, v0, Lnet/sf/saxon/str/LargeTextBuffer$a;->a:[C

    iget v1, p0, Lnet/sf/saxon/str/LargeTextBuffer;->c:I

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->a([CI)V

    goto :goto_0

    :cond_1
    check-cast v0, Lnet/sf/saxon/str/LargeTextBuffer$b;

    iget-object v0, v0, Lnet/sf/saxon/str/LargeTextBuffer$b;->a:[B

    iget v1, p0, Lnet/sf/saxon/str/LargeTextBuffer;->c:I

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->b([BI)V

    :goto_0
    iget v0, p0, Lnet/sf/saxon/str/LargeTextBuffer;->c:I

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lnet/sf/saxon/str/LargeTextBuffer;->c:I

    const/high16 p1, 0x10000

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lnet/sf/saxon/str/LargeTextBuffer;->b:Lnet/sf/saxon/str/LargeTextBuffer$d;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/LargeTextBuffer;->a(Lnet/sf/saxon/str/LargeTextBuffer$d;)V

    new-instance p1, Lnet/sf/saxon/str/LargeTextBuffer$c;

    const/16 v0, 0x400

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lnet/sf/saxon/str/LargeTextBuffer$c;-><init>([B)V

    iput-object p1, p0, Lnet/sf/saxon/str/LargeTextBuffer;->b:Lnet/sf/saxon/str/LargeTextBuffer$d;

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/str/LargeTextBuffer;->c:I

    :cond_2
    return-void
.end method

.method public final c(I)Lnet/sf/saxon/str/LargeTextBuffer$d;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/str/LargeTextBuffer;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/str/LargeTextBuffer;->b:Lnet/sf/saxon/str/LargeTextBuffer$d;

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/str/LargeTextBuffer;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/str/LargeTextBuffer$d;

    return-object p0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/str/LargeTextBuffer;->b:Lnet/sf/saxon/str/LargeTextBuffer$d;

    if-eqz v0, :cond_0

    iget v1, p0, Lnet/sf/saxon/str/LargeTextBuffer;->c:I

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/str/LargeTextBuffer;->a(Lnet/sf/saxon/str/LargeTextBuffer$d;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/str/LargeTextBuffer;->b:Lnet/sf/saxon/str/LargeTextBuffer$d;

    return-void
.end method

.method public final d()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/str/LargeTextBuffer;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/str/LargeTextBuffer$d;

    invoke-interface {v2}, Lnet/sf/saxon/str/LargeTextBuffer$d;->a()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget p0, p0, Lnet/sf/saxon/str/LargeTextBuffer;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public length()I
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/str/LargeTextBuffer;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v1, 0x10000

    mul-int/2addr v0, v1

    iget-object v1, p0, Lnet/sf/saxon/str/LargeTextBuffer;->b:Lnet/sf/saxon/str/LargeTextBuffer$d;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lnet/sf/saxon/str/LargeTextBuffer;->c:I

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public setLength(I)V
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/str/LargeTextBuffer;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/str/LargeTextBuffer;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v1, 0x10000

    mul-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/str/LargeTextBuffer;->a:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/str/LargeTextBuffer$d;

    iput-object v1, p0, Lnet/sf/saxon/str/LargeTextBuffer;->b:Lnet/sf/saxon/str/LargeTextBuffer$d;

    iget-object v1, p0, Lnet/sf/saxon/str/LargeTextBuffer;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    const v0, 0xffff

    and-int/2addr p1, v0

    iput p1, p0, Lnet/sf/saxon/str/LargeTextBuffer;->c:I

    :cond_1
    return-void
.end method

.method public substring(II)Lnet/sf/saxon/str/UnicodeString;
    .locals 6

    shr-int/lit8 v0, p1, 0x10

    add-int/lit8 v1, p2, -0x1

    shr-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr p2, v2

    const/high16 v3, 0x10000

    if-nez p2, :cond_0

    move p2, v3

    :cond_0
    if-ne v0, v1, :cond_1

    :try_start_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/str/LargeTextBuffer;->c(I)Lnet/sf/saxon/str/LargeTextBuffer$d;

    move-result-object p0

    and-int/2addr p1, v2

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/str/LargeTextBuffer$d;->substring(II)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    throw p0

    :cond_1
    new-instance v4, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v4}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/str/LargeTextBuffer;->c(I)Lnet/sf/saxon/str/LargeTextBuffer$d;

    move-result-object v0

    and-int/2addr p1, v2

    invoke-interface {v0, p1, v3}, Lnet/sf/saxon/str/LargeTextBuffer$d;->substring(II)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {v4, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    :goto_0
    if-ge v5, v1, :cond_2

    add-int/lit8 p1, v5, 0x1

    invoke-virtual {p0, v5}, Lnet/sf/saxon/str/LargeTextBuffer;->c(I)Lnet/sf/saxon/str/LargeTextBuffer$d;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/str/LargeTextBuffer$d;->a()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v4, v0}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    move v5, p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lnet/sf/saxon/str/LargeTextBuffer;->c(I)Lnet/sf/saxon/str/LargeTextBuffer$d;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/str/LargeTextBuffer$d;->substring(II)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {v4, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {v4}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method
