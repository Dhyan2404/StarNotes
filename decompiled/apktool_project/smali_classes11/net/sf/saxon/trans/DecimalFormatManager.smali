.class public Lnet/sf/saxon/trans/DecimalFormatManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/trans/DecimalSymbols;

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/trans/DecimalSymbols;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lnet/sf/saxon/s9api/HostLanguage;

.field public final d:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/HostLanguage;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/trans/DecimalFormatManager;->b:Ljava/util/HashMap;

    new-instance v0, Lnet/sf/saxon/trans/DecimalSymbols;

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/trans/DecimalSymbols;-><init>(Lnet/sf/saxon/s9api/HostLanguage;I)V

    iput-object v0, p0, Lnet/sf/saxon/trans/DecimalFormatManager;->a:Lnet/sf/saxon/trans/DecimalSymbols;

    iput-object p1, p0, Lnet/sf/saxon/trans/DecimalFormatManager;->c:Lnet/sf/saxon/s9api/HostLanguage;

    iput p2, p0, Lnet/sf/saxon/trans/DecimalFormatManager;->d:I

    return-void
.end method


# virtual methods
.method public checkConsistency()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/DecimalFormatManager;->a:Lnet/sf/saxon/trans/DecimalSymbols;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/DecimalSymbols;->checkConsistency(Lnet/sf/saxon/om/StructuredQName;)V

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalFormatManager;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/trans/DecimalSymbols;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/trans/DecimalSymbols;->checkConsistency(Lnet/sf/saxon/om/StructuredQName;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getDecimalFormatNames()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/om/StructuredQName;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalFormatManager;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultDecimalFormat()Lnet/sf/saxon/trans/DecimalSymbols;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalFormatManager;->a:Lnet/sf/saxon/trans/DecimalSymbols;

    return-object p0
.end method

.method public getNamedDecimalFormat(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/trans/DecimalSymbols;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalFormatManager;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/trans/DecimalSymbols;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public obtainNamedDecimalFormat(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/trans/DecimalSymbols;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/trans/DecimalFormatManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/DecimalSymbols;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/trans/DecimalSymbols;

    iget-object v1, p0, Lnet/sf/saxon/trans/DecimalFormatManager;->c:Lnet/sf/saxon/s9api/HostLanguage;

    iget v2, p0, Lnet/sf/saxon/trans/DecimalFormatManager;->d:I

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/DecimalSymbols;-><init>(Lnet/sf/saxon/s9api/HostLanguage;I)V

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalFormatManager;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
