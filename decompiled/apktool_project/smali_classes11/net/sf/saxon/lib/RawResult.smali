.class public Lnet/sf/saxon/lib/RawResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/transform/Result;


# instance fields
.field public e:Ljava/lang/String;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/lib/RawResult;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public append(Lnet/sf/saxon/om/Item;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/RawResult;->f:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getResultSequence()Lnet/sf/saxon/om/Sequence;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/SequenceExtent$Of;

    iget-object p0, p0, Lnet/sf/saxon/lib/RawResult;->f:Ljava/util/List;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/RawResult;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/lib/RawResult;->e:Ljava/lang/String;

    return-void
.end method
