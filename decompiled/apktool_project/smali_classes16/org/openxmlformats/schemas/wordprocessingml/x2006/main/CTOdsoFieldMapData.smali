.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOdsoFieldMapData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOdsoFieldMapData;",
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

    const-string v2, "ctodsofieldmapdata3fabtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOdsoFieldMapData;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOdsoFieldMapData;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewColumn()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewDynamicAddress()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewLid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLang;
.end method

.method public abstract addNewMappedName()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewName()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMailMergeOdsoFMDFieldType;
.end method

.method public abstract getColumn()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getDynamicAddress()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getLid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLang;
.end method

.method public abstract getMappedName()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getName()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMailMergeOdsoFMDFieldType;
.end method

.method public abstract isSetColumn()Z
.end method

.method public abstract isSetDynamicAddress()Z
.end method

.method public abstract isSetLid()Z
.end method

.method public abstract isSetMappedName()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract setColumn(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setDynamicAddress(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setLid(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLang;)V
.end method

.method public abstract setMappedName(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setName(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMailMergeOdsoFMDFieldType;)V
.end method

.method public abstract unsetColumn()V
.end method

.method public abstract unsetDynamicAddress()V
.end method

.method public abstract unsetLid()V
.end method

.method public abstract unsetMappedName()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetType()V
.end method
