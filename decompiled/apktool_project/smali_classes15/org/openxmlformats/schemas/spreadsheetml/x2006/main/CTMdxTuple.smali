.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdxTuple;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdxTuple;",
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

    const-string v2, "ctmdxtuplefa90type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdxTuple;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdxTuple;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewN()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataStringIndex;
.end method

.method public abstract getB()Z
.end method

.method public abstract getBc()[B
.end method

.method public abstract getC()J
.end method

.method public abstract getCt()Ljava/lang/String;
.end method

.method public abstract getFc()[B
.end method

.method public abstract getFi()J
.end method

.method public abstract getI()Z
.end method

.method public abstract getNArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataStringIndex;
.end method

.method public abstract getNArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataStringIndex;
.end method

.method public abstract getNList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataStringIndex;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSi()J
.end method

.method public abstract getSt()Z
.end method

.method public abstract getU()Z
.end method

.method public abstract insertNewN(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataStringIndex;
.end method

.method public abstract isSetB()Z
.end method

.method public abstract isSetBc()Z
.end method

.method public abstract isSetC()Z
.end method

.method public abstract isSetCt()Z
.end method

.method public abstract isSetFc()Z
.end method

.method public abstract isSetFi()Z
.end method

.method public abstract isSetI()Z
.end method

.method public abstract isSetSi()Z
.end method

.method public abstract isSetSt()Z
.end method

.method public abstract isSetU()Z
.end method

.method public abstract removeN(I)V
.end method

.method public abstract setB(Z)V
.end method

.method public abstract setBc([B)V
.end method

.method public abstract setC(J)V
.end method

.method public abstract setCt(Ljava/lang/String;)V
.end method

.method public abstract setFc([B)V
.end method

.method public abstract setFi(J)V
.end method

.method public abstract setI(Z)V
.end method

.method public abstract setNArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataStringIndex;)V
.end method

.method public abstract setNArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataStringIndex;)V
.end method

.method public abstract setSi(J)V
.end method

.method public abstract setSt(Z)V
.end method

.method public abstract setU(Z)V
.end method

.method public abstract sizeOfNArray()I
.end method

.method public abstract unsetB()V
.end method

.method public abstract unsetBc()V
.end method

.method public abstract unsetC()V
.end method

.method public abstract unsetCt()V
.end method

.method public abstract unsetFc()V
.end method

.method public abstract unsetFi()V
.end method

.method public abstract unsetI()V
.end method

.method public abstract unsetSi()V
.end method

.method public abstract unsetSt()V
.end method

.method public abstract unsetU()V
.end method

.method public abstract xgetB()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetBc()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedIntHex;
.end method

.method public abstract xgetC()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetCt()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetFc()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedIntHex;
.end method

.method public abstract xgetFi()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetI()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSi()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetSt()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetU()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetB(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetBc(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedIntHex;)V
.end method

.method public abstract xsetC(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetCt(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetFc(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedIntHex;)V
.end method

.method public abstract xsetFi(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetI(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSi(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetSt(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetU(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
