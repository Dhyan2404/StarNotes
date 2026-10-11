.class public Lnet/sf/saxon/functions/hof/RandomNumberGenerator$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/hof/RandomNumberGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public e:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lnet/sf/saxon/functions/hof/RandomNumberGenerator$a;->e:J

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-wide v0, p0, Lnet/sf/saxon/functions/hof/RandomNumberGenerator$a;->e:J

    invoke-static {v0, v1, p1}, Lnet/sf/saxon/functions/hof/RandomNumberGenerator;->a(JLnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "random-number-generator.next"

    return-object p0
.end method
