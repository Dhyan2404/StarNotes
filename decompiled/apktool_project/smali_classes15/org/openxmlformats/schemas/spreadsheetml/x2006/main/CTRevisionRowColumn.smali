.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionRowColumn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionRowColumn;",
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

    const-string v2, "ctrevisionrowcolumn5494type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionRowColumn;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionRowColumn;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewRcc()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCellChange;
.end method

.method public abstract addNewRfmt()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionFormatting;
.end method

.method public abstract addNewUndo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUndoInfo;
.end method

.method public abstract getAction()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRwColActionType$Enum;
.end method

.method public abstract getEdge()Z
.end method

.method public abstract getEol()Z
.end method

.method public abstract getRId()J
.end method

.method public abstract getRa()Z
.end method

.method public abstract getRccArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCellChange;
.end method

.method public abstract getRccArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCellChange;
.end method

.method public abstract getRccList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCellChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRef()Ljava/lang/String;
.end method

.method public abstract getRfmtArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionFormatting;
.end method

.method public abstract getRfmtArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionFormatting;
.end method

.method public abstract getRfmtList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionFormatting;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSId()J
.end method

.method public abstract getUa()Z
.end method

.method public abstract getUndoArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUndoInfo;
.end method

.method public abstract getUndoArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUndoInfo;
.end method

.method public abstract getUndoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUndoInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewRcc(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCellChange;
.end method

.method public abstract insertNewRfmt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionFormatting;
.end method

.method public abstract insertNewUndo(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUndoInfo;
.end method

.method public abstract isSetEdge()Z
.end method

.method public abstract isSetEol()Z
.end method

.method public abstract isSetRa()Z
.end method

.method public abstract isSetUa()Z
.end method

.method public abstract removeRcc(I)V
.end method

.method public abstract removeRfmt(I)V
.end method

.method public abstract removeUndo(I)V
.end method

.method public abstract setAction(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRwColActionType$Enum;)V
.end method

.method public abstract setEdge(Z)V
.end method

.method public abstract setEol(Z)V
.end method

.method public abstract setRId(J)V
.end method

.method public abstract setRa(Z)V
.end method

.method public abstract setRccArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCellChange;)V
.end method

.method public abstract setRccArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCellChange;)V
.end method

.method public abstract setRef(Ljava/lang/String;)V
.end method

.method public abstract setRfmtArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionFormatting;)V
.end method

.method public abstract setRfmtArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionFormatting;)V
.end method

.method public abstract setSId(J)V
.end method

.method public abstract setUa(Z)V
.end method

.method public abstract setUndoArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUndoInfo;)V
.end method

.method public abstract setUndoArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUndoInfo;)V
.end method

.method public abstract sizeOfRccArray()I
.end method

.method public abstract sizeOfRfmtArray()I
.end method

.method public abstract sizeOfUndoArray()I
.end method

.method public abstract unsetEdge()V
.end method

.method public abstract unsetEol()V
.end method

.method public abstract unsetRa()V
.end method

.method public abstract unsetUa()V
.end method

.method public abstract xgetAction()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRwColActionType;
.end method

.method public abstract xgetEdge()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetEol()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetRa()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRef()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;
.end method

.method public abstract xgetSId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetUa()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetAction(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRwColActionType;)V
.end method

.method public abstract xsetEdge(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetEol(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetRa(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRef(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;)V
.end method

.method public abstract xsetSId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetUa(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
