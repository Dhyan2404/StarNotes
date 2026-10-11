.class public Lnet/sf/saxon/om/ZeroOrOne;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/GroundedValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/sf/saxon/om/Item;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/sf/saxon/om/GroundedValue;"
    }
.end annotation


# static fields
.field public static final f:Lnet/sf/saxon/om/ZeroOrOne;


# instance fields
.field public final e:Lnet/sf/saxon/om/Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/om/ZeroOrOne;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/om/ZeroOrOne;-><init>(Lnet/sf/saxon/om/Item;)V

    sput-object v0, Lnet/sf/saxon/om/ZeroOrOne;->f:Lnet/sf/saxon/om/ZeroOrOne;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/om/ZeroOrOne;->e:Lnet/sf/saxon/om/Item;

    return-void
.end method

.method public static empty()Lnet/sf/saxon/om/ZeroOrOne;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/sf/saxon/om/Item;",
            ">()",
            "Lnet/sf/saxon/om/ZeroOrOne<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/om/ZeroOrOne;->f:Lnet/sf/saxon/om/ZeroOrOne;

    return-object v0
.end method


# virtual methods
.method public effectiveBooleanValue()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/om/ZeroOrOne;->e:Lnet/sf/saxon/om/Item;

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->effectiveBooleanValue(Lnet/sf/saxon/om/Item;)Z

    move-result p0

    return p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/ZeroOrOne;->e:Lnet/sf/saxon/om/Item;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/ZeroOrOne;->e:Lnet/sf/saxon/om/Item;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/ZeroOrOne;->e:Lnet/sf/saxon/om/Item;

    if-nez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public head()Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/om/ZeroOrOne;->e:Lnet/sf/saxon/om/Item;

    return-object p0
.end method

.method public itemAt(I)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/om/ZeroOrOne;->e:Lnet/sf/saxon/om/Item;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public iterate()Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/ZeroOrOne;->e:Lnet/sf/saxon/om/Item;

    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public reduce()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/ZeroOrOne;->e:Lnet/sf/saxon/om/Item;

    if-nez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public subsequence(II)Lnet/sf/saxon/om/GroundedValue;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/om/ZeroOrOne;->e:Lnet/sf/saxon/om/Item;

    if-eqz v0, :cond_0

    if-gtz p1, :cond_0

    add-int/2addr p1, p2

    if-lez p1, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/ZeroOrOne;->e:Lnet/sf/saxon/om/Item;

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
