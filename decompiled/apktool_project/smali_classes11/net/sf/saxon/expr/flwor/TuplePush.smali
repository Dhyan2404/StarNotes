.class public abstract Lnet/sf/saxon/expr/flwor/TuplePush;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/event/Outputter;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Outputter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/TuplePush;->a:Lnet/sf/saxon/event/Outputter;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public getOutputter()Lnet/sf/saxon/event/Outputter;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/TuplePush;->a:Lnet/sf/saxon/event/Outputter;

    return-object p0
.end method

.method public abstract processTuple(Lnet/sf/saxon/expr/XPathContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method
