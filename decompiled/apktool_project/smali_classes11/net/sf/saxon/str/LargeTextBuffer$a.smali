.class public Lnet/sf/saxon/str/LargeTextBuffer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/str/LargeTextBuffer$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/str/LargeTextBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final synthetic b:Z


# instance fields
.field public a:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/str/LargeTextBuffer$a;->a:[C

    return-void
.end method


# virtual methods
.method public a()Lnet/sf/saxon/str/UnicodeString;
    .locals 1

    new-instance v0, Lnet/sf/saxon/str/Twine16;

    iget-object p0, p0, Lnet/sf/saxon/str/LargeTextBuffer$a;->a:[C

    invoke-direct {v0, p0}, Lnet/sf/saxon/str/Twine16;-><init>([C)V

    return-object v0
.end method

.method public b(III)Lnet/sf/saxon/str/LargeTextBuffer$d;
    .locals 1

    const/16 v0, 0x10

    if-gt p3, v0, :cond_1

    iget-object p3, p0, Lnet/sf/saxon/str/LargeTextBuffer$a;->a:[C

    array-length v0, p3

    if-le p2, v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    const/high16 v0, 0x10000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/str/LargeTextBuffer$a;->a:[C

    :cond_0
    return-object p0

    :cond_1
    mul-int/lit8 p2, p2, 0x3

    new-array p2, p2, [B

    iget-object p0, p0, Lnet/sf/saxon/str/LargeTextBuffer$a;->a:[C

    const/4 p3, 0x0

    invoke-static {p0, p3, p2, p3, p1}, Lnet/sf/saxon/str/StringTool;->copy16to24([CI[BII)V

    new-instance p0, Lnet/sf/saxon/str/LargeTextBuffer$b;

    invoke-direct {p0, p2}, Lnet/sf/saxon/str/LargeTextBuffer$b;-><init>([B)V

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public substring(II)Lnet/sf/saxon/str/UnicodeString;
    .locals 1

    new-instance v0, Lnet/sf/saxon/str/Slice16;

    iget-object p0, p0, Lnet/sf/saxon/str/LargeTextBuffer$a;->a:[C

    invoke-direct {v0, p0, p1, p2}, Lnet/sf/saxon/str/Slice16;-><init>([CII)V

    return-object v0
.end method
