.class public Lnet/sf/saxon/expr/PJConverter$StringItemToString;
.super Lnet/sf/saxon/expr/PJConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/PJConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringItemToString"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/expr/PJConverter$StringItemToString;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/PJConverter$StringItemToString;

    invoke-direct {v0}, Lnet/sf/saxon/expr/PJConverter$StringItemToString;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/PJConverter$StringItemToString;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$StringItemToString;

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
    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/expr/PJConverter$StringItemToString;->convert(Lnet/sf/saxon/om/Sequence;Ljava/lang/Class;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public convert(Lnet/sf/saxon/om/Sequence;Ljava/lang/Class;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/Sequence;",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
