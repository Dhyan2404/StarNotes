.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;",
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

    const-string v2, "ctcalccellb960type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getA()Z
.end method

.method public abstract getI()I
.end method

.method public abstract getL()Z
.end method

.method public abstract getR()Ljava/lang/String;
.end method

.method public abstract getRef()Ljava/lang/String;
.end method

.method public abstract getS()Z
.end method

.method public abstract getT()Z
.end method

.method public abstract isSetA()Z
.end method

.method public abstract isSetI()Z
.end method

.method public abstract isSetL()Z
.end method

.method public abstract isSetR()Z
.end method

.method public abstract isSetRef()Z
.end method

.method public abstract isSetS()Z
.end method

.method public abstract isSetT()Z
.end method

.method public abstract setA(Z)V
.end method

.method public abstract setI(I)V
.end method

.method public abstract setL(Z)V
.end method

.method public abstract setR(Ljava/lang/String;)V
.end method

.method public abstract setRef(Ljava/lang/String;)V
.end method

.method public abstract setS(Z)V
.end method

.method public abstract setT(Z)V
.end method

.method public abstract unsetA()V
.end method

.method public abstract unsetI()V
.end method

.method public abstract unsetL()V
.end method

.method public abstract unsetR()V
.end method

.method public abstract unsetRef()V
.end method

.method public abstract unsetS()V
.end method

.method public abstract unsetT()V
.end method

.method public abstract xgetA()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetI()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetL()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetR()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellRef;
.end method

.method public abstract xgetRef()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellRef;
.end method

.method public abstract xgetS()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetT()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetA(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetI(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetL(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetR(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellRef;)V
.end method

.method public abstract xsetRef(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellRef;)V
.end method

.method public abstract xsetS(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetT(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
