.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleItems;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleItems;",
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

    const-string v2, "ctoleitems7b41type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleItems;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleItems;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewOleItem()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleItem;
.end method

.method public abstract getOleItemArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleItem;
.end method

.method public abstract getOleItemArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleItem;
.end method

.method public abstract getOleItemList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewOleItem(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleItem;
.end method

.method public abstract removeOleItem(I)V
.end method

.method public abstract setOleItemArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleItem;)V
.end method

.method public abstract setOleItemArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleItem;)V
.end method

.method public abstract sizeOfOleItemArray()I
.end method
