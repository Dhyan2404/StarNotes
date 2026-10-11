.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualContentPartProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualContentPartProperties;",
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

    const-string v2, "ctnonvisualcontentpartproperties8d4dtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualContentPartProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualContentPartProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCpLocks()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTContentPartLocking;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getCpLocks()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTContentPartLocking;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getIsComment()Z
.end method

.method public abstract isSetCpLocks()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetIsComment()Z
.end method

.method public abstract setCpLocks(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTContentPartLocking;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setIsComment(Z)V
.end method

.method public abstract unsetCpLocks()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetIsComment()V
.end method

.method public abstract xgetIsComment()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetIsComment(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
