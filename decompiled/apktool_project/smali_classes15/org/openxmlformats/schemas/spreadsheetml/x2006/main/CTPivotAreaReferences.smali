.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReferences;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReferences;",
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

    const-string v2, "ctpivotareareferencesaef6type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReferences;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReferences;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewReference()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReference;
.end method

.method public abstract getCount()J
.end method

.method public abstract getReferenceArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReference;
.end method

.method public abstract getReferenceArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReference;
.end method

.method public abstract getReferenceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReference;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewReference(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReference;
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract removeReference(I)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setReferenceArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReference;)V
.end method

.method public abstract setReferenceArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReference;)V
.end method

.method public abstract sizeOfReferenceArray()I
.end method

.method public abstract unsetCount()V
.end method

.method public abstract xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
