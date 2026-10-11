.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColors;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColors;",
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

    const-string v2, "ctcolors6579type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColors;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColors;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewIndexedColors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndexedColors;
.end method

.method public abstract addNewMruColors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMRUColors;
.end method

.method public abstract getIndexedColors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndexedColors;
.end method

.method public abstract getMruColors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMRUColors;
.end method

.method public abstract isSetIndexedColors()Z
.end method

.method public abstract isSetMruColors()Z
.end method

.method public abstract setIndexedColors(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndexedColors;)V
.end method

.method public abstract setMruColors(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMRUColors;)V
.end method

.method public abstract unsetIndexedColors()V
.end method

.method public abstract unsetMruColors()V
.end method
