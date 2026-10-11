.class public Lnet/sf/saxon/event/LocationCopier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/event/CopyInformee;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lnet/sf/saxon/event/LocationCopier;->a:Z

    iput-object p2, p0, Lnet/sf/saxon/event/LocationCopier;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/LocationCopier;->b:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic notifyElementNode(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/LocationCopier;->notifyElementNode(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    return-object p0
.end method

.method public notifyElementNode(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/s9api/Location;
    .locals 2

    .line 2
    iget-boolean p0, p0, Lnet/sf/saxon/event/LocationCopier;->a:Z

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object p0

    .line 3
    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getLineNumber()I

    move-result v0

    .line 4
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getColumnNumber()I

    move-result p1

    .line 5
    new-instance v1, Lnet/sf/saxon/expr/parser/Loc;

    invoke-direct {v1, p0, v0, p1}, Lnet/sf/saxon/expr/parser/Loc;-><init>(Ljava/lang/String;II)V

    return-object v1
.end method
