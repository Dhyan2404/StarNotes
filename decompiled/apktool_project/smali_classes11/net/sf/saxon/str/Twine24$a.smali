.class public Lnet/sf/saxon/str/Twine24$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/str/Twine24;->codePoints()Lnet/sf/saxon/z/IntIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lnet/sf/saxon/str/Twine24;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/str/Twine24;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/str/Twine24$a;->b:Lnet/sf/saxon/str/Twine24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/str/Twine24$a;->a:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lnet/sf/saxon/str/Twine24$a;->a:I

    iget-object p0, p0, Lnet/sf/saxon/str/Twine24$a;->b:Lnet/sf/saxon/str/Twine24;

    iget-object p0, p0, Lnet/sf/saxon/str/Twine24;->bytes:[B

    array-length p0, p0

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

    iget-object v0, p0, Lnet/sf/saxon/str/Twine24$a;->b:Lnet/sf/saxon/str/Twine24;

    iget-object v0, v0, Lnet/sf/saxon/str/Twine24;->bytes:[B

    iget v1, p0, Lnet/sf/saxon/str/Twine24$a;->a:I

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lnet/sf/saxon/str/Twine24$a;->a:I

    return v0
.end method
