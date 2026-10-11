.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolType;",
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

    const-string v2, "ctvoltype1acctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewMain()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolMain;
.end method

.method public abstract getMainArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolMain;
.end method

.method public abstract getMainArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolMain;
.end method

.method public abstract getMainList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolMain;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVolDepType$Enum;
.end method

.method public abstract insertNewMain(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolMain;
.end method

.method public abstract removeMain(I)V
.end method

.method public abstract setMainArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolMain;)V
.end method

.method public abstract setMainArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolMain;)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVolDepType$Enum;)V
.end method

.method public abstract sizeOfMainArray()I
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVolDepType;
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVolDepType;)V
.end method
