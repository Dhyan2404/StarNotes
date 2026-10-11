.class public Lnet/sf/saxon/om/One;
.super Lnet/sf/saxon/om/ZeroOrOne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/sf/saxon/om/Item;",
        ">",
        "Lnet/sf/saxon/om/ZeroOrOne<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lnet/sf/saxon/om/ZeroOrOne;-><init>(Lnet/sf/saxon/om/Item;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static bool(Z)Lnet/sf/saxon/om/One;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lnet/sf/saxon/om/One<",
            "Lnet/sf/saxon/value/BooleanValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/om/One;

    invoke-static {p0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/om/One;-><init>(Lnet/sf/saxon/om/Item;)V

    return-object v0
.end method

.method public static dbl(D)Lnet/sf/saxon/om/One;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lnet/sf/saxon/om/One<",
            "Lnet/sf/saxon/value/DoubleValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/om/One;

    new-instance v1, Lnet/sf/saxon/value/DoubleValue;

    invoke-direct {v1, p0, p1}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    invoke-direct {v0, v1}, Lnet/sf/saxon/om/One;-><init>(Lnet/sf/saxon/om/Item;)V

    return-object v0
.end method

.method public static integer(J)Lnet/sf/saxon/om/One;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lnet/sf/saxon/om/One<",
            "Lnet/sf/saxon/value/IntegerValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/om/One;

    new-instance v1, Lnet/sf/saxon/value/Int64Value;

    invoke-direct {v1, p0, p1}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    invoke-direct {v0, v1}, Lnet/sf/saxon/om/One;-><init>(Lnet/sf/saxon/om/Item;)V

    return-object v0
.end method

.method public static string(Ljava/lang/String;)Lnet/sf/saxon/om/One;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/sf/saxon/om/One<",
            "Lnet/sf/saxon/value/StringValue;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/sf/saxon/om/One;

    new-instance v1, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v1, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lnet/sf/saxon/om/One;-><init>(Lnet/sf/saxon/om/Item;)V

    return-object v0
.end method

.method public static string(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/om/One;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/str/UnicodeString;",
            ")",
            "Lnet/sf/saxon/om/One<",
            "Lnet/sf/saxon/value/StringValue;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lnet/sf/saxon/om/One;

    new-instance v1, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v1, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-direct {v0, v1}, Lnet/sf/saxon/om/One;-><init>(Lnet/sf/saxon/om/Item;)V

    return-object v0
.end method
