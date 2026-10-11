.class public Lnet/sf/saxon/functions/Current;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# static fields
.field public static final FN_CURRENT:Lnet/sf/saxon/om/StructuredQName;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, "http://www.w3.org/2005/xpath-functions"

    const-string v2, "current"

    const-string v3, ""

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/functions/Current;->FN_CURRENT:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Dynamic evaluation of the current() function is not supported"

    const-string p2, "XTDE1360"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method
