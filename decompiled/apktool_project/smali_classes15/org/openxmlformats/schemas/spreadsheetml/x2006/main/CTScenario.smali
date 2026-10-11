.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTScenario;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTScenario;",
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

    const-string v2, "ctscenariofe59type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTScenario;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTScenario;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewInputCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTInputCells;
.end method

.method public abstract getComment()Ljava/lang/String;
.end method

.method public abstract getCount()J
.end method

.method public abstract getHidden()Z
.end method

.method public abstract getInputCellsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTInputCells;
.end method

.method public abstract getInputCellsArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTInputCells;
.end method

.method public abstract getInputCellsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTInputCells;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocked()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getUser()Ljava/lang/String;
.end method

.method public abstract insertNewInputCells(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTInputCells;
.end method

.method public abstract isSetComment()Z
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract isSetHidden()Z
.end method

.method public abstract isSetLocked()Z
.end method

.method public abstract isSetUser()Z
.end method

.method public abstract removeInputCells(I)V
.end method

.method public abstract setComment(Ljava/lang/String;)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setHidden(Z)V
.end method

.method public abstract setInputCellsArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTInputCells;)V
.end method

.method public abstract setInputCellsArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTInputCells;)V
.end method

.method public abstract setLocked(Z)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setUser(Ljava/lang/String;)V
.end method

.method public abstract sizeOfInputCellsArray()I
.end method

.method public abstract unsetComment()V
.end method

.method public abstract unsetCount()V
.end method

.method public abstract unsetHidden()V
.end method

.method public abstract unsetLocked()V
.end method

.method public abstract unsetUser()V
.end method

.method public abstract xgetComment()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetHidden()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetLocked()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetUser()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xsetComment(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetHidden(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetLocked(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetUser(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method
