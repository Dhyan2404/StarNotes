.class public interface abstract Lcom/microsoft/schemas/vml/CTBackground;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/vml/CTBackground;",
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

    const-string v2, "ctbackgroundd4ectype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/vml/CTBackground;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/CTBackground;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewFill()Lcom/microsoft/schemas/vml/CTFill;
.end method

.method public abstract getBwmode()Lcom/microsoft/schemas/office/office/STBWMode$Enum;
.end method

.method public abstract getBwnormal()Lcom/microsoft/schemas/office/office/STBWMode$Enum;
.end method

.method public abstract getBwpure()Lcom/microsoft/schemas/office/office/STBWMode$Enum;
.end method

.method public abstract getFill()Lcom/microsoft/schemas/vml/CTFill;
.end method

.method public abstract getFillcolor()Ljava/lang/String;
.end method

.method public abstract getFilled()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getTargetscreensize()Lcom/microsoft/schemas/office/office/STScreenSize$Enum;
.end method

.method public abstract isSetBwmode()Z
.end method

.method public abstract isSetBwnormal()Z
.end method

.method public abstract isSetBwpure()Z
.end method

.method public abstract isSetFill()Z
.end method

.method public abstract isSetFillcolor()Z
.end method

.method public abstract isSetFilled()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetTargetscreensize()Z
.end method

.method public abstract setBwmode(Lcom/microsoft/schemas/office/office/STBWMode$Enum;)V
.end method

.method public abstract setBwnormal(Lcom/microsoft/schemas/office/office/STBWMode$Enum;)V
.end method

.method public abstract setBwpure(Lcom/microsoft/schemas/office/office/STBWMode$Enum;)V
.end method

.method public abstract setFill(Lcom/microsoft/schemas/vml/CTFill;)V
.end method

.method public abstract setFillcolor(Ljava/lang/String;)V
.end method

.method public abstract setFilled(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setTargetscreensize(Lcom/microsoft/schemas/office/office/STScreenSize$Enum;)V
.end method

.method public abstract unsetBwmode()V
.end method

.method public abstract unsetBwnormal()V
.end method

.method public abstract unsetBwpure()V
.end method

.method public abstract unsetFill()V
.end method

.method public abstract unsetFillcolor()V
.end method

.method public abstract unsetFilled()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetTargetscreensize()V
.end method

.method public abstract xgetBwmode()Lcom/microsoft/schemas/office/office/STBWMode;
.end method

.method public abstract xgetBwnormal()Lcom/microsoft/schemas/office/office/STBWMode;
.end method

.method public abstract xgetBwpure()Lcom/microsoft/schemas/office/office/STBWMode;
.end method

.method public abstract xgetFillcolor()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STColorType;
.end method

.method public abstract xgetFilled()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetTargetscreensize()Lcom/microsoft/schemas/office/office/STScreenSize;
.end method

.method public abstract xsetBwmode(Lcom/microsoft/schemas/office/office/STBWMode;)V
.end method

.method public abstract xsetBwnormal(Lcom/microsoft/schemas/office/office/STBWMode;)V
.end method

.method public abstract xsetBwpure(Lcom/microsoft/schemas/office/office/STBWMode;)V
.end method

.method public abstract xsetFillcolor(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STColorType;)V
.end method

.method public abstract xsetFilled(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetTargetscreensize(Lcom/microsoft/schemas/office/office/STScreenSize;)V
.end method
