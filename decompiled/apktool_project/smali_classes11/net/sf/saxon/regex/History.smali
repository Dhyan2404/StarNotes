.class public Lnet/sf/saxon/regex/History;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/regex/Operation;",
            "Lnet/sf/saxon/z/IntSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/regex/History;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public isDuplicateZeroLengthMatch(Lnet/sf/saxon/regex/Operation;I)Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/regex/History;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/z/IntSet;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/z/IntHashSet;

    invoke-direct {v0, p2}, Lnet/sf/saxon/z/IntHashSet;-><init>(I)V

    invoke-virtual {v0, p2}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    iget-object p0, p0, Lnet/sf/saxon/regex/History;->a:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0, p2}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
