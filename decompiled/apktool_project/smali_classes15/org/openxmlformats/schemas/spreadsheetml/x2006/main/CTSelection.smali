.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;",
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

    const-string v2, "ctselectionca2btype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getActiveCell()Ljava/lang/String;
.end method

.method public abstract getActiveCellId()J
.end method

.method public abstract getPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;
.end method

.method public abstract getSqref()Ljava/util/List;
.end method

.method public abstract isSetActiveCell()Z
.end method

.method public abstract isSetActiveCellId()Z
.end method

.method public abstract isSetPane()Z
.end method

.method public abstract isSetSqref()Z
.end method

.method public abstract setActiveCell(Ljava/lang/String;)V
.end method

.method public abstract setActiveCellId(J)V
.end method

.method public abstract setPane(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;)V
.end method

.method public abstract setSqref(Ljava/util/List;)V
.end method

.method public abstract unsetActiveCell()V
.end method

.method public abstract unsetActiveCellId()V
.end method

.method public abstract unsetPane()V
.end method

.method public abstract unsetSqref()V
.end method

.method public abstract xgetActiveCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellRef;
.end method

.method public abstract xgetActiveCellId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane;
.end method

.method public abstract xgetSqref()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSqref;
.end method

.method public abstract xsetActiveCell(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellRef;)V
.end method

.method public abstract xsetActiveCellId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetPane(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane;)V
.end method

.method public abstract xsetSqref(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSqref;)V
.end method
