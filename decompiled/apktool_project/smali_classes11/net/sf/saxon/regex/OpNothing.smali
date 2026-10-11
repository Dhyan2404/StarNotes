.class public Lnet/sf/saxon/regex/OpNothing;
.super Lnet/sf/saxon/regex/Operation;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/regex/Operation;-><init>()V

    return-void
.end method


# virtual methods
.method public display()Ljava/lang/String;
    .locals 0

    const-string p0, "()"

    return-object p0
.end method

.method public getMatchLength()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;
    .locals 0

    new-instance p0, Lnet/sf/saxon/z/IntSingletonIterator;

    invoke-direct {p0, p2}, Lnet/sf/saxon/z/IntSingletonIterator;-><init>(I)V

    return-object p0
.end method

.method public matchesEmptyString()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method
