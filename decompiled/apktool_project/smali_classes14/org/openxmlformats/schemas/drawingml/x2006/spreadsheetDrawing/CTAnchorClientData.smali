.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAnchorClientData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAnchorClientData;",
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

    const-string v2, "ctanchorclientdata02betype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAnchorClientData;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAnchorClientData;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getFLocksWithSheet()Z
.end method

.method public abstract getFPrintsWithSheet()Z
.end method

.method public abstract isSetFLocksWithSheet()Z
.end method

.method public abstract isSetFPrintsWithSheet()Z
.end method

.method public abstract setFLocksWithSheet(Z)V
.end method

.method public abstract setFPrintsWithSheet(Z)V
.end method

.method public abstract unsetFLocksWithSheet()V
.end method

.method public abstract unsetFPrintsWithSheet()V
.end method

.method public abstract xgetFLocksWithSheet()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFPrintsWithSheet()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetFLocksWithSheet(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFPrintsWithSheet(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
