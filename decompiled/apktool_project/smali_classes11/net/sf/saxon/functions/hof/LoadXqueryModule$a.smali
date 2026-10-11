.class public Lnet/sf/saxon/functions/hof/LoadXqueryModule$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ExportAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/functions/hof/LoadXqueryModule;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/ma/map/MapItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lnet/sf/saxon/functions/hof/LoadXqueryModule;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/functions/hof/LoadXqueryModule;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/hof/LoadXqueryModule$a;->e:Lnet/sf/saxon/functions/hof/LoadXqueryModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot export a stylesheet that statically incorporates XQuery functions"

    const-string v0, "SXST0069"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0
.end method
