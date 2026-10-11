.class public Lnet/sf/saxon/regex/REMatcher$State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/regex/REMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field public a:I

.field public b:[I

.field public c:[I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/sf/saxon/regex/REMatcher$State;->a:I

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 3
    iput-object v2, p0, Lnet/sf/saxon/regex/REMatcher$State;->b:[I

    const/4 v3, 0x2

    const/4 v4, -0x1

    aput v4, v2, v3

    const/4 v5, 0x1

    aput v4, v2, v5

    aput v4, v2, v0

    new-array v1, v1, [I

    .line 4
    iput-object v1, p0, Lnet/sf/saxon/regex/REMatcher$State;->c:[I

    aput v4, v1, v3

    aput v4, v1, v5

    aput v4, v1, v0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/regex/REMatcher$State;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget v0, p1, Lnet/sf/saxon/regex/REMatcher$State;->a:I

    iput v0, p0, Lnet/sf/saxon/regex/REMatcher$State;->a:I

    .line 7
    iget-object v0, p1, Lnet/sf/saxon/regex/REMatcher$State;->b:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/regex/REMatcher$State;->b:[I

    .line 8
    iget-object p1, p1, Lnet/sf/saxon/regex/REMatcher$State;->c:[I

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/regex/REMatcher$State;->c:[I

    return-void
.end method
