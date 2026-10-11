.class public Lnet/sf/saxon/expr/PJConverter$ToOneOrMore;
.super Lnet/sf/saxon/expr/PJConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/PJConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToOneOrMore"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/expr/PJConverter$ToOneOrMore;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/PJConverter$ToOneOrMore;

    invoke-direct {v0}, Lnet/sf/saxon/expr/PJConverter$ToOneOrMore;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/PJConverter$ToOneOrMore;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$ToOneOrMore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/PJConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lnet/sf/saxon/om/Sequence;Ljava/lang/Class;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/expr/PJConverter$ToOneOrMore;->convert(Lnet/sf/saxon/om/Sequence;Ljava/lang/Class;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/OneOrMore;

    move-result-object p0

    return-object p0
.end method

.method public convert(Lnet/sf/saxon/om/Sequence;Ljava/lang/Class;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/OneOrMore;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/Sequence;",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")",
            "Lnet/sf/saxon/om/OneOrMore<",
            "Lnet/sf/saxon/om/Item;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lnet/sf/saxon/om/OneOrMore;->makeOneOrMore(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/OneOrMore;

    move-result-object p0

    return-object p0
.end method
