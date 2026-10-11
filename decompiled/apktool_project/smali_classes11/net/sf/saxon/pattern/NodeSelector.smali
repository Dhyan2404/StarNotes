.class public Lnet/sf/saxon/pattern/NodeSelector;
.super Lnet/sf/saxon/pattern/NodeTest;
.source "SourceFile"


# instance fields
.field public final i:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "-",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/sf/saxon/pattern/NodeTest;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/pattern/NodeSelector;->i:Ljava/util/function/Predicate;

    return-void
.end method

.method public static of(Ljava/util/function/Predicate;)Lnet/sf/saxon/pattern/NodeSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;)",
            "Lnet/sf/saxon/pattern/NodeSelector;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/pattern/NodeSelector;

    invoke-direct {v0, p0}, Lnet/sf/saxon/pattern/NodeSelector;-><init>(Ljava/util/function/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public getDefaultPriority()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/UType;->ANY:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public matches(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "NodePredicate doesn\'t support this method"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public test(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/NodeSelector;->i:Ljava/util/function/Predicate;

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
