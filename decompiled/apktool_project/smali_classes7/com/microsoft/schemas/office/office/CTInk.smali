.class public interface abstract Lcom/microsoft/schemas/office/office/CTInk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/office/CTInk;",
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

    const-string v2, "ctink6f5ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/CTInk;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/CTInk;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAnnotation()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getI()Ljava/lang/String;
.end method

.method public abstract isSetAnnotation()Z
.end method

.method public abstract isSetContentType()Z
.end method

.method public abstract isSetI()Z
.end method

.method public abstract setAnnotation(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setContentType(Ljava/lang/String;)V
.end method

.method public abstract setI(Ljava/lang/String;)V
.end method

.method public abstract unsetAnnotation()V
.end method

.method public abstract unsetContentType()V
.end method

.method public abstract unsetI()V
.end method

.method public abstract xgetAnnotation()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetContentType()Lcom/microsoft/schemas/office/office/STContentType;
.end method

.method public abstract xgetI()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetAnnotation(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetContentType(Lcom/microsoft/schemas/office/office/STContentType;)V
.end method

.method public abstract xsetI(Lorg/apache/xmlbeans/XmlString;)V
.end method
