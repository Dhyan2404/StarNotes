.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;",
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

    const-string v2, "ctnumberd212type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewTpls()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTuples;
.end method

.method public abstract addNewX()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;
.end method

.method public abstract getB()Z
.end method

.method public abstract getBc()[B
.end method

.method public abstract getC()Ljava/lang/String;
.end method

.method public abstract getCp()J
.end method

.method public abstract getF()Z
.end method

.method public abstract getFc()[B
.end method

.method public abstract getI()Z
.end method

.method public abstract getIn()J
.end method

.method public abstract getSt()Z
.end method

.method public abstract getTplsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTuples;
.end method

.method public abstract getTplsArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTuples;
.end method

.method public abstract getTplsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTuples;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getU()Z
.end method

.method public abstract getUn()Z
.end method

.method public abstract getV()D
.end method

.method public abstract getXArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;
.end method

.method public abstract getXArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;
.end method

.method public abstract getXList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewTpls(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTuples;
.end method

.method public abstract insertNewX(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;
.end method

.method public abstract isSetB()Z
.end method

.method public abstract isSetBc()Z
.end method

.method public abstract isSetC()Z
.end method

.method public abstract isSetCp()Z
.end method

.method public abstract isSetF()Z
.end method

.method public abstract isSetFc()Z
.end method

.method public abstract isSetI()Z
.end method

.method public abstract isSetIn()Z
.end method

.method public abstract isSetSt()Z
.end method

.method public abstract isSetU()Z
.end method

.method public abstract isSetUn()Z
.end method

.method public abstract removeTpls(I)V
.end method

.method public abstract removeX(I)V
.end method

.method public abstract setB(Z)V
.end method

.method public abstract setBc([B)V
.end method

.method public abstract setC(Ljava/lang/String;)V
.end method

.method public abstract setCp(J)V
.end method

.method public abstract setF(Z)V
.end method

.method public abstract setFc([B)V
.end method

.method public abstract setI(Z)V
.end method

.method public abstract setIn(J)V
.end method

.method public abstract setSt(Z)V
.end method

.method public abstract setTplsArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTuples;)V
.end method

.method public abstract setTplsArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTuples;)V
.end method

.method public abstract setU(Z)V
.end method

.method public abstract setUn(Z)V
.end method

.method public abstract setV(D)V
.end method

.method public abstract setXArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;)V
.end method

.method public abstract setXArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;)V
.end method

.method public abstract sizeOfTplsArray()I
.end method

.method public abstract sizeOfXArray()I
.end method

.method public abstract unsetB()V
.end method

.method public abstract unsetBc()V
.end method

.method public abstract unsetC()V
.end method

.method public abstract unsetCp()V
.end method

.method public abstract unsetF()V
.end method

.method public abstract unsetFc()V
.end method

.method public abstract unsetI()V
.end method

.method public abstract unsetIn()V
.end method

.method public abstract unsetSt()V
.end method

.method public abstract unsetU()V
.end method

.method public abstract unsetUn()V
.end method

.method public abstract xgetB()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetBc()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedIntHex;
.end method

.method public abstract xgetC()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetCp()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetF()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFc()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedIntHex;
.end method

.method public abstract xgetI()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetIn()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetSt()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetU()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetUn()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetV()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xsetB(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetBc(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedIntHex;)V
.end method

.method public abstract xsetC(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetCp(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetF(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFc(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedIntHex;)V
.end method

.method public abstract xsetI(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetIn(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetSt(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetU(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetUn(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetV(Lorg/apache/xmlbeans/XmlDouble;)V
.end method
