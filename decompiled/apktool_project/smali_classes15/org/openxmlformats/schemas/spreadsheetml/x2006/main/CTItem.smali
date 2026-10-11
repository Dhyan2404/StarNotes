.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItem;",
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

    const-string v2, "ctitemc69ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItem;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItem;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getC()Z
.end method

.method public abstract getD()Z
.end method

.method public abstract getE()Z
.end method

.method public abstract getF()Z
.end method

.method public abstract getH()Z
.end method

.method public abstract getM()Z
.end method

.method public abstract getN()Ljava/lang/String;
.end method

.method public abstract getS()Z
.end method

.method public abstract getSd()Z
.end method

.method public abstract getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;
.end method

.method public abstract getX()J
.end method

.method public abstract isSetC()Z
.end method

.method public abstract isSetD()Z
.end method

.method public abstract isSetE()Z
.end method

.method public abstract isSetF()Z
.end method

.method public abstract isSetH()Z
.end method

.method public abstract isSetM()Z
.end method

.method public abstract isSetN()Z
.end method

.method public abstract isSetS()Z
.end method

.method public abstract isSetSd()Z
.end method

.method public abstract isSetT()Z
.end method

.method public abstract isSetX()Z
.end method

.method public abstract setC(Z)V
.end method

.method public abstract setD(Z)V
.end method

.method public abstract setE(Z)V
.end method

.method public abstract setF(Z)V
.end method

.method public abstract setH(Z)V
.end method

.method public abstract setM(Z)V
.end method

.method public abstract setN(Ljava/lang/String;)V
.end method

.method public abstract setS(Z)V
.end method

.method public abstract setSd(Z)V
.end method

.method public abstract setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;)V
.end method

.method public abstract setX(J)V
.end method

.method public abstract unsetC()V
.end method

.method public abstract unsetD()V
.end method

.method public abstract unsetE()V
.end method

.method public abstract unsetF()V
.end method

.method public abstract unsetH()V
.end method

.method public abstract unsetM()V
.end method

.method public abstract unsetN()V
.end method

.method public abstract unsetS()V
.end method

.method public abstract unsetSd()V
.end method

.method public abstract unsetT()V
.end method

.method public abstract unsetX()V
.end method

.method public abstract xgetC()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetD()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetE()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetF()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetH()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetM()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetN()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetS()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSd()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;
.end method

.method public abstract xgetX()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetC(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetD(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetE(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetF(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetH(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetM(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetN(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetS(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSd(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;)V
.end method

.method public abstract xsetX(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
