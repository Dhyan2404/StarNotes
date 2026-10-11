.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/AutoLinkComparisonType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/AutoLinkComparisonType;",
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

    const-string v2, "autolinkcomparisontype8447type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/AutoLinkComparisonType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/AutoLinkComparisonType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getColumnName()Ljava/lang/String;
.end method

.method public abstract getContextType()J
.end method

.method public abstract getContextTypeLabel()Ljava/lang/String;
.end method

.method public abstract isSetContextTypeLabel()Z
.end method

.method public abstract setColumnName(Ljava/lang/String;)V
.end method

.method public abstract setContextType(J)V
.end method

.method public abstract setContextTypeLabel(Ljava/lang/String;)V
.end method

.method public abstract unsetContextTypeLabel()V
.end method

.method public abstract xgetColumnName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetContextType()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetContextTypeLabel()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetColumnName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetContextType(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetContextTypeLabel(Lorg/apache/xmlbeans/XmlString;)V
.end method
