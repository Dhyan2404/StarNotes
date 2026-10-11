.class public Lnet/sf/saxon/s9api/XdmMap$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/s9api/XdmMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Lnet/sf/saxon/s9api/XdmAtomicValue;",
        "Lnet/sf/saxon/s9api/XdmValue;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Lnet/sf/saxon/ma/map/KeyValuePair;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/ma/map/KeyValuePair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/s9api/XdmMap$c;->e:Lnet/sf/saxon/ma/map/KeyValuePair;

    return-void
.end method


# virtual methods
.method public a()Lnet/sf/saxon/s9api/XdmAtomicValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XdmMap$c;->e:Lnet/sf/saxon/ma/map/KeyValuePair;

    iget-object p0, p0, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/AtomicSequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    return-object p0
.end method

.method public b()Lnet/sf/saxon/s9api/XdmValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XdmMap$c;->e:Lnet/sf/saxon/ma/map/KeyValuePair;

    iget-object p0, p0, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    return-object p0
.end method

.method public c(Lnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmMap$c;->a()Lnet/sf/saxon/s9api/XdmAtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmMap$c;->b()Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnet/sf/saxon/s9api/XdmValue;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/XdmMap$c;->c(Lnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    return-object p0
.end method
