.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTArray;",
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

    const-string v2, "ctarrayd5b6type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTArray;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTArray;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addBool(Z)V
.end method

.method public abstract addBstr(Ljava/lang/String;)V
.end method

.method public abstract addCy(Ljava/lang/String;)V
.end method

.method public abstract addDate(Ljava/util/Calendar;)V
.end method

.method public abstract addDecimal(Ljava/math/BigDecimal;)V
.end method

.method public abstract addError(Ljava/lang/String;)V
.end method

.method public abstract addI1(B)V
.end method

.method public abstract addI2(S)V
.end method

.method public abstract addI4(I)V
.end method

.method public abstract addInt(I)V
.end method

.method public abstract addNewBool()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract addNewBstr()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addNewCy()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;
.end method

.method public abstract addNewDate()Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract addNewDecimal()Lorg/apache/xmlbeans/XmlDecimal;
.end method

.method public abstract addNewError()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;
.end method

.method public abstract addNewI1()Lorg/apache/xmlbeans/XmlByte;
.end method

.method public abstract addNewI2()Lorg/apache/xmlbeans/XmlShort;
.end method

.method public abstract addNewI4()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract addNewInt()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract addNewR4()Lorg/apache/xmlbeans/XmlFloat;
.end method

.method public abstract addNewR8()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract addNewUi1()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract addNewUi2()Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract addNewUi4()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract addNewUint()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract addNewVariant()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;
.end method

.method public abstract addR4(F)V
.end method

.method public abstract addR8(D)V
.end method

.method public abstract addUi1(S)V
.end method

.method public abstract addUi2(I)V
.end method

.method public abstract addUi4(J)V
.end method

.method public abstract addUint(J)V
.end method

.method public abstract getBaseType()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;
.end method

.method public abstract getBoolArray(I)Z
.end method

