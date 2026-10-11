.class public Lnet/sf/saxon/expr/PJConverter$Atomic;
.super Lnet/sf/saxon/expr/PJConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/PJConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Atomic"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/expr/PJConverter$Atomic;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/PJConverter$Atomic;

    invoke-direct {v0}, Lnet/sf/saxon/expr/PJConverter$Atomic;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/PJConverter$Atomic;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Atomic;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/PJConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lnet/sf/saxon/om/Sequence;Ljava/lang/Class;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/Sequence;",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-static {p1, v0, v1, p2}, Lnet/sf/saxon/expr/PJConverter;->allocate(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/type/ItemType;ILjava/lang/Class;)Lnet/sf/saxon/expr/PJConverter;

    move-result-object p1

    invoke-virtual {p1, p0, p2, p3}, Lnet/sf/saxon/expr/PJConverter;->convert(Lnet/sf/saxon/om/Sequence;Ljava/lang/Class;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
