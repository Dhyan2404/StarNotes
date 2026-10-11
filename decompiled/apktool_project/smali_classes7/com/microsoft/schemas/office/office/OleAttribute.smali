.class public interface abstract Lcom/microsoft/schemas/office/office/OleAttribute;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/office/OleAttribute;",
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

    const-string v2, "olea4dbattrtypetype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/OleAttribute;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/OleAttribute;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getOle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract isSetOle()Z
.end method

.method public abstract setOle(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract unsetOle()V
.end method

.method public abstract xgetOle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xsetOle(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method
