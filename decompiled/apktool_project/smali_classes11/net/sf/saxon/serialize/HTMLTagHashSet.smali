.class public Lnet/sf/saxon/serialize/HTMLTagHashSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/serialize/HTMLTagHashSet;->a:[Ljava/lang/String;

    iput p1, p0, Lnet/sf/saxon/serialize/HTMLTagHashSet;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x18

    if-le p0, v0, :cond_0

    move p0, v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p0, :cond_1

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xdf

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public add(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/HTMLTagHashSet;->a(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lnet/sf/saxon/serialize/HTMLTagHashSet;->b:I

    rem-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/serialize/HTMLTagHashSet;->a:[Ljava/lang/String;

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    aput-object p1, v1, v0

    return-void

    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lnet/sf/saxon/serialize/HTMLTagHashSet;->b:I

    rem-int/2addr v0, v1

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/HTMLTagHashSet;->a(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lnet/sf/saxon/serialize/HTMLTagHashSet;->b:I

    rem-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/serialize/HTMLTagHashSet;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lnet/sf/saxon/serialize/HTMLTagHashSet;->b:I

    rem-int/2addr v0, v1

    goto :goto_0
.end method
