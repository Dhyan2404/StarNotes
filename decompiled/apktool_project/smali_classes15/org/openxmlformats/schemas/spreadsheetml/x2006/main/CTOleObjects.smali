.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;",
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

    const-string v2, "ctoleobjects1455type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewOleObject()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;
.end method

.method public abstract getOleObjectArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;
.end method

.method public abstract getOleObjectArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;
.end method

.method public abstract getOleObjectList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewOleObject(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;
.end method

.method public abstract removeOleObject(I)V
.end method

.method public abstract setOleObjectArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;)V
.end method

.method public abstract setOleObjectArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;)V
.end method

.method public abstract sizeOfOleObjectArray()I
.end method
