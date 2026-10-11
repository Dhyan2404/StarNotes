.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;",
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

    const-string v2, "ctlatentstyles2e3atype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewLsdException()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLsdException;
.end method

.method public abstract getCount()Ljava/math/BigInteger;
.end method

.method public abstract getDefLockedState()Ljava/lang/Object;
.end method

.method public abstract getDefQFormat()Ljava/lang/Object;
.end method

.method public abstract getDefSemiHidden()Ljava/lang/Object;
.end method

.method public abstract getDefUIPriority()Ljava/math/BigInteger;
.end method

.method public abstract getDefUnhideWhenUsed()Ljava/lang/Object;
.end method

.method public abstract getLsdExceptionArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLsdException;
.end method

.method public abstract getLsdExceptionArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLsdException;
.end method

.method public abstract getLsdExceptionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLsdException;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewLsdException(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLsdException;
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract isSetDefLockedState()Z
.end method

.method public abstract isSetDefQFormat()Z
.end method

.method public abstract isSetDefSemiHidden()Z
.end method

.method public abstract isSetDefUIPriority()Z
.end method

.method public abstract isSetDefUnhideWhenUsed()Z
.end method

.method public abstract removeLsdException(I)V
.end method

.method public abstract setCount(Ljava/math/BigInteger;)V
.end method

.method public abstract setDefLockedState(Ljava/lang/Object;)V
.end method

.method public abstract setDefQFormat(Ljava/lang/Object;)V
.end method

.method public abstract setDefSemiHidden(Ljava/lang/Object;)V
.end method

.method public abstract setDefUIPriority(Ljava/math/BigInteger;)V
.end method

.method public abstract setDefUnhideWhenUsed(Ljava/lang/Object;)V
.end method

.method public abstract setLsdExceptionArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLsdException;)V
.end method

.method public abstract setLsdExceptionArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLsdException;)V
.end method

.method public abstract sizeOfLsdExceptionArray()I
.end method

.method public abstract unsetCount()V
.end method

.method public abstract unsetDefLockedState()V
.end method

.method public abstract unsetDefQFormat()V
.end method

.method public abstract unsetDefSemiHidden()V
.end method

.method public abstract unsetDefUIPriority()V
.end method

.method public abstract unsetDefUnhideWhenUsed()V
.end method

.method public abstract xgetCount()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetDefLockedState()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetDefQFormat()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetDefSemiHidden()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetDefUIPriority()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetDefUnhideWhenUsed()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xsetCount(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetDefLockedState(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetDefQFormat(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetDefSemiHidden(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetDefUIPriority(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetDefUnhideWhenUsed(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method
