.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetNames;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetNames;",
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

    const-string v2, "ctexternalsheetnames7eddtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetNames;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetNames;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewSheetName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;
.end method

.method public abstract getSheetNameArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;
.end method

.method public abstract getSheetNameArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;
.end method

.method public abstract getSheetNameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewSheetName(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;
.end method

.method public abstract removeSheetName(I)V
.end method

.method public abstract setSheetNameArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;)V
.end method

.method public abstract setSheetNameArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;)V
.end method

.method public abstract sizeOfSheetNameArray()I
.end method
