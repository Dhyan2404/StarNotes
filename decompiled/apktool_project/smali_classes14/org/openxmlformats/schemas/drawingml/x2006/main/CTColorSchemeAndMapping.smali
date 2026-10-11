.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorSchemeAndMapping;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorSchemeAndMapping;",
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

    const-string v2, "ctcolorschemeandmappingbab0type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorSchemeAndMapping;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorSchemeAndMapping;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewClrMap()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;
.end method

.method public abstract addNewClrScheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;
.end method

.method public abstract getClrMap()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;
.end method

.method public abstract getClrScheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;
.end method

.method public abstract isSetClrMap()Z
.end method

.method public abstract setClrMap(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;)V
.end method

.method public abstract setClrScheme(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;)V
.end method

.method public abstract unsetClrMap()V
.end method
