.class public interface abstract Lorg/openxmlformats/schemas/xpackage/x2006/relationships/CTRelationship;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/xpackage/x2006/relationships/CTRelationship;",
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

    const-string v2, "ctrelationship8cf8type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/xpackage/x2006/relationships/CTRelationship;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/xpackage/x2006/relationships/CTRelationship;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getTarget()Ljava/lang/String;
.end method

.method public abstract getTargetMode()Lorg/openxmlformats/schemas/xpackage/x2006/relationships/STTargetMode$Enum;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract isSetTargetMode()Z
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setTarget(Ljava/lang/String;)V
.end method

.method public abstract setTargetMode(Lorg/openxmlformats/schemas/xpackage/x2006/relationships/STTargetMode$Enum;)V
.end method

.method public abstract setType(Ljava/lang/String;)V
.end method

.method public abstract unsetTargetMode()V
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlID;
.end method

.method public abstract xgetTarget()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xgetTargetMode()Lorg/openxmlformats/schemas/xpackage/x2006/relationships/STTargetMode;
.end method

.method public abstract xgetType()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlID;)V
.end method

.method public abstract xsetTarget(Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method

.method public abstract xsetTargetMode(Lorg/openxmlformats/schemas/xpackage/x2006/relationships/STTargetMode;)V
.end method

.method public abstract xsetType(Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method
