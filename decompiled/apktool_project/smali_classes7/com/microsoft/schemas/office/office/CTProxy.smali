.class public interface abstract Lcom/microsoft/schemas/office/office/CTProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/office/CTProxy;",
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

    const-string v2, "ctproxy7727type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/CTProxy;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/CTProxy;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getConnectloc()I
.end method

.method public abstract getEnd()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getIdref()Ljava/lang/String;
.end method

.method public abstract getStart()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract isSetConnectloc()Z
.end method

.method public abstract isSetEnd()Z
.end method

.method public abstract isSetIdref()Z
.end method

.method public abstract isSetStart()Z
.end method

.method public abstract setConnectloc(I)V
.end method

.method public abstract setEnd(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setIdref(Ljava/lang/String;)V
.end method

.method public abstract setStart(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract unsetConnectloc()V
.end method

.method public abstract unsetEnd()V
.end method

.method public abstract unsetIdref()V
.end method

.method public abstract unsetStart()V
.end method

.method public abstract xgetConnectloc()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetEnd()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetIdref()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetStart()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xsetConnectloc(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetEnd(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetIdref(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetStart(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method
