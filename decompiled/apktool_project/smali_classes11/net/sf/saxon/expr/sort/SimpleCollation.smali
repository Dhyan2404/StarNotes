.class public Lnet/sf/saxon/expr/sort/SimpleCollation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/StringCollator;


# static fields
.field public static final c:Lnet/sf/saxon/Platform;


# instance fields
.field public a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    sput-object v0, Lnet/sf/saxon/expr/sort/SimpleCollation;->c:Lnet/sf/saxon/Platform;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/SimpleCollation;->b:Ljava/lang/String;

    iput-object p2, p0, Lnet/sf/saxon/expr/sort/SimpleCollation;->a:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public compareStrings(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SimpleCollation;->a:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public comparesEqual(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SimpleCollation;->a:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCollationKey(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/expr/sort/AtomicMatchKey;
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/sort/SimpleCollation;->c:Lnet/sf/saxon/Platform;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lnet/sf/saxon/Platform;->getCollationKey(Lnet/sf/saxon/expr/sort/SimpleCollation;Ljava/lang/String;)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object p0

    return-object p0
.end method

.method public getCollationURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SimpleCollation;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SimpleCollation;->a:Ljava/util/Comparator;

    return-object p0
.end method

.method public getSubstringMatcher()Lnet/sf/saxon/lib/SubstringMatcher;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SimpleCollation;->a:Ljava/util/Comparator;

    instance-of v1, v0, Lnet/sf/saxon/lib/SubstringMatcher;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/lib/SubstringMatcher;

    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/text/RuleBasedCollator;

    if-eqz v1, :cond_1

    new-instance v1, Lnet/sf/saxon/expr/sort/RuleBasedSubstringMatcher;

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SimpleCollation;->b:Ljava/lang/String;

    check-cast v0, Ljava/text/RuleBasedCollator;

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/expr/sort/RuleBasedSubstringMatcher;-><init>(Ljava/lang/String;Ljava/text/RuleBasedCollator;)V

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public setComparator(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/SimpleCollation;->a:Ljava/util/Comparator;

    return-void
.end method
