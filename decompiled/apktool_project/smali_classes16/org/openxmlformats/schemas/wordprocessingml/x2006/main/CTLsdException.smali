.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLsdException;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLsdException;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctlsdexceptiona296type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLsdException;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLsdException;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getLocked()Ljava/lang/Object;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getQFormat()Ljava/lang/Object;
.end method

.method public abstract getSemiHidden()Ljava/lang/Object;
.end method

.method public abstract getUiPriority()Ljava/math/BigInteger;
.end method

.method public abstract getUnhideWhenUsed()Ljava/lang/Object;
.end method

.method public abstract isSetLocked()Z
.end method

.method public abstract isSetQFormat()Z
.end method

.method public abstract isSetSemiHidden()Z
.end method

.method public abstract isSetUiPriority()Z
.end method

.method public abstract isSetUnhideWhenUsed()Z
.end method

.method public abstract setLocked(Ljava/lang/Object;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setQFormat(Ljava/lang/Object;)V
.end method

.method public abstract setSemiHidden(Ljava/lang/Object;)V
.end method

.method public abstract setUiPriority(Ljava/math/BigInteger;)V
.end method

.method public abstract setUnhideWhenUsed(Ljava/lang/Object;)V
.end method

.method public abstract unsetLocked()V
.end method

.method public abstract unsetQFormat()V
.end method

.method public abstract unsetSemiHidden()V
.end method

.method public abstract unsetUiPriority()V
.end method

.method public abstract unsetUnhideWhenUsed()V
.end method

.method public abstract xgetLocked()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetQFormat()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetSemiHidden()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetUiPriority()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetUnhideWhenUsed()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xsetLocked(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetQFormat(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetSemiHidden(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetUiPriority(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetUnhideWhenUsed(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method
