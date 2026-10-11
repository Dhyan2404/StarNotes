.class public Lnet/sf/saxon/str/Slice24$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/str/Slice24;->codePoints()Lnet/sf/saxon/z/IntIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:Lnet/sf/saxon/str/Slice24;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/str/Slice24;)V
    .locals 1

    iput-object p1, p0, Lnet/sf/saxon/str/Slice24$a;->c:Lnet/sf/saxon/str/Slice24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lnet/sf/saxon/str/Slice24;->e(Lnet/sf/saxon/str/Slice24;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lnet/sf/saxon/str/Slice24$a;->a:I

    invoke-static {p1}, Lnet/sf/saxon/str/Slice24;->f(Lnet/sf/saxon/str/Slice24;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    iput p1, p0, Lnet/sf/saxon/str/Slice24$a;->b:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lnet/sf/saxon/str/Slice24$a;->a:I

    iget p0, p0, Lnet/sf/saxon/str/Slice24$a;->b:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()I
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/str/Slice24$a;->c:Lnet/sf/saxon/str/Slice24;

    invoke-static {v0}, Lnet/sf/saxon/str/Slice24;->g(Lnet/sf/saxon/str/Slice24;)[B

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/str/Slice24$a;->a:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lnet/sf/saxon/str/Slice24$a;->c:Lnet/sf/saxon/str/Slice24;

    invoke-static {v1}, Lnet/sf/saxon/str/Slice24;->g(Lnet/sf/saxon/str/Slice24;)[B

    move-result-object v1

    iget v2, p0, Lnet/sf/saxon/str/Slice24$a;->a:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lnet/sf/saxon/str/Slice24$a;->c:Lnet/sf/saxon/str/Slice24;

    invoke-static {v1}, Lnet/sf/saxon/str/Slice24;->g(Lnet/sf/saxon/str/Slice24;)[B

    move-result-object v1

    iget v2, p0, Lnet/sf/saxon/str/Slice24$a;->a:I

    add-int/lit8 v3, v2, 0x2

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lnet/sf/saxon/str/Slice24$a;->a:I

    return v0
.end method
