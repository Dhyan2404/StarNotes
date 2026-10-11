.class public Lnet/sf/saxon/s9api/streams/Step$a;
.super Lnet/sf/saxon/s9api/streams/Step;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/s9api/streams/Step;->where(Ljava/util/function/Predicate;)Lnet/sf/saxon/s9api/streams/Step;
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

.field public final synthetic f:Ljava/util/function/Predicate;

.field public final synthetic g:Lnet/sf/saxon/s9api/streams/Step;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/streams/Step;Lnet/sf/saxon/s9api/streams/Step;Ljava/util/function/Predicate;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/streams/Step$a;->g:Lnet/sf/saxon/s9api/streams/Step;

    iput-object p2, p0, Lnet/sf/saxon/s9api/streams/Step$a;->e:Lnet/sf/saxon/s9api/streams/Step;

    iput-object p3, p0, Lnet/sf/saxon/s9api/streams/Step$a;->f:Ljava/util/function/Predicate;

    invoke-direct {p0}, Lnet/sf/saxon/s9api/streams/Step;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnet/sf/saxon/s9api/XdmItem;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ")",
            "Ljava/util/stream/Stream<",
            "+TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/s9api/streams/Step$a;->e:Lnet/sf/saxon/s9api/streams/Step;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/stream/Stream;

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/Step$a;->f:Ljava/util/function/Predicate;

    invoke-interface {p1, p0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnet/sf/saxon/s9api/XdmItem;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/streams/Step$a;->a(Lnet/sf/saxon/s9api/XdmItem;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
