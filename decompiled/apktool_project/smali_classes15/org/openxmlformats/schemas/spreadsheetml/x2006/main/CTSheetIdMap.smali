.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetIdMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetIdMap;",
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

    const-string v2, "ctsheetidmape72btype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetIdMap;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetIdMap;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewSheetId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetId;
.end method

.method public abstract getCount()J
.end method

.method public abstract getSheetIdArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetId;
.end method

.method public abstract getSheetIdArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetId;
.end method

.method public abstract getSheetIdList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetId;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewSheetId(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetId;
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract removeSheetId(I)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setSheetIdArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetId;)V
.end method

.method public abstract setSheetIdArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetId;)V
.end method

.method public abstract sizeOfSheetIdArray()I
.end method

.method public abstract unsetCount()V
.end method

.method public abstract xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
