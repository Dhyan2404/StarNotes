.class public Lnet/sf/saxon/om/AttributeInfo$Deleted;
.super Lnet/sf/saxon/om/AttributeInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/om/AttributeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Deleted"
.end annotation


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/AttributeInfo;)V
    .locals 6

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v2

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v4

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method
