.class public Lnet/sf/saxon/s9api/Message;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/s9api/XdmNode;

.field public final b:Lnet/sf/saxon/s9api/QName;

.field public final c:Z

.field public final d:Lnet/sf/saxon/s9api/Location;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/XdmNode;Lnet/sf/saxon/s9api/QName;ZLnet/sf/saxon/s9api/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/s9api/Message;->a:Lnet/sf/saxon/s9api/XdmNode;

    iput-object p2, p0, Lnet/sf/saxon/s9api/Message;->b:Lnet/sf/saxon/s9api/QName;

    iput-boolean p3, p0, Lnet/sf/saxon/s9api/Message;->c:Z

    iput-object p4, p0, Lnet/sf/saxon/s9api/Message;->d:Lnet/sf/saxon/s9api/Location;

    return-void
.end method


# virtual methods
.method public getContent()Lnet/sf/saxon/s9api/XdmNode;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/Message;->a:Lnet/sf/saxon/s9api/XdmNode;

    return-object p0
.end method

.method public getErrorCode()Lnet/sf/saxon/s9api/QName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/Message;->b:Lnet/sf/saxon/s9api/QName;

    return-object p0
.end method

.method public getLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/Message;->d:Lnet/sf/saxon/s9api/Location;

    return-object p0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/Message;->a:Lnet/sf/saxon/s9api/XdmNode;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmItem;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isTerminate()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/s9api/Message;->c:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/Message;->a:Lnet/sf/saxon/s9api/XdmNode;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmNode;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
