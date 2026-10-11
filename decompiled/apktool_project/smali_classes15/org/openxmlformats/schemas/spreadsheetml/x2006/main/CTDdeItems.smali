.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeItems;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeItems;",
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

    const-string v2, "ctddeitemse1e4type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeItems;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeItems;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDdeItem()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeItem;
.end method

.method public abstract getDdeItemArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeItem;
.end method

.method public abstract getDdeItemArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeItem;
.end method

.method public abstract getDdeItemList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewDdeItem(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeItem;
.end method

.method public abstract removeDdeItem(I)V
.end method

.method public abstract setDdeItemArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeItem;)V
.end method

.method public abstract setDdeItemArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeItem;)V
.end method

.method public abstract sizeOfDdeItemArray()I
.end method
