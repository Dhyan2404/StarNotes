.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUndoInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUndoInfo;",
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

    const-string v2, "ctundoinfo5bfbtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUndoInfo;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUndoInfo;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getArray()Z
.end method

.method public abstract getCs()Z
.end method

.method public abstract getDn()Ljava/lang/String;
.end method

.method public abstract getDr()Ljava/lang/String;
.end method

.method public abstract getExp()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression$Enum;
.end method

.method public abstract getIndex()J
.end method

.method public abstract getNf()Z
.end method

.method public abstract getR()Ljava/lang/String;
.end method

.method public abstract getRef3D()Z
.end method

.method public abstract getSId()J
.end method

.method public abstract getV()Z
.end method

.method public abstract isSetArray()Z
.end method

.method public abstract isSetCs()Z
.end method

.method public abstract isSetDn()Z
.end method

.method public abstract isSetNf()Z
.end method

.method public abstract isSetR()Z
.end method

.method public abstract isSetRef3D()Z
.end method

.method public abstract isSetSId()Z
.end method

.method public abstract isSetV()Z
.end method

.method public abstract setArray(Z)V
.end method

.method public abstract setCs(Z)V
.end method

.method public abstract setDn(Ljava/lang/String;)V
.end method

.method public abstract setDr(Ljava/lang/String;)V
.end method

.method public abstract setExp(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression$Enum;)V
.end method

.method public abstract setIndex(J)V
.end method

.method public abstract setNf(Z)V
.end method

.method public abstract setR(Ljava/lang/String;)V
.end method

.method public abstract setRef3D(Z)V
.end method

.method public abstract setSId(J)V
.end method

.method public abstract setV(Z)V
.end method

.method public abstract unsetArray()V
.end method

.method public abstract unsetCs()V
.end method

.method public abstract unsetDn()V
.end method

.method public abstract unsetNf()V
.end method

.method public abstract unsetR()V
.end method

.method public abstract unsetRef3D()V
.end method

.method public abstract unsetSId()V
.end method

.method public abstract unsetV()V
.end method

.method public abstract xgetArray()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCs()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDn()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetDr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefA;
.end method

.method public abstract xgetExp()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression;
.end method

.method public abstract xgetIndex()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetNf()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetR()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellRef;
.end method

.method public abstract xgetRef3D()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetV()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetArray(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCs(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDn(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetDr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefA;)V
.end method

.method public abstract xsetExp(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormulaExpression;)V
.end method

.method public abstract xsetIndex(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetNf(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetR(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellRef;)V
.end method

.method public abstract xsetRef3D(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetV(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
