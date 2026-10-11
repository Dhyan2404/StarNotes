.class public Lnet/sf/saxon/om/AbsolutePath$PathElement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/om/AbsolutePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathElement"
.end annotation


# instance fields
.field public a:I

.field public b:Lnet/sf/saxon/om/NodeName;

.field public c:I


# direct methods
.method public constructor <init>(ILnet/sf/saxon/om/NodeName;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/sf/saxon/om/AbsolutePath$PathElement;->a:I

    iput-object p2, p0, Lnet/sf/saxon/om/AbsolutePath$PathElement;->b:Lnet/sf/saxon/om/NodeName;

    iput p3, p0, Lnet/sf/saxon/om/AbsolutePath$PathElement;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/om/AbsolutePath$PathElement;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/om/AbsolutePath$PathElement;->getIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public addToString(Ljava/lang/StringBuilder;C)V
    .locals 8

    iget v0, p0, Lnet/sf/saxon/om/AbsolutePath$PathElement;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x3a

    const/16 v3, 0x73

    const/16 v4, 0x70

    const/16 v5, 0x75

    const-string v6, "}"

    const-string v7, "Q{"

    if-eq v0, v1, :cond_a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 p2, 0x3

    if-eq v0, p2, :cond_5

    const/4 p2, 0x7

    if-eq v0, p2, :cond_4

    const/16 p2, 0x8

    if-eq v0, p2, :cond_3

    const/16 p2, 0x9

    if-eq v0, p2, :cond_2

    const/16 p2, 0xd

    if-eq v0, p2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string p2, "namespace::"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lnet/sf/saxon/om/AbsolutePath$PathElement;->b:Lnet/sf/saxon/om/NodeName;

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p0, "*[Q{http://www.w3.org/2005/xpath-functions}local-name()=\"\"]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/om/AbsolutePath$PathElement;->b:Lnet/sf/saxon/om/NodeName;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_2
    const-string p0, "(/)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_3
    const-string p2, "comment()"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/AbsolutePath$PathElement;->a(Ljava/lang/StringBuilder;)V

    goto/16 :goto_2

    :cond_4
    const-string p2, "processing-instruction("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lnet/sf/saxon/om/AbsolutePath$PathElement;->b:Lnet/sf/saxon/om/NodeName;

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/AbsolutePath$PathElement;->a(Ljava/lang/StringBuilder;)V

    goto/16 :goto_2

    :cond_5
    const-string p0, "text()"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_6
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sf/saxon/om/AbsolutePath$PathElement;->b:Lnet/sf/saxon/om/NodeName;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    if-ne p2, v5, :cond_7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lnet/sf/saxon/om/AbsolutePath$PathElement;->b:Lnet/sf/saxon/om/NodeName;

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    if-ne p2, v4, :cond_8

    iget-object p2, p0, Lnet/sf/saxon/om/AbsolutePath$PathElement;->b:Lnet/sf/saxon/om/NodeName;

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_8
    if-ne p2, v3, :cond_9

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lnet/sf/saxon/om/AbsolutePath$PathElement;->b:Lnet/sf/saxon/om/NodeName;

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lnet/sf/saxon/trans/Err;->abbreviateURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/om/AbsolutePath$PathElement;->getName()Lnet/sf/saxon/om/NodeName;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_a
    if-ne p2, v5, :cond_b

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lnet/sf/saxon/om/AbsolutePath$PathElement;->b:Lnet/sf/saxon/om/NodeName;

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_b
    if-ne p2, v4, :cond_c

    iget-object p2, p0, Lnet/sf/saxon/om/AbsolutePath$PathElement;->b:Lnet/sf/saxon/om/NodeName;

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_c
    if-ne p2, v3, :cond_d

    iget-object p2, p0, Lnet/sf/saxon/om/AbsolutePath$PathElement;->b:Lnet/sf/saxon/om/NodeName;

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_d

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lnet/sf/saxon/om/AbsolutePath$PathElement;->b:Lnet/sf/saxon/om/NodeName;

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lnet/sf/saxon/trans/Err;->abbreviateURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    :goto_1
    iget-object p2, p0, Lnet/sf/saxon/om/AbsolutePath$PathElement;->b:Lnet/sf/saxon/om/NodeName;

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/AbsolutePath$PathElement;->a(Ljava/lang/StringBuilder;)V

    :goto_2
    return-void
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/om/AbsolutePath$PathElement;->c:I

    return p0
.end method

.method public getName()Lnet/sf/saxon/om/NodeName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/AbsolutePath$PathElement;->b:Lnet/sf/saxon/om/NodeName;

    return-object p0
.end method

.method public getNodeKind()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/om/AbsolutePath$PathElement;->a:I

    return p0
.end method
