.class public Lnet/sf/saxon/om/AttributeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/om/AttributeInfo$Deleted;
    }
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/om/NodeName;

.field public final f:Lnet/sf/saxon/type/SimpleType;

.field public final g:Ljava/lang/String;

.field public final h:Lnet/sf/saxon/s9api/Location;

.field public final i:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/om/AttributeInfo;->e:Lnet/sf/saxon/om/NodeName;

    iput-object p2, p0, Lnet/sf/saxon/om/AttributeInfo;->f:Lnet/sf/saxon/type/SimpleType;

    iput-object p3, p0, Lnet/sf/saxon/om/AttributeInfo;->g:Ljava/lang/String;

    iput-object p4, p0, Lnet/sf/saxon/om/AttributeInfo;->h:Lnet/sf/saxon/s9api/Location;

    iput p5, p0, Lnet/sf/saxon/om/AttributeInfo;->i:I

    return-void
.end method


# virtual methods
.method public getLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/AttributeInfo;->h:Lnet/sf/saxon/s9api/Location;

    return-object p0
.end method

.method public getNodeName()Lnet/sf/saxon/om/NodeName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/AttributeInfo;->e:Lnet/sf/saxon/om/NodeName;

    return-object p0
.end method

.method public getProperties()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/om/AttributeInfo;->i:I

    return p0
.end method

.method public getType()Lnet/sf/saxon/type/SimpleType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/AttributeInfo;->f:Lnet/sf/saxon/type/SimpleType;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/AttributeInfo;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getXdmStringValue()Lnet/sf/saxon/value/StringValue;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    iget-object p0, p0, Lnet/sf/saxon/om/AttributeInfo;->g:Ljava/lang/String;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public isId()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lnet/sf/saxon/om/StandardNames;->XML_ID_NAME:Lnet/sf/saxon/om/NodeName;

    iget-object v2, p0, Lnet/sf/saxon/om/AttributeInfo;->e:Lnet/sf/saxon/om/NodeName;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result v1

    const/16 v2, 0x800

    invoke-static {v1, v2}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/om/AttributeInfo;->getType()Lnet/sf/saxon/type/SimpleType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->isIdType()Z

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method public withNodeName(Lnet/sf/saxon/om/NodeName;)Lnet/sf/saxon/om/AttributeInfo;
    .locals 7

    new-instance v6, Lnet/sf/saxon/om/AttributeInfo;

    iget-object v2, p0, Lnet/sf/saxon/om/AttributeInfo;->f:Lnet/sf/saxon/type/SimpleType;

    iget-object v3, p0, Lnet/sf/saxon/om/AttributeInfo;->g:Ljava/lang/String;

    iget-object v4, p0, Lnet/sf/saxon/om/AttributeInfo;->h:Lnet/sf/saxon/s9api/Location;

    iget v5, p0, Lnet/sf/saxon/om/AttributeInfo;->i:I

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    return-object v6
.end method
