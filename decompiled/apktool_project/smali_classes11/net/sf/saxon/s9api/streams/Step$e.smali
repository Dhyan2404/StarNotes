.class public Lnet/sf/saxon/s9api/streams/Step$e;
.super Lnet/sf/saxon/s9api/streams/Step;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/s9api/streams/Step;->at(J)Lnet/sf/saxon/s9api/streams/Step;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sf/saxon/s9api/streams/Step<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lnet/sf/saxon/s9api/streams/Step;

.field public final synthetic f:J

.field public final synthetic g:Lnet/sf/saxon/s9api/streams/Step;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/streams/Step;Lnet/sf/saxon/s9api/streams/Step;J)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/streams/Step$e;->g:Lnet/sf/saxon/s9api/streams/Step;

    iput-object p2, p0, Lnet/sf/saxon/s9api/streams/Step$e;->e:Lnet/sf/saxon/s9api/streams/Step;

    iput-wide p3, p0, Lnet/sf/saxon/s9api/streams/Step$e;->f:J

    invoke-direct {p0}, Lnet/sf/saxon/s9api/streams/Step;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnet/sf/saxon/s9api/XdmItem;)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ")",
            "Ljava/util/stream/Stream<",
            "+TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/s9api/streams/Step$e;->e:Lnet/sf/saxon/s9api/streams/Step;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/stream/Stream;

    iget-wide v0, p0, Lnet/sf/saxon/s9api/streams/Step$e;->f:J

    invoke-interface {p1, v0, v1}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object p0

    const-wide/16 v0, 0x1

    invoke-interface {p0, v0, v1}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnet/sf/saxon/s9api/XdmItem;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/streams/Step$e;->a(Lnet/sf/saxon/s9api/XdmItem;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
