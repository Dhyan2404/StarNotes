.class public Lnet/sf/saxon/str/Slice16$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/str/Slice16;->codePoints()Lnet/sf/saxon/z/IntIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lnet/sf/saxon/str/Slice16;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/str/Slice16;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/str/Slice16$a;->b:Lnet/sf/saxon/str/Slice16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lnet/sf/saxon/str/Slice16;->e(Lnet/sf/saxon/str/Slice16;)I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/str/Slice16$a;->a:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lnet/sf/saxon/str/Slice16$a;->a:I

    iget-object p0, p0, Lnet/sf/saxon/str/Slice16$a;->b:Lnet/sf/saxon/str/Slice16;

    invoke-static {p0}, Lnet/sf/saxon/str/Slice16;->f(Lnet/sf/saxon/str/Slice16;)I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()I
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/str/Slice16$a;->b:Lnet/sf/saxon/str/Slice16;

    invoke-static {v0}, Lnet/sf/saxon/str/Slice16;->g(Lnet/sf/saxon/str/Slice16;)[C

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/str/Slice16$a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/saxon/str/Slice16$a;->a:I

    aget-char p0, v0, v1

    return p0
.end method
