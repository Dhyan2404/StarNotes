.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorders;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorders;",
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

    const-string v2, "ctpagebordersa4datype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorders;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorders;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBottomPageBorder;
.end method

.method public abstract addNewLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorder;
.end method

.method public abstract addNewRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorder;
.end method

.method public abstract addNewTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTopPageBorder;
.end method

.method public abstract getBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBottomPageBorder;
.end method

.method public abstract getDisplay()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay$Enum;
.end method

.method public abstract getLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorder;
.end method

.method public abstract getOffsetFrom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderOffset$Enum;
.end method

.method public abstract getRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorder;
.end method

.method public abstract getTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTopPageBorder;
.end method

.method public abstract getZOrder()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderZOrder$Enum;
.end method

.method public abstract isSetBottom()Z
.end method

.method public abstract isSetDisplay()Z
.end method

.method public abstract isSetLeft()Z
.end method

.method public abstract isSetOffsetFrom()Z
.end method

.method public abstract isSetRight()Z
.end method

.method public abstract isSetTop()Z
.end method

.method public abstract isSetZOrder()Z
.end method

.method public abstract setBottom(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBottomPageBorder;)V
.end method

.method public abstract setDisplay(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay$Enum;)V
.end method

.method public abstract setLeft(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorder;)V
.end method

.method public abstract setOffsetFrom(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderOffset$Enum;)V
.end method

.method public abstract setRight(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorder;)V
.end method

.method public abstract setTop(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTopPageBorder;)V
.end method

.method public abstract setZOrder(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderZOrder$Enum;)V
.end method

.method public abstract unsetBottom()V
.end method

.method public abstract unsetDisplay()V
.end method

.method public abstract unsetLeft()V
.end method

.method public abstract unsetOffsetFrom()V
.end method

.method public abstract unsetRight()V
.end method

.method public abstract unsetTop()V
.end method

.method public abstract unsetZOrder()V
.end method

.method public abstract xgetDisplay()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay;
.end method

.method public abstract xgetOffsetFrom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderOffset;
.end method

.method public abstract xgetZOrder()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderZOrder;
.end method

.method public abstract xsetDisplay(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay;)V
.end method

.method public abstract xsetOffsetFrom(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderOffset;)V
.end method

.method public abstract xsetZOrder(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderZOrder;)V
.end method
