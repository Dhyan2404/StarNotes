.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTPosH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTPosH;",
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

    const-string v2, "ctposh7fabtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTPosH;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTPosH;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAlign()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH$Enum;
.end method

.method public abstract getPosOffset()I
.end method

.method public abstract getRelativeFrom()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;
.end method

.method public abstract isSetAlign()Z
.end method

.method public abstract isSetPosOffset()Z
.end method

.method public abstract setAlign(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH$Enum;)V
.end method

.method public abstract setPosOffset(I)V
.end method

.method public abstract setRelativeFrom(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;)V
.end method

.method public abstract unsetAlign()V
.end method

.method public abstract unsetPosOffset()V
.end method

.method public abstract xgetAlign()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH;
.end method

.method public abstract xgetPosOffset()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STPositionOffset;
.end method

.method public abstract xgetRelativeFrom()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH;
.end method

.method public abstract xsetAlign(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH;)V
.end method

.method public abstract xsetPosOffset(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STPositionOffset;)V
.end method

.method public abstract xsetRelativeFrom(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH;)V
.end method
