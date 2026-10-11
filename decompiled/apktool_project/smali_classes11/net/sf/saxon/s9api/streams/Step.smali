.class public abstract Lnet/sf/saxon/s9api/streams/Step;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/sf/saxon/s9api/XdmItem;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Lnet/sf/saxon/s9api/XdmItem;",
        "Ljava/util/stream/Stream<",
        "+TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public at(J)Lnet/sf/saxon/s9api/streams/Step;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lnet/sf/saxon/s9api/streams/Step<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/streams/Step$e;

    invoke-direct {v0, p0, p0, p1, p2}, Lnet/sf/saxon/s9api/streams/Step$e;-><init>(Lnet/sf/saxon/s9api/streams/Step;Lnet/sf/saxon/s9api/streams/Step;J)V

    return-object v0
.end method

.method public cat(Lnet/sf/saxon/s9api/streams/Step;)Lnet/sf/saxon/s9api/streams/Step;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/s9api/streams/Step<",
            "TT;>;)",
            "Lnet/sf/saxon/s9api/streams/Step<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/streams/Step$b;

    invoke-direct {v0, p0, p0, p1}, Lnet/sf/saxon/s9api/streams/Step$b;-><init>(Lnet/sf/saxon/s9api/streams/Step;Lnet/sf/saxon/s9api/streams/Step;Lnet/sf/saxon/s9api/streams/Step;)V

    return-object v0
.end method

.method public first()Lnet/sf/saxon/s9api/streams/Step;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/s9api/streams/Step<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/streams/Step$c;

    invoke-direct {v0, p0, p0}, Lnet/sf/saxon/s9api/streams/Step$c;-><init>(Lnet/sf/saxon/s9api/streams/Step;Lnet/sf/saxon/s9api/streams/Step;)V

    return-object v0
.end method

.method public last()Lnet/sf/saxon/s9api/streams/Step;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/s9api/streams/Step<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/streams/Step$d;

    invoke-direct {v0, p0, p0}, Lnet/sf/saxon/s9api/streams/Step$d;-><init>(Lnet/sf/saxon/s9api/streams/Step;Lnet/sf/saxon/s9api/streams/Step;)V

    return-object v0
.end method

.method public then(Lnet/sf/saxon/s9api/streams/Step;)Lnet/sf/saxon/s9api/streams/Step;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">(",
            "Lnet/sf/saxon/s9api/streams/Step<",
            "TU;>;)",
            "Lnet/sf/saxon/s9api/streams/Step<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/streams/Step$f;

    invoke-direct {v0, p0, p0, p1}, Lnet/sf/saxon/s9api/streams/Step$f;-><init>(Lnet/sf/saxon/s9api/streams/Step;Lnet/sf/saxon/s9api/streams/Step;Lnet/sf/saxon/s9api/streams/Step;)V

    return-object v0
.end method

.method public where(Ljava/util/function/Predicate;)Lnet/sf/saxon/s9api/streams/Step;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Lnet/sf/saxon/s9api/streams/Step<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/streams/Step$a;

    invoke-direct {v0, p0, p0, p1}, Lnet/sf/saxon/s9api/streams/Step$a;-><init>(Lnet/sf/saxon/s9api/streams/Step;Lnet/sf/saxon/s9api/streams/Step;Ljava/util/function/Predicate;)V

    return-object v0
.end method
