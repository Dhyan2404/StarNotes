.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumns;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumns;",
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

    const-string v2, "ctcolumns51d5type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumns;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumns;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCol()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumn;
.end method

.method public abstract getColArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumn;
.end method

.method public abstract getColArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumn;
.end method

.method public abstract getColList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumn;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEqualWidth()Ljava/lang/Object;
.end method

.method public abstract getNum()Ljava/math/BigInteger;
.end method

.method public abstract getSep()Ljava/lang/Object;
.end method

.method public abstract getSpace()Ljava/lang/Object;
.end method

.method public abstract insertNewCol(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumn;
.end method

.method public abstract isSetEqualWidth()Z
.end method

.method public abstract isSetNum()Z
.end method

.method public abstract isSetSep()Z
.end method

.method public abstract isSetSpace()Z
.end method

.method public abstract removeCol(I)V
.end method

.method public abstract setColArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumn;)V
.end method

.method public abstract setColArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumn;)V
.end method

.method public abstract setEqualWidth(Ljava/lang/Object;)V
.end method

.method public abstract setNum(Ljava/math/BigInteger;)V
.end method

.method public abstract setSep(Ljava/lang/Object;)V
.end method

.method public abstract setSpace(Ljava/lang/Object;)V
.end method

.method public abstract sizeOfColArray()I
.end method

.method public abstract unsetEqualWidth()V
.end method

.method public abstract unsetNum()V
.end method

.method public abstract unsetSep()V
.end method

.method public abstract unsetSpace()V
.end method

.method public abstract xgetEqualWidth()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetSep()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetSpace()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;
.end method

.method public abstract xsetEqualWidth(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetNum(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetSep(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetSpace(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)V
.end method
