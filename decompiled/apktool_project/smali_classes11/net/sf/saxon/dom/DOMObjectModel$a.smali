.class public Lnet/sf/saxon/dom/DOMObjectModel$a;
.super Lnet/sf/saxon/expr/PJConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/dom/DOMObjectModel;->getPJConverter(Ljava/lang/Class;)Lnet/sf/saxon/expr/PJConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lnet/sf/saxon/dom/DOMObjectModel;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/dom/DOMObjectModel;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/dom/DOMObjectModel$a;->b:Lnet/sf/saxon/dom/DOMObjectModel;

    invoke-direct {p0}, Lnet/sf/saxon/expr/PJConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lnet/sf/saxon/om/Sequence;Ljava/lang/Class;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/Object;
    .locals 0
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

    invoke-static {p1, p2}, Lnet/sf/saxon/dom/DOMObjectModel;->convertXPathValueToObject(Lnet/sf/saxon/om/Sequence;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