.method public abstract getBoolArray()[Z
.end method

.method public abstract getBoolList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBstrArray(I)Ljava/lang/String;
.end method

.method public abstract getBstrArray()[Ljava/lang/String;
.end method

.method public abstract getBstrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCyArray(I)Ljava/lang/String;
.end method

.method public abstract getCyArray()[Ljava/lang/String;
.end method

.method public abstract getCyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDateArray(I)Ljava/util/Calendar;
.end method

.method public abstract getDateArray()[Ljava/util/Calendar;
.end method

.method public abstract getDateList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDecimalArray(I)Ljava/math/BigDecimal;
.end method

.method public abstract getDecimalArray()[Ljava/math/BigDecimal;
.end method

.method public abstract getDecimalList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getErrorArray(I)Ljava/lang/String;
.end method

.method public abstract getErrorArray()[Ljava/lang/String;
.end method

.method public abstract getErrorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getI1Array(I)B
.end method

.method public abstract getI1Array()[B
.end method

.method public abstract getI1List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getI2Array(I)S
.end method

.method public abstract getI2Array()[S
.end method

.method public abstract getI2List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getI4Array(I)I
.end method

.method public abstract getI4Array()[I
.end method

.method public abstract getI4List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIntArray(I)I
.end method

.method public abstract getIntArray()[I
.end method

.method public abstract getIntList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLBounds()I
.end method

.method public abstract getR4Array(I)F
.end method

.method public abstract getR4Array()[F
.end method

.method public abstract getR4List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getR8Array(I)D
.end method

.method public abstract getR8Array()[D
.end method

.method public abstract getR8List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUBounds()I
.end method

.method public abstract getUi1Array(I)S
.end method

.method public abstract getUi1Array()[S
.end method

.method public abstract getUi1List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUi2Array(I)I
.end method

.method public abstract getUi2Array()[I
.end method

.method public abstract getUi2List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUi4Array(I)J
.end method

.method public abstract getUi4Array()[J
.end method

.method public abstract getUi4List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUintArray(I)J
.end method

.method public abstract getUintArray()[J
.end method

.method public abstract getUintList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVariantArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;
.end method

.method public abstract getVariantArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;
.end method

.method public abstract getVariantList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertBool(IZ)V
.end method

.method public abstract insertBstr(ILjava/lang/String;)V
.end method

.method public abstract insertCy(ILjava/lang/String;)V
.end method

.method public abstract insertDate(ILjava/util/Calendar;)V
.end method

.method public abstract insertDecimal(ILjava/math/BigDecimal;)V
.end method

.method public abstract insertError(ILjava/lang/String;)V
.end method

.method public abstract insertI1(IB)V
.end method

.method public abstract insertI2(IS)V
.end method

.method public abstract insertI4(II)V
.end method

.method public abstract insertInt(II)V
.end method

.method public abstract insertNewBool(I)Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract insertNewBstr(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertNewCy(I)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;
.end method

.method public abstract insertNewDate(I)Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract insertNewDecimal(I)Lorg/apache/xmlbeans/XmlDecimal;
.end method

.method public abstract insertNewError(I)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;
.end method

.method public abstract insertNewI1(I)Lorg/apache/xmlbeans/XmlByte;
.end method

.method public abstract insertNewI2(I)Lorg/apache/xmlbeans/XmlShort;
.end method

.method public abstract insertNewI4(I)Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract insertNewInt(I)Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract insertNewR4(I)Lorg/apache/xmlbeans/XmlFloat;
.end method

.method public abstract insertNewR8(I)Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract insertNewUi1(I)Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract insertNewUi2(I)Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract insertNewUi4(I)Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract insertNewUint(I)Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract insertNewVariant(I)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;
.end method

.method public abstract insertR4(IF)V
.end method

.method public abstract insertR8(ID)V
.end method

.method public abstract insertUi1(IS)V
.end method

.method public abstract insertUi2(II)V
.end method

.method public abstract insertUi4(IJ)V
.end method

.method public abstract insertUint(IJ)V
.end method

.method public abstract removeBool(I)V
.end method

.method public abstract removeBstr(I)V
.end method

.method public abstract removeCy(I)V
.end method

.method public abstract removeDate(I)V
.end method

.method public abstract removeDecimal(I)V
.end method

.method public abstract removeError(I)V
.end method

.method public abstract removeI1(I)V
.end method

.method public abstract removeI2(I)V
.end method

.method public abstract removeI4(I)V
.end method

.method public abstract removeInt(I)V
.end method

.method public abstract removeR4(I)V
.end method

.method public abstract removeR8(I)V
.end method

.method public abstract removeUi1(I)V
.end method

.method public abstract removeUi2(I)V
.end method

.method public abstract removeUi4(I)V
.end method

.method public abstract removeUint(I)V
.end method

.method public abstract removeVariant(I)V
.end method

.method public abstract setBaseType(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType$Enum;)V
.end method

.method public abstract setBoolArray(IZ)V
.end method

.method public abstract setBoolArray([Z)V
.end method

.method public abstract setBstrArray(ILjava/lang/String;)V
.end method

.method public abstract setBstrArray([Ljava/lang/String;)V
.end method

.method public abstract setCyArray(ILjava/lang/String;)V
.end method

.method public abstract setCyArray([Ljava/lang/String;)V
.end method

.method public abstract setDateArray(ILjava/util/Calendar;)V
.end method

.method public abstract setDateArray([Ljava/util/Calendar;)V
.end method

.method public abstract setDecimalArray(ILjava/math/BigDecimal;)V
.end method

.method public abstract setDecimalArray([Ljava/math/BigDecimal;)V
.end method

.method public abstract setErrorArray(ILjava/lang/String;)V
.end method

.method public abstract setErrorArray([Ljava/lang/String;)V
.end method

.method public abstract setI1Array(IB)V
.end method

.method public abstract setI1Array([B)V
.end method

.method public abstract setI2Array(IS)V
.end method

.method public abstract setI2Array([S)V
.end method

.method public abstract setI4Array(II)V
.end method

.method public abstract setI4Array([I)V
.end method

.method public abstract setIntArray(II)V
.end method

.method public abstract setIntArray([I)V
.end method

.method public abstract setLBounds(I)V
.end method

.method public abstract setR4Array(IF)V
.end method

.method public abstract setR4Array([F)V
.end method

.method public abstract setR8Array(ID)V
.end method

.method public abstract setR8Array([D)V
.end method

.method public abstract setUBounds(I)V
.end method

.method public abstract setUi1Array(IS)V
.end method

.method public abstract setUi1Array([S)V
.end method

.method public abstract setUi2Array(II)V
.end method

.method public abstract setUi2Array([I)V
.end method

.method public abstract setUi4Array(IJ)V
.end method

.method public abstract setUi4Array([J)V
.end method

.method public abstract setUintArray(IJ)V
.end method

.method public abstract setUintArray([J)V
.end method

.method public abstract setVariantArray(ILorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;)V
.end method

.method public abstract setVariantArray([Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;)V
.end method

.method public abstract sizeOfBoolArray()I
.end method

.method public abstract sizeOfBstrArray()I
.end method

.method public abstract sizeOfCyArray()I
.end method

.method public abstract sizeOfDateArray()I
.end method

.method public abstract sizeOfDecimalArray()I
.end method

.method public abstract sizeOfErrorArray()I
.end method

.method public abstract sizeOfI1Array()I
.end method

.method public abstract sizeOfI2Array()I
.end method

.method public abstract sizeOfI4Array()I
.end method

.method public abstract sizeOfIntArray()I
.end method

.method public abstract sizeOfR4Array()I
.end method

.method public abstract sizeOfR8Array()I
.end method

.method public abstract sizeOfUi1Array()I
.end method

.method public abstract sizeOfUi2Array()I
.end method

.method public abstract sizeOfUi4Array()I
.end method

.method public abstract sizeOfUintArray()I
.end method

.method public abstract sizeOfVariantArray()I
.end method

.method public abstract xgetBaseType()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType;
.end method

.method public abstract xgetBoolArray(I)Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetBoolArray()[Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetBoolList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlBoolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetBstrArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetBstrArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetBstrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetCyArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;
.end method

.method public abstract xgetCyArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;
.end method

.method public abstract xgetCyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetDateArray(I)Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract xgetDateArray()[Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract xgetDateList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlDateTime;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetDecimalArray(I)Lorg/apache/xmlbeans/XmlDecimal;
.end method

.method public abstract xgetDecimalArray()[Lorg/apache/xmlbeans/XmlDecimal;
.end method

.method public abstract xgetDecimalList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlDecimal;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetErrorArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;
.end method

.method public abstract xgetErrorArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;
.end method

.method public abstract xgetErrorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetI1Array(I)Lorg/apache/xmlbeans/XmlByte;
.end method

.method public abstract xgetI1Array()[Lorg/apache/xmlbeans/XmlByte;
.end method

.method public abstract xgetI1List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlByte;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetI2Array(I)Lorg/apache/xmlbeans/XmlShort;
.end method

.method public abstract xgetI2Array()[Lorg/apache/xmlbeans/XmlShort;
.end method

.method public abstract xgetI2List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlShort;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetI4Array(I)Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetI4Array()[Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetI4List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlInt;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetIntArray(I)Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetIntArray()[Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetIntList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlInt;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetLBounds()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetR4Array(I)Lorg/apache/xmlbeans/XmlFloat;
.end method

.method public abstract xgetR4Array()[Lorg/apache/xmlbeans/XmlFloat;
.end method

.method public abstract xgetR4List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlFloat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetR8Array(I)Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetR8Array()[Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetR8List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlDouble;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetUBounds()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetUi1Array(I)Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetUi1Array()[Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetUi1List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlUnsignedByte;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetUi2Array(I)Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetUi2Array()[Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetUi2List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlUnsignedShort;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetUi4Array(I)Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetUi4Array()[Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetUi4List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlUnsignedInt;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetUintArray(I)Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetUintArray()[Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetUintList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlUnsignedInt;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xsetBaseType(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STArrayBaseType;)V
.end method

.method public abstract xsetBoolArray(ILorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetBoolArray([Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetBstrArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetBstrArray([Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetCyArray(ILorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;)V
.end method

.method public abstract xsetCyArray([Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;)V
.end method

.method public abstract xsetDateArray(ILorg/apache/xmlbeans/XmlDateTime;)V
.end method

.method public abstract xsetDateArray([Lorg/apache/xmlbeans/XmlDateTime;)V
.end method

.method public abstract xsetDecimalArray(ILorg/apache/xmlbeans/XmlDecimal;)V
.end method

.method public abstract xsetDecimalArray([Lorg/apache/xmlbeans/XmlDecimal;)V
.end method

.method public abstract xsetErrorArray(ILorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;)V
.end method

.method public abstract xsetErrorArray([Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;)V
.end method

.method public abstract xsetI1Array(ILorg/apache/xmlbeans/XmlByte;)V
.end method

.method public abstract xsetI1Array([Lorg/apache/xmlbeans/XmlByte;)V
.end method

.method public abstract xsetI2Array(ILorg/apache/xmlbeans/XmlShort;)V
.end method

.method public abstract xsetI2Array([Lorg/apache/xmlbeans/XmlShort;)V
.end method

.method public abstract xsetI4Array(ILorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetI4Array([Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetIntArray(ILorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetIntArray([Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetLBounds(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetR4Array(ILorg/apache/xmlbeans/XmlFloat;)V
.end method

.method public abstract xsetR4Array([Lorg/apache/xmlbeans/XmlFloat;)V
.end method

.method public abstract xsetR8Array(ILorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetR8Array([Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetUBounds(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetUi1Array(ILorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetUi1Array([Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetUi2Array(ILorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetUi2Array([Lorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetUi4Array(ILorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetUi4Array([Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetUintArray(ILorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetUintArray([Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
