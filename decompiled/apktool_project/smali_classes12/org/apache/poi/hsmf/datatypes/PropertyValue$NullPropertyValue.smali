.class public Lorg/apache/poi/hsmf/datatypes/PropertyValue$NullPropertyValue;
.super Lorg/apache/poi/hsmf/datatypes/PropertyValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hsmf/datatypes/PropertyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullPropertyValue"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;J[B)V
    .locals 6

    sget-object v5, Lorg/apache/poi/hsmf/datatypes/Types;->NULL:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hsmf/datatypes/PropertyValue;-><init>(Lorg/apache/poi/hsmf/datatypes/MAPIProperty;J[BLorg/apache/poi/hsmf/datatypes/Types$MAPIType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/PropertyValue$NullPropertyValue;->getValue()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/Void;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method
